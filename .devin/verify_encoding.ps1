$f = 'C:\My Projects\AIRTA\lib\l10n\app_pt.arb'
$lines = [System.IO.File]::ReadAllLines($f, [System.Text.Encoding]::UTF8)
$hits = $lines | Where-Object { $_ -match 'nextSizeButton|Pr.ximo|okButton|captureComplete|noMessagesInDateRange' }
foreach ($h in $hits) { Write-Host $h }
