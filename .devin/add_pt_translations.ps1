$filePath = 'C:\My Projects\AIRTA\lib\l10n\app_pt.arb'

# Read the file content
$content = [System.IO.File]::ReadAllText($filePath, [System.Text.Encoding]::UTF8)

# The new translations block to insert (replacing the closing brace)
$newKeys = @'
,
  "packTheGood": "O Bem",
  "@packTheGood": {
    "description": "Title for The Good metrics pack"
  },
  "packTheBad": "O Mal",
  "@packTheBad": {
    "description": "Title for The Bad metrics pack"
  },
  "packTheUgly": "O Feio",
  "@packTheUgly": {
    "description": "Title for The Ugly metrics pack"
  },
  "packTheNarcissist": "O Narcisista",
  "@packTheNarcissist": {
    "description": "Title for The Narcissist metrics pack"
  },
  "metricsExpansionPack": "Pacote de Expansão de Métricas",
  "@metricsExpansionPack": {
    "description": "Subtitle for metrics expansion packs"
  },
  "purchaseTitle": "Comprar {title}",
  "@purchaseTitle": {
    "description": "Dialog title for purchasing an item",
    "placeholders": {
      "title": {
        "type": "String"
      }
    }
  },
  "notNow": "Agora não",
  "@notNow": {
    "description": "Button to dismiss purchase dialog"
  },
  "buyForPrice": "Comprar por {price}",
  "@buyForPrice": {
    "description": "Button to purchase item at given price",
    "placeholders": {
      "price": {
        "type": "String"
      }
    }
  },
  "processingPurchase": "Processando compra...",
  "@processingPurchase": {
    "description": "Dialog title shown while processing purchase"
  },
  "waitingForStoreConfirmation": "Aguardando confirmação da loja...",
  "@waitingForStoreConfirmation": {
    "description": "Status text while waiting for store confirmation"
  },
  "myMetricList": "Minha lista de métricas",
  "@myMetricList": {
    "description": "Hint text for metric list"
  },
  "botTokenSaved": "Token do bot salvo com sucesso",
  "@botTokenSaved": {
    "description": "SnackBar message when bot token is saved"
  },
  "failedToSaveError": "Falha ao salvar: {error}",
  "@failedToSaveError": {
    "description": "Error message when saving fails",
    "placeholders": {
      "error": {
        "type": "String"
      }
    }
  },
  "connectionTestNotImplemented": "Teste de conexão ainda não implementado",
  "@connectionTestNotImplemented": {
    "description": "Status message when connection test is not available"
  },
  "pasteDiscordBotTokenHint": "Cole aqui o token do bot Discord",
  "@pasteDiscordBotTokenHint": {
    "description": "Hint text for Discord bot token input"
  },
  "botTokenLabel": "Token do Bot",
  "@botTokenLabel": {
    "description": "Label for bot token field"
  },
  "botConfigButton": "Config. Bot",
  "@botConfigButton": {
    "description": "Button label for bot configuration"
  },
  "customMetricPurchasePlaceholder": "A compra de métricas personalizadas começaria aqui",
  "@customMetricPurchasePlaceholder": {
    "description": "Placeholder text for custom metric purchase"
  },
  "configureBotToken": "Configurar Token do Bot",
  "@configureBotToken": {
    "description": "Button to configure bot token"
  },
  "retryButton": "Tentar novamente",
  "@retryButton": {
    "description": "Button to retry an operation"
  },
  "ownerLabel": "Proprietário",
  "@ownerLabel": {
    "description": "Label indicating server owner"
  },
  "noMessagesInChannel": "Nenhuma mensagem encontrada neste canal",
  "@noMessagesInChannel": {
    "description": "Status when no messages are found"
  },
  "failedToImportError": "Falha ao importar: {error}",
  "@failedToImportError": {
    "description": "Error message when import fails",
    "placeholders": {
      "error": {
        "type": "String"
      }
    }
  },
  "proMembershipUpsell": "Assinatura Pro - R$19,99/mês",
  "@proMembershipUpsell": {
    "description": "Upsell text for Pro membership"
  },
  "unlockForPrice": "Desbloquear por {price}",
  "@unlockForPrice": {
    "description": "Button to unlock feature for price",
    "placeholders": {
      "price": {
        "type": "String"
      }
    }
  },
  "startCapture": "Iniciar Captura",
  "@startCapture": {
    "description": "Button to start screenshot capture"
  },
  "finishAndProcess": "Concluir e Processar",
  "@finishAndProcess": {
    "description": "Button to finish and process screenshots"
  },
  "cancelButton": "Cancelar",
  "@cancelButton": {
    "description": "Cancel button"
  },
  "processScreenshots": "Processar Capturas de Tela",
  "@processScreenshots": {
    "description": "Button to process screenshots"
  },
  "startOver": "Recomeçar",
  "@startOver": {
    "description": "Button to start over"
  },
  "capturingStatus": "Capturando...",
  "@capturingStatus": {
    "description": "Status while capturing"
  },
  "captureComplete": "Captura concluída",
  "@captureComplete": {
    "description": "Status when capture is complete"
  },
  "noMessagesInDateRange": "Nenhuma mensagem encontrada no intervalo de datas",
  "@noMessagesInDateRange": {
    "description": "Status when no messages in date range"
  },
  "errorDialogTitle": "Erro",
  "@errorDialogTitle": {
    "description": "Title for error dialog"
  },
  "failedToLoadConversation": "Falha ao carregar conversa: {error}",
  "@failedToLoadConversation": {
    "description": "Error when loading conversation fails",
    "placeholders": {
      "error": {
        "type": "String"
      }
    }
  },
  "selectConversationTitle": "Selecionar conversa",
  "@selectConversationTitle": {
    "description": "Title for conversation selection"
  },
  "platformCredentialsTitle": "Credenciais da plataforma",
  "@platformCredentialsTitle": {
    "description": "Title for platform credentials page"
  },
  "saveCredentialsTooltip": "Salvar credenciais",
  "@saveCredentialsTooltip": {
    "description": "Tooltip for save credentials button"
  },
  "upgradeToProPlusTitle": "Atualizar para Pro Plus",
  "@upgradeToProPlusTitle": {
    "description": "Dialog title for Pro Plus upgrade"
  },
  "upgradeNowButton": "Atualizar agora",
  "@upgradeNowButton": {
    "description": "Button to upgrade now"
  },
  "selectLanguageTooltip": "Selecionar idioma",
  "@selectLanguageTooltip": {
    "description": "Tooltip for language selector"
  },
  "nextSizeButton": "Próximo tamanho",
  "@nextSizeButton": {
    "description": "Button to go to next screenshot size"
  },
  "startSequenceButton": "Iniciar sequência",
  "@startSequenceButton": {
    "description": "Button to start screenshot sequence"
  },
  "nextSizeInstruction": "Clique em \"Próximo tamanho\" para a próxima dimensão",
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
Write-Host "app_pt.arb updated successfully."
