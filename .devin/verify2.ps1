[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$f = 'C:\My Projects\AIRTA\lib\l10n\app_pt.arb'
$lines = [System.IO.File]::ReadAllLines($f, [System.Text.Encoding]::UTF8)
$total = $lines.Count
Write-Host "Total lines in app_pt.arb: $total"
# Print last 10 lines
$last = $lines[($total-10)..($total-1)]
foreach ($l in $last) { Write-Host $l }
