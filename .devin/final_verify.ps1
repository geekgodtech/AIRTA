[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

$keys = @(
    "packTheGood","packTheBad","packTheUgly","packTheNarcissist","metricsExpansionPack",
    "purchaseTitle","notNow","buyForPrice","processingPurchase","waitingForStoreConfirmation",
    "myMetricList","botTokenSaved","failedToSaveError","connectionTestNotImplemented",
    "pasteDiscordBotTokenHint","botTokenLabel","botConfigButton","customMetricPurchasePlaceholder",
    "configureBotToken","retryButton","ownerLabel","noMessagesInChannel","failedToImportError",
    "proMembershipUpsell","unlockForPrice","startCapture","finishAndProcess","cancelButton",
    "processScreenshots","startOver","capturingStatus","captureComplete","noMessagesInDateRange",
    "errorDialogTitle","failedToLoadConversation","selectConversationTitle","platformCredentialsTitle",
    "saveCredentialsTooltip","upgradeToProPlusTitle","upgradeNowButton","selectLanguageTooltip",
    "nextSizeButton","startSequenceButton","nextSizeInstruction","okButton"
)

foreach ($lang in @("it","pt")) {
    $f = "C:\My Projects\AIRTA\lib\l10n\app_" + $lang + ".arb"
    $content = [System.IO.File]::ReadAllText($f, [System.Text.Encoding]::UTF8)
    
    # Check JSON validity
    try {
        $null = [System.Web.Script.Serialization.JavaScriptSerializer]
    } catch {}
    
    # Check all keys present exactly once
    $allGood = $true
    $missing = @()
    $dupes = @()
    foreach ($k in $keys) {
        $count = ([regex]::Matches($content, "`"$k`"")).Count
        if ($count -eq 0) { $missing += $k }
        elseif ($count -gt 2) { $dupes += "$k($count)" }  # >2 because @key also matches
    }
    
    $lines = [System.IO.File]::ReadAllLines($f, [System.Text.Encoding]::UTF8)
    Write-Host ""
    Write-Host "=== app_$lang.arb ===" 
    Write-Host "Lines: $($lines.Count)"
    if ($missing.Count -gt 0) {
        Write-Host "MISSING: $($missing -join ', ')"
    } else {
        Write-Host "All $($keys.Count) requested keys present"
    }
    if ($dupes.Count -gt 0) {
        Write-Host "DUPLICATES: $($dupes -join ', ')"
    } else {
        Write-Host "No duplicate keys"
    }
    
    # Show translated values for new keys
    Write-Host ""
    Write-Host "Translated values:"
    foreach ($k in $keys) {
        $match = $lines | Where-Object { $_ -match "^  `"$k`":" }
        if ($match) { Write-Host "  $match" }
    }
}
