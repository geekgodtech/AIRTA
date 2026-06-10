[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$f = 'C:\My Projects\AIRTA\lib\l10n\app_pt.arb'

# Read as UTF-8
$content = [System.IO.File]::ReadAllText($f, [System.Text.Encoding]::UTF8)

# Fix double-encoded characters using hex byte sequences
# Each mojibake pair -> correct UTF-8 char
$replacements = @(
    @{ Bad = ([char]0x00C3).ToString() + ([char]0x00B3).ToString(); Good = [char]0x00F3 }  # ó
    @{ Bad = ([char]0x00C3).ToString() + ([char]0x00A3).ToString(); Good = [char]0x00E3 }  # ã
    @{ Bad = ([char]0x00C3).ToString() + ([char]0x00B5).ToString(); Good = [char]0x00F5 }  # õ
    @{ Bad = ([char]0x00C3).ToString() + ([char]0x00A9).ToString(); Good = [char]0x00E9 }  # é
    @{ Bad = ([char]0x00C3).ToString() + ([char]0x00A7).ToString(); Good = [char]0x00E7 }  # ç
    @{ Bad = ([char]0x00C3).ToString() + ([char]0x00A1).ToString(); Good = [char]0x00E1 }  # á
    @{ Bad = ([char]0x00C3).ToString() + ([char]0x00AD).ToString(); Good = [char]0x00ED }  # í
    @{ Bad = ([char]0x00C3).ToString() + ([char]0x00BA).ToString(); Good = [char]0x00FA }  # ú
    @{ Bad = ([char]0x00C3).ToString() + ([char]0x00A2).ToString(); Good = [char]0x00E2 }  # â
    @{ Bad = ([char]0x00C3).ToString() + ([char]0x00AA).ToString(); Good = [char]0x00EA }  # ê
    @{ Bad = ([char]0x00C3).ToString() + ([char]0x00B4).ToString(); Good = [char]0x00F4 }  # ô
    @{ Bad = ([char]0x00C3).ToString() + ([char]0x0087).ToString(); Good = [char]0x00C7 }  # C-cedilla
    @{ Bad = ([char]0x00C3).ToString() + ([char]0x0089).ToString(); Good = [char]0x00C9 }  # E-acute
    @{ Bad = ([char]0x00C3).ToString() + ([char]0x0093).ToString(); Good = [char]0x00D3 }  # O-acute
)

foreach ($r in $replacements) {
    $content = $content.Replace($r.Bad, $r.Good.ToString())
}

[System.IO.File]::WriteAllText($f, $content, [System.Text.Encoding]::UTF8)
Write-Host "Encoding fixed for app_pt.arb"

# Verify last 15 lines
$lines = [System.IO.File]::ReadAllLines($f, [System.Text.Encoding]::UTF8)
$total = $lines.Count
Write-Host "Total lines: $total"
$last = $lines[($total-15)..($total-1)]
foreach ($l in $last) { Write-Host $l }
