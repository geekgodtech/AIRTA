$filePath = 'C:\My Projects\AIRTA\lib\l10n\app_it.arb'

# Read the file content
$content = [System.IO.File]::ReadAllText($filePath, [System.Text.Encoding]::UTF8)

# The new translations block to insert (replacing the closing brace)
$newKeys = @'
,
  "packTheGood": "Il Bene",
  "@packTheGood": {
    "description": "Title for The Good metrics pack"
  },
  "packTheBad": "Il Male",
  "@packTheBad": {
    "description": "Title for The Bad metrics pack"
  },
  "packTheUgly": "Il Brutto",
  "@packTheUgly": {
    "description": "Title for The Ugly metrics pack"
  },
  "packTheNarcissist": "Il Narcisista",
  "@packTheNarcissist": {
    "description": "Title for The Narcissist metrics pack"
  },
  "metricsExpansionPack": "Pacchetto di Espansione Metriche",
  "@metricsExpansionPack": {
    "description": "Subtitle for metrics expansion packs"
  },
  "purchaseTitle": "Acquista {title}",
  "@purchaseTitle": {
    "description": "Dialog title for purchasing an item",
    "placeholders": {
      "title": {
        "type": "String"
      }
    }
  },
  "notNow": "Non ora",
  "@notNow": {
    "description": "Button to dismiss purchase dialog"
  },
  "buyForPrice": "Acquista per {price}",
  "@buyForPrice": {
    "description": "Button to purchase item at given price",
    "placeholders": {
      "price": {
        "type": "String"
      }
    }
  },
  "processingPurchase": "Elaborazione acquisto...",
  "@processingPurchase": {
    "description": "Dialog title shown while processing purchase"
  },
  "waitingForStoreConfirmation": "In attesa della conferma dello store...",
  "@waitingForStoreConfirmation": {
    "description": "Status text while waiting for store confirmation"
  },
  "myMetricList": "La mia lista di metriche",
  "@myMetricList": {
    "description": "Hint text for metric list"
  },
  "botTokenSaved": "Token bot salvato con successo",
  "@botTokenSaved": {
    "description": "SnackBar message when bot token is saved"
  },
  "failedToSaveError": "Salvataggio non riuscito: {error}",
  "@failedToSaveError": {
    "description": "Error message when saving fails",
    "placeholders": {
      "error": {
        "type": "String"
      }
    }
  },
  "connectionTestNotImplemented": "Test di connessione non ancora implementato",
  "@connectionTestNotImplemented": {
    "description": "Status message when connection test is not available"
  },
  "pasteDiscordBotTokenHint": "Incolla qui il token del bot Discord",
  "@pasteDiscordBotTokenHint": {
    "description": "Hint text for Discord bot token input"
  },
  "botTokenLabel": "Token Bot",
  "@botTokenLabel": {
    "description": "Label for bot token field"
  },
  "botConfigButton": "Config. Bot",
  "@botConfigButton": {
    "description": "Button label for bot configuration"
  },
  "customMetricPurchasePlaceholder": "L'acquisto di metriche personalizzate inizierebbe qui",
  "@customMetricPurchasePlaceholder": {
    "description": "Placeholder text for custom metric purchase"
  },
  "configureBotToken": "Configura Token Bot",
  "@configureBotToken": {
    "description": "Button to configure bot token"
  },
  "retryButton": "Riprova",
  "@retryButton": {
    "description": "Button to retry an operation"
  },
  "ownerLabel": "Proprietario",
  "@ownerLabel": {
    "description": "Label indicating server owner"
  },
  "noMessagesInChannel": "Nessun messaggio trovato in questo canale",
  "@noMessagesInChannel": {
    "description": "Status when no messages are found"
  },
  "failedToImportError": "Importazione non riuscita: {error}",
  "@failedToImportError": {
    "description": "Error message when import fails",
    "placeholders": {
      "error": {
        "type": "String"
      }
    }
  },
  "proMembershipUpsell": "Abbonamento Pro - $19,99/mese",
  "@proMembershipUpsell": {
    "description": "Upsell text for Pro membership"
  },
  "unlockForPrice": "Sblocca per {price}",
  "@unlockForPrice": {
    "description": "Button to unlock feature for price",
    "placeholders": {
      "price": {
        "type": "String"
      }
    }
  },
  "startCapture": "Avvia Acquisizione",
  "@startCapture": {
    "description": "Button to start screenshot capture"
  },
  "finishAndProcess": "Termina ed Elabora",
  "@finishAndProcess": {
    "description": "Button to finish and process screenshots"
  },
  "cancelButton": "Annulla",
  "@cancelButton": {
    "description": "Cancel button"
  },
  "processScreenshots": "Elabora Screenshot",
  "@processScreenshots": {
    "description": "Button to process screenshots"
  },
  "startOver": "Ricomincia",
  "@startOver": {
    "description": "Button to start over"
  },
  "capturingStatus": "Acquisizione in corso...",
  "@capturingStatus": {
    "description": "Status while capturing"
  },
  "captureComplete": "Acquisizione completata",
  "@captureComplete": {
    "description": "Status when capture is complete"
  },
  "noMessagesInDateRange": "Nessun messaggio trovato nell'intervallo di date",
  "@noMessagesInDateRange": {
    "description": "Status when no messages in date range"
  },
  "errorDialogTitle": "Errore",
  "@errorDialogTitle": {
    "description": "Title for error dialog"
  },
  "failedToLoadConversation": "Caricamento della conversazione non riuscito: {error}",
  "@failedToLoadConversation": {
    "description": "Error when loading conversation fails",
    "placeholders": {
      "error": {
        "type": "String"
      }
    }
  },
  "selectConversationTitle": "Seleziona conversazione",
  "@selectConversationTitle": {
    "description": "Title for conversation selection"
  },
  "platformCredentialsTitle": "Credenziali della piattaforma",
  "@platformCredentialsTitle": {
    "description": "Title for platform credentials page"
  },
  "saveCredentialsTooltip": "Salva credenziali",
  "@saveCredentialsTooltip": {
    "description": "Tooltip for save credentials button"
  },
  "upgradeToProPlusTitle": "Passa a Pro Plus",
  "@upgradeToProPlusTitle": {
    "description": "Dialog title for Pro Plus upgrade"
  },
  "upgradeNowButton": "Aggiorna ora",
  "@upgradeNowButton": {
    "description": "Button to upgrade now"
  },
  "selectLanguageTooltip": "Seleziona lingua",
  "@selectLanguageTooltip": {
    "description": "Tooltip for language selector"
  },
  "nextSizeButton": "Dimensione successiva",
  "@nextSizeButton": {
    "description": "Button to go to next screenshot size"
  },
  "startSequenceButton": "Avvia sequenza",
  "@startSequenceButton": {
    "description": "Button to start screenshot sequence"
  },
  "nextSizeInstruction": "Clicca \"Dimensione successiva\" per la prossima dimensione",
  "@nextSizeInstruction": {
    "description": "Instruction for next size button"
  },
  "okButton": "OK",
  "@okButton": {
    "description": "OK button"
  }
}
'@

# Remove the trailing closing brace and append new keys + closing brace
$trimmed = $content.TrimEnd()
# Remove the final }
$trimmed = $trimmed.Substring(0, $trimmed.Length - 1)

$newContent = $trimmed + $newKeys

[System.IO.File]::WriteAllText($filePath, $newContent, [System.Text.Encoding]::UTF8)
Write-Host "app_it.arb updated successfully."
