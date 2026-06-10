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
    $f = "C:\My Projects\AIRTA\lib\l10n\app_$lang.arb"
    $content = [System.IO.File]::ReadAllText($f, [System.Text.Encoding]::UTF8)
    $missing = @()
    foreach ($k in $keys) {
        if (-not ($content -match "`"$k`"")) {
            $missing += $k
        }
    }
    if ($missing.Count -eq 0) {
        Write-Host "app_$lang.arb: ALL $($keys.Count) keys present OK"
    } else {
        Write-Host "app_$lang.arb: MISSING $($missing.Count) keys: $($missing -join ', ')"
    }
}

# Also show all translated values for the new keys in both files
foreach ($lang in @("it","pt")) {
    Write-Host ""
    Write-Host "=== $lang translations ==="
    $f = "C:\My Projects\AIRTA\lib\l10n\app_$lang.arb"
    $lines = [System.IO.File]::ReadAllLines($f, [System.Text.Encoding]::UTF8)
    foreach ($k in $keys) {
        $match = $lines | Where-Object { $_ -match "^  `"$k`":" }
        if ($match) { Write-Host $match }
    }
}
