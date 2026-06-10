$f = 'C:\My Projects\AIRTA\lib\l10n\app_it.arb'
$b = [System.IO.File]::ReadAllBytes($f)
$n = $b.Length
$last = $b[($n-15)..($n-1)]
Write-Host "Last 15 bytes: $($last -join ' ')"
Write-Host "Total length: $n"
