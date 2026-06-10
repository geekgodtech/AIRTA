[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

function Remove-DuplicateKey {
    param(
        [string]$filePath,
        [string]$keyName,
        [bool]$keepFirst
    )
    
    $lines = [System.IO.File]::ReadAllLines($filePath, [System.Text.Encoding]::UTF8)
    $keyPattern = "^  `"" + $keyName + "`":"
    
    $keyIndices = @()
    for ($i = 0; $i -lt $lines.Count; $i++) {
        if ($lines[$i] -match $keyPattern) {
            $keyIndices += $i
        }
    }
    
    if ($keyIndices.Count -le 1) {
        Write-Host "$keyName`: only 1 occurrence in $filePath, nothing to remove"
        return
    }
    
    Write-Host "$keyName found at 0-based lines: $($keyIndices -join ', ')"
    
    # Remove the second occurrence (keepFirst = $true means we remove index 1)
    $removeAt = if ($keepFirst) { $keyIndices[1] } else { $keyIndices[0] }
    
    # Find end of this block (key line + optional @metadata block)
    $endIdx = $removeAt
    $metaPattern = "^  `"@" + $keyName + "`":"
    
    if (($removeAt + 1) -lt $lines.Count -and $lines[$removeAt + 1] -match $metaPattern) {
        $depth = 0
        for ($j = $removeAt + 1; $j -lt $lines.Count; $j++) {
            if ($lines[$j] -match '\{') { $depth++ }
            if ($lines[$j] -match '\}') { $depth-- }
            if ($depth -eq 0) { $endIdx = $j; break }
        }
    }
    
    # Collect line indices to remove
    $removeSet = @()
    for ($i = $removeAt; $i -le $endIdx; $i++) {
        $removeSet += $i
    }
    
    # Build new lines without the removed block
    $newLines = New-Object System.Collections.Generic.List[string]
    for ($i = 0; $i -lt $lines.Count; $i++) {
        if ($removeSet -notcontains $i) {
            $newLines.Add($lines[$i])
        }
    }
    
    [System.IO.File]::WriteAllLines($filePath, $newLines.ToArray(), [System.Text.Encoding]::UTF8)
    Write-Host "Removed duplicate $keyName (0-based $removeAt to $endIdx) from $filePath"
}

# Fix app_it.arb
$itFile = 'C:\My Projects\AIRTA\lib\l10n\app_it.arb'
Remove-DuplicateKey -filePath $itFile -keyName "notNow" -keepFirst $true
Remove-DuplicateKey -filePath $itFile -keyName "noMessagesInDateRange" -keepFirst $true

# Fix app_pt.arb
$ptFile = 'C:\My Projects\AIRTA\lib\l10n\app_pt.arb'
Remove-DuplicateKey -filePath $ptFile -keyName "notNow" -keepFirst $true
Remove-DuplicateKey -filePath $ptFile -keyName "noMessagesInDateRange" -keepFirst $true

Write-Host ""
Write-Host "=== Final verification ==="
foreach ($lang in @("it","pt")) {
    $f = "C:\My Projects\AIRTA\lib\l10n\app_" + $lang + ".arb"
    $c = [System.IO.File]::ReadAllText($f, [System.Text.Encoding]::UTF8)
    $notNowCount = ([regex]::Matches($c, '"notNow"')).Count
    $noMsgCount = ([regex]::Matches($c, '"noMessagesInDateRange"')).Count
    $lines = [System.IO.File]::ReadAllLines($f, [System.Text.Encoding]::UTF8)
    Write-Host "app_$lang.arb : $($lines.Count) lines | notNow=$notNowCount | noMessagesInDateRange=$noMsgCount"
}
