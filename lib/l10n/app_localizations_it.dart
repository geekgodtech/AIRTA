// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Analizzatore IA di Tossicità nelle Relazioni';

  @override
  String get psychologicalMetrics => 'Metriche Psicologiche';

  @override
  String get metricsDescription =>
      'Meno metriche selezionate producono un\'analisi più approfondita e concentrata di tali comportamenti. Più metriche selezionate producono un rapporto più ampio con meno dettagli per metrica.';

  @override
  String get selectSMS => 'Seleziona SMS / RCS Chat';

  @override
  String get selectDiscordChannel => 'Seleziona Canale Discord';

  @override
  String get lightMode => 'Chiaro';

  @override
  String get darkMode => 'Scuro';

  @override
  String get discordSetupTitle => 'Come Configurare Discord';

  @override
  String get discordSetupDescription =>
      'Segui questi passaggi per abilitare l\'analisi dei canali Discord nell\'app:';

  @override
  String get discordStep1Title => 'Crea un Bot Discord';

  @override
  String get discordStep1Description =>
      'Vai su discord.com/developers, crea una nuova applicazione e aggiungi un bot. Copia il token del bot.';

  @override
  String get discordStep2Title => 'Abilita i Privilegi del Bot';

  @override
  String get discordStep2Description =>
      'Nelle impostazioni del bot, abilita \'Message Content Intent\' e \'Server Members Intent\'.';

  @override
  String get discordStep3Title => 'Invita il Bot al Server';

  @override
  String get discordStep3Description =>
      'Usa il generatore di URL OAuth2 per invitare il bot al tuo server Discord con i permessi necessari.';

  @override
  String get discordStep4Title => 'Configura nell\'App';

  @override
  String get discordStep4Description =>
      'Inserisci il tuo token del bot nelle impostazioni dell\'app (contatta il supporto se hai bisogno di aiuto).';

  @override
  String get discordStep5Title => 'Seleziona il Canale';

  @override
  String get discordStep5Description =>
      'Tocca \'Seleziona Canale Discord\', scegli il tuo server, quindi seleziona il canale da analizzare.';

  @override
  String get gotIt => 'Capito';

  @override
  String get selectFile => 'Seleziona file';

  @override
  String get analyzeSelectedMetrics => 'Analizza metriche selezionate';

  @override
  String get analyze20RandomMetrics => 'Analizza 20 metriche casuali';

  @override
  String get membershipOptions => 'Opzioni di abbonamento';

  @override
  String get free => 'Gratuito';

  @override
  String get oneTimeUnlock => 'Sblocco singolo del rapporto';

  @override
  String get standard => 'Standard';

  @override
  String get discordAddon => 'Componente Discord';

  @override
  String get analyze => 'Analizza';

  @override
  String get report => 'Rapporto';

  @override
  String get pdfReport => 'Rapporto PDF';

  @override
  String get openPdf => 'Apri PDF';

  @override
  String get sharePdf => 'Condividi PDF';

  @override
  String get printPdf => 'Stampa PDF';

  @override
  String get closePdfPreview => 'Chiudi finestra anteprima PDF';

  @override
  String get openPdfPreview => 'Apri finestra anteprima PDF';

  @override
  String get pdfPreviewDescription =>
      'La finestra PDF incorporata si avvia chiusa per mantenere il rapporto compatto.';

  @override
  String get notNow => 'Non ora';

  @override
  String get unlockThisReport => 'Sblocca questo rapporto - \$20';

  @override
  String get joinStandard => 'Iscriviti a Standard - \$9.99/mese';

  @override
  String get instantUnlockTitle => 'Sblocco istantaneo del rapporto - \$20';

  @override
  String get instantUnlockDescription =>
      'Questo è un acquisto una tantum per sbloccare solo il rapporto attuale. Nessun abbonamento richiesto. I rapporti futuri richiederanno sblocchi separati o un abbonamento.\n\nProcedere con il pagamento?';

  @override
  String get purchaseFor20 => 'Acquista per \$20';

  @override
  String get share => 'Condividi';

  @override
  String get print => 'Stampa';

  @override
  String get save => 'Salva';

  @override
  String get cancel => 'Annulla';

  @override
  String get ok => 'OK';

  @override
  String get loading => 'Caricamento...';

  @override
  String get error => 'Errore';

  @override
  String get success => 'Successo';

  @override
  String get conversations => 'Conversazioni';

  @override
  String get messages => 'Messaggi';

  @override
  String get selectConversation => 'Seleziona conversazione';

  @override
  String get selectSmsConversation => 'Seleziona SMS / RCS Chat';

  @override
  String get searchConversations => 'Cerca conversazioni...';

  @override
  String get loadingConversations => 'Caricamento conversazioni...';

  @override
  String get errorLoadingConversations =>
      'Errore nel caricamento delle conversazioni';

  @override
  String get selectConversationToAnalyze =>
      'Seleziona una conversazione da analizzare';

  @override
  String get analyzeWithSelectedMetrics =>
      'Analizza con le metriche selezionate';

  @override
  String get loadConversationAndSelectMetric =>
      'Carica una conversazione e seleziona almeno una metrica';

  @override
  String get selectAtLeastOneMetric =>
      'È necessario selezionare almeno una metrica per eseguire il rapporto.';

  @override
  String get spinningMetricWheel => 'Girando la ruota delle metriche...';

  @override
  String get loadConversationToAnalyze =>
      'Carica una conversazione da analizzare';

  @override
  String get noConversationsFound => 'Nessuna conversazione trovata';

  @override
  String get permissionsRequired => 'Autorizzazioni richieste';

  @override
  String get smsPermission => 'Messaggi di testo';

  @override
  String get contactsPermission => 'Contatti';

  @override
  String get smsPermissionDescription =>
      'Per analizzare le tue conversazioni SMS alla ricerca di schemi relazionali';

  @override
  String get contactsPermissionDescription =>
      'Per visualizzare i nomi dei contatti invece dei numeri di telefono';

  @override
  String get analyzingMessage =>
      'Attendi mentre la tua analisi psicologica viene generata dall\'IA...';

  @override
  String get analyzingStatus => 'Analisi della conversazione...';

  @override
  String get analyzingSubMessage =>
      'Sii paziente, questo processo può richiedere fino a un minuto a seconda della velocità di connessione e della quantità di metriche selezionate';

  @override
  String get unlockFullReport => 'Sblocca e mostra l\'intero rapporto';

  @override
  String get fullReportLocked => 'Rapporto completo bloccato';

  @override
  String get upgradeToUnlock =>
      'Aggiorna il tuo abbonamento per sbloccare il rapporto completo di analisi psicologica con tutte le metriche e approfondimenti dettagliati.';

  @override
  String get language => 'Lingua';

  @override
  String get english => 'Inglese';

  @override
  String get spanish => 'Spagnolo';

  @override
  String get french => 'Francese';

  @override
  String get german => 'Tedesco';

  @override
  String get italian => 'Italiano';

  @override
  String get portuguese => 'Portoghese';

  @override
  String get dutch => 'Olandese';

  @override
  String get russian => 'Russo';

  @override
  String get chinese => 'Cinese';

  @override
  String get japanese => 'Giapponese';

  @override
  String get korean => 'Coreano';

  @override
  String get arabic => 'Arabo';

  @override
  String get hindi => 'Hindi';

  @override
  String get turkish => 'Turco';

  @override
  String get polish => 'Polacco';

  @override
  String get ukrainian => 'Ucraino';

  @override
  String get runAnotherAnalysis => 'Eseguire un\'altra analisi?';

  @override
  String get becomeMemberTitle =>
      'Diventa membro per ottenere il rapporto di analisi completo';

  @override
  String get becomeMemberSubtitle =>
      'Scegli il livello di accesso adatto alle conversazioni e ai rapporti che devi analizzare.';

  @override
  String get benefitAnalyzeSms => 'Analizza i messaggi di testo SMS';

  @override
  String get benefitReportPreview => 'Esegui un\'anteprima del rapporto';

  @override
  String get benefitViewPartialReport => 'Visualizza circa il 25% del rapporto';

  @override
  String get benefitLockedDetails => 'Dettagli del rapporto completo bloccati';

  @override
  String get currentFreeAccess => 'Accesso gratuito attuale';

  @override
  String get benefitUnlockCurrentReport =>
      'Sblocca questo rapporto completo attuale';

  @override
  String get benefitNoSubscription => 'Nessun abbonamento';

  @override
  String get benefitSavePrintShareThis =>
      'Salva, stampa e condividi questo rapporto';

  @override
  String get benefitBestSingleAnalysis => 'Ideale se ti serve una sola analisi';

  @override
  String get unlockThisReportShort => 'Sblocca questo rapporto';

  @override
  String get benefitFullSmsReport => 'Rapporto di analisi SMS completo';

  @override
  String get benefitSavePrintSharePdf =>
      'Salva, stampa e condividi rapporti PDF';

  @override
  String get benefitTenReports => '10 rapporti per periodo di 24 ore';

  @override
  String get benefitBestTextReview =>
      'Ideale per esaminare le relazioni via SMS';

  @override
  String get benefitDateRangeFilter =>
      'Filtra l\'analisi per intervallo di date';

  @override
  String get signUpStandard => 'Iscriviti all\'abbonamento Standard';

  @override
  String get benefitAddToStandard => 'Aggiungi all\'abbonamento Standard';

  @override
  String get benefitAnalyzeDiscord => 'Analizza le chat dei server Discord';

  @override
  String get benefitRequiresBot => 'Richiede l\'installazione del bot';

  @override
  String get benefitBestGamers => 'Ideale per giocatori e community Discord';

  @override
  String get addDiscordAnalysis => 'Aggiungi analisi Discord';

  @override
  String get requiresStandardMembership => 'Richiede l\'abbonamento Standard';

  @override
  String get comingSoon => 'Prossimamente';

  @override
  String get comingSoonWithNextUpdate =>
      'Prossimamente con il prossimo aggiornamento:';

  @override
  String get proMembershipTier => 'Livello di abbonamento Pro - \$19.99';

  @override
  String get proPlusMembershipTier =>
      'Livello di abbonamento Pro-Plus - \$24.99';

  @override
  String get proGetsLabel => 'Pro include:';

  @override
  String get proGetsDescription =>
      'Analizza i thread di chat di tutte le altre piattaforme di messaggistica e social media più diffuse come:';

  @override
  String get proPlatformsList =>
      'LinkedIn, WhatsApp, Instagram, Facebook Messenger, Telegram, X (Twitter), email e calendario';

  @override
  String get proPlusGetsLabel => 'Pro-Plus include:';

  @override
  String get proPlusGetsDescription =>
      'Tutto ciò che offre Pro, più il componente aggiuntivo Discord a un prezzo ridotto.';

  @override
  String get purchaseSuccessfulUnlocked =>
      'Acquisto riuscito! Rapporto sbloccato.';

  @override
  String get purchaseFailed => 'Acquisto non riuscito. Riprova.';

  @override
  String get membershipActivated => 'Abbonamento attivato!';

  @override
  String get dateRangeFilter => 'Filtro Intervallo Date';

  @override
  String get dateRangeOptional => '(opzionale)';

  @override
  String get startDate => 'Data di Inizio';

  @override
  String get endDate => 'Data di Fine';

  @override
  String get clear => 'Cancella';

  @override
  String get dateRangeRequiresMembership =>
      'Richiede abbonamento Standard o superiore';

  @override
  String selectUpToCount(Object current, Object max) {
    return 'Seleziona fino a $max. Attuale: $current';
  }

  @override
  String get clearSelections => 'Cancella selezioni';

  @override
  String analyzeRandomMetrics(Object count) {
    return 'Analizza $count metriche casuali';
  }

  @override
  String get saveSelections => 'Salva Selezioni';

  @override
  String get loadSelections => 'Carica Selezioni';

  @override
  String get saveMetricListName => 'Salva Lista Metriche';

  @override
  String get enterListName => 'Inserisci un nome per questa lista di metriche:';

  @override
  String get chooseSavedMetrics => 'Scegli la lista di metriche salvata:';

  @override
  String get noSavedLists =>
      'Nessuna lista di metriche salvata da caricare al momento.';

  @override
  String get metricListSaved => 'Lista di metriche salvata con successo.';

  @override
  String get metricListLoaded => 'Lista di metriche caricata con successo.';

  @override
  String get filters => 'Filtri';

  @override
  String get sortBy => 'Ordina per:';

  @override
  String get recent => 'Recente';

  @override
  String get name => 'Nome';

  @override
  String get count => 'Conteggio';

  @override
  String get namedOnly => 'Solo con nome';

  @override
  String get minMessages => 'Min. messaggi:';

  @override
  String get minimumMessages => 'Minimo di messaggi:';

  @override
  String get executiveSummary => 'Riepilogo Esecutivo';

  @override
  String get metricScores => 'Punteggi delle Metriche';

  @override
  String get contextualEvidenceExamples => 'Esempi di Evidenza Contestuale';

  @override
  String get neutralSynthesis => 'Sintesi Neutrale';

  @override
  String analysisOfSender(Object sender) {
    return 'Analisi di $sender (Mittente)';
  }

  @override
  String analysisOfReceiver(Object receiver) {
    return 'Analisi di $receiver (Destinatario)';
  }

  @override
  String get finalConclusion => 'Conclusione Finale';

  @override
  String get metric_1_name => 'Disprezzo';

  @override
  String get metric_1_description =>
      'Cerca superiorità, disgusto, scherno, linguaggio di rotolare gli occhi o insulti che pongono un partner sotto l\'altro.';

  @override
  String get metric_2_name => 'Difensiva';

  @override
  String get metric_2_description =>
      'Traccia autodifesa riflessiva, contrattacchi, scuse e rifiuto di considerare il reclamo dell\'altra persona.';

  @override
  String get metric_3_name => 'Blocco';

  @override
  String get metric_3_description =>
      'Identifica chiusura, ritiro, ignorare, rifiuto di rispondere o fine delle conversazioni per evitare l\'impegno.';

  @override
  String get metric_4_name => 'Critica';

  @override
  String get metric_4_description =>
      'Rileva attacchi al carattere o personalità invece di comportamenti specifici, bisogni o incidenti.';

  @override
  String get metric_5_name => 'Indicatori di Gaslighting';

  @override
  String get metric_5_description =>
      'Segnala tentativi di far dubitare qualcuno della memoria, percezione, sanità mentale o legittimità della propria esperienza.';

  @override
  String get metric_6_name => 'Spostamento della Colpa';

  @override
  String get metric_6_description =>
      'Misura se la responsabilità viene reindirizzata sull\'altro partner invece di essere riconosciuta direttamente.';

  @override
  String get metric_7_name => 'Pattern di Escalation';

  @override
  String get metric_7_description =>
      'Valuta se tono, accuse, intensità o minacce aumentano invece di muoversi verso la risoluzione.';

  @override
  String get metric_8_name => 'Riconoscimento dei Tentativi di Riparazione';

  @override
  String get metric_8_description =>
      'Verifica se scuse, umorismo, pause, rassicurazione o offerte di pace sono notate e accettate.';

  @override
  String get metric_9_name => 'Linguaggio di Responsabilità';

  @override
  String get metric_9_description =>
      'Cerca chiara proprietà del danno, responsabilità specifica e volontà di cambiare il comportamento.';

  @override
  String get metric_10_name => 'Rispetto dei Confini';

  @override
  String get metric_10_description =>
      'Valuta se i limiti dichiarati attorno al tempo, privacy, corpo, emozioni o contatto sono onorati.';

  @override
  String get metric_11_name => 'Indicatori di Controllo Coercitivo';

  @override
  String get metric_11_description =>
      'Segnala pattern di intimidazione, restrizione, monitoraggio, dipendenza o controllo su scelte e movimenti.';

  @override
  String get metric_12_name => 'Linguaggio di Minaccia';

  @override
  String get metric_12_description =>
      'Identifica minacce esplicite o implicite che coinvolgono sicurezza, abbandono, esposizione, rappresaglia o punizione.';

  @override
  String get metric_13_name => 'Disprezzo';

  @override
  String get metric_13_description =>
      'Rileva spazzare via preoccupazioni, trattare bisogni come non importanti o rifiutare di prendere sul serio la sofferenza.';

  @override
  String get metric_14_name => 'Invalidazione';

  @override
  String get metric_14_description =>
      'Misura negazione, ridicolo o correzione delle emozioni di un\'altra persona invece di riconoscerle.';

  @override
  String get metric_15_name => 'Espressione di Empatia';

  @override
  String get metric_15_description =>
      'Cerca presa di prospettiva, cura, riconoscimento emotivo e preoccupazione per l\'esperienza dell\'altra persona.';

  @override
  String get metric_16_name => 'Reciprocità';

  @override
  String get metric_16_description =>
      'Valuta se attenzione, sforzo, scuse, compromesso e supporto emotivo fluiscono in entrambe le direzioni.';

  @override
  String get metric_17_name => 'Regolazione Emotiva';

  @override
  String get metric_17_description =>
      'Valuta capacità di rimanere radicati, fare una pausa, auto-calmarsi e comunicare senza reattività esplosiva.';

  @override
  String get metric_18_name => 'Sarcasmo Usato come Danno';

  @override
  String get metric_18_description =>
      'Segnala sarcasmo usato per sminuire, punire, umiliare o mascherare ostilità come umorismo.';

  @override
  String get metric_19_name => 'Insulti';

  @override
  String get metric_19_description =>
      'Identifica etichette dispregiative, insulti, volgarità dirette alla persona o attacchi basati sull\'identità.';

  @override
  String get metric_20_name => 'Pattern di Trattamento Silenzioso';

  @override
  String get metric_20_description =>
      'Traccia silenzio usato come punizione, controllo, evitamento o ritiro di connessione.';

  @override
  String get metric_21_name => 'Inquadratura della Gelosia';

  @override
  String get metric_21_description =>
      'Valuta sospetto, possessività, accuse o gelosia presentate come prova di cura.';

  @override
  String get metric_22_name => 'Pressione di Isolamento';

  @override
  String get metric_22_description =>
      'Segnala sforzi per separare un partner da amici, famiglia, sistemi di supporto o prospettive esterne.';

  @override
  String get metric_23_name => 'Indicatori di Controllo Finanziario';

  @override
  String get metric_23_description =>
      'Cerca controllo di denaro, spese, impiego, accesso ai conti o indipendenza finanziaria.';

  @override
  String get metric_24_name => 'Indicatori di Invasione della Privacy';

  @override
  String get metric_24_description =>
      'Rileva spionaggio, richieste di password, controlli dei dispositivi, tracciamento della posizione o violazioni della privacy.';

  @override
  String get metric_25_name => 'Specificità delle Scuse';

  @override
  String get metric_25_description =>
      'Misura se le scuse nominano il danno esatto, l\'impatto e la correzione futura invece di rimanere vaghe.';

  @override
  String get metric_26_name => 'Pressione del Perdono';

  @override
  String get metric_26_description =>
      'Segnala richieste di andare avanti, perdonare rapidamente o smettere di discutere il danno prima che avvenga la riparazione.';

  @override
  String get metric_27_name => 'Minimizzazione';

  @override
  String get metric_27_description =>
      'Rileva sminuire il danno, chiamare preoccupazioni serie drammatiche o ridurre l\'impatto per evitare la responsabilità.';

  @override
  String get metric_28_name => 'Proiezione';

  @override
  String get metric_28_description =>
      'Cerca accuse che riflettono il proprio comportamento, motivi o sentimenti non risolti del parlante.';

  @override
  String get metric_29_name => 'Pattern di Interruzione';

  @override
  String get metric_29_description =>
      'Traccia interrompere, parlare sopra, rifiutare di completare o controllare i turni conversazionali.';

  @override
  String get metric_30_name => 'Deviazione dell\'Argomento';

  @override
  String get metric_30_description =>
      'Identifica cambiare argomento, portare problemi non correlati o evitare la preoccupazione centrale.';

  @override
  String get metric_31_name => 'Orientazione alla Risoluzione';

  @override
  String get metric_31_description =>
      'Misura se i messaggi mirano a soluzioni, chiarezza, accordi e prossimi passi.';

  @override
  String get metric_32_name => 'Risoluzione Mutua dei Problemi';

  @override
  String get metric_32_description =>
      'Valuta linguaggio collaborativo, responsabilità condivisa, brainstorming e volontà di trovare compromessi praticabili.';

  @override
  String get metric_33_name => 'Inondazione Emotiva';

  @override
  String get metric_33_description =>
      'Rileva sopraffazione, panico, chiusura, spirale o incapacità di elaborare durante il conflitto.';

  @override
  String get metric_34_name => 'Cue di Risposta alla Paura';

  @override
  String get metric_34_description =>
      'Cerca placare, scelta attenta delle parole, terrore, preoccupazioni di sicurezza o paura della reazione del partner.';

  @override
  String get metric_35_name => 'Coerenza delle Affermazioni';

  @override
  String get metric_35_description =>
      'Valuta se i resoconti rimangono internamente coerenti attraverso messaggi e tempo.';

  @override
  String get metric_36_name => 'Ricordo Basato su Evidenze';

  @override
  String get metric_36_description =>
      'Verifica se le affermazioni fanno riferimento a eventi concreti, citazioni, cronologie o comportamento osservabile.';

  @override
  String get metric_37_name => 'Pattern di Domanda e Ritiro';

  @override
  String get metric_37_description =>
      'Traccia un partner che cerca risposte o cambiamenti mentre l\'altro evita, si chiude o esce.';

  @override
  String get metric_38_name => 'Indicatori di Squilibrio di Potere';

  @override
  String get metric_38_description =>
      'Segnala potere decisionale disuguale, paura delle conseguenze, dipendenza, intimidazione o controllo unilaterale.';

  @override
  String get metric_39_name => 'Disaccordo Rispettoso';

  @override
  String get metric_39_description =>
      'Misura se il conflitto preserva dignità, curiosità e disaccordo senza degradazione.';

  @override
  String get metric_40_name => 'Ciclo di Rottura e Riparazione';

  @override
  String get metric_40_description =>
      'Valuta se il conflitto è seguito da riconoscimento, riconnessione e riparazione effettiva.';

  @override
  String get metric_41_name => 'Ritiro di Affetto';

  @override
  String get metric_41_description =>
      'Rileva amore, calore, sesso, attenzione o rassicurazione trattenuti come punizione o leva.';

  @override
  String get metric_42_name => 'Riferimenti di Umiliazione Pubblica';

  @override
  String get metric_42_description =>
      'Segnala minacce, scherzi o azioni che imbarazzano il partner davanti agli altri.';

  @override
  String get metric_43_name => 'Cue di Conflitto Legato a Sostanze';

  @override
  String get metric_43_description =>
      'Cerca uso di alcol o droghe legato ad aggressione, inaffidabilità, conflitto o danno.';

  @override
  String get metric_44_name => 'Pressione di Conflitto Genitoriale';

  @override
  String get metric_44_description =>
      'Identifica figli, custodia, ruoli genitoriali o colpa genitoriale usati nel conflitto o come leva.';

  @override
  String get metric_45_name => 'Rispetto dei Confini Sessuali';

  @override
  String get metric_45_description =>
      'Valuta rispetto per consenso, pressione, rifiuto, comfort, tempistica e autonomia sessuale.';

  @override
  String get metric_46_name => 'Indicatori di Molestia Digitale';

  @override
  String get metric_46_description =>
      'Traccia messaggi indesiderati ripetuti, chiamate spam, pressione online, sorveglianza o intimidazione basata su piattaforme.';

  @override
  String get metric_47_name => 'Linguaggio di Monitoraggio o Sorveglianza';

  @override
  String get metric_47_description =>
      'Segnala verificare il parco, richiedere prove, tracciare il comportamento o verifica costante.';

  @override
  String get metric_48_name => 'Orientazione Futura';

  @override
  String get metric_48_description =>
      'Misura se i partner discutono miglioramento futuro, impegni, piani o direzione costruttiva.';

  @override
  String get metric_49_name => 'Segnali di Pianificazione della Sicurezza';

  @override
  String get metric_49_description =>
      'Cerca tentativi di cercare aiuto, creare distanza, documentare il danno o pianificare la sicurezza fisica/emotiva.';

  @override
  String get metric_50_name => 'Tentativi Mutui di De-escalation';

  @override
  String get metric_50_description =>
      'Traccia pause, linguaggio calmante, tono più morbido, timeout e tentativi di entrambi i partner per ridurre l\'intensità.';

  @override
  String get metric_51_name => 'Cue di Attaccamento Sicuro';

  @override
  String get metric_51_description =>
      'Identifica fiducia, rassicurazione diretta, disponibilità emotiva e comfort con vicinanza e indipendenza.';

  @override
  String get metric_52_name => 'Attivazione di Attaccamento Ansioso';

  @override
  String get metric_52_description =>
      'Segnala comportamento di protesta, bisogni urgenti di rassicurazione, paura dell\'abbandono e sensibilità elevata alla distanza.';

  @override
  String get metric_53_name => 'Distanziamento di Attaccamento Evitante';

  @override
  String get metric_53_description =>
      'Rileva minimizzazione emotiva, difese di indipendenza, ritiro dalla vulnerabilità o disagio con i bisogni.';

  @override
  String get metric_54_name => 'Segnali di Attaccamento Disorganizzato';

  @override
  String get metric_54_description =>
      'Cerca cicli di avvicinamento-evitamento, paura mista con bisogno, reazioni caotiche o pattern di intimità confusi.';

  @override
  String get metric_55_name => 'Offerte Emotive e Risposte';

  @override
  String get metric_55_description =>
      'Misura inviti per attenzione, comfort o connessione e se sono accettati o persi.';

  @override
  String get metric_56_name => 'Allontanarsi dalla Connessione';

  @override
  String get metric_56_description =>
      'Segnala ignorare, respingere o fallire nel rispondere a offerte di vicinanza o supporto.';

  @override
  String get metric_57_name => 'Voltarsi Contro la Connessione';

  @override
  String get metric_57_description =>
      'Rileva risposte ostili o punitive a tentativi di affetto, vulnerabilità o riparazione.';

  @override
  String get metric_58_name => 'Sovrascrittura del Sentimento Positivo';

  @override
  String get metric_58_description =>
      'Cerca generosità, beneficio del dubbio, affetto e interpretare il conflitto attraverso la cura.';

  @override
  String get metric_59_name => 'Sovrascrittura del Sentimento Negativo';

  @override
  String get metric_59_description =>
      'Segnala assumere cattive intenzioni, interpretare messaggi neutri negativamente e inquadratura ostile persistente.';

  @override
  String get metric_60_name => 'Pattern di Inizio Duro';

  @override
  String get metric_60_description =>
      'Identifica conversazioni che iniziano con accusa, attacco, disprezzo o colpa invece di una richiesta.';

  @override
  String get metric_61_name => 'Pattern di Inizio Morbido';

  @override
  String get metric_61_description =>
      'Cerca aperture gentili usando sentimenti, bisogni, richieste specifiche e linguaggio non accusatorio.';

  @override
  String get metric_62_name => 'Auto-calmazione Fisiologica';

  @override
  String get metric_62_description =>
      'Valuta tentativi di fare una pausa, respirare, prendere spazio o regolare il corpo prima di continuare il conflitto.';

  @override
  String get metric_63_name => 'Pattern di Evitamento del Conflitto';

  @override
  String get metric_63_description =>
      'Traccia evitamento ripetuto di argomenti necessari, disagio, disaccordo o onestà emotiva.';

  @override
  String get metric_64_name => 'Stile di Conflitto Volatile';

  @override
  String get metric_64_description =>
      'Rileva conflitto ad alta intensità con espressione diretta che può ancora includere impegno e riparazione.';

  @override
  String get metric_65_name => 'Stile di Conflitto Validante';

  @override
  String get metric_65_description =>
      'Misura se i partner riconoscono la prospettiva dell\'altro mentre sono in disaccordo.';

  @override
  String get metric_66_name => 'Stile di Conflitto Ostile';

  @override
  String get metric_66_description =>
      'Segnala critica frequente, disprezzo, difensiva, attacchi e inquadratura avversariale.';

  @override
  String get metric_67_name => 'Pattern Ostile-Distaccato';

  @override
  String get metric_67_description =>
      'Identifica ostilità fredda, disimpegno emotivo, disprezzo e bassa motivazione di riparazione.';

  @override
  String get metric_68_name => 'Volontà di Compromesso';

  @override
  String get metric_68_description =>
      'Cerca flessibilità, negoziazione, proposte di terreno di mezzo e sacrifici che rispettano entrambi i bisogni.';

  @override
  String get metric_69_name => 'Accettazione dell\'Influenza';

  @override
  String get metric_69_description =>
      'Misura apertura a essere influenzati dai sentimenti, bisogni o prospettiva del partner.';

  @override
  String get metric_70_name => 'Segnali di Conflitto Bloccato';

  @override
  String get metric_70_description =>
      'Segnala problemi non risolti ripetuti legati a valori, sogni, identità o incompatibilità cronica.';

  @override
  String get metric_71_name => 'Inquadratura di Problema Risolvibile';

  @override
  String get metric_71_description =>
      'Rileva definizioni di problemi pratiche e concrete che possono portare a accordi specifici.';

  @override
  String get metric_72_name => 'Riferimenti di Significato Condiviso';

  @override
  String get metric_72_description =>
      'Cerca valori, rituali, obiettivi, ricordi o linguaggio di identità che crea una storia di relazione condivisa.';

  @override
  String get metric_73_name => 'Consapevolezza della Mappa dell\'Amore';

  @override
  String get metric_73_description =>
      'Valuta conoscenza del mondo interiore, stressori, preferenze, paure e vita quotidiana del partner.';

  @override
  String get metric_74_name => 'Affetto e Ammirazione';

  @override
  String get metric_74_description =>
      'Identifica apprezzamento, rispetto, calore, complimenti, gratitudine e considerazione positiva.';

  @override
  String get metric_75_name => 'Squilibrio del Lavoro Emotivo';

  @override
  String get metric_75_description =>
      'Segnala un partner che porta pianificazione sproporzionata, calmamento, ricordo, spiegazione o manutenzione della relazione.';

  @override
  String get metric_76_name => 'Respinto del Carico Mentale';

  @override
  String get metric_76_description =>
      'Rileva minimizzare il lavoro di pianificazione invisibile, coordinazione domestica, programmazione o tracciamento della responsabilità.';

  @override
  String get metric_77_name => 'Cue di Incompetenza Armata';

  @override
  String get metric_77_description =>
      'Cerca rivendicare incapacità, confusione o impotenza per evitare responsabilità equa.';

  @override
  String get metric_78_name => 'Sensibilità ai Trigger di Trauma';

  @override
  String get metric_78_description =>
      'Misura consapevolezza dei trigger, risposte al trauma e gestione attenta di argomenti vulnerabili.';

  @override
  String get metric_79_name => 'Cue di Ipervigilanza';

  @override
  String get metric_79_description =>
      'Segnala scansionare per pericolo, monitoraggio eccessivo del tono, paura degli errori o allerta emotiva costante.';

  @override
  String get metric_80_name => 'Linguaggio della Paura dell\'Abbandono';

  @override
  String get metric_80_description =>
      'Rileva paura di essere lasciato, sostituito, ignorato, scartato o abbandonato emotivamente.';

  @override
  String get metric_81_name => 'Pattern di Ricerca di Rassicurazione';

  @override
  String get metric_81_description =>
      'Traccia richieste ripetute di prova di amore, impegno, sicurezza o interesse continuo.';

  @override
  String get metric_82_name => 'Ciclo Inseguitore-Distanziatore';

  @override
  String get metric_82_description =>
      'Identifica un partner che scala la ricerca di vicinanza mentre l\'altro aumenta la distanza.';

  @override
  String get metric_83_name => 'Accumulo di Risentimento';

  @override
  String get metric_83_description =>
      'Cerca rancori immagazzinati, riferimenti ripetuti al passato, amarezza e debito emotivo non risolto.';

  @override
  String get metric_84_name => 'Comportamento di Conteggio dei Punti';

  @override
  String get metric_84_description =>
      'Segnala conteggio transazionale di difetti, favori, sacrifici o errori per guadagnare leva.';

  @override
  String get metric_85_name => 'Affetto Condizionale';

  @override
  String get metric_85_description =>
      'Rileva amore, approvazione, accesso o calore offerti solo quando viene raggiunta la conformità.';

  @override
  String get metric_86_name => 'Indicatori di Love Bombing';

  @override
  String get metric_86_description =>
      'Segnala affetto intenso, promesse, pressione o idealizzazione usati per accelerare l\'attaccamento o il controllo.';

  @override
  String get metric_87_name => 'Tentativi di Hoovering';

  @override
  String get metric_87_description =>
      'Identifica tentativi di tirare indietro qualcuno attraverso colpa, nostalgia, promesse, crisi o affetto improvviso.';

  @override
  String get metric_88_name => 'Pattern DARVO';

  @override
  String get metric_88_description =>
      'Rileva negare, attaccare e invertire vittima-caricoattore quando confrontato sul danno.';

  @override
  String get metric_89_name => 'Pattern di Postura di Vittima';

  @override
  String get metric_89_description =>
      'Segnala auto-vittimizzazione ricorrente che evita la responsabilità o reindirizza l\'attenzione dal danno causato.';

  @override
  String get metric_90_name => 'Inquadratura di Superiorità Morale';

  @override
  String get metric_90_description =>
      'Cerca rettitudine, rivendicazioni di purezza o superiorità etica usata per dominare il conflitto.';

  @override
  String get metric_91_name => 'Assassinio del Carattere';

  @override
  String get metric_91_description =>
      'Rileva attacchi ampi su identità, integrità, salute mentale o valore invece di comportamento specifico.';

  @override
  String get metric_92_name => 'Indicatori di Triangolazione';

  @override
  String get metric_92_description =>
      'Segnala portare terze parti nel conflitto per premere, confrontare, validare o destabilizzare il partner.';

  @override
  String get metric_93_name => 'Pressione di Confronto Sociale';

  @override
  String get metric_93_description =>
      'Cerca confronti con ex, amici, altre coppie o ideali usati per vergognare o costringere.';

  @override
  String get metric_94_name => 'Supporto dell\'Autonomia';

  @override
  String get metric_94_description =>
      'Misura rispetto per scelte indipendenti, amicizie, obiettivi, confini e agenzia personale.';

  @override
  String get metric_95_name => 'Rispetto del Consenso e della Scelta';

  @override
  String get metric_95_description =>
      'Valuta se le decisioni sono prese liberamente senza pressione, colpa, minacce o manipolazione.';

  @override
  String get metric_96_name => 'Pianificazione Collaborativa';

  @override
  String get metric_96_description =>
      'Cerca programmazione condivisa, decisioni congiunte, responsabilità coordinate e follow-through pratico.';

  @override
  String get metric_97_name => 'Follow-through di Riparazione';

  @override
  String get metric_97_description =>
      'Misura se i cambiamenti promessi sono successivamente riflessi nel comportamento, non solo nelle parole.';

  @override
  String get metric_98_name => 'Evidenza di Comportamento Cambiato';

  @override
  String get metric_98_description =>
      'Verifica azioni osservabili e ripetute che mostrano apprendimento, aggiustamento o comportamento dannoso ridotto.';

  @override
  String get metric_99_name => 'Linguaggio di Sicurezza Emotiva';

  @override
  String get metric_99_description =>
      'Identifica linguaggio che invita all\'onestà, riduce la paura, protegge la dignità e rassicura l\'espressione sicura.';

  @override
  String get metric_100_name => 'Ambivalenza Relazionale';

  @override
  String get metric_100_description =>
      'Rileva incertezza, impegno misto, messaggi di spingere-tirare o desiderio poco chiaro di continuare.';

  @override
  String get unableToOpenConversations => 'Impossibile aprire le conversazioni';

  @override
  String get unableToOpenConversationsBody =>
      'Si è verificato un errore durante il caricamento delle conversazioni. Per favore riprova.';

  @override
  String get unableToLoadConversationsBody =>
      'Impossibile caricare le conversazioni. Controlla le autorizzazioni e riprova.';

  @override
  String get errorLoadingConversationsBody =>
      'Errore durante il caricamento delle conversazioni. Per favore riprova.';

  @override
  String get smsPermissionRequired => 'Autorizzazione SMS richiesta';

  @override
  String get smsPermissionRequiredBody =>
      'Per analizzare le conversazioni SMS, abbiamo bisogno dell\'autorizzazione per leggere i tuoi messaggi. La tua privacy è importante — i messaggi vengono analizzati solo localmente e non vengono mai archiviati sui nostri server.';

  @override
  String get grantSmsPermission => 'Concedi autorizzazione SMS';

  @override
  String get noSmsConversationsFound => 'Nessuna conversazione SMS trovata';

  @override
  String get noConversationsMatchSearch =>
      'Nessuna conversazione corrisponde alla tua ricerca';

  @override
  String get noSmsMessagesOnDevice =>
      'Non hai messaggi SMS su questo dispositivo';

  @override
  String get tryDifferentSearch => 'Prova un termine di ricerca diverso';

  @override
  String get clearSearch => 'Cancella ricerca';

  @override
  String selectedFile(String filename) {
    return 'Selezionato: $filename';
  }

  @override
  String get invalidFile => 'File non valido';

  @override
  String get fileImport => 'Importa file';

  @override
  String get fileImportNotImplemented =>
      'L\'analisi dei file non è ancora implementata per questo tipo di file.';

  @override
  String get errorPickingFile =>
      'Impossibile aprire il file. Per favore riprova.';

  @override
  String get readyToCapture => 'Pronto per acquisire';

  @override
  String get readyToCaptureBody =>
      'Passa all\'app Messaggi ora e inizia a fare screenshot.\n\nTorna a questa app quando hai finito e tocca \"Fine e Elabora\".';

  @override
  String get noScreenshotsToProcess => 'Nessuno screenshot da elaborare.';

  @override
  String processingScreenshot(int current, int total) {
    return 'Elaborazione screenshot $current di $total...';
  }

  @override
  String get noMessagesFound => 'Nessun messaggio trovato';

  @override
  String get noMessagesFoundBody =>
      'Impossibile estrarre messaggi dagli screenshot.\n\nAssicurati che gli screenshot mostrino chiaramente la conversazione.';

  @override
  String loadedMessages(int count) {
    return '$count messaggi caricati dagli screenshot';
  }

  @override
  String get processingError => 'Errore di elaborazione';

  @override
  String get processingErrorBody =>
      'Errore durante l\'elaborazione degli screenshot. Per favore riprova.';

  @override
  String metricListSavedAs(String name) {
    return 'Le tue selezioni sono state salvate come \"$name\".';
  }

  @override
  String metricListLoadedName(String name) {
    return 'Le selezioni \"$name\" sono state recuperate e applicate.';
  }

  @override
  String conversationLoaded(int count, String name) {
    return '$count messaggi caricati da $name';
  }

  @override
  String get loadButton => 'Carica';

  @override
  String get photoPermissionRequired =>
      'L\'autorizzazione alla libreria foto è necessaria per rilevare gli screenshot.';

  @override
  String get initializingConnection => 'Inizializzazione connessione sicura...';

  @override
  String get configurationRequired => 'Configurazione richiesta';

  @override
  String get goBack => 'Indietro';

  @override
  String get enableDateRangeFiltering =>
      'Abilita filtraggio per intervallo di date';

  @override
  String get clearSelectedDateRange => 'Cancella intervallo date selezionato';

  @override
  String get largeThreadNoticeTitle => 'AVVISO ALL\'UTENTE';

  @override
  String get largeThreadNoticeBody =>
      'Quando si gestiscono thread di testo eccezionalmente grandi, alcune schermate di caricamento in questa app potrebbero superare un minuto e mezzo.\n\nL\'applicazione non si blocca. Se vedi un indicatore di stato che gira, l\'app è ancora in caricamento.\n\nSii paziente in questi casi, poiché il tempo di caricamento potrebbe essere più lungo del solito rispetto ad altre applicazioni, specialmente con un grande set di dati come un thread con 50.000 messaggi.';

  @override
  String get neverShowThisAgain => 'Non mostrare più questo messaggio';

  @override
  String loadingConversationWith(String name) {
    return 'Caricamento conversazione\ncon $name…';
  }

  @override
  String get iosCaptureInstructions =>
      '1. Apri l\'app Messaggi e seleziona la conversazione\n2. Scorri fino al messaggio più vecchio che vuoi analizzare\n3. Tocca \"Inizia acquisizione\" qui sotto\n4. Fai screenshot scorrendo la conversazione\n5. Quando hai finito, tocca \"Fine ed elabora\"';

  @override
  String get howToCaptureIosMessages => 'Come acquisire messaggi iOS';

  @override
  String get deepSeekApiKey => 'Chiave API DeepSeek';

  @override
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis =>
      'Inserisci la tua chiave API DeepSeek per abilitare l\'analisi AI.';

  @override
  String get getYourApiKeyFrom =>
      'Ottieni la tua chiave API da: https://platform.deepseek.com';

  @override
  String get apiKey => 'Chiave API';

  @override
  String get skPlaceholder => 'sk-...';

  @override
  String get yourApiKeyIsStoredSecurely =>
      'La tua chiave API è archiviata in modo sicuro sul tuo dispositivo e non viene mai condivisa.';

  @override
  String get pleaseEnterApiKey => 'Inserisci una chiave API';

  @override
  String get apiKeySavedSuccessfully => 'Chiave API salvata con successo!';

  @override
  String get pleaseBePatientLongerTextThreads =>
      'Sii paziente, i set di dati di thread di testo più lunghi richiedono molto tempo per caricare';

  @override
  String get almostThereBigOne =>
      'Quasi finito, Wow, questo deve essere stato grande';

  @override
  String get pleaseBePatientLargeDatasets =>
      'Sii paziente, i set di dati grandi potrebbero comportare tempi di caricamento superiori a un minuto e mezzo';

  @override
  String continuingToLoadMassiveThread(String name) {
    return 'Continuando a caricare il thread massiccio con $name…';
  }

  @override
  String get noMessagesInDateRange =>
      'Nessun messaggio trovato nell\'intervallo di date selezionato. Seleziona date diverse o cancella il filtro data.';

  @override
  String get purchaseCustomMetricTileTitle => 'Acquista metrica personalizzata';

  @override
  String get purchaseCustomMetricTileDescription =>
      'Per una tariffa unica di \$4.99, inserisci un nome e una definizione di metrica personalizzata salvati permanentemente insieme alle tue altre metriche per l\'uso in qualsiasi analisi futura. Acquista metriche personalizzate illimitate.';

  @override
  String get purchaseCustomMetricConfirmTitle =>
      'Acquista metrica personalizzata';

  @override
  String get purchaseCustomMetricConfirmBody =>
      'Ti verrà addebitato \$4.99 (una tantum) per sbloccare uno slot per metrica personalizzata.\n\nIl nome e la definizione della tua metrica personalizzata sono permanenti e non potranno mai essere modificati una volta salvati, quindi scegli attentamente.';

  @override
  String get purchaseCustomMetricConfirmButton => 'Acquista — \$4.99';

  @override
  String get purchaseCustomMetricEnterNameTitle =>
      'Nome metrica personalizzata';

  @override
  String get purchaseCustomMetricEnterNamePrompt =>
      'Inserisci il nome per la tua metrica personalizzata:';

  @override
  String get purchaseCustomMetricNameHint => 'Nome metrica';

  @override
  String get purchaseCustomMetricConfirmNameTitle => 'Conferma nome metrica';

  @override
  String get purchaseCustomMetricConfirmNameYouEntered => 'Hai inserito:\n\n';

  @override
  String get purchaseCustomMetricConfirmNameWarning =>
      '\n\n⚠️  Questo è FINALE e non potrà MAI essere modificato.';

  @override
  String get purchaseCustomMetricReenterName => 'Ops — Reinserisci nome';

  @override
  String get purchaseCustomMetricSaveName => 'OK — Salva nome metrica';

  @override
  String purchaseCustomMetricDefineTitleWithName(String name) {
    return 'Definisci: $name';
  }

  @override
  String purchaseCustomMetricDefinePromptWithName(String name) {
    return 'Inserisci il significato della tua metrica personalizzata: $name';
  }

  @override
  String get purchaseCustomMetricMeaningHint =>
      'Descrivi cosa significa questa metrica, quali comportamenti cerca e come si applica alla dinamica delle relazioni...';

  @override
  String get purchaseCustomMetricReenter => 'Ops — Reinserisci';

  @override
  String get purchaseCustomMetricSaveMeaning => 'OK — Salva significato';

  @override
  String get purchaseCustomMetricPreviewTitle =>
      'Anteprima della tua metrica personalizzata';

  @override
  String get purchaseCustomMetricPreviewSubtitle =>
      'Ecco come apparirà la tua tessera:';

  @override
  String get purchaseCustomMetricLastChanceWarning =>
      '⚠️  Questa è la tua ULTIMA CHANCE di cambiare idea.\nUna volta confermato, il nome e la definizione sono permanenti.';

  @override
  String get purchaseCustomMetricCancelEverything => 'Annulla tutto';

  @override
  String get purchaseCustomMetricCommit => 'Conferma metrica personalizzata';

  @override
  String purchaseCustomMetricSuccess(String name) {
    return '✓ \"$name\" aggiunto alle tue metriche! Ora puoi selezionarlo per l\'analisi.';
  }

  @override
  String get purchaseCustomMetricProcessingTitle => 'Elaborazione acquisto...';

  @override
  String get purchaseCustomMetricProcessingBody =>
      'In attesa di conferma dallo store.\nSi prega di non chiudere l\'app.';

  @override
  String get next => 'Avanti';

  @override
  String get cancelNotReady => 'Annulla — Non ero pronto';

  @override
  String get packGoodLabel => 'Il Buono';

  @override
  String get packBadLabel => 'Il Brutto';

  @override
  String get packUglyLabel => 'Il Cattivo';

  @override
  String get metric_good_1_name => 'Segnali di ascolto attivo';

  @override
  String get metric_good_1_description =>
      'Rileva parafrasi, domande di chiarimento e dimostrazioni di comprensione della prospettiva del partner nel testo.';

  @override
  String get metric_good_2_name => 'Espressione di Apprezzamento';

  @override
  String get metric_good_2_description =>
      'Identifica gratitudine specifica, riconoscimento dello sforzo e apprezzamento delle qualità o azioni positive del partner.';

  @override
  String get metric_good_3_name => 'Linguaggio di Affermazione';

  @override
  String get metric_good_3_description =>
      'Cerca dichiarazioni che convalidano i sentimenti, le esperienze, il valore o il diritto del partner di avere bisogni.';

  @override
  String get metric_good_4_name => 'Tono collaborativo';

  @override
  String get metric_good_4_description =>
      'Misura l\'uso di \"noi\", linguaggio di risoluzione dei problemi congiunta e inquadramento delle questioni come sfide comuni da affrontare insieme.';

  @override
  String get metric_good_5_name => 'Curiosità Verso il Partner';

  @override
  String get metric_good_5_description =>
      'Tiene traccia delle domande sui pensieri, sentimenti, giornata, preferenze o esperienze interiori del partner.';

  @override
  String get metric_good_6_name => 'Espressione di Vulnerabilità';

  @override
  String get metric_good_6_description =>
      'Identifica la condivisione di paure, insicurezze, bisogni o verità emotive senza difensività o colpa.';

  @override
  String get metric_good_7_name => 'Umorismo come Connessione';

  @override
  String get metric_good_7_description =>
      'Rileva risate giocose condivise che uniscono i partner, senza deridere o sminuire.';

  @override
  String get metric_good_8_name => 'Offerta di Rassicurazione';

  @override
  String get metric_good_8_description =>
      'Cerca dichiarazioni proattive che offrano conforto, sicurezza o fiducia al partner ansioso.';

  @override
  String get metric_good_9_name => 'Frequenza dei Complimenti';

  @override
  String get metric_good_9_description =>
      'Misura lodi specifiche e genuine su aspetto, carattere, abilità o azioni positive.';

  @override
  String get metric_good_10_name => 'Disponibilità Emotiva';

  @override
  String get metric_good_10_description =>
      'Valuta la reattività ai bisogni emotivi del partner, la presenza durante il disagio e la volontà di impegnarsi.';

  @override
  String get metric_good_11_name => 'Abitudine alla Gratitudine';

  @override
  String get metric_good_11_description =>
      'Identifica espressioni regolari di gratitudine per piccole cose, sforzi, presenza o supporto.';

  @override
  String get metric_good_12_name => 'Linguaggio di Supporto';

  @override
  String get metric_good_12_description =>
      'Traccia dichiarazioni che offrono aiuto, incoraggiamento, fiducia nelle capacità del partner o sostegno.';

  @override
  String get metric_good_13_name => 'Disaccordo Gentile';

  @override
  String get metric_good_13_description =>
      'Misura la capacità di esprimere opinioni diverse preservando rispetto, curiosità e la relazione.';

  @override
  String get metric_good_14_name => 'Sincerità delle Scuse';

  @override
  String get metric_good_14_description =>
      'Rileva sincero rimorso, comprensione dell\'impatto e impegno al cambiamento senza scuse.';

  @override
  String get metric_good_15_name => 'Accettazione del Perdono';

  @override
  String get metric_good_15_description =>
      'Cerca la volontà di lasciar andare il danno passato, andare avanti e ricostruire la fiducia dopo la riparazione.';

  @override
  String get metric_good_16_name => 'Iniziativa per il Tempo di Qualità';

  @override
  String get metric_good_16_description =>
      'Identifica offerte di trascorrere tempo di qualità insieme, pianificare attività o creare momenti di connessione.';

  @override
  String get metric_good_17_name => 'Segnali di Affetto Fisico';

  @override
  String get metric_good_17_description =>
      'Traccia menzioni di contatto fisico, abbracci, baci o vicinanza fisica come espressioni di cura e intimità.';

  @override
  String get metric_good_18_name => 'Riconoscimento della Gioia Condivisa';

  @override
  String get metric_good_18_description =>
      'Misura il celebrare i successi, i traguardi, la felicità o le buone notizie del partner con entusiasmo genuino.';

  @override
  String get metric_good_19_name => 'Sforzo di risoluzione del conflitto';

  @override
  String get metric_good_19_description =>
      'Identifica i tentativi di trovare soluzioni, compromessi o ripristinare la pace dopo un disaccordo.';

  @override
  String get metric_good_20_name => 'Dimostrazione di pazienza';

  @override
  String get metric_good_20_description =>
      'Rileva la tolleranza per il ritmo, le difficoltà, la curva di apprendimento o le esigenze emotive del partner.';

  @override
  String get metric_good_21_name => 'Linguaggio di assunzione di prospettiva';

  @override
  String get metric_good_21_description =>
      'Cerca dichiarazioni che mostrino comprensione del punto di vista, del contesto o della realtà emotiva del partner.';

  @override
  String get metric_good_22_name => 'Segnali di affidabilità';

  @override
  String get metric_good_22_description =>
      'Tiene traccia del mantenimento delle promesse, della costanza e dell\'affidabilità.';

  @override
  String get metric_good_23_name => 'Rispetto delle differenze';

  @override
  String get metric_good_23_description =>
      'Misura l\'accettazione dei tratti unici, delle preferenze, delle opinioni e dei modi di essere del partner.';

  @override
  String get metric_good_24_name => 'Apertura al feedback';

  @override
  String get metric_good_24_description =>
      'Identifica la ricettività alle preoccupazioni del partner, la volontà di ascoltare critiche e il desiderio di migliorare.';

  @override
  String get metric_good_25_name => 'Convalida delle emozioni';

  @override
  String get metric_good_25_description =>
      'Rileva il riconoscimento che i sentimenti del partner sono reali, comprensibili e degni di attenzione.';

  @override
  String get metric_good_26_name => 'Linguaggio di incoraggiamento';

  @override
  String get metric_good_26_description =>
      'Cerca dichiarazioni che ispirino fiducia, motivino all\'azione o supportino gli obiettivi del partner.';

  @override
  String get metric_good_27_name => 'Rivelazione intima';

  @override
  String get metric_good_27_description =>
      'Identifica la condivisione di pensieri personali, sogni, paure o segreti che approfondiscono la connessione emotiva.';

  @override
  String get metric_good_28_name => 'Segnali di Sintonizzazione';

  @override
  String get metric_good_28_description =>
      'Misura la capacità di notare l\'umore, i bisogni o il disagio del partner senza che venga detto esplicitamente.';

  @override
  String get metric_good_29_name => 'Riformulazione Positiva';

  @override
  String get metric_good_29_description =>
      'Rileva la ricerca di lati positivi, opportunità di crescita o angolazioni costruttive in situazioni difficili.';

  @override
  String get metric_good_30_name => 'Linguaggio di Impegno';

  @override
  String get metric_good_30_description =>
      'Traccia espressioni di dedizione, pensiero a lungo termine e investimento nel futuro della relazione.';

  @override
  String get metric_good_31_name => 'Dimostrazione di Flessibilità';

  @override
  String get metric_good_31_description =>
      'Identifica la disponibilità ad adattare piani, modificare aspettative o incontrarsi a metà strada con il partner.';

  @override
  String get metric_good_32_name => 'Linguaggio Protettivo';

  @override
  String get metric_good_32_description =>
      'Cerca dichiarazioni che mostrano che la sicurezza, il benessere e gli interessi del partner sono profondamente importanti.';

  @override
  String get metric_good_33_name => 'Celebrazione di Pietre Miliari';

  @override
  String get metric_good_33_description =>
      'Misura il riconoscimento di anniversari, successi o momenti significativi trascorsi insieme.';

  @override
  String get metric_good_34_name => 'Feedback Costruttivo';

  @override
  String get metric_good_34_description =>
      'Rileva suggerimenti di miglioramento gentili, specifici e orientati alla crescita.';

  @override
  String get metric_good_35_name => 'Presenza nelle Difficoltà';

  @override
  String get metric_good_35_description =>
      'Identifica il restare coinvolti quando il partner sta lottando, soffrendo o affrontando sfide.';

  @override
  String get metric_good_36_name => 'Espressione di Ammirazione';

  @override
  String get metric_good_36_description =>
      'Traccia il genuino rispetto per il carattere, la forza, l\'intelligenza o la resilienza del partner.';

  @override
  String get metric_good_37_name => 'Indicatori di Giocosità';

  @override
  String get metric_good_37_description =>
      'Cerca battute scherzose, battute interne o interazioni divertenti che rafforzano il legame.';

  @override
  String get metric_good_38_name => 'Rispecchiamento Empatico';

  @override
  String get metric_good_38_description =>
      'Misura il riflettere le emozioni del partner per mostrare comprensione e convalida.';

  @override
  String get metric_good_39_name => 'Linguaggio di Accettazione';

  @override
  String get metric_good_39_description =>
      'Rileva l\'accettazione del partner così com\'è, compresi i difetti, senza chiedere cambiamenti.';

  @override
  String get metric_good_40_name => 'Presenza di Supporto';

  @override
  String get metric_good_40_description =>
      'Identifica l\'essere presenti senza risolvere, offrendo conforto attraverso l\'ascolto e la compagnia.';

  @override
  String get metric_good_41_name => 'Interesse Genuino';

  @override
  String get metric_good_41_description =>
      'Tiene traccia di fare domande di approfondimento e ricordare dettagli sulla vita e le preoccupazioni del partner.';

  @override
  String get metric_good_42_name => 'Sforzo Reciproco';

  @override
  String get metric_good_42_description =>
      'Misura entrambi i partner che contribuiscono equamente al lavoro emotivo, alla pianificazione e al mantenimento della relazione.';

  @override
  String get metric_good_43_name => 'Linguaggio del Perdono';

  @override
  String get metric_good_43_description =>
      'Cerca il lasciar andare i rancori, offrire seconde possibilità e scegliere di superare il dolore.';

  @override
  String get metric_good_44_name => 'Segnali di Rispetto Reciproco';

  @override
  String get metric_good_44_description =>
      'Rileva il trattare il partner come un pari, onorando le sue opinioni e valorizzando il suo contributo.';

  @override
  String get metric_good_45_name => 'Onestà Emotiva';

  @override
  String get metric_good_45_description =>
      'Identifica l\'espressione veritiera dei sentimenti senza manipolazione, esagerazione o occultamento strategico.';

  @override
  String get metric_good_46_name => 'Ascolto di supporto';

  @override
  String get metric_good_46_description =>
      'Misura la capacità di permettere al partner di esprimersi completamente senza interrompere, giudicare o risolvere immediatamente il problema.';

  @override
  String get metric_good_47_name => 'Soprannomi affettuosi';

  @override
  String get metric_good_47_description =>
      'Tiene traccia dell\'uso di termini affettuosi che trasmettono calore e connessione intima.';

  @override
  String get metric_good_48_name => 'Risate condivise';

  @override
  String get metric_good_48_description =>
      'Identifica momenti di umorismo e gioia condivisi che creano esperienze di legame positive.';

  @override
  String get metric_good_49_name => 'Gesti premurosi';

  @override
  String get metric_good_49_description =>
      'Cerca piccoli gesti di gentilezza, ricordare le preferenze o fare cose per rendere felice il partner.';

  @override
  String get metric_good_50_name => 'Fiducia nel partner';

  @override
  String get metric_good_50_description =>
      'Rileva la fiducia nelle capacità, nel potenziale e nella capacità del partner di affrontare le sfide.';

  @override
  String get metric_good_51_name => 'Interdipendenza sana';

  @override
  String get metric_good_51_description =>
      'Misura l\'equilibrio tra unione e indipendenza, sostenendo l\'autonomia reciproca.';

  @override
  String get metric_good_52_name => 'De-escalation del conflitto';

  @override
  String get metric_good_52_description =>
      'Identifica linguaggio morbido, pause o offerte di soluzioni per calmare discussioni accese.';

  @override
  String get metric_good_53_name => 'Scuse sincere';

  @override
  String get metric_good_53_description =>
      'Tiene traccia del pieno riconoscimento del torto senza minimizzare, difendersi o spostare la colpa.';

  @override
  String get metric_good_54_name => 'Offerte di supporto emotivo';

  @override
  String get metric_good_54_description =>
      'Cerca check-in proattivi, chiedere come sta il partner e offrire aiuto.';

  @override
  String get metric_good_55_name => 'Confini Rispettosi';

  @override
  String get metric_good_55_description =>
      'Misura il rispetto dei limiti dichiarati dal partner mantenendo al contempo confini sani personali.';

  @override
  String get metric_good_56_name => 'Anticipazione Positiva';

  @override
  String get metric_good_56_description =>
      'Rileva l\'entusiasmo per il futuro insieme, la pianificazione anticipata e l\'attesa di esperienze condivise.';

  @override
  String get metric_good_57_name => 'Segnali di Attenzione';

  @override
  String get metric_good_57_description =>
      'Identifica la memoria di date importanti, preferenze e dettagli che dimostrano che il partner è importante.';

  @override
  String get metric_good_58_name => 'Incoraggiamento alla Crescita';

  @override
  String get metric_good_58_description =>
      'Tiene traccia del sostegno allo sviluppo personale, all\'apprendimento e al perseguimento degli obiettivi del partner.';

  @override
  String get metric_good_59_name => 'Linguaggio Tenero';

  @override
  String get metric_good_59_description =>
      'Cerca scelte di parole morbide e affettuose che trasmettono dolcezza e calore emotivo.';

  @override
  String get metric_good_60_name => 'Responsabilità Reciproca';

  @override
  String get metric_good_60_description =>
      'Misura entrambi i partner che si assumono la responsabilità delle proprie azioni e del loro impatto.';

  @override
  String get metric_good_61_name => 'Celebrazione del Partner';

  @override
  String get metric_good_61_description =>
      'Rileva l\'espressione pubblica o privata di orgoglio, gioia o ammirazione per il partner.';

  @override
  String get metric_good_62_name => 'Affetto Costante';

  @override
  String get metric_good_62_description =>
      'Identifica espressioni regolari di amore che non fluttuano in base alle prestazioni o alla conformità.';

  @override
  String get metric_good_63_name => 'Sintonizzazione Emotiva';

  @override
  String get metric_good_63_description =>
      'Tiene traccia della percezione e della risposta a sottili cambiamenti nello stato emotivo del partner.';

  @override
  String get metric_good_64_name => 'Decisione Collaborativa';

  @override
  String get metric_good_64_description =>
      'Misura la discussione di opzioni insieme e la presa di decisioni che considerano le esigenze di entrambi i partner.';

  @override
  String get metric_good_65_name => 'Rassicurazione Senza Richieste';

  @override
  String get metric_good_65_description =>
      'Cerca di offrire conforto e sicurezza senza richiedere che il partner se li guadagni.';

  @override
  String get metric_good_66_name => 'Connessione Autentica';

  @override
  String get metric_good_66_description =>
      'Rileva presenza genuina, condivisione reale e abbandono delle finzioni nelle interazioni.';

  @override
  String get metric_good_67_name => 'Incoraggiamento Reciproco';

  @override
  String get metric_good_67_description =>
      'Identifica entrambi i partner che si incoraggiano a vicenda e celebrano gli sforzi, non solo i risultati.';

  @override
  String get metric_good_68_name => 'Domanda Rispettosa';

  @override
  String get metric_good_68_description =>
      'Tiene traccia del chiedere la prospettiva del partner con genuina curiosità, non con interrogatorio.';

  @override
  String get metric_good_69_name => 'Coerenza Amorevole';

  @override
  String get metric_good_69_description =>
      'Misura presentarsi allo stesso modo nei momenti belli e in quelli difficili, affidabile nell\'affetto.';

  @override
  String get metric_good_70_name => 'Reciprocità Emotiva';

  @override
  String get metric_good_70_description =>
      'Cerca entrambi i partner che condividono sentimenti, bisogni e vulnerabilità in modo equilibrato.';

  @override
  String get metric_good_71_name => 'Presenza Gioiosa';

  @override
  String get metric_good_71_description =>
      'Rileva felicità genuina nella compagnia del partner ed entusiasmo per il tempo trascorso insieme.';

  @override
  String get metric_good_72_name => 'Dialogo Costruttivo';

  @override
  String get metric_good_72_description =>
      'Identifica conversazioni che mirano alla comprensione piuttosto che a vincere o dimostrare di avere ragione.';

  @override
  String get metric_good_73_name => 'Difesa Protettiva';

  @override
  String get metric_good_73_description =>
      'Monitora il difendere il partner, proteggerlo e dare priorità al suo benessere.';

  @override
  String get metric_good_74_name => 'Comunicazione Consapevole';

  @override
  String get metric_good_74_description =>
      'Misura la scelta attenta delle parole, considerando l\'impatto prima di parlare e la comunicazione intenzionale.';

  @override
  String get metric_good_75_name => 'Investimento nella Relazione';

  @override
  String get metric_good_75_description =>
      'Valuta il tempo, l\'energia e le risorse dedicate alla cura della relazione.';

  @override
  String get metric_good_76_name => 'Linguaggio di Base Sicura';

  @override
  String get metric_good_76_description =>
      'Rileva l\'offerta di stabilità, sicurezza e una base da cui il partner può esplorare.';

  @override
  String get metric_good_77_name => 'Ammirazione Reciproca';

  @override
  String get metric_good_77_description =>
      'Identifica entrambi i partner che esprimono rispetto e apprezzamento per le qualità dell\'altro.';

  @override
  String get metric_good_78_name => 'Momenti di Tenerezza';

  @override
  String get metric_good_78_description =>
      'Monitora la creazione o il riconoscimento di momenti intimi e silenziosi di connessione e vicinanza.';

  @override
  String get metric_good_79_name => 'Curiosità Genuina';

  @override
  String get metric_good_79_description =>
      'Cerca un interesse autentico nel comprendere pensieri, sentimenti ed esperienze del partner.';

  @override
  String get metric_good_80_name => 'Accettazione Amorevole';

  @override
  String get metric_good_80_description =>
      'Rileva l\'accettazione dell\'intera persona del partner, comprese imperfezioni e passato.';

  @override
  String get metric_good_81_name => 'Supporto alla Crescita Reciproca';

  @override
  String get metric_good_81_description =>
      'Identifica entrambi i partner che si incoraggiano a vicenda nello sviluppo e celebrano i progressi.';

  @override
  String get metric_good_82_name => 'Indicatori di Tono Caldo';

  @override
  String get metric_good_82_description =>
      'Monitora l\'uso di linguaggio affettuoso, frasi gentili e uno stile comunicativo delicato.';

  @override
  String get metric_good_83_name => 'Coinvolgimento Reattivo';

  @override
  String get metric_good_83_description =>
      'Misura risposte rapide e coinvolte ai messaggi del partner e alle richieste emotive.';

  @override
  String get metric_good_84_name => 'Allineamento dei Valori Condivisi';

  @override
  String get metric_good_84_description =>
      'Cerca riferimenti a credenze, obiettivi o filosofie di vita comuni che uniscono la coppia.';

  @override
  String get metric_good_85_name => 'Supporto Incondizionato';

  @override
  String get metric_good_85_description =>
      'Rileva il sostegno al partner nelle difficoltà senza rendere l\'aiuto condizionato.';

  @override
  String get metric_good_86_name => 'Vulnerabilità Intima';

  @override
  String get metric_good_86_description =>
      'Identifica la condivisione di paure profonde, sogni o insicurezze che rafforzano i legami emotivi.';

  @override
  String get metric_good_87_name => 'Linguaggio di Rispetto Reciproco';

  @override
  String get metric_good_87_description =>
      'Monitora il rispetto delle prospettive, delle scelte e dell\'autonomia del partner nella comunicazione.';

  @override
  String get metric_good_88_name => 'Inquadramento Positivo';

  @override
  String get metric_good_88_description =>
      'Misura la tendenza a vedere il meglio nelle situazioni e nel partner, concentrandosi sui punti di forza.';

  @override
  String get metric_good_89_name => 'Risoluzione Collaborativa dei Problemi';

  @override
  String get metric_good_89_description =>
      'Cerca la collaborazione verso soluzioni che avvantaggiano entrambi i partner equamente.';

  @override
  String get metric_good_90_name => 'Validazione Emotiva';

  @override
  String get metric_good_90_description =>
      'Rileva la conferma che i sentimenti del partner sono comprensibili e accettabili.';

  @override
  String get metric_good_91_name => 'Gentilezza Costante';

  @override
  String get metric_good_91_description =>
      'Identifica piccoli gesti regolari di cura che mostrano che il partner è pensato e apprezzato.';

  @override
  String get metric_good_92_name => 'Celebrazione Reciproca';

  @override
  String get metric_good_92_description =>
      'Monitora entrambi i partner genuinamente felici per i successi e le gioie dell\'altro.';

  @override
  String get metric_good_93_name => 'Linguaggio di Attaccamento Sicuro';

  @override
  String get metric_good_93_description =>
      'Misura l\'espressione di fiducia, comfort con l\'intimità e fiducia nella relazione.';

  @override
  String get metric_good_94_name => 'Considerazione Attenta';

  @override
  String get metric_good_94_description =>
      'Cerca decisioni prese tenendo conto dei bisogni e dei sentimenti del partner.';

  @override
  String get metric_good_95_name => 'Presenza Amorevole';

  @override
  String get metric_good_95_description =>
      'Rileva la piena presenza e coinvolgimento, mostrando al partner che è la priorità.';

  @override
  String get metric_good_96_name => 'Linguaggio di Cura Genuina';

  @override
  String get metric_good_96_description =>
      'Monitora espressioni autentiche di preoccupazione, cura e investimento nel benessere del partner.';

  @override
  String get metric_good_97_name => 'Impegno nella Relazione';

  @override
  String get metric_good_97_description =>
      'Misura l\'espressione di dedizione alla partnership e la volontà di affrontare le sfide.';

  @override
  String get metric_good_98_name => 'Espressione d\'Amore Autentica';

  @override
  String get metric_good_98_description =>
      'Cerca espressioni d\'amore genuine e costanti che sembrano reali e incondizionate.';

  @override
  String get metric_good_99_name => 'Definizione di Obiettivi Comuni';

  @override
  String get metric_good_99_description =>
      'Identifica partner che definiscono collaborativamente sogni, priorità e direzione per il loro futuro insieme.';

  @override
  String get metric_good_100_name =>
      'Riconoscimento del Tentativo di Riparazione';

  @override
  String get metric_good_100_description =>
      'Rileva il notare e rispondere positivamente ai tentativi del partner di de-escalare il conflitto e ripristinare la connessione.';

  @override
  String get metric_bad_1_name => 'Aggressività Passiva';

  @override
  String get metric_bad_1_description =>
      'Rileva ostilità indiretta attraverso procrastinazione, dimenticanze, sarcasmo o sabotaggio sottile anziché espressione diretta.';

  @override
  String get metric_bad_2_name => 'Armamento della colpa';

  @override
  String get metric_bad_2_description =>
      'Identifica l\'uso di linguaggio basato su colpa, vergogna o obbligo per manipolare decisioni o impedire la definizione di confini.';

  @override
  String get metric_bad_3_name => 'Ricatto Emotivo';

  @override
  String get metric_bad_3_description =>
      'Segnala minacce di autolesionismo, abbandono o ritiro dell\'amore per controllare il comportamento o impedire la discussione.';

  @override
  String get metric_bad_4_name => 'Lamentela Cronica';

  @override
  String get metric_bad_4_description =>
      'Monitora negatività persistente, ruminazione o lamentele senza cercare soluzioni o cambiamenti collaborativi.';

  @override
  String get metric_bad_5_name => 'Vergogna per Confronto';

  @override
  String get metric_bad_5_description =>
      'Identifica confronti sfavorevoli con ex, amici o familiari per umiliare o costringere a cambiare comportamento.';

  @override
  String get metric_bad_6_name => 'Ascolto Condizionato';

  @override
  String get metric_bad_6_description =>
      'Rileva l\'ascolto solo quando avvantaggia l\'ascoltatore o serve i suoi scopi, anziché una comprensione genuina.';

  @override
  String get metric_bad_7_name => 'Memoria selettiva';

  @override
  String get metric_bad_7_description =>
      'Traccia la dimenticanza conveniente di promesse, accordi o comportamenti dannosi passati per evitare responsabilità.';

  @override
  String get metric_bad_8_name => 'Ricerca di attenzione tramite crisi';

  @override
  String get metric_bad_8_description =>
      'Identifica escalation drammatica, creazione di crisi o esagerazione per ottenere attenzione o simpatia.';

  @override
  String get metric_bad_9_name => 'Test dei Confini';

  @override
  String get metric_bad_9_description =>
      'Rileva ripetuti tentativi di sondare o spingere i limiti dichiarati per verificare se verranno fatti rispettare.';

  @override
  String get metric_bad_10_name => 'Omissione di Informazioni';

  @override
  String get metric_bad_10_description =>
      'Identifica l\'omissione deliberata di fatti, contesto o trasparenza pertinenti per mantenere il controllo.';

  @override
  String get metric_bad_11_name => 'Rabbia Sproporzionata';

  @override
  String get metric_bad_11_description =>
      'Monitora le risposte di rabbia significativamente sproporzionate rispetto all\'evento scatenante.';

  @override
  String get metric_bad_12_name => 'Dipendenza dalla Rassicurazione';

  @override
  String get metric_bad_12_description =>
      'Segnala un bisogno costante di convalida, domande ripetute sull\'impegno o prove infinite d\'amore.';

  @override
  String get metric_bad_13_name => 'Evitamento della Conversazione';

  @override
  String get metric_bad_13_description =>
      'Rileva il rifiuto di affrontare le preoccupazioni, frasi di evitamento o l\'interruzione di discussioni importanti.';

  @override
  String get metric_bad_14_name => 'Modello di Contraddizione';

  @override
  String get metric_bad_14_description =>
      'Identifica dichiarazioni, promesse o posizioni contraddittorie che creano confusione o destabilizzazione.';

  @override
  String get metric_bad_15_name => 'Svalutazione tramite Etichettatura';

  @override
  String get metric_bad_15_description =>
      'Segnala l\'etichettatura delle preoccupazioni come \"pazze\", \"drammatiche\", \"paranoiche\" o \"esagerate\" per invalidarle.';

  @override
  String get metric_bad_16_name => 'Empatia Selettiva';

  @override
  String get metric_bad_16_description =>
      'Rileva empatia offerta solo quando è comoda o serve agli interessi di chi parla.';

  @override
  String get metric_bad_17_name => 'Inquadramento Transazionale';

  @override
  String get metric_bad_17_description =>
      'Identifica frasi come \"mi devi\", \"dopo tutto quello che ho fatto\" o la visione degli atti relazionali come debito.';

  @override
  String get metric_bad_18_name => 'Riciclo dei Rancori';

  @override
  String get metric_bad_18_description =>
      'Monitora il riportare ripetutamente vecchi rancori o l\'uso di danni passati come arma nei conflitti attuali.';

  @override
  String get metric_bad_19_name => 'Linguaggio Imperativo';

  @override
  String get metric_bad_19_description =>
      'Segnala imperativi, comandi o ultimatum invece di richieste o problem-solving collaborativo.';

  @override
  String get metric_bad_20_name => 'Indisponibilità Emotiva';

  @override
  String get metric_bad_20_description =>
      'Rileva un rifiuto costante di coinvolgersi emotivamente, condividere sentimenti o offrire conforto.';

  @override
  String get metric_bad_21_name => 'Interpretazione Ostile';

  @override
  String get metric_bad_21_description =>
      'Identifica l\'interpretazione di affermazioni neutre come attacchi o messaggi ambigui come ostili.';

  @override
  String get metric_bad_22_name => 'Quadro di Diritto';

  @override
  String get metric_bad_22_description =>
      'Segnala un linguaggio che suggerisce che chi parla meriti un trattamento speciale, eccezioni o priorità.';

  @override
  String get metric_bad_23_name => 'Critica Travestita da Aiuto';

  @override
  String get metric_bad_23_description =>
      'Rileva critiche mascherate da \'cerco solo di aiutare\' o \'per il tuo bene\'.';

  @override
  String get metric_bad_24_name => 'Modelli di Trascuratezza';

  @override
  String get metric_bad_24_description =>
      'Identifica un fallimento costante nel soddisfare bisogni emotivi, fisici o relazionali.';

  @override
  String get metric_bad_25_name => 'Ruminazione del Conflitto';

  @override
  String get metric_bad_25_description =>
      'Monitora la rielaborazione ossessiva dei conflitti senza progredire verso una risoluzione o chiusura.';

  @override
  String get metric_bad_26_name => 'Svalutazione della Sensibilità';

  @override
  String get metric_bad_26_description =>
      'Segnala frasi come \'sei troppo sensibile\' o \'stai esagerando\' per sminuire i sentimenti.';

  @override
  String get metric_bad_27_name => 'Inquadramento Competitivo';

  @override
  String get metric_bad_27_description =>
      'Rileva l\'inquadramento della relazione come una competizione in cui un partner deve vincere o dominare.';

  @override
  String get metric_bad_28_name => 'Doppi standard';

  @override
  String get metric_bad_28_description =>
      'Identifica l\'applicazione di regole diverse per sé e per il partner o il cambiamento arbitrario delle aspettative.';

  @override
  String get metric_bad_29_name => 'Affetto come punizione';

  @override
  String get metric_bad_29_description =>
      'Segnala la rimozione di affetto, attenzione o comunicazione come ritorsione per presunti torti.';

  @override
  String get metric_bad_30_name => 'Rotazione della colpa';

  @override
  String get metric_bad_30_description =>
      'Traccia la rotazione della colpa tra partner, circostanze e fattori esterni per evitare responsabilità.';

  @override
  String get metric_bad_31_name => 'Derisione retorica';

  @override
  String get metric_bad_31_description =>
      'Rileva domande retoriche o sarcastiche usate per deridere piuttosto che comprendere.';

  @override
  String get metric_bad_32_name => 'Promemoria di sacrifici';

  @override
  String get metric_bad_32_description =>
      'Identifica il ricordare al partner sacrifici, favori o supporto per creare debito e conformità.';

  @override
  String get metric_bad_33_name => 'Escalation deliberata';

  @override
  String get metric_bad_33_description =>
      'Segnala l\'escalation deliberata dell\'intensità per sopraffare la capacità del partner di rispondere razionalmente.';

  @override
  String get metric_bad_34_name => 'Vulnerabilità strategica';

  @override
  String get metric_bad_34_description =>
      'Rileva la condivisione delle emozioni solo quando serve a scopi di manipolazione o controllo.';

  @override
  String get metric_bad_35_name => 'Deviazione tramite contrattacco';

  @override
  String get metric_bad_35_description =>
      'Identifica lo spostamento dell\'attenzione dalle preoccupazioni del partner sollevando questioni non correlate o controaccuse.';

  @override
  String get metric_bad_36_name => 'Linguaggio di superiorità';

  @override
  String get metric_bad_36_description =>
      'Segnala linguaggio di superiorità, condiscendenza o inquadramento del partner come inferiore.';

  @override
  String get metric_bad_37_name => 'Modello di Uscita dal Conflitto';

  @override
  String get metric_bad_37_description =>
      'Rileva il modello di abbandono delle conversazioni, rifiuto di impegnarsi o creazione di distanza durante il conflitto.';

  @override
  String get metric_bad_38_name => 'Pregiudizio Negativo';

  @override
  String get metric_bad_38_description =>
      'Tiene traccia dell\'interpretazione costante di azioni neutre o positive come negative o sospette.';

  @override
  String get metric_bad_39_name => 'Negazione dell\'Agency';

  @override
  String get metric_bad_39_description =>
      'Identifica espressioni come \"devo\", \"mi fai\" o linguaggio che rimuove l\'agency personale da chi parla.';

  @override
  String get metric_bad_40_name => 'Silenzio come Controllo';

  @override
  String get metric_bad_40_description =>
      'Segnala l\'uso del silenzio o della mancata risposta come forma di punizione o controllo.';

  @override
  String get metric_bad_41_name => 'Ipocrisia della Privacy';

  @override
  String get metric_bad_41_description =>
      'Rileva il rifiuto di condividere informazioni mentre si richiede trasparenza dal partner.';

  @override
  String get metric_bad_42_name => 'Feedback Duro Non Richiesto';

  @override
  String get metric_bad_42_description =>
      'Identifica feedback duri presentati come \"costruttivi\" o \"utili\" senza consenso.';

  @override
  String get metric_bad_43_name => 'Cura Condizionata';

  @override
  String get metric_bad_43_description =>
      'Segnala supporto offerto solo quando il partner si conforma alle aspettative di chi parla.';

  @override
  String get metric_bad_44_name => 'Negazione dell\'Impatto';

  @override
  String get metric_bad_44_description =>
      'Rileva frasi come \"non intendevo così\" o \"stai leggendo troppo\" dopo aver causato danno.';

  @override
  String get metric_bad_45_name => 'Mentalità del Debito';

  @override
  String get metric_bad_45_description =>
      'Tiene traccia del ricordo di aiuto o supporto passato per creare debito e controllare il comportamento attuale.';

  @override
  String get metric_bad_46_name => 'Elusione della Responsabilità';

  @override
  String get metric_bad_46_description =>
      'Segnala uno schema costante di non assumersi la responsabilità dell\'impatto delle proprie azioni.';

  @override
  String get metric_bad_47_name => 'Svalutazione dei Bisogni';

  @override
  String get metric_bad_47_description =>
      'Identifica il trattamento dei bisogni del partner come scomodi, irragionevoli o poco importanti.';

  @override
  String get metric_bad_48_name => 'Manipolazione Emotiva';

  @override
  String get metric_bad_48_description =>
      'Segnala l\'uso strategico delle emozioni per controllare i risultati o evitare la responsabilità.';

  @override
  String get metric_bad_49_name => 'Evitamento dell\'Intimità';

  @override
  String get metric_bad_49_description =>
      'Monitora il ritiro costante dalla vicinanza emotiva o fisica senza spiegazioni.';

  @override
  String get metric_bad_50_name => 'Critica Velata';

  @override
  String get metric_bad_50_description =>
      'Identifica critiche mascherate da battute, osservazioni o commenti casuali.';

  @override
  String get metric_bad_51_name => 'Minimizzazione delle Preoccupazioni';

  @override
  String get metric_bad_51_description =>
      'Segnala la riduzione delle preoccupazioni del partner a insignificanza o esagerazione.';

  @override
  String get metric_bad_52_name => 'Imposizione del Senso di Colpa';

  @override
  String get metric_bad_52_description =>
      'Identifica l\'uso di senso di colpa o vergogna per garantire che il partner si conformi alle aspettative.';

  @override
  String get metric_bad_53_name => 'Resistenza alle Scuse';

  @override
  String get metric_bad_53_description =>
      'Monitora la resistenza a scusarsi, giustificare il danno o rifiutarsi di riconoscere l\'impatto.';

  @override
  String get metric_bad_54_name => 'Rifiuto della Prospettiva';

  @override
  String get metric_bad_54_description =>
      'Segnala il rifiuto di considerare o convalidare il punto di vista o l\'esperienza del partner.';

  @override
  String get metric_bad_55_name => 'Razionamento Emotivo';

  @override
  String get metric_bad_55_description =>
      'Rileva la limitazione deliberata dell\'espressione emotiva o della connessione come forma di controllo.';

  @override
  String get metric_bad_56_name => 'Manipolazione dell\'Obligo';

  @override
  String get metric_bad_56_description =>
      'Segnala l\'uso del supporto o del sacrificio passato per manipolare le decisioni attuali.';

  @override
  String get metric_bad_57_name => 'Resistenza alla Crescita';

  @override
  String get metric_bad_57_description =>
      'Traccia la resistenza a modificare comportamenti dannosi nonostante richieste o impatto dimostrato.';

  @override
  String get metric_bad_58_name => 'Negazione del Danno';

  @override
  String get metric_bad_58_description =>
      'Rileva il rifiuto di riconoscere o prendere sul serio l\'impatto del proprio comportamento.';

  @override
  String get metric_bad_59_name => 'Domande Cariche';

  @override
  String get metric_bad_59_description =>
      'Segnala intenzioni critiche mascherate da domande innocenti o espressioni di curiosità.';

  @override
  String get metric_bad_60_name => 'Tono Spregiativo';

  @override
  String get metric_bad_60_description =>
      'Identifica atteggiamento sprezzante o disprezzo trasmesso attraverso schemi testuali e scelta di parole.';

  @override
  String get metric_bad_61_name => 'Ciclo del Senso di Colpa';

  @override
  String get metric_bad_61_description =>
      'Rileva l\'uso ripetuto del senso di colpa per supporto o sacrificio passato per controllare il comportamento attuale.';

  @override
  String get metric_bad_62_name => 'Riservatezza Emotiva';

  @override
  String get metric_bad_62_description =>
      'Traccia il rifiuto di condividere emozioni, paure o bisogni con il partner come trattenimento protettivo.';

  @override
  String get metric_bad_63_name => 'Negoziazione dei Confini';

  @override
  String get metric_bad_63_description =>
      'Segnala il trattamento dei limiti dichiarati come suggerimenti o negoziabili anziché impegni fermi.';

  @override
  String get metric_bad_64_name => 'Assenza Emotiva';

  @override
  String get metric_bad_64_description =>
      'Rileva il rifiuto costante di fornire supporto emotivo o presenza impegnata.';

  @override
  String get metric_bad_65_name => 'Conteggio dei Favori';

  @override
  String get metric_bad_65_description =>
      'Segnala il tenere un conto mentale di favori, supporto o sacrifici per usarli in seguito come leva.';

  @override
  String get metric_bad_66_name => 'Evitamento dell\'Onestà';

  @override
  String get metric_bad_66_description =>
      'Rileva un modello di occultamento della verità, omissione di fatti o ambiguità deliberata.';

  @override
  String get metric_bad_67_name => 'Negazione della Validità';

  @override
  String get metric_bad_67_description =>
      'Identifica il trattamento dei sentimenti, bisogni o preoccupazioni del partner come non validi o illegittimi.';

  @override
  String get metric_bad_68_name => 'Critica Travestita da Consiglio';

  @override
  String get metric_bad_68_description =>
      'Segnala critiche presentate come preoccupazione, consiglio o osservazione utile.';

  @override
  String get metric_bad_69_name => 'Indicatori di Superiorità';

  @override
  String get metric_bad_69_description =>
      'Rileva superiorità, derisione o disprezzo nel linguaggio o nello stile comunicativo.';

  @override
  String get metric_bad_70_name => 'Resistenza alla Riparazione';

  @override
  String get metric_bad_70_description =>
      'Traccia la resistenza a fare ammenda, riconnettersi o ricostruire dopo un conflitto.';

  @override
  String get metric_bad_71_name => 'Svalutazione dello Sforzo';

  @override
  String get metric_bad_71_description =>
      'Segnala la minimizzazione o l\'ignorare i tentativi del partner di migliorare o affrontare i problemi.';

  @override
  String get metric_bad_72_name => 'Modello di Distanza Emotiva';

  @override
  String get metric_bad_72_description =>
      'Rileva un modello a lungo termine di distanza emotiva o rifiuto di impegnarsi autenticamente.';

  @override
  String get metric_bad_73_name => 'Inquadramento di inferiorità';

  @override
  String get metric_bad_73_description =>
      'Identifica l\'inquadramento del partner come inferiore, imperfetto o non meritevole di pieno rispetto.';

  @override
  String get metric_bad_74_name => 'Resistenza al feedback';

  @override
  String get metric_bad_74_description =>
      'Rileva resistenza ad ascoltare critiche, rifiuto di ascoltare o interruzione della discussione.';

  @override
  String get metric_bad_75_name => 'Svalutazione delle preoccupazioni';

  @override
  String get metric_bad_75_description =>
      'Identifica il trattamento delle preoccupazioni o paure del partner come infondate o irrazionali.';

  @override
  String get metric_bad_76_name => 'Ricerca di difetti';

  @override
  String get metric_bad_76_description =>
      'Segnala un modello cronico di trovare difetti, lamentarsi o attaccare il carattere del partner.';

  @override
  String get metric_bad_77_name => 'Ciclo di colpa per sacrificio';

  @override
  String get metric_bad_77_description =>
      'Identifica il ripetuto richiamo al supporto passato per creare senso di colpa o controllare il comportamento.';

  @override
  String get metric_bad_78_name => 'Ambiguità dell\'impegno';

  @override
  String get metric_bad_78_description =>
      'Traccia linguaggio di impegno poco chiaro o incerto, segnali misti o riluttanza a impegnarsi.';

  @override
  String get metric_bad_79_name => 'Rifiuto delle richieste';

  @override
  String get metric_bad_79_description =>
      'Segnala l\'ignorare, il rifiutare o il ritardare la risposta a richieste ragionevoli del partner.';

  @override
  String get metric_bad_80_name => 'Tattiche di controllo emotivo';

  @override
  String get metric_bad_80_description =>
      'Rileva l\'uso strategico delle emozioni per controllare i risultati o impedire la responsabilità.';

  @override
  String get metric_bad_81_name => 'Mentalità di scambio';

  @override
  String get metric_bad_81_description =>
      'Segnala la visione della relazione attraverso la lente del debito, dell\'obbligo o dello scambio transazionale.';

  @override
  String get metric_bad_82_name => 'Resistenza allo sviluppo personale';

  @override
  String get metric_bad_82_description =>
      'Rileva resistenza allo sviluppo personale, all\'apprendimento o al cambiamento di schemi dannosi.';

  @override
  String get metric_bad_83_name => 'Rifiuto del miglioramento';

  @override
  String get metric_bad_83_description =>
      'Identifica la minimizzazione o il rifiuto degli sforzi del partner per migliorare o affrontare i problemi.';

  @override
  String get metric_bad_84_name => 'Critica cronica';

  @override
  String get metric_bad_84_description =>
      'Segnala uno schema cronico di critiche mascherate da preoccupazione, disponibilità o linguaggio premuroso.';

  @override
  String get metric_bad_85_name => 'Evitamento delle soluzioni';

  @override
  String get metric_bad_85_description =>
      'Rileva uno schema costante di evitamento della chiusura, del progresso o della ricerca di soluzioni praticabili.';

  @override
  String get metric_bad_86_name => 'Schema di deviazione della colpa';

  @override
  String get metric_bad_86_description =>
      'Segnala uno schema abituale di reindirizzamento della responsabilità verso fattori esterni o il partner.';

  @override
  String get metric_bad_87_name => 'Risposte sprezzanti';

  @override
  String get metric_bad_87_description =>
      'Identifica uno schema di rifiuto dei contributi, delle idee o dei suggerimenti del partner senza considerazione.';

  @override
  String get metric_bad_88_name => 'Espressione di risentimento';

  @override
  String get metric_bad_88_description =>
      'Rileva un tono di risentimento, amarezza o frustrazione di lunga data nella comunicazione.';

  @override
  String get metric_bad_89_name => 'Messaggistica ambivalente';

  @override
  String get metric_bad_89_description =>
      'Segnala messaggi ambivalenti sull\'impegno, desiderio poco chiaro di continuare o dinamiche di spinta e attrazione.';

  @override
  String get metric_bad_90_name => 'Spostamento delle aspettative';

  @override
  String get metric_bad_90_description =>
      'Identifica il cambiamento delle aspettative senza comunicazione, incolpando poi il partner per non averle soddisfatte.';

  @override
  String get metric_bad_91_name => 'Abitudine alla Deviazione';

  @override
  String get metric_bad_91_description =>
      'Rileva l\'abitudine di evitare risposte dirette o di reindirizzare le conversazioni lontano dalla responsabilità.';

  @override
  String get metric_bad_92_name => 'Manipolazione Attraverso la Gentilezza';

  @override
  String get metric_bad_92_description =>
      'Segnala una generosità esagerata usata strategicamente per creare obblighi o abbassare le difese.';

  @override
  String get metric_bad_93_name => 'Modello di Ritardo Cronico';

  @override
  String get metric_bad_93_description =>
      'Identifica un costante disprezzo per il tempo del partner attraverso ritardi o impegni non mantenuti.';

  @override
  String get metric_bad_94_name => 'Minimizzazione del Progresso';

  @override
  String get metric_bad_94_description =>
      'Monitora l\'ignorare o il non riconoscere la genuina crescita personale o i miglioramenti del partner.';

  @override
  String get metric_bad_95_name => 'Armamento Emotivo';

  @override
  String get metric_bad_95_description =>
      'Rileva l\'uso delle vulnerabilità o paure rivelate dal partner contro di lui/lei durante i conflitti.';

  @override
  String get metric_bad_96_name => 'Tattiche Simili al Gaslighting';

  @override
  String get metric_bad_96_description =>
      'Identifica sottili tattiche di distorsione della realtà che creano insicurezza senza un vero e proprio gaslighting.';

  @override
  String get metric_bad_97_name => 'Muro di Pietra Passivo';

  @override
  String get metric_bad_97_description =>
      'Segnala un sottile disimpegno, risposte monosillabiche o presenza assente come forma di evitamento.';

  @override
  String get metric_bad_98_name => 'Controllo Narrativo';

  @override
  String get metric_bad_98_description =>
      'Rileva l\'insistere nell\'essere l\'unica autorità su ciò che è successo, come ci si è sentiti o cosa si intendeva.';

  @override
  String get metric_bad_99_name => 'Deviazione della Responsabilità';

  @override
  String get metric_bad_99_description =>
      'Monitora la costante deviazione della responsabilità verso fattori esterni, terze parti o il comportamento del partner.';

  @override
  String get metric_bad_100_name => 'Indisponibilità Emotiva';

  @override
  String get metric_bad_100_description =>
      'Segnala un ritiro cronico dall\'intimità emotiva, dalla vulnerabilità o da una connessione significativa quando il partner cerca vicinanza.';

  @override
  String get metric_ugly_1_name => 'Minacce di Violenza Fisica';

  @override
  String get metric_ugly_1_description =>
      'Rileva minacce esplicite o velate di colpire, ferire o aggredire fisicamente il partner.';

  @override
  String get metric_ugly_2_name => 'Riferimenti a Possesso di Armi';

  @override
  String get metric_ugly_2_description =>
      'Segnala menzioni di armi da fuoco, coltelli o armi nel contesto di rabbia, controllo o capacità di nuocere.';

  @override
  String get metric_ugly_3_name => 'Indicatori di Strangolamento';

  @override
  String get metric_ugly_3_description =>
      'Identifica riferimenti a strangolamento, presa alla gola, soffocamento o asfissia.';

  @override
  String get metric_ugly_4_name => 'Armamentario della Minaccia di Suicidio';

  @override
  String get metric_ugly_4_description =>
      'Rileva minacce di autolesionismo usate per controllare, manipolare o punire il partner.';

  @override
  String get metric_ugly_5_name => 'Linguaggio di Ideazione Omicida';

  @override
  String get metric_ugly_5_description =>
      'Segnala dichiarazioni che esprimono intenzione, pianificazione o desiderio di uccidere il partner.';

  @override
  String get metric_ugly_6_name => 'Modelli di Rischio di Letalità';

  @override
  String get metric_ugly_6_description =>
      'Identifica segnali di letalità elevata: accesso ad armi, ossessione, escalation e minacce di separazione combinati.';

  @override
  String get metric_ugly_7_name => 'Linguaggio da Stalking Ossessivo';

  @override
  String get metric_ugly_7_description =>
      'Rileva monitoraggio ossessivo della posizione, pedinamenti, visite a sorpresa o inseguimenti persistenti indesiderati.';

  @override
  String get metric_ugly_8_name => 'Imposizione di isolamento forzato';

  @override
  String get metric_ugly_8_description =>
      'Segnala richieste aggressive di interrompere ogni contatto con famiglia, amici, lavoro o esterno.';

  @override
  String get metric_ugly_9_name => 'Sabotaggio Economico';

  @override
  String get metric_ugly_9_description =>
      'Identifica la distruzione deliberata di occupazione, credito, finanze o stabilità economica.';

  @override
  String get metric_ugly_10_name => 'Coercizione Riproduttiva';

  @override
  String get metric_ugly_10_description =>
      'Rileva gravidanza forzata, pressione all\'aborto, manomissione della contraccezione o controllo riproduttivo.';

  @override
  String get metric_ugly_11_name => 'Pressione di Coercizione Sessuale';

  @override
  String get metric_ugly_11_description =>
      'Segnala sesso forzato, atti sessuali coercitivi, pressione dopo il rifiuto o linguaggio di punizione sessuale.';

  @override
  String get metric_ugly_12_name => 'Linguaggio Sessuale Non Consensuale';

  @override
  String get metric_ugly_12_description =>
      'Identifica minacce o descrizioni esplicite o implicite di aggressione sessuale non consensuale.';

  @override
  String get metric_ugly_13_name => 'Minacce di Danno ai Bambini';

  @override
  String get metric_ugly_13_description =>
      'Rileva minacce di danneggiare, trascurare o abusare dei bambini come leva o punizione contro il partner.';

  @override
  String get metric_ugly_14_name => 'Armamento della Custodia dei Bambini';

  @override
  String get metric_ugly_14_description =>
      'Segnala minacce di portare via i bambini, negare l\'accesso o usare la custodia come meccanismo di controllo.';

  @override
  String get metric_ugly_15_name => 'Minacce di Danno agli Animali Domestici';

  @override
  String get metric_ugly_15_description =>
      'Identifica minacce di ferire, uccidere o abusare degli animali domestici come punizione o per dimostrare controllo.';

  @override
  String get metric_ugly_16_name => 'Tattiche di Privazione del Sonno';

  @override
  String get metric_ugly_16_description =>
      'Segnala la prevenzione deliberata del sonno, l\'interruzione costante o l\'esaurimento come metodo di controllo.';

  @override
  String get metric_ugly_17_name => 'Linguaggio di Confinamento';

  @override
  String get metric_ugly_17_description =>
      'Segnala il confinamento, l\'impedimento di andarsene o la reclusione del partner in un luogo.';

  @override
  String get metric_ugly_18_name => 'Linguaggio Predatorio di Adescamento';

  @override
  String get metric_ugly_18_description =>
      'Segnala una manipolazione sistematica per abbassare le difese, costruire una falsa fiducia e poi sfruttare il partner.';

  @override
  String get metric_ugly_19_name => 'Linguaggio di Disumanizzazione';

  @override
  String get metric_ugly_19_description =>
      'Rileva descrizioni del partner come animale, oggetto, subumano o indegno di diritti fondamentali.';

  @override
  String get metric_ugly_20_name => 'Escalation di Rabbia Narcisistica';

  @override
  String get metric_ugly_20_description =>
      'Rileva rabbia esplosiva scatenata da offese percepite, critiche o qualsiasi perdita di controllo.';

  @override
  String get metric_ugly_21_name => 'Rivendicazioni Ossessive di Possesso';

  @override
  String get metric_ugly_21_description =>
      'Segnala linguaggio che rivendica proprietà, diritti di possesso o controllo totale sulla persona del partner.';

  @override
  String get metric_ugly_22_name => 'Modelli di Menzogna Patologica';

  @override
  String get metric_ugly_22_description =>
      'Identifica bugie costanti, elaborate o inutili su questioni serie senza motivo apparente.';

  @override
  String get metric_ugly_23_name => 'Linguaggio di Fantasia di Vendetta';

  @override
  String get metric_ugly_23_description =>
      'Identifica fantasie dettagliate sul ferire, umiliare o distruggere il partner.';

  @override
  String get metric_ugly_24_name => 'Fissazione Ossessiva sul Tradimento';

  @override
  String get metric_ugly_24_description =>
      'Rileva ruminazione ossessiva, accuse e punizioni incentrate su una presunta infedeltà.';

  @override
  String get metric_ugly_25_name => 'Aggressività da Panico da Abbandono';

  @override
  String get metric_ugly_25_description =>
      'Segnala risposte violente o aggressive a un abbandono percepito o a qualsiasi tentativo di separazione.';

  @override
  String get metric_ugly_26_name => 'Escalation di Minacce da Separazione';

  @override
  String get metric_ugly_26_description =>
      'Identifica minacce estreme o comportamenti pericolosi innescati da tentativi di rottura o separazione.';

  @override
  String get metric_ugly_27_name => 'Minacce di Molestie Post-Separazione';

  @override
  String get metric_ugly_27_description =>
      'Segnala minacce di stalking, danno o contatto forzato dopo la fine della relazione.';

  @override
  String get metric_ugly_28_name => 'Minacce di Sottrazione di Minori';

  @override
  String get metric_ugly_28_description =>
      'Identifica minacce di portare via i bambini e fuggire o nasconderli permanentemente all\'altro genitore.';

  @override
  String get metric_ugly_29_name => 'Agenda di Alienazione Genitoriale';

  @override
  String get metric_ugly_29_description =>
      'Segnala tentativi sistematici di manipolare i bambini contro l\'altro genitore.';

  @override
  String get metric_ugly_30_name => 'Indifferenza per il Testimone Minore';

  @override
  String get metric_ugly_30_description =>
      'Identifica l\'indifferenza verso i bambini che assistono ad abusi, conflitti o danni emotivi.';

  @override
  String get metric_ugly_31_name => 'Linguaggio di Tratta di Esseri Umani';

  @override
  String get metric_ugly_31_description =>
      'Identifica linguaggio che suggerisce la vendita, lo scambio o lo sfruttamento sessuale del partner.';

  @override
  String get metric_ugly_32_name => 'Linguaggio di Schiavitù';

  @override
  String get metric_ugly_32_description =>
      'Identifica linguaggio che tratta il partner come proprietà, schiavo o persona completamente posseduta senza diritti.';

  @override
  String get metric_ugly_33_name => 'Minacce di Schiavitù per Debiti';

  @override
  String get metric_ugly_33_description =>
      'Rileva minacce di intrappolare il partner attraverso debiti artificiali o obblighi finanziari.';

  @override
  String get metric_ugly_34_name => 'Richieste di Lavoro Forzato';

  @override
  String get metric_ugly_34_description =>
      'Segnala richieste di lavoro non retribuito, servitù o lavoro sotto minaccia di danno o punizione.';

  @override
  String get metric_ugly_35_name => 'Normalizzazione dello Sfruttamento';

  @override
  String get metric_ugly_35_description =>
      'Identifica la rappresentazione dello sfruttamento grave come normale, meritato, consensuale o addirittura benefico.';

  @override
  String get metric_ugly_36_name => 'Targeting della Vulnerabilità';

  @override
  String get metric_ugly_36_description =>
      'Identifica la presa di mira deliberata di individui isolati, economicamente dipendenti o psicologicamente vulnerabili.';

  @override
  String get metric_ugly_37_name => 'Ingegneria del Legame Traumatico';

  @override
  String get metric_ugly_37_description =>
      'Rileva la creazione deliberata di cicli paura-sollievo progettati per generare una profonda dipendenza emotiva.';

  @override
  String get metric_ugly_38_name => 'Abuso da Rinforzo Intermittente';

  @override
  String get metric_ugly_38_description =>
      'Segnala cicli imprevedibili di ricompensa e punizione severa usati per creare dipendenza psicologica.';

  @override
  String get metric_ugly_39_name => 'Induzione di Impotenza Appresa';

  @override
  String get metric_ugly_39_description =>
      'Identifica la rimozione sistematica di autonomia, risorse e opzioni di fuga percepite.';

  @override
  String get metric_ugly_40_name =>
      'Linguaggio di Cancellazione dell\'Identità';

  @override
  String get metric_ugly_40_description =>
      'Segnala richieste di abbandonare personalità, interessi, aspetto o senso di identità.';

  @override
  String get metric_ugly_41_name => 'Annientamento dell\'Autonomia';

  @override
  String get metric_ugly_41_description =>
      'Rileva l\'eliminazione sistematica del pensiero indipendente, del processo decisionale o dell\'autonomia personale.';

  @override
  String get metric_ugly_42_name => 'Tattiche di Controllo del Pensiero';

  @override
  String get metric_ugly_42_description =>
      'Segnala richieste di pensare, credere o sentire solo come imposto dal partner controllante.';

  @override
  String get metric_ugly_43_name => 'Imposizione di Intorpidimento Emotivo';

  @override
  String get metric_ugly_43_description =>
      'Identifica punizioni per aver mostrato emozioni o richieste esplicite di sopprimere ogni sentimento.';

  @override
  String get metric_ugly_44_name => 'Creazione di Trauma Complesso';

  @override
  String get metric_ugly_44_description =>
      'Segnala schemi sistematici che creano trauma di livello PTSD complesso attraverso abuso cronico.';

  @override
  String get metric_ugly_45_name => 'Inflizione di Trauma da Tradimento';

  @override
  String get metric_ugly_45_description =>
      'Identifica un tradimento deliberato progettato per distruggere la fiducia fondamentale e la sicurezza psicologica.';

  @override
  String get metric_ugly_46_name => 'Linguaggio da Danno Morale';

  @override
  String get metric_ugly_46_description =>
      'Rileva la coercizione del partner a violare i propri valori profondi o a commettere atti dannosi.';

  @override
  String get metric_ugly_47_name => 'Linguaggio di Minaccia Esistenziale';

  @override
  String get metric_ugly_47_description =>
      'Segnala minacce all\'esistenza, all\'identità fondamentale, alla sanità mentale o alla volontà di vivere del partner.';

  @override
  String get metric_ugly_48_name => 'Linguaggio di Coercizione al Suicidio';

  @override
  String get metric_ugly_48_description =>
      'Identifica la spinta del partner verso ideazioni suicide attraverso abusi prolungati e disperazione indotta.';

  @override
  String get metric_ugly_49_name => 'Mitologia di Giustificazione';

  @override
  String get metric_ugly_49_description =>
      'Identifica narrazioni elaborate inventate per giustificare l\'abuso come necessario, meritato o giusto.';

  @override
  String get metric_ugly_50_name => 'Inversione Narrativa della Vittima';

  @override
  String get metric_ugly_50_description =>
      'Rileva il completo capovolgimento in cui l\'abusante afferma di essere la vera vittima del proprio abuso.';

  @override
  String get metric_ugly_51_name =>
      'Predicazione di Normalizzazione dell\'Abuso';

  @override
  String get metric_ugly_51_description =>
      'Segnala l\'insegnamento o l\'insistenza sul fatto che l\'abuso sia normale, sano o benefico per il partner.';

  @override
  String get metric_ugly_52_name => 'Ideologia Predatoria';

  @override
  String get metric_ugly_52_description =>
      'Identifica la giustificazione ideologica per sfruttamento, dominio o danno verso il partner.';

  @override
  String get metric_ugly_53_name => 'Messaggistica da Leader di Setta';

  @override
  String get metric_ugly_53_description =>
      'Rileva messaggi che rivendicano conoscenza speciale, diritto divino o autorità superiore sul partner.';

  @override
  String get metric_ugly_54_name => 'Linguaggio della Timeline di Adescamento';

  @override
  String get metric_ugly_54_description =>
      'Segnala riferimenti a un piano di manipolazione a lungo termine o descrizioni di una progressione di adescamento.';

  @override
  String get metric_ugly_55_name => 'Campagna di Umiliazione Cronica';

  @override
  String get metric_ugly_55_description =>
      'Identifica un modello persistente di umiliazione pubblica o privata progettata per distruggere l\'autostima.';

  @override
  String get metric_ugly_56_name => 'Blocco delle Vie di Fuga';

  @override
  String get metric_ugly_56_description =>
      'Rileva l\'impedimento attivo al partner di accedere a vie di fuga, sistemi di supporto o risorse di sicurezza.';

  @override
  String get metric_ugly_57_name => 'Minacce di Confisca di Documenti';

  @override
  String get metric_ugly_57_description =>
      'Segnala minacce o azioni per prendere, nascondere o distruggere documenti d\'identità per impedire la fuga.';

  @override
  String get metric_ugly_58_name => 'Modelli di Gelosia Violenta';

  @override
  String get metric_ugly_58_description =>
      'Identifica gelosia che è degenerata in minacce esplicite, sorveglianza o ritorsioni violente.';

  @override
  String get metric_ugly_59_name => 'Modelli di Esplosione di Rabbia';

  @override
  String get metric_ugly_59_description =>
      'Rileva descrizioni o modelli di scoppi violenti esplosivi sproporzionati rispetto a qualsiasi fattore scatenante.';

  @override
  String get metric_ugly_60_name => 'Escalation del Controllo Coercitivo';

  @override
  String get metric_ugly_60_description =>
      'Monitora l\'aumento della gravità e dell\'ampiezza delle tattiche di controllo coercitivo nel tempo.';

  @override
  String get metric_ugly_61_name =>
      'Linguaggio di Conformità Basato sulla Paura';

  @override
  String get metric_ugly_61_description =>
      'Identifica la conformità guidata interamente dalla paura della violenza o di severe punizioni piuttosto che dalla scelta.';

  @override
  String get metric_ugly_62_name => 'Linguaggio dei Rituali di Punizione';

  @override
  String get metric_ugly_62_description =>
      'Rileva riferimenti a pratiche di punizione sistematiche utilizzate per imporre conformità e controllo.';

  @override
  String get metric_ugly_63_name => 'Indicatori di Rituali di Degradazione';

  @override
  String get metric_ugly_63_description =>
      'Segnala rituali sistematici di degradazione o umiliazione progettati per distruggere la dignità.';

  @override
  String get metric_ugly_64_name => 'Minacce di Esposizione Non Consensuale';

  @override
  String get metric_ugly_64_description =>
      'Identifica minacce di divulgare immagini intime, informazioni private o segreti senza consenso.';

  @override
  String get metric_ugly_65_name => 'Minacce di Abuso Basato su Immagini';

  @override
  String get metric_ugly_65_description =>
      'Rileva minacce di distribuire immagini intime come vendetta, punizione o ricatto.';

  @override
  String get metric_ugly_66_name => 'Tattiche di Intrappolamento Finanziario';

  @override
  String get metric_ugly_66_description =>
      'Segnala la creazione deliberata di dipendenza finanziaria che rende impossibile la sopravvivenza indipendente.';

  @override
  String get metric_ugly_67_name => 'Linguaggio di Minaccia Abitativa';

  @override
  String get metric_ugly_67_description =>
      'Rileva minacce di rendere il partner senza casa, rimuovere l\'accesso all\'alloggio o distruggere la sicurezza abitativa.';

  @override
  String get metric_ugly_68_name => 'Minacce sullo Status di Immigrazione';

  @override
  String get metric_ugly_68_description =>
      'Identifica minacce di denunciare lo status di immigrazione o revocare la sponsorizzazione del visto come controllo.';

  @override
  String get metric_ugly_69_name => 'Abuso Religioso o Spirituale';

  @override
  String get metric_ugly_69_description =>
      'Rileva l\'uso dell\'autorità religiosa, della dottrina o della minaccia spirituale per controllare, punire o danneggiare.';

  @override
  String get metric_ugly_70_name => 'Armamento della Vergogna Culturale';

  @override
  String get metric_ugly_70_description =>
      'Segnala la minaccia di esporre comportamenti alla comunità culturale o familiare come punizione.';

  @override
  String get metric_ugly_71_name => 'Minacce di Danno alla Famiglia';

  @override
  String get metric_ugly_71_description =>
      'Identifica minacce di danneggiare i familiari del partner, i figli o i propri cari come leva.';

  @override
  String get metric_ugly_72_name => 'Campagna di Molestie Coordinate';

  @override
  String get metric_ugly_72_description =>
      'Rileva l\'organizzazione di altri per molestare, perseguitare o intimidire collettivamente il partner.';

  @override
  String get metric_ugly_73_name => 'Minacce di False Denunce';

  @override
  String get metric_ugly_73_description =>
      'Segnala minacce di denunce penali false o accuse legali contro il partner.';

  @override
  String get metric_ugly_74_name => 'Armamento del Sistema Legale';

  @override
  String get metric_ugly_74_description =>
      'Identifica l\'uso di procedimenti legali, tribunali o ordini di protezione come armi di molestia.';

  @override
  String get metric_ugly_75_name => 'Violazione dell\'Ordine Restrittivo';

  @override
  String get metric_ugly_75_description =>
      'Rileva riferimenti alla violazione o alla pianificazione di violazione di ordini di protezione o di non contatto.';

  @override
  String get metric_ugly_76_name => 'Minacce di Sabotaggio Lavorativo';

  @override
  String get metric_ugly_76_description =>
      'Segnala minacce di contattare datori di lavoro, colleghi o clienti per distruggere il sostentamento del partner.';

  @override
  String get metric_ugly_77_name => 'Minacce di Annientamento Sociale';

  @override
  String get metric_ugly_77_description =>
      'Rileva minacce di distruggere la reputazione, le relazioni e lo status sociale del partner.';

  @override
  String get metric_ugly_78_name => 'Campagna di Inganno Sistematico';

  @override
  String get metric_ugly_78_description =>
      'Identifica un inganno elaborato a lungo termine progettato per sfruttare il partner finanziariamente o emotivamente.';

  @override
  String get metric_ugly_79_name => 'Distruzione di Proprietà come Terrore';

  @override
  String get metric_ugly_79_description =>
      'Identifica la distruzione deliberata della proprietà del partner come tattica di intimidazione.';

  @override
  String get metric_ugly_80_name =>
      'Crudeltà sugli Animali come Terrore Indiretto';

  @override
  String get metric_ugly_80_description =>
      'Rileva danni o minacce agli animali domestici per dimostrare capacità di violenza verso il partner.';

  @override
  String get metric_ugly_81_name =>
      'Linguaggio di Messo in Pericolo dei Minori';

  @override
  String get metric_ugly_81_description =>
      'Segnala il mettere i bambini in situazioni pericolose o la minaccia di farlo come leva.';

  @override
  String get metric_ugly_82_name => 'Controllo basato sulla disabilità';

  @override
  String get metric_ugly_82_description =>
      'Rileva lo sfruttamento della disabilità del partner controllando l\'accesso a farmaci, mobilità o cure.';

  @override
  String get metric_ugly_83_name => 'Controllo tramite crisi artificiale';

  @override
  String get metric_ugly_83_description =>
      'Segnala la creazione deliberata di emergenze o crisi per aumentare la dipendenza del partner o giustificare il monitoraggio.';

  @override
  String get metric_ugly_84_name => 'Isolamento dai servizi di emergenza';

  @override
  String get metric_ugly_84_description =>
      'Identifica l\'impedimento attivo del partner nel chiamare la polizia, l\'ambulanza o i servizi di emergenza.';

  @override
  String get metric_ugly_85_name => 'Traiettoria di escalation delle minacce';

  @override
  String get metric_ugly_85_description =>
      'Monitora l\'aumento misurabile della gravità, specificità o frequenza delle minacce nel tempo.';

  @override
  String get metric_ugly_86_name => 'Indicatori di valutazione della letalità';

  @override
  String get metric_ugly_86_description =>
      'Segnala combinazioni di fattori associati al più alto rischio di omicidio del partner intimo.';

  @override
  String get metric_ugly_87_name => 'Tattiche di tortura psicologica';

  @override
  String get metric_ugly_87_description =>
      'Identifica un abuso psicologico prolungato volto a minare la stabilità mentale del partner.';

  @override
  String get metric_ugly_88_name => 'Linguaggio di prigionia';

  @override
  String get metric_ugly_88_description =>
      'Rileva riferimenti al tenere il partner prigioniero, impedirne la partenza o controllarne ogni movimento.';

  @override
  String get metric_ugly_89_name => 'Pianificazione di violenza mirata';

  @override
  String get metric_ugly_89_description =>
      'Rileva qualsiasi linguaggio che indichi pianificazione, preparazione o conto alla rovescia per violenza contro il partner.';

  @override
  String get metric_ugly_90_name => 'Reclutamento di terze parti per minacce';

  @override
  String get metric_ugly_90_description =>
      'Identifica il reclutamento di amici, familiari o altri per minacciare o danneggiare il partner.';

  @override
  String get metric_ugly_91_name => 'Sfruttamento dell\'Ideazione Suicidaria';

  @override
  String get metric_ugly_91_description =>
      'Segnala lo sfruttamento della crisi suicidaria del partner come leva o per impedirgli di chiedere aiuto.';

  @override
  String get metric_ugly_92_name => 'Minacce di Avvelenamento o Droga';

  @override
  String get metric_ugly_92_description =>
      'Rileva minacce o riferimenti a drogaggio, avvelenamento o manomissione del cibo o delle bevande del partner.';

  @override
  String get metric_ugly_93_name =>
      'Sfruttamento dell\'Autolesionismo Non Suicidario';

  @override
  String get metric_ugly_93_description =>
      'Segnala lo sfruttamento dell\'autolesionismo del partner come leva, derisione o ulteriore controllo.';

  @override
  String get metric_ugly_94_name =>
      'Linguaggio di Induzione alla Dissociazione';

  @override
  String get metric_ugly_94_description =>
      'Rileva schemi progettati per causare dissociazione, distacco o depersonalizzazione nel partner.';

  @override
  String get metric_ugly_95_name => 'Impianto di Distorsione Cognitiva';

  @override
  String get metric_ugly_95_description =>
      'Rileva l\'installazione deliberata di false credenze su di sé, sulla realtà o sulla sanità mentale del partner.';

  @override
  String get metric_ugly_96_name => 'Ostruzione delle Cure Mediche';

  @override
  String get metric_ugly_96_description =>
      'Rileva l\'impedimento all\'accesso a farmaci, medici, ospedali o cure sanitarie.';

  @override
  String get metric_ugly_97_name => 'Linguaggio di Minaccia Estremista';

  @override
  String get metric_ugly_97_description =>
      'Segnala linguaggio preso in prestito da quadri ideologici estremisti o violenti applicato al partner.';

  @override
  String get metric_ugly_98_name => 'Segnali di Stalking Post-Separazione';

  @override
  String get metric_ugly_98_description =>
      'Rileva minacce, linguaggio di sorveglianza o tattiche di intimidazione dopo o in previsione di una rottura.';

  @override
  String get metric_ugly_99_name => 'Armamentizzazione dei Figli';

  @override
  String get metric_ugly_99_description =>
      'Identifica l\'uso dei figli come pedine, minacce relative all\'affidamento o lo sfruttamento dei legami genitoriali come meccanismi di controllo.';

  @override
  String get metric_ugly_100_name => 'Sistematica Disumanizzazione';

  @override
  String get metric_ugly_100_description =>
      'Rileva un linguaggio persistente che priva il partner della personalità, della dignità o del diritto alla sua umanità di base.';

  @override
  String get metric_narcissist_1_name => 'Grandiosa Autostima';

  @override
  String get metric_narcissist_1_description =>
      'Affermazioni esagerate di successi, talenti o status oltre ogni evidenza realistica, spesso con un senso di unicità.';

  @override
  String get metric_narcissist_2_name => 'Richieste di Diritto';

  @override
  String get metric_narcissist_2_description =>
      'Aspettative irragionevoli di trattamento speciale o conformità automatica ai propri desideri senza reciprocità.';

  @override
  String get metric_narcissist_3_name => 'Deficit Empatico';

  @override
  String get metric_narcissist_3_description =>
      'Incapacità o riluttanza a riconoscere o convalidare i sentimenti altrui, liquidando i bisogni emotivi come irrilevanti.';

  @override
  String get metric_narcissist_4_name => 'Ricerca di Ammirazione';

  @override
  String get metric_narcissist_4_description =>
      'Eccessiva ricerca di ammirazione, complimenti o convalida per rafforzare una fragile autostima.';

  @override
  String get metric_narcissist_5_name => 'Tattiche di Triangolazione';

  @override
  String get metric_narcissist_5_description =>
      'Introdurre una terza parte nei conflitti per creare gelosia, competizione o manipolare le percezioni.';

  @override
  String get metric_narcissist_6_name => 'Intensità del Love Bombing';

  @override
  String get metric_narcissist_6_description =>
      'Lusinghe, regali o attenzioni travolgenti all\'inizio di una relazione per ottenere controllo e idealizzare il bersaglio.';

  @override
  String get metric_narcissist_7_name => 'Critica Svalutativa';

  @override
  String get metric_narcissist_7_description =>
      'Passaggio improvviso a critiche dure, sminuimento o disprezzo dopo l\'idealizzazione, erodendo l\'autostima del bersaglio.';

  @override
  String get metric_narcissist_8_name => 'Punizione del Silenzio';

  @override
  String get metric_narcissist_8_description =>
      'Negare comunicazione o affetto come punizione deliberata per indurre ansia e conformità.';

  @override
  String get metric_narcissist_9_name => 'Inversione di Colpa DARVO';

  @override
  String get metric_narcissist_9_description =>
      'Negare la responsabilità, attaccare l\'accusatore e invertire i ruoli di vittima e offensore per eludere la responsabilità.';

  @override
  String get metric_narcissist_10_name =>
      'Distorsione della Realtà Gaslighting';

  @override
  String get metric_narcissist_10_description =>
      'Negare o distorcere fatti, eventi o sentimenti per far dubitare il bersaglio della propria memoria o sanità mentale.';

  @override
  String get metric_narcissist_11_name => 'Rabbia per le Critiche';

  @override
  String get metric_narcissist_11_description =>
      'Intensa rabbia, disprezzo o ritorsione in risposta a qualsiasi percepito affronto o feedback, anche se costruttivo.';

  @override
  String get metric_narcissist_12_name => 'Violazione dei Confini';

  @override
  String get metric_narcissist_12_description =>
      'Ignorare o superare i limiti dichiarati, la privacy o lo spazio personale senza rimorso o negoziazione.';

  @override
  String get metric_narcissist_13_name => 'Espressione di Invidia';

  @override
  String get metric_narcissist_13_description =>
      'Risentimento per i successi o i possedimenti altrui, spesso accompagnato da svalutazione o tentativi di minare.';

  @override
  String get metric_narcissist_14_name => 'Comportamento Sfruttatore';

  @override
  String get metric_narcissist_14_description =>
      'Utilizzare gli altri per guadagno personale, status o risorse senza riguardo per il loro benessere o consenso.';

  @override
  String get metric_narcissist_15_name => 'Manipolazione Speculare';

  @override
  String get metric_narcissist_15_description =>
      'Imitare gli interessi, i valori o i tratti del bersaglio per creare un falso rapporto e guadagnare fiducia.';

  @override
  String get metric_narcissist_16_name => 'Affermazioni di Superiorità';

  @override
  String get metric_narcissist_16_description =>
      'Affermare una superiorità intrinseca sugli altri, spesso con linguaggio condiscendente o sprezzante.';

  @override
  String get metric_narcissist_17_name => 'Preoccupazione Fantasiosa';

  @override
  String get metric_narcissist_17_description =>
      'Discorsi ossessivi su successo illimitato, potere, brillantezza o amore ideale che sono irrealistici.';

  @override
  String get metric_narcissist_18_name => 'Affermazione di Status Speciale';

  @override
  String get metric_narcissist_18_description =>
      'Credenza di poter essere compresi solo da o associarsi con persone o istituzioni di alto status.';

  @override
  String get metric_narcissist_19_name => 'Sfruttamento Interpersonale';

  @override
  String get metric_narcissist_19_description =>
      'Approfittare delle risorse, del tempo o delle emozioni altrui senza reciprocità o gratitudine.';

  @override
  String get metric_narcissist_20_name => 'Mancanza di Rimorso';

  @override
  String get metric_narcissist_20_description =>
      'Assenza di senso di colpa o scuse dopo aver causato danno, spesso giustificando le azioni come meritate dal bersaglio.';

  @override
  String get metric_narcissist_21_name => 'Sminamento Competitivo';

  @override
  String get metric_narcissist_21_description =>
      'Sabotare i successi o le relazioni altrui per mantenere una posizione di superiorità.';

  @override
  String get metric_narcissist_22_name => 'Fase di Idealizzazione';

  @override
  String get metric_narcissist_22_description =>
      'Lodi e adorazione eccessive all\'inizio di una relazione, creando aspettative irrealistiche per il bersaglio.';

  @override
  String get metric_narcissist_23_name => 'Fase di Svalutazione';

  @override
  String get metric_narcissist_23_description =>
      'Critiche e disprezzo graduali o improvvisi dopo l\'idealizzazione, generando confusione e insicurezza.';

  @override
  String get metric_narcissist_24_name => 'Impulso allo Scarto';

  @override
  String get metric_narcissist_24_description =>
      'Terminare bruscamente le relazioni quando il bersaglio non fornisce più approvvigionamento narcisistico o lo sfida.';

  @override
  String get metric_narcissist_25_name => 'Tentativi di Hoovering';

  @override
  String get metric_narcissist_25_description =>
      'Riavvicinarsi a un bersaglio scartato con promesse, sensi di colpa o manipolazione per ottenere nuovamente approvvigionamento.';

  @override
  String get metric_narcissist_26_name => 'Proiezione dei Difetti';

  @override
  String get metric_narcissist_26_description =>
      'Accusare gli altri dei propri tratti o comportamenti negativi per evitare l\'autoconsapevolezza.';

  @override
  String get metric_narcissist_27_name => 'Controllo tramite Senso di Colpa';

  @override
  String get metric_narcissist_27_description =>
      'Usare affermazioni che inducono senso di colpa per manipolare gli altri all\'obbedienza o alla cura.';

  @override
  String get metric_narcissist_28_name => 'Volatilità Emotiva';

  @override
  String get metric_narcissist_28_description =>
      'Sbalzi d\'umore rapidi dal fascino alla rabbia, spesso innescati da una percepita ferita narcisistica.';

  @override
  String get metric_narcissist_29_name => 'Invalidazione dei Sentimenti';

  @override
  String get metric_narcissist_29_description =>
      'Liquidare o minimizzare le emozioni altrui come reazioni eccessive o irrazionali.';

  @override
  String get metric_narcissist_30_name => 'Monopolizzare le Conversazioni';

  @override
  String get metric_narcissist_30_description =>
      'Dominare il dialogo con argomenti incentrati su di sé, interrompendo o ignorando i contributi altrui.';

  @override
  String get metric_narcissist_31_name => 'Denigrazione con Insulti';

  @override
  String get metric_narcissist_31_description =>
      'Usare insulti, etichette o termini denigratori per svalutare e controllare il bersaglio.';

  @override
  String get metric_narcissist_32_name => 'Minacce di Abbandono';

  @override
  String get metric_narcissist_32_description =>
      'Usare la paura della perdita o del rifiuto per ottenere conformità o attenzione.';

  @override
  String get metric_narcissist_33_name => 'Fingere la Vittima';

  @override
  String get metric_narcissist_33_description =>
      'Presentarsi come ingiustamente trattati per suscitare compassione e deviare la responsabilità.';

  @override
  String get metric_narcissist_34_name => 'Complesso del Martire';

  @override
  String get metric_narcissist_34_description =>
      'Rivendicare un sacrificio o una sofferenza eccessivi per indurre senso di colpa e obbligo negli altri.';

  @override
  String get metric_narcissist_35_name => 'Memoria Selettiva';

  @override
  String get metric_narcissist_35_description =>
      'Dimenticare convenientemente promesse, accordi o azioni dannose per evitare responsabilità.';

  @override
  String get metric_narcissist_36_name => 'Comunicazione a Muro';

  @override
  String get metric_narcissist_36_description =>
      'Rifiutarsi di dialogare, ignorare domande o interrompere discussioni per mantenere il controllo.';

  @override
  String get metric_narcissist_37_name => 'Futuro Falso';

  @override
  String get metric_narcissist_37_description =>
      'Fare promesse grandioshe su piani futuri condivisi per creare false speranze e dipendenza.';

  @override
  String get metric_narcissist_38_name => 'Campagna Diffamatoria';

  @override
  String get metric_narcissist_38_description =>
      'Diffondere voci maligne o bugie sul bersaglio per isolarlo e danneggiarne la reputazione.';

  @override
  String get metric_narcissist_39_name => 'Tattiche di Isolamento';

  @override
  String get metric_narcissist_39_description =>
      'Scoraggiare o impedire i contatti con amici, familiari o sistemi di supporto per aumentare la dipendenza.';

  @override
  String get metric_narcissist_40_name => 'Sfruttamento Finanziario';

  @override
  String get metric_narcissist_40_description =>
      'Manipolare o controllare le risorse finanziarie per guadagno personale o per creare dipendenza.';

  @override
  String get metric_narcissist_41_name => 'Coercizione Sessuale';

  @override
  String get metric_narcissist_41_description =>
      'Usare pressione, senso di colpa o manipolazione per ottenere conformità sessuale senza un consenso genuino.';

  @override
  String get metric_narcissist_42_name => 'Test dei Confini';

  @override
  String get metric_narcissist_42_description =>
      'Spingere ripetutamente i limiti per vedere quale comportamento viene tollerato, poi intensificare le violazioni.';

  @override
  String get metric_narcissist_43_name => 'Negazione Gaslighting';

  @override
  String get metric_narcissist_43_description =>
      'Negare categoricamente eventi o dichiarazioni accaduti, facendo dubitare la vittima della realtà.';

  @override
  String get metric_narcissist_44_name => 'Minimizzazione delle Preoccupazioni';

  @override
  String get metric_narcissist_44_description =>
      'Liquidare lamentele legittime come poco importanti o eccessivamente sensibili.';

  @override
  String get metric_narcissist_45_name => 'Esternalizzazione della Colpa';

  @override
  String get metric_narcissist_45_description =>
      'Attribuire tutti i problemi e conflitti agli altri, senza mai accettare la propria responsabilità.';

  @override
  String get metric_narcissist_46_name => 'Provocazione della Gelosia';

  @override
  String get metric_narcissist_46_description =>
      'Flirtare o lodare altri per suscitare gelosia e mantenere il controllo emotivo.';

  @override
  String get metric_narcissist_47_name => 'Ricatto Emotivo';

  @override
  String get metric_narcissist_47_description =>
      'Usare paura, obbligo o senso di colpa per manipolare decisioni e comportamenti.';

  @override
  String get metric_narcissist_48_name => 'Falsa Consapevolezza';

  @override
  String get metric_narcissist_48_description =>
      'Simulare autoconsapevolezza o empatia per apparire redento, poi tornare a schemi tossici.';

  @override
  String get metric_narcissist_49_name => 'Tono Dispregiativo';

  @override
  String get metric_narcissist_49_description =>
      'Usare sarcasmo, scherno o linguaggio sprezzante per degradare e liquidare gli altri.';

  @override
  String get metric_narcissist_50_name => 'Fantasie di Vendetta';

  @override
  String get metric_narcissist_50_description =>
      'Esprimere desideri di ritorsione o punizione verso coloro che li hanno offesi.';

  @override
  String get metric_serial_killer_1_name => 'Inquadramento Predatorio';

  @override
  String get metric_serial_killer_1_description =>
      'Rileva un linguaggio che posiziona chi parla come cacciatore e il bersaglio come preda, indicando intento predatorio.';

  @override
  String get metric_serial_killer_2_name => 'Deficit Empatico';

  @override
  String get metric_serial_killer_2_description =>
      'Identifica dichiarazioni prive di risonanza emotiva o preoccupazione per la sofferenza altrui, suggerendo insensibilità.';

  @override
  String get metric_serial_killer_3_name => 'Etichette Disumanizzanti';

  @override
  String get metric_serial_killer_3_description =>
      'Segnala l\'uso di termini denigratori o etichette oggettivanti che privano le vittime della loro umanità.';

  @override
  String get metric_serial_killer_4_name => 'Segnali di Oggettivazione';

  @override
  String get metric_serial_killer_4_description =>
      'Riconosce un linguaggio che tratta gli individui come strumenti o oggetti per la gratificazione.';

  @override
  String get metric_serial_killer_5_name => 'Fissazione sul Controllo';

  @override
  String get metric_serial_killer_5_description =>
      'Rileva riferimenti ossessivi a dominanza, manipolazione o imposizione di conformità.';

  @override
  String get metric_serial_killer_6_name => 'Tono di Ricerca del Brivido';

  @override
  String get metric_serial_killer_6_description =>
      'Identifica eccitazione o entusiasmo nel descrivere atti rischiosi, violenti o predatori.';

  @override
  String get metric_serial_killer_7_name => 'Marcatori di Compartimentazione';

  @override
  String get metric_serial_killer_7_description =>
      'Segnala bruschi passaggi tra argomenti normali e violenti, indicando separazione psicologica.';

  @override
  String get metric_serial_killer_8_name =>
      'Segnali di Selezione della Vittima';

  @override
  String get metric_serial_killer_8_description =>
      'Rileva criteri o preferenze per prendere di mira specifici gruppi vulnerabili.';

  @override
  String get metric_serial_killer_9_name => 'Godimento Sadico';

  @override
  String get metric_serial_killer_9_description =>
      'Riconosce il piacere derivante dal dolore, dalla paura o dalla sofferenza altrui.';

  @override
  String get metric_serial_killer_10_name => 'Danno Manipolativo';

  @override
  String get metric_serial_killer_10_description =>
      'Identifica un linguaggio usato per ingannare o costringere altri in situazioni dannose.';

  @override
  String get metric_serial_killer_11_name => 'Indicatori di Stalking';

  @override
  String get metric_serial_killer_11_description =>
      'Segnala tracciamento dettagliato, sorveglianza o monitoraggio ossessivo di un bersaglio.';

  @override
  String get metric_serial_killer_12_name => 'Linguaggio di Adescamento';

  @override
  String get metric_serial_killer_12_description =>
      'Rileva tattiche graduali di costruzione della fiducia per sfruttare o abusare delle vittime.';

  @override
  String get metric_serial_killer_13_name => 'Fantasia Violenta';

  @override
  String get metric_serial_killer_13_description =>
      'Identifica descrizioni vivide di danneggiare o uccidere altri come prova mentale.';

  @override
  String get metric_serial_killer_14_name => 'Affermazione di Potere';

  @override
  String get metric_serial_killer_14_description =>
      'Riconosce dichiarazioni che enfatizzano superiorità o controllo sugli altri.';

  @override
  String get metric_serial_killer_15_name => 'Mancanza di Rimorso';

  @override
  String get metric_serial_killer_15_description =>
      'Segnala assenza di colpa o rimpianto dopo aver discusso azioni dannose.';

  @override
  String get metric_serial_killer_16_name => 'Esternalizzazione della Colpa';

  @override
  String get metric_serial_killer_16_description =>
      'Rileva lo spostamento della responsabilità per impulsi violenti su vittime o società.';

  @override
  String get metric_serial_killer_17_name => 'Violenza Sessualizzata';

  @override
  String get metric_serial_killer_17_description =>
      'Identifica la fusione di temi sessuali e violenti nel linguaggio.';

  @override
  String get metric_serial_killer_18_name => 'Tattiche di Isolamento';

  @override
  String get metric_serial_killer_18_description =>
      'Riconosce sforzi per separare un bersaglio dalle reti di supporto.';

  @override
  String get metric_serial_killer_19_name => 'Pattern di Gaslighting';

  @override
  String get metric_serial_killer_19_description =>
      'Segnala linguaggio progettato per distorcere la realtà e minare la sanità mentale della vittima.';

  @override
  String get metric_serial_killer_20_name => 'Velatura di Minacce';

  @override
  String get metric_serial_killer_20_description =>
      'Rileva minacce implicite o avvertimenti mascherati da dichiarazioni casuali.';

  @override
  String get metric_serial_killer_21_name => 'Linguaggio Possessivo';

  @override
  String get metric_serial_killer_21_description =>
      'Identifica affermazioni di proprietà o diritto su un\'altra persona.';

  @override
  String get metric_serial_killer_22_name => 'Temi di Vendetta';

  @override
  String get metric_serial_killer_22_description =>
      'Riconosce la fissazione sulla rappresaglia o sulla punizione di torti percepiti.';

  @override
  String get metric_serial_killer_23_name => 'Grandiosità Narcisistica';

  @override
  String get metric_serial_killer_23_description =>
      'Segnala un\'esagerata importanza di sé e il disprezzo per il valore altrui.';

  @override
  String get metric_serial_killer_24_name => 'Distacco Emotivo';

  @override
  String get metric_serial_killer_24_description =>
      'Rileva un tono clinico o distante nel discutere di traumi o danni.';

  @override
  String get metric_serial_killer_25_name => 'Pazienza Predatoria';

  @override
  String get metric_serial_killer_25_description =>
      'Identifica un linguaggio di pianificazione a lungo termine per future vittimizzazioni.';

  @override
  String get metric_serial_killer_26_name => 'Test dei Confini';

  @override
  String get metric_serial_killer_26_description =>
      'Riconosce la ricerca di limiti o resistenze in potenziali vittime.';

  @override
  String get metric_serial_killer_27_name => 'Minimizzazione del Danno';

  @override
  String get metric_serial_killer_27_description =>
      'Segnala la minimizzazione della gravità di atti violenti o abusivi.';

  @override
  String get metric_serial_killer_28_name => 'Giustificazione della Violenza';

  @override
  String get metric_serial_killer_28_description =>
      'Rileva razionalizzazioni per danneggiare gli altri come necessarie o meritate.';

  @override
  String get metric_serial_killer_29_name => 'Focalizzazione Ossessiva';

  @override
  String get metric_serial_killer_29_description =>
      'Identifica pensieri ripetitivi e fissi su una persona o un atto specifico.';

  @override
  String get metric_serial_killer_30_name => 'Calcolo Freddo';

  @override
  String get metric_serial_killer_30_description =>
      'Riconosce la pianificazione strategica e priva di emozioni di azioni dannose.';

  @override
  String get metric_serial_killer_31_name => 'Fascino Ingannevole';

  @override
  String get metric_serial_killer_31_description =>
      'Segnala un linguaggio eccessivamente lusinghiero o accattivante usato per manipolare.';

  @override
  String get metric_serial_killer_32_name => 'Colpevolizzazione della Vittima';

  @override
  String get metric_serial_killer_32_description =>
      'Rileva l\'attribuzione di colpa alla vittima per la propria vittimizzazione.';

  @override
  String get metric_serial_killer_33_name => 'Segnali di Escalation';

  @override
  String get metric_serial_killer_33_description =>
      'Identifica la progressione dalla fantasia all\'intento in un linguaggio violento.';

  @override
  String get metric_serial_killer_34_name => 'Orientamento Parassitario';

  @override
  String get metric_serial_killer_34_description =>
      'Riconosce un linguaggio che tratta gli altri come risorse da sfruttare.';

  @override
  String get metric_serial_killer_35_name => 'Indicatori di Eccitazione';

  @override
  String get metric_serial_killer_35_description =>
      'Segnala indicatori fisiologici di eccitazione legati a temi violenti.';

  @override
  String get metric_serial_killer_36_name => 'Test di Lealtà';

  @override
  String get metric_serial_killer_36_description =>
      'Rileva richieste di prova di fedeltà o segretezza da parte dei complici.';

  @override
  String get metric_serial_killer_37_name => 'Linguaggio Ritualistico';

  @override
  String get metric_serial_killer_37_description =>
      'Identifica frasi modellate e cerimoniali attorno ad atti violenti.';

  @override
  String get metric_serial_killer_38_name => 'Affermazioni di Superiorità';

  @override
  String get metric_serial_killer_38_description =>
      'Riconosce affermazioni di essere al di sopra dei vincoli morali o legali.';

  @override
  String get metric_serial_killer_39_name => 'Vuoto Emotivo';

  @override
  String get metric_serial_killer_39_description =>
      'Segnala l\'assenza di parole emotive in contesti che richiedono empatia.';

  @override
  String get metric_serial_killer_40_name => 'Curiosità Predatoria';

  @override
  String get metric_serial_killer_40_description =>
      'Rileva domande investigative sulle paure o vulnerabilità di un bersaglio.';

  @override
  String get metric_serial_killer_41_name => 'Silenziare le Minacce';

  @override
  String get metric_serial_killer_41_description =>
      'Identifica avvertimenti per prevenire la divulgazione o la denuncia.';

  @override
  String get metric_serial_killer_42_name => 'Paragoni Disumanizzanti';

  @override
  String get metric_serial_killer_42_description =>
      'Riconosce l\'equiparazione di persone ad animali, oggetti o entità subumane.';

  @override
  String get metric_serial_killer_43_name => 'Linguaggio di Controllo';

  @override
  String get metric_serial_killer_43_description =>
      'Segnala toni imperativi o autoritari mirati a dominare gli altri.';

  @override
  String get metric_serial_killer_44_name => 'Dettaglio Sadico';

  @override
  String get metric_serial_killer_44_description =>
      'Rileva un\'eccessiva attenzione al dolore grafico o alla sofferenza nelle narrazioni.';

  @override
  String get metric_serial_killer_45_name => 'Empatia Manipolativa';

  @override
  String get metric_serial_killer_45_description =>
      'Identifica una preoccupazione finta per abbassare le difese del bersaglio.';

  @override
  String get metric_serial_killer_46_name => 'Sguardo Predatorio';

  @override
  String get metric_serial_killer_46_description =>
      'Riconosce un linguaggio che descrive un\'osservazione intensa e invasiva dei bersagli.';

  @override
  String get metric_serial_killer_47_name => 'Identità Violenta';

  @override
  String get metric_serial_killer_47_description =>
      'Segnala l\'autoidentificazione come predatore, assassino o mostro.';

  @override
  String get metric_serial_killer_48_name => 'Fremito della Caccia';

  @override
  String get metric_serial_killer_48_description =>
      'Rileva l\'eccitazione nel processo di pedinamento o inseguimento delle vittime.';

  @override
  String get metric_serial_killer_49_name => 'Confessione Compulsiva';

  @override
  String get metric_serial_killer_49_description =>
      'Identifica gli impulsi a rivelare atti violenti per sollievo psicologico.';

  @override
  String get metric_serial_killer_50_name => 'Linguaggio di Finalità';

  @override
  String get metric_serial_killer_50_description =>
      'Riconosce riferimenti alla fine, all\'uccisione o al silenziamento permanente dei bersagli.';

  @override
  String get packNarcissistLabel => 'Il Narcisista';

  @override
  String get packSerialKillerLabel => 'Il Serial Killer';
}
