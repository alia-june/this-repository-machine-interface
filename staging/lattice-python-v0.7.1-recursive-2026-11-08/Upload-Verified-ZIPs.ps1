# Stage the two locally verified Lattice ZIPs to the already-created GitHub staging branch.
# Candidate only. Does not publish a release, admit a generation, or modify canonical JSON.
param(
  [Parameter(Mandatory = $true)]
  [string]$PackageDirectory
)
$ErrorActionPreference = 'Stop'
$repo = 'alia-june/this-repository-machine-interface'
$branch = 'staging/lattice-python-v0.7.1-recursive-2026-11-08'
$root = 'staging/lattice-python-v0.7.1-recursive-2026-11-08'
$artifacts = @(
  @{ Name = 'Lattice_Python_Front_API_Hardening_Strict_Loose_Torture_v0_7_1.zip'; Sha256 = 'b2b9cbbca9a646293c4951159acb44817804347b5ff4a11640ede0c34beca9e8' },
  @{ Name = 'Lattice_Recursive_Harness_2026-11-08_Evidence_And_Runner.zip'; Sha256 = 'c452362e7cdf5f87380c3a034c41482a187a0840be5bd095d3b7c8d3ffec4ec2' }
)
function Assert-Exit([string]$step) {
  if ($LASTEXITCODE -ne 0) { throw ("Failed at {0} (exit {1})" -f $step, $LASTEXITCODE) }
}
foreach ($tool in @('git', 'gh')) {
  if (-not (Get-Command $tool -ErrorAction SilentlyContinue)) {
    throw "Missing dependency: $tool"
  }
}
foreach ($entry in $artifacts) {
  $path = Join-Path $PackageDirectory $entry.Name
  if (-not (Test-Path -LiteralPath $path -PathType Leaf)) { throw "Archive unavailable: $path" }
  $got = (Get-FileHash -LiteralPath $path -Algorithm SHA256).Hash.ToLowerInvariant()
  if ($got -ne $entry.Sha256) { throw "Source SHA256 mismatch: $($entry.Name)" }
}
& gh auth status *> $null
Assert-Exit 'gh auth status'
$temp = Join-Path ([IO.Path]::GetTempPath()) ("lattice-stage-" + [guid]::NewGuid().ToString('N'))
try {
  & gh repo clone $repo $temp -- --branch $branch --single-branch
  Assert-Exit 'clone staging branch'
  $target = Join-Path $temp ($root + '/artifacts')
  [void][IO.Directory]::CreateDirectory($target)
  foreach ($entry in $artifacts) {
    $source = Join-Path $PackageDirectory $entry.Name
    $destination = Join-Path $target $entry.Name
    if (Test-Path -LiteralPath $destination -PathType Leaf) {
      $existing = (Get-FileHash -LiteralPath $destination -Algorithm SHA256).Hash.ToLowerInvariant()
      if ($existing -ne $entry.Sha256) { throw "Refusing existing conflicting archive: $destination" }
    } else {
      Copy-Item -LiteralPath $source -Destination $destination
    }
  }
  & git -C $temp add -- ($root + '/artifacts')
  Assert-Exit 'git add'
  $changes = & git -C $temp status --porcelain -- ($root + '/artifacts')
  Assert-Exit 'git status'
  if ($changes) {
    & git -C $temp commit -m 'stage: upload verified Lattice v0.7.1 and recursive harness archives'
    Assert-Exit 'git commit (configure local git identity if needed)'
    & git -C $temp push origin HEAD:$branch
    Assert-Exit 'git push (non-fast-forward changes are refused)'
  }
  $ref = [Uri]::EscapeDataString($branch)
  foreach ($entry in $artifacts) {
    $path = $root + '/artifacts/' + $entry.Name
    $response = & gh api ("repos/$repo/contents/$path" + "?ref=$ref")
    Assert-Exit 'GitHub remote file fetch'
    $metadata = ($response -join [Environment]::NewLine) | ConvertFrom-Json
    if ($metadata.encoding -ne 'base64') { throw "Unexpected remote encoding: $path" }
    $bytes = [Convert]::FromBase64String(($metadata.content -replace '\s', ''))
    $digest = [Security.Cryptography.SHA256]::Create()
    try { $got = ([BitConverter]::ToString($digest.ComputeHash($bytes))).Replace('-', '').ToLowerInvariant() }
    finally { $digest.Dispose() }
    if ($got -ne $entry.Sha256) { throw "Remote SHA256 mismatch: $path" }
    Write-Output ("VERIFIED_GITHUB_UPLOAD {0} {1}" -f $entry.Sha256, $path)
  }
  Write-Output 'Both ZIPs staged and independently checked from GitHub. Update staging index/ledger before claiming complete staging.'
}
finally {
  if (Test-Path -LiteralPath $temp) { Remove-Item -LiteralPath $temp -Recurse -Force }
}
