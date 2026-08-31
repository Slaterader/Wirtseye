param(
    [Parameter(Mandatory=$true)]
    [string]$Path
)

$resolved = Resolve-Path -LiteralPath $Path -ErrorAction Stop
$item = Get-Item -LiteralPath $resolved
if ($item.PSIsContainer) {
    throw "Path must be a release file, not a directory: $resolved"
}

$hash = (Get-FileHash -Algorithm SHA256 -LiteralPath $resolved).Hash.ToLowerInvariant()
Write-Host "File:   $($item.Name)"
Write-Host "Bytes:  $($item.Length)"
Write-Host "SHA256: $hash"
Write-Host ""
Write-Host 'Manifest value:'
Write-Host ('"sha256": "' + $hash + '"')
