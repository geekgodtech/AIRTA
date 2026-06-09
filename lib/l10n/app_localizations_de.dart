// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'KI-Beziehungstoxizitäts-Analysator';

  @override
  String get psychologicalMetrics => 'Psychologische Metriken';

  @override
  String get metricsDescription =>
      'Weniger ausgewählte Metriken erzeugen eine tiefere, konzentriertere Analyse dieser Verhaltensweisen. Mehr ausgewählte Metriken erzeugen einen breiteren Bericht mit weniger Details pro Metrik.';

  @override
  String get selectSMS => 'SMS / RCS Chat auswählen';

  @override
  String get selectDiscordChannel => 'Discord-Kanal auswählen';

  @override
  String get lightMode => 'Hell';

  @override
  String get darkMode => 'Dunkel';

  @override
  String get discordSetupTitle => 'Discord Einrichten';

  @override
  String get discordSetupDescription =>
      'Befolgen Sie diese Schritte, um die Discord-Kanalanalyse in der App zu aktivieren:';

  @override
  String get discordStep1Title => 'Discord-Bot Erstellen';

  @override
  String get discordStep1Description =>
      'Gehen Sie zu discord.com/developers, erstellen Sie eine neue Anwendung und fügen Sie einen Bot hinzu. Kopieren Sie den Bot-Token.';

  @override
  String get discordStep2Title => 'Bot-Berechtigungen Aktivieren';

  @override
  String get discordStep2Description =>
      'Aktivieren Sie in den Bot-Einstellungen \'Message Content Intent\' und \'Server Members Intent\'.';

  @override
  String get discordStep3Title => 'Bot zum Server Einladen';

  @override
  String get discordStep3Description =>
      'Verwenden Sie den OAuth2-URL-Generator, um den Bot mit den erforderlichen Berechtigungen zu Ihrem Discord-Server einzuladen.';

  @override
  String get discordStep4Title => 'In der App Konfigurieren';

  @override
  String get discordStep4Description =>
      'Geben Sie Ihren Bot-Token in den App-Einstellungen ein (kontaktieren Sie den Support, wenn Sie Hilfe benötigen).';

  @override
  String get discordStep5Title => 'Kanal Auswählen';

  @override
  String get discordStep5Description =>
      'Tippen Sie auf \'Discord-Kanal Auswählen\', wählen Sie Ihren Server und dann den zu analysierenden Kanal.';

  @override
  String get gotIt => 'Verstanden';

  @override
  String get selectFile => 'Datei auswählen';

  @override
  String get analyzeSelectedMetrics => 'Ausgewählte Metriken analysieren';

  @override
  String get analyze20RandomMetrics => '20 zufällige Metriken analysieren';

  @override
  String get membershipOptions => 'Mitgliedschaftsoptionen';

  @override
  String get free => 'Kostenlos';

  @override
  String get oneTimeUnlock => 'Einmalige Berichtsfreischaltung';

  @override
  String get standard => 'Standard';

  @override
  String get discordAddon => 'Discord-Erweiterung';

  @override
  String get analyze => 'Analysieren';

  @override
  String get report => 'Bericht';

  @override
  String get pdfReport => 'PDF-Bericht';

  @override
  String get openPdf => 'PDF öffnen';

  @override
  String get sharePdf => 'PDF teilen';

  @override
  String get printPdf => 'PDF drucken';

  @override
  String get closePdfPreview => 'PDF-Vorschaufenster schließen';

  @override
  String get openPdfPreview => 'PDF-Vorschaufenster öffnen';

  @override
  String get pdfPreviewDescription =>
      'Das eingebettete PDF-Fenster startet geschlossen, um den Bericht kompakt zu halten.';

  @override
  String get notNow => 'Jetzt nicht';

  @override
  String get unlockThisReport => 'Diesen Bericht freischalten - \$20';

  @override
  String get joinStandard => 'Standard beitreten - \$9.99/Mon.';

  @override
  String get instantUnlockTitle => 'Sofortige Berichtsfreischaltung - \$20';

  @override
  String get instantUnlockDescription =>
      'Dies ist ein einmaliger Kauf, um nur den aktuellen Bericht freizuschalten. Kein Abonnement erforderlich. Zukünftige Berichte erfordern separate Freischaltungen oder eine Mitgliedschaft.\n\nMit der Zahlung fortfahren?';

  @override
  String get purchaseFor20 => 'Für \$20 kaufen';

  @override
  String get share => 'Teilen';

  @override
  String get print => 'Drucken';

  @override
  String get save => 'Speichern';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get ok => 'OK';

  @override
  String get loading => 'Laden...';

  @override
  String get error => 'Fehler';

  @override
  String get success => 'Erfolg';

  @override
  String get conversations => 'Konversationen';

  @override
  String get messages => 'Nachrichten';

  @override
  String get selectConversation => 'Konversation auswählen';

  @override
  String get selectSmsConversation => 'SMS / RCS Chat auswählen';

  @override
  String get searchConversations => 'Konversationen suchen...';

  @override
  String get loadingConversations => 'Konversationen werden geladen...';

  @override
  String get errorLoadingConversations =>
      'Fehler beim Laden der Konversationen';

  @override
  String get selectConversationToAnalyze => 'Gespräch zur Analyse auswählen';

  @override
  String get analyzeWithSelectedMetrics =>
      'Mit ausgewählten Metriken analysieren';

  @override
  String get loadConversationAndSelectMetric =>
      'Laden Sie eine Konversation und wählen Sie mindestens eine Metrik';

  @override
  String get selectAtLeastOneMetric =>
      'Es muss mindestens eine Metrik ausgewählt werden, um den Bericht auszuführen.';

  @override
  String get spinningMetricWheel => 'Dreht das Metrik-Rad...';

  @override
  String get loadConversationToAnalyze =>
      'Laden Sie eine Konversation zum Analysieren';

  @override
  String get noConversationsFound => 'Keine Konversationen gefunden';

  @override
  String get permissionsRequired => 'Berechtigungen erforderlich';

  @override
  String get smsPermission => 'Textnachrichten';

  @override
  String get contactsPermission => 'Kontakte';

  @override
  String get smsPermissionDescription =>
      'Um Ihre SMS-Konversationen auf Beziehungsmuster zu analysieren';

  @override
  String get contactsPermissionDescription =>
      'Um Kontaktnamen anstelle von Telefonnummern anzuzeigen';

  @override
  String get analyzingMessage =>
      'Bitte warten Sie, während Ihre psychologische Analyse von KI generiert wird...';

  @override
  String get analyzingStatus => 'Konversation wird analysiert...';

  @override
  String get analyzingSubMessage =>
      'Bitte haben Sie Geduld, dieser Prozess kann je nach Verbindungsgeschwindigkeit und Anzahl der ausgewählten Metriken bis zu einer Minute dauern';

  @override
  String get unlockFullReport => 'Gesamten Bericht freischalten und anzeigen';

  @override
  String get fullReportLocked => 'Vollständiger Bericht gesperrt';

  @override
  String get upgradeToUnlock =>
      'Aktualisieren Sie Ihre Mitgliedschaft, um den vollständigen psychologischen Analysebericht mit allen Metriken und detaillierten Erkenntnissen freizuschalten.';

  @override
  String get language => 'Sprache';

  @override
  String get english => 'Englisch';

  @override
  String get spanish => 'Spanisch';

  @override
  String get french => 'Französisch';

  @override
  String get german => 'Deutsch';

  @override
  String get italian => 'Italienisch';

  @override
  String get portuguese => 'Portugiesisch';

  @override
  String get dutch => 'Niederländisch';

  @override
  String get russian => 'Russisch';

  @override
  String get chinese => 'Chinesisch';

  @override
  String get japanese => 'Japanisch';

  @override
  String get korean => 'Koreanisch';

  @override
  String get arabic => 'Arabisch';

  @override
  String get hindi => 'Hindi';

  @override
  String get turkish => 'Türkisch';

  @override
  String get polish => 'Polnisch';

  @override
  String get ukrainian => 'Ukrainisch';

  @override
  String get runAnotherAnalysis => 'Eine weitere Analyse durchführen?';

  @override
  String get becomeMemberTitle =>
      'Werden Sie Mitglied, um den vollständigen Analysebericht zu erhalten';

  @override
  String get becomeMemberSubtitle =>
      'Wählen Sie die Zugriffsstufe, die zu den Konversationen und Berichten passt, die Sie analysieren müssen.';

  @override
  String get benefitAnalyzeSms => 'SMS-Textnachrichten analysieren';

  @override
  String get benefitReportPreview => 'Eine Berichtsvorschau ausführen';

  @override
  String get benefitViewPartialReport => 'Etwa 25 % des Berichts anzeigen';

  @override
  String get benefitLockedDetails => 'Vollständige Berichtsdetails gesperrt';

  @override
  String get currentFreeAccess => 'Aktueller kostenloser Zugang';

  @override
  String get benefitUnlockCurrentReport =>
      'Diesen vollständigen Bericht freischalten';

  @override
  String get benefitNoSubscription => 'Kein Abonnement';

  @override
  String get benefitSavePrintShareThis =>
      'Diesen Bericht speichern, drucken und teilen';

  @override
  String get benefitBestSingleAnalysis =>
      'Ideal, wenn Sie nur eine Analyse benötigen';

  @override
  String get unlockThisReportShort => 'Diesen Bericht freischalten';

  @override
  String get benefitFullSmsReport => 'Vollständiger SMS-Analysebericht';

  @override
  String get benefitSavePrintSharePdf =>
      'PDF-Berichte speichern, drucken und teilen';

  @override
  String get benefitTenReports => '10 Berichte pro 24-Stunden-Zeitraum';

  @override
  String get benefitBestTextReview =>
      'Ideal für die Überprüfung von Beziehungen per SMS';

  @override
  String get benefitDateRangeFilter => 'Analyse nach Datumsbereich filtern';

  @override
  String get signUpStandard => 'Für Standard-Mitgliedschaft anmelden';

  @override
  String get benefitAddToStandard => 'Zur Standard-Mitgliedschaft hinzufügen';

  @override
  String get benefitAnalyzeDiscord => 'Discord-Server-Chats analysieren';

  @override
  String get benefitRequiresBot => 'Erfordert Bot-Installation';

  @override
  String get benefitBestGamers => 'Ideal für Gamer und Discord-Communities';

  @override
  String get addDiscordAnalysis => 'Discord-Analyse hinzufügen';

  @override
  String get requiresStandardMembership => 'Erfordert Standard-Mitgliedschaft';

  @override
  String get comingSoon => 'Demnächst';

  @override
  String get comingSoonWithNextUpdate => 'Demnächst mit dem nächsten Update:';

  @override
  String get proMembershipTier => 'Pro-Mitgliedschaftsstufe - \$19.99';

  @override
  String get proPlusMembershipTier => 'Pro-Plus-Mitgliedschaftsstufe - \$24.99';

  @override
  String get proGetsLabel => 'Pro umfasst:';

  @override
  String get proGetsDescription =>
      'Analysieren Sie Chat-Verläufe von allen anderen beliebten Messaging- und Social-Media-Plattformen wie:';

  @override
  String get proPlatformsList =>
      'LinkedIn, WhatsApp, Instagram, Facebook Messenger, Telegram, X (Twitter), E-Mail und Kalender';

  @override
  String get proPlusGetsLabel => 'Pro-Plus umfasst:';

  @override
  String get proPlusGetsDescription =>
      'Alles aus Pro, plus das Discord-Add-on zu einem reduzierten Preis.';

  @override
  String get purchaseSuccessfulUnlocked =>
      'Kauf erfolgreich! Bericht freigeschaltet.';

  @override
  String get purchaseFailed =>
      'Kauf fehlgeschlagen. Bitte versuchen Sie es erneut.';

  @override
  String get membershipActivated => 'Mitgliedschaft aktiviert!';

  @override
  String get dateRangeFilter => 'Datumsbereich-Filter';

  @override
  String get dateRangeOptional => '(optional)';

  @override
  String get startDate => 'Startdatum';

  @override
  String get endDate => 'Enddatum';

  @override
  String get clear => 'Löschen';

  @override
  String get dateRangeRequiresMembership =>
      'Erfordert Standard-Mitgliedschaft oder höher';

  @override
  String selectUpToCount(Object current, Object max) {
    return 'Bis zu $max auswählen. Aktuell: $current';
  }

  @override
  String get clearSelections => 'Auswahl löschen';

  @override
  String analyzeRandomMetrics(Object count) {
    return '$count zufällige Metriken analysieren';
  }

  @override
  String get saveSelections => 'Auswahl Speichern';

  @override
  String get loadSelections => 'Auswählen Laden';

  @override
  String get saveMetricListName => 'Metrik-Liste Speichern';

  @override
  String get enterListName =>
      'Geben Sie einen Namen für diese Metrik-Liste ein:';

  @override
  String get chooseSavedMetrics => 'Wählen Sie die gespeicherte Metrik-Liste:';

  @override
  String get noSavedLists =>
      'Keine gespeicherten Metrik-Listen zum Laden vorhanden.';

  @override
  String get metricListSaved => 'Metrik-Liste erfolgreich gespeichert.';

  @override
  String get metricListLoaded => 'Metrik-Liste erfolgreich geladen.';

  @override
  String get filters => 'Filter';

  @override
  String get sortBy => 'Sortieren nach:';

  @override
  String get recent => 'Kürzlich';

  @override
  String get name => 'Name';

  @override
  String get count => 'Anzahl';

  @override
  String get namedOnly => 'Nur benannte';

  @override
  String get minMessages => 'Min. Nachrichten:';

  @override
  String get minimumMessages => 'Minimum an Nachrichten:';

  @override
  String get executiveSummary => 'Zusammenfassung';

  @override
  String get metricScores => 'Metrik-Werte';

  @override
  String get contextualEvidenceExamples => 'Kontextuelle Beispiele';

  @override
  String get neutralSynthesis => 'Neutrale Synthese';

  @override
  String analysisOfSender(Object sender) {
    return 'Analyse von $sender (Absender)';
  }

  @override
  String analysisOfReceiver(Object receiver) {
    return 'Analyse von $receiver (Empfänger)';
  }

  @override
  String get finalConclusion => 'Abschlussfolgerung';

  @override
  String get metric_1_name => 'Verachtung';

  @override
  String get metric_1_description =>
      'Sucht nach Überlegenheit, Ekel, Spott, Augenrollen-Sprache oder Beleidigungen, die einen Partner unter den anderen stellen.';

  @override
  String get metric_2_name => 'Defensivität';

  @override
  String get metric_2_description =>
      'Verfolgt reflexiven Selbstschutz, Gegenangriffe, Ausreden und die Weigerung, die Beschwerde der anderen Person zu berücksichtigen.';

  @override
  String get metric_3_name => 'Verweigerung';

  @override
  String get metric_3_description =>
      'Identifiziert Abschaltung, Rückzug, Ignorieren, Weigerung zu antworten oder Beendigung von Gesprächen, um Engagement zu vermeiden.';

  @override
  String get metric_4_name => 'Kritik';

  @override
  String get metric_4_description =>
      'Erkennt Angriffe auf Charakter oder Persönlichkeit statt auf spezifische Verhaltensweisen, Bedürfnisse oder Vorfälle.';

  @override
  String get metric_5_name => 'Gaslighting-Indikatoren';

  @override
  String get metric_5_description =>
      'Markiert Versuche, jemanden an seinem Gedächtnis, seiner Wahrnehmung, seiner geistigen Gesundheit oder der Legitimität seiner Erfahrung zweifeln zu lassen.';

  @override
  String get metric_6_name => 'Schuldverschiebung';

  @override
  String get metric_6_description =>
      'Misst, ob Verantwortung auf den anderen Partner umgeleitet wird, statt direkt anerkannt zu werden.';

  @override
  String get metric_7_name => 'Eskalationsmuster';

  @override
  String get metric_7_description =>
      'Bewertet, ob Ton, Vorwürfe, Intensität oder Drohungen zunehmen, statt auf eine Lösung zuzugehen.';

  @override
  String get metric_8_name => 'Erkennung von Reparaturversuchen';

  @override
  String get metric_8_description =>
      'Prüft, ob Entschuldigungen, Humor, Pausen, Beruhigung oder Friedensangebote bemerkt und angenommen werden.';

  @override
  String get metric_9_name => 'Verantwortungssprache';

  @override
  String get metric_9_description =>
      'Sucht nach klarem Eingeständnis von Schaden, spezifischer Verantwortung und Bereitschaft, das Verhalten zu ändern.';

  @override
  String get metric_10_name => 'Grenzenrespekt';

  @override
  String get metric_10_description =>
      'Bewertet, ob festgelegte Grenzen bezüglich Zeit, Privatsphäre, Körper, Emotionen oder Kontakt eingehalten werden.';

  @override
  String get metric_11_name => 'Indikatoren für Zwangskontrolle';

  @override
  String get metric_11_description =>
      'Markiert Muster von Einschüchterung, Einschränkung, Überwachung, Abhängigkeit oder Kontrolle über Entscheidungen und Bewegungen.';

  @override
  String get metric_12_name => 'Drohsprache';

  @override
  String get metric_12_description =>
      'Identifiziert explizite oder implizite Drohungen, die Sicherheit, Verlassen, Enthüllung, Vergeltung oder Bestrafung betreffen.';

  @override
  String get metric_13_name => 'Abweisung';

  @override
  String get metric_13_description =>
      'Erkennt das Abwischen von Bedenken, die Behandlung von Bedürfnissen als unwichtig oder die Weigerung, Not ernst zu nehmen.';

  @override
  String get metric_14_name => 'Invalidierung';

  @override
  String get metric_14_description =>
      'Misst Leugnung, Spott oder Korrektur der Emotionen einer anderen Person, statt sie anzuerkennen.';

  @override
  String get metric_15_name => 'Empathieausdruck';

  @override
  String get metric_15_description =>
      'Sucht nach Perspektivübernahme, Fürsorge, emotionaler Anerkennung und Sorge um die Erfahrung der anderen Person.';

  @override
  String get metric_16_name => 'Reziprozität';

  @override
  String get metric_16_description =>
      'Bewertet, ob Aufmerksamkeit, Einsatz, Entschuldigung, Kompromiss und emotionale Unterstützung in beide Richtungen fließen.';

  @override
  String get metric_17_name => 'Emotionale Regulation';

  @override
  String get metric_17_description =>
      'Bewertet die Fähigkeit, geerdet zu bleiben, zu pausieren, sich selbst zu beruhigen und ohne explosive Reaktivität zu kommunizieren.';

  @override
  String get metric_18_name => 'Sarkasmus als Schaden eingesetzt';

  @override
  String get metric_18_description =>
      'Markiert Sarkasmus, der verwendet wird, um herabzusetzen, zu bestrafen, zu demütigen oder Feindseligkeit als Humor zu tarnen.';

  @override
  String get metric_19_name => 'Beleidigungen';

  @override
  String get metric_19_description =>
      'Identifiziert abwertende Bezeichnungen, Beleidigungen, Schimpfwörter, die auf die Person gerichtet sind, oder identitätsbasierte Angriffe.';

  @override
  String get metric_20_name => 'Muster des Schweigens';

  @override
  String get metric_20_description =>
      'Verfolgt Schweigen, das als Bestrafung, Kontrolle, Vermeidung oder Rückzug von Verbindung verwendet wird.';

  @override
  String get metric_21_name => 'Eifersuchtsrahmung';

  @override
  String get metric_21_description =>
      'Bewertet Verdacht, Besitzansprüche, Vorwürfe oder Eifersucht, die als Beweis für Fürsorge dargestellt werden.';

  @override
  String get metric_22_name => 'Isolationsdruck';

  @override
  String get metric_22_description =>
      'Markiert Bemühungen, einen Partner von Freunden, Familie, Unterstützungssystemen oder externen Perspektiven zu trennen.';

  @override
  String get metric_23_name => 'Indikatoren für finanzielle Kontrolle';

  @override
  String get metric_23_description =>
      'Sucht nach Kontrolle von Geld, Ausgaben, Beschäftigung, Zugang zu Konten oder finanzieller Unabhängigkeit.';

  @override
  String get metric_24_name => 'Indikatoren für Privatsphäreverletzung';

  @override
  String get metric_24_description =>
      'Erkennt Schnüffelei, Passwortforderungen, Geräteüberprüfungen, Standortverfolgung oder Privatsphäreverletzungen.';

  @override
  String get metric_25_name => 'Spezifität der Entschuldigung';

  @override
  String get metric_25_description =>
      'Misst, ob Entschuldigungen den genauen Schaden, die Auswirkung und die zukünftige Korrektur benennen, statt vage zu bleiben.';

  @override
  String get metric_26_name => 'Vergebungsdruck';

  @override
  String get metric_26_description =>
      'Markiert Forderungen, weiterzumachen, schnell zu vergeben oder aufzuhören, über Schaden zu diskutieren, bevor Reparatur erfolgt.';

  @override
  String get metric_27_name => 'Minimierung';

  @override
  String get metric_27_description =>
      'Erkennt das Herunterspielen von Schaden, das Bezeichnen ernster Bedenken als dramatisch oder die Verringerung der Auswirkungen, um Verantwortung zu vermeiden.';

  @override
  String get metric_28_name => 'Projektion';

  @override
  String get metric_28_description =>
      'Sucht nach Vorwürfen, die das eigene Verhalten, die Motive oder die ungeklärten Gefühle des Sprechers widerspiegeln.';

  @override
  String get metric_29_name => 'Unterbrechungsmuster';

  @override
  String get metric_29_description =>
      'Verfolgt Abbrechen, Übertönen, Weigerung zu vollenden oder Kontrolle der Gesprächsrunden.';

  @override
  String get metric_30_name => 'Themenablenkung';

  @override
  String get metric_30_description =>
      'Identifiziert das Ändern des Themas, das Aufbringen nicht verwandter Probleme oder das Vermeiden der zentralen Sorge.';

  @override
  String get metric_31_name => 'Lösungsorientierung';

  @override
  String get metric_31_description =>
      'Misst, ob Nachrichten auf Lösungen, Klarheit, Vereinbarungen und nächste Schritte abzielen.';

  @override
  String get metric_32_name => 'Gemeinsame Problemlösung';

  @override
  String get metric_32_description =>
      'Bewertet kooperative Sprache, geteilte Verantwortung, Brainstorming und Bereitschaft, praktikable Kompromisse zu finden.';

  @override
  String get metric_33_name => 'Emotionale Überflutung';

  @override
  String get metric_33_description =>
      'Erkennt Überwältigung, Panik, Abschaltung, Spiralen oder Unfähigkeit, während eines Konflikts zu verarbeiten.';

  @override
  String get metric_34_name => 'Angstreaktionshinweise';

  @override
  String get metric_34_description =>
      'Sucht nach Beschwichtigung, vorsichtiger Wortwahl, Angst, Sicherheitsbedenken oder Angst vor der Reaktion des Partners.';

  @override
  String get metric_35_name => 'Konsistenz der Behauptungen';

  @override
  String get metric_35_description =>
      'Bewertet, ob Berichte über Nachrichten und Zeit hinweg intern konsistent bleiben.';

  @override
  String get metric_36_name => 'Evidenzbasierte Erinnerung';

  @override
  String get metric_36_description =>
      'Prüft, ob Behauptungen auf konkrete Ereignisse, Zitate, Zeitleisten oder beobachtbares Verhalten verweisen.';

  @override
  String get metric_37_name => 'Nachfrage-Rückzug-Muster';

  @override
  String get metric_37_description =>
      'Verfolgt einen Partner, der Antworten oder Veränderungen sucht, während der andere ausweicht, sich abschaltet oder geht.';

  @override
  String get metric_38_name => 'Indikatoren für Machtungleichgewicht';

  @override
  String get metric_38_description =>
      'Markiert ungleiche Entscheidungsmacht, Angst vor Konsequenzen, Abhängigkeit, Einschüchterung oder einseitige Kontrolle.';

  @override
  String get metric_39_name => 'Respektvoller Dissens';

  @override
  String get metric_39_description =>
      'Misst, ob der Konflikt Würde, Neugier und Dissens ohne Erniedrigung bewahrt.';

  @override
  String get metric_40_name => 'Bruch- und Reparaturzyklus';

  @override
  String get metric_40_description =>
      'Bewertet, ob der Konflikt von Anerkennung, Wiederverbindung und tatsächlicher Reparatur gefolgt wird.';

  @override
  String get metric_41_name => 'Zuneigungsentzug';

  @override
  String get metric_41_description =>
      'Erkennt Liebe, Wärme, Sex, Aufmerksamkeit oder Beruhigung, die als Bestrafung oder Druckmittel zurückgehalten werden.';

  @override
  String get metric_42_name => 'Referenzen zu öffentlicher Demütigung';

  @override
  String get metric_42_description =>
      'Markiert Drohungen, Witze oder Handlungen, die den Partner vor anderen demütigen.';

  @override
  String get metric_43_name => 'Substanzbezogene Konflikthinweise';

  @override
  String get metric_43_description =>
      'Sucht nach Alkohol- oder Drogenkonsum, der mit Aggression, Unzuverlässigkeit, Konflikt oder Schaden verbunden ist.';

  @override
  String get metric_44_name => 'Erziehungskonfliktdruck';

  @override
  String get metric_44_description =>
      'Identifiziert Kinder, Sorgerecht, Erziehungsrollen oder elterliche Schuld, die im Konflikt oder als Druckmittel verwendet werden.';

  @override
  String get metric_45_name => 'Respekt für sexuelle Grenzen';

  @override
  String get metric_45_description =>
      'Bewertet den Respekt vor Zustimmung, Druck, Weigerung, Komfort, Timing und sexueller Autonomie.';

  @override
  String get metric_46_name => 'Indikatoren für digitale Belästigung';

  @override
  String get metric_46_description =>
      'Verfolgt wiederholte unerwünschte Nachrichten, Spam-Anrufe, Online-Druck, Überwachung oder plattformbasierte Einschüchterung.';

  @override
  String get metric_47_name => 'Überwachungs- oder Kontrollsprache';

  @override
  String get metric_47_description =>
      'Markiert das Überprüfen des Aufenthaltsorts, das Fordern von Beweisen, das Verfolgen des Verhaltens oder die ständige Verifizierung.';

  @override
  String get metric_48_name => 'Zukunftsorientierung';

  @override
  String get metric_48_description =>
      'Misst, ob Partner über zukünftige Verbesserung, Verpflichtungen, Pläne oder konstruktive Richtung sprechen.';

  @override
  String get metric_49_name => 'Signale für Sicherheitsplanung';

  @override
  String get metric_49_description =>
      'Sucht nach Versuchen, Hilfe zu suchen, Distanz zu schaffen, Schaden zu dokumentieren oder physische/emotionale Sicherheit zu planen.';

  @override
  String get metric_50_name => 'Gegenseitige Deeskalationsversuche';

  @override
  String get metric_50_description =>
      'Verfolgt Pausen, beruhigende Sprache, weicheren Ton, Timeouts und Versuche beider Partner, die Intensität zu reduzieren.';

  @override
  String get metric_51_name => 'Hinweise auf sichere Bindung';

  @override
  String get metric_51_description =>
      'Identifiziert Vertrauen, direkte Beruhigung, emotionale Verfügbarkeit und Komfort mit Nähe und Unabhängigkeit.';

  @override
  String get metric_52_name => 'Aktivierung ängstlicher Bindung';

  @override
  String get metric_52_description =>
      'Markiert Protestverhalten, dringende Beruhigungsbedürfnisse, Verlassensangst und erhöhte Empfindlichkeit für Distanz.';

  @override
  String get metric_53_name => 'Vermeidende Bindungsdistanzierung';

  @override
  String get metric_53_description =>
      'Erkennt emotionale Minimierung, Unabhängigkeitsverteidigungen, Rückzug aus Verletzlichkeit oder Unbehagen mit Bedürfnissen.';

  @override
  String get metric_54_name => 'Signale desorganisierter Bindung';

  @override
  String get metric_54_description =>
      'Sucht nach Annäherungs-Vermeidungs-Zyklen, Angst gemischt mit Bedürfnis, chaotischen Reaktionen oder verwirrenden Intimitätsmustern.';

  @override
  String get metric_55_name => 'Emotionale Angebote und Antworten';

  @override
  String get metric_55_description =>
      'Misst Einladungen für Aufmerksamkeit, Komfort oder Verbindung und ob sie angenommen oder verpasst werden.';

  @override
  String get metric_56_name => 'Abwendung von Verbindung';

  @override
  String get metric_56_description =>
      'Markiert Ignorieren, Abweisen oder Versäumnis, auf Angebote für Nähe oder Unterstützung zu reagieren.';

  @override
  String get metric_57_name => 'Wendung gegen Verbindung';

  @override
  String get metric_57_description =>
      'Erkennt feindselige oder bestrafende Reaktionen auf Versuche von Zuneigung, Verletzlichkeit oder Reparatur.';

  @override
  String get metric_58_name => 'Positive Sentiment-Überschreibung';

  @override
  String get metric_58_description =>
      'Sucht nach Großzügigkeit, Wohlwollen, Zuneigung und Interpretation von Konflikt durch Fürsorge.';

  @override
  String get metric_59_name => 'Negative Sentiment-Überschreibung';

  @override
  String get metric_59_description =>
      'Markiert die Annahme böser Absichten, negative Interpretation neutraler Nachrichten und anhaltende feindselige Rahmung.';

  @override
  String get metric_60_name => 'Harter Start-Muster';

  @override
  String get metric_60_description =>
      'Identifiziert Gespräche, die mit Vorwurf, Angriff, Verachtung oder Schuld beginnen, statt mit einer Bitte.';

  @override
  String get metric_61_name => 'Sanfter Start-Muster';

  @override
  String get metric_61_description =>
      'Sucht nach sanften Eröffnungen unter Verwendung von Gefühlen, Bedürfnissen, spezifischen Bitten und nicht-anklagender Sprache.';

  @override
  String get metric_62_name => 'Physiologische Selbstberuhigung';

  @override
  String get metric_62_description =>
      'Bewertet Versuche zu pausieren, zu atmen, Raum zu nehmen oder den Körper zu regulieren, bevor der Konflikt fortgesetzt wird.';

  @override
  String get metric_63_name => 'Konfliktvermeidungsmuster';

  @override
  String get metric_63_description =>
      'Verfolgt wiederholte Vermeidung notwendiger Themen, Unbehagen, Dissens oder emotionale Ehrlichkeit.';

  @override
  String get metric_64_name => 'Volatile Konfliktstil';

  @override
  String get metric_64_description =>
      'Erkennt hochintensiven Konflikt mit direktem Ausdruck, der noch Engagement und Reparatur umfassen kann.';

  @override
  String get metric_65_name => 'Validierender Konfliktstil';

  @override
  String get metric_65_description =>
      'Misst, ob Partner die Perspektive des anderen anerkennen, während sie uneinig sind.';

  @override
  String get metric_66_name => 'Feindseliger Konfliktstil';

  @override
  String get metric_66_description =>
      'Markiert häufige Kritik, Verachtung, Defensivität, Angriffe und gegnerische Rahmung.';

  @override
  String get metric_67_name => 'Feindselig-Detachiertes Muster';

  @override
  String get metric_67_description =>
      'Identifiziert kalte Feindseligkeit, emotionale Disengagement, Verachtung und geringe Reparaturmotivation.';

  @override
  String get metric_68_name => 'Kompromissbereitschaft';

  @override
  String get metric_68_description =>
      'Sucht nach Flexibilität, Verhandlung, Mittelweg-Vorschlägen und Opfern, die beide Bedürfnisse respektieren.';

  @override
  String get metric_69_name => 'Einflussakzeptanz';

  @override
  String get metric_69_description =>
      'Misst Offenheit, von den Gefühlen, Bedürfnissen oder der Perspektive des Partners beeinflusst zu werden.';

  @override
  String get metric_70_name => 'Signale blockierter Konflikte';

  @override
  String get metric_70_description =>
      'Markiert wiederholte ungelöste Probleme, die mit Werten, Träumen, Identität oder chronischer Inkompatibilität verbunden sind.';

  @override
  String get metric_71_name => 'Rahmung lösbarer Probleme';

  @override
  String get metric_71_description =>
      'Erkennt praktische, konkrete Problembeschreibungen, die zu spezifischen Vereinbarungen führen können.';

  @override
  String get metric_72_name => 'Referenzen für gemeinsame Bedeutung';

  @override
  String get metric_72_description =>
      'Sucht nach Werten, Ritualen, Zielen, Erinnerungen oder Identitätssprache, die eine gemeinsame Beziehungsgeschichte schafft.';

  @override
  String get metric_73_name => 'Liebeskarten-Bewusstsein';

  @override
  String get metric_73_description =>
      'Bewertet Wissen über die innere Welt, Stressoren, Vorlieben, Ängste und das tägliche Leben des Partners.';

  @override
  String get metric_74_name => 'Zuneigung und Bewunderung';

  @override
  String get metric_74_description =>
      'Identifiziert Wertschätzung, Respekt, Wärme, Komplimente, Dankbarkeit und positive Haltung.';

  @override
  String get metric_75_name => 'Ungleichgewicht emotionaler Arbeit';

  @override
  String get metric_75_description =>
      'Markiert einen Partner, der unverhältnismäßige Planung, Beruhigung, Erinnerung, Erklärung oder Beziehungspflege trägt.';

  @override
  String get metric_76_name => 'Ablehnung mentaler Last';

  @override
  String get metric_76_description =>
      'Erkennt Minimierung unsichtbarer Planungsarbeit, Haushaltskoordination, Terminplanung oder Verantwortungsverfolgung.';

  @override
  String get metric_77_name => 'Hinweise auf bewaffnete Inkompetenz';

  @override
  String get metric_77_description =>
      'Sucht nach Behauptung von Unfähigkeit, Verwirrung oder Hilflosigkeit, um faire Verantwortung zu vermeiden.';

  @override
  String get metric_78_name => 'Sensibilität für Trauma-Auslöser';

  @override
  String get metric_78_description =>
      'Misst Bewusstsein für Auslöser, Traumareaktionen und vorsichtigen Umgang mit vulnerablen Themen.';

  @override
  String get metric_79_name => 'Hinweise auf Hypervigilanz';

  @override
  String get metric_79_description =>
      'Markiert das Scannen nach Gefahr, übermäßige Überwachung des Tons, Angst vor Fehlern oder ständige emotionale Wachsamkeit.';

  @override
  String get metric_80_name => 'Sprache der Verlassensangst';

  @override
  String get metric_80_description =>
      'Erkennt Angst, verlassen, ersetzt, ignoriert, verworfen oder emotional verlassen zu werden.';

  @override
  String get metric_81_name => 'Muster der Beruhigungssuche';

  @override
  String get metric_81_description =>
      'Verfolgt wiederholte Bitten um Beweis von Liebe, Verpflichtung, Sicherheit oder anhaltendem Interesse.';

  @override
  String get metric_82_name => 'Verfolger-Distanzierer-Zyklus';

  @override
  String get metric_82_description =>
      'Identifiziert einen Partner, der die Suche nach Nähe eskaliert, während der andere die Distanz erhöht.';

  @override
  String get metric_83_name => 'Akkumulation von Groll';

  @override
  String get metric_83_description =>
      'Sucht nach gespeicherten Grollen, wiederholten Vergangenheitsreferenzen, Bitterkeit und ungelöster emotionaler Schuld.';

  @override
  String get metric_84_name => 'Punkte-Zähl-Verhalten';

  @override
  String get metric_84_description =>
      'Markiert transaktionales Zählen von Fehlern, Gefallen, Opfern oder Fehlern, um Hebelwirkung zu gewinnen.';

  @override
  String get metric_85_name => 'Bedingte Zuneigung';

  @override
  String get metric_85_description =>
      'Erkennt Liebe, Zustimmung, Zugang oder Wärme, die nur angeboten werden, wenn Compliance erreicht ist.';

  @override
  String get metric_86_name => 'Indikatoren für Love Bombing';

  @override
  String get metric_86_description =>
      'Markiert intensive Zuneigung, Versprechen, Druck oder Idealisierung, um Bindung oder Kontrolle zu beschleunigen.';

  @override
  String get metric_87_name => 'Hoovering-Versuche';

  @override
  String get metric_87_description =>
      'Identifiziert Versuche, jemanden durch Schuld, Nostalgie, Versprechen, Krisen oder plötzliche Zuneigung zurückzuziehen.';

  @override
  String get metric_88_name => 'DARVO-Muster';

  @override
  String get metric_88_description =>
      'Erkennt Leugnen, Angreifen und Umkehren von Opfer-Täter-Reaktionen, wenn mit Schaden konfrontiert wird.';

  @override
  String get metric_89_name => 'Opferhaltungs-Muster';

  @override
  String get metric_89_description =>
      'Markiert wiederkehrende Selbstviktimisierung, die Verantwortung vermeidet oder Aufmerksamkeit vom verursachten Schaden ablenkt.';

  @override
  String get metric_90_name => 'Rahmung moralischer Überlegenheit';

  @override
  String get metric_90_description =>
      'Sucht nach Rechtschaffenheit, Reinheitsansprüchen oder ethischer Überlegenheit, um Konflikt zu dominieren.';

  @override
  String get metric_91_name => 'Charakterermordung';

  @override
  String get metric_91_description =>
      'Erkennt breite Angriffe auf Identität, Integrität, psychische Gesundheit oder Wert statt auf spezifisches Verhalten.';

  @override
  String get metric_92_name => 'Indikatoren für Triangulation';

  @override
  String get metric_92_description =>
      'Markiert das Einbeziehen Dritter in Konflikte, um zu drängen, zu vergleichen, zu validieren oder den Partner zu destabilisieren.';

  @override
  String get metric_93_name => 'Druck durch sozialen Vergleich';

  @override
  String get metric_93_description =>
      'Sucht nach Vergleichen mit Ex-Partnern, Freunden, anderen Paaren oder Idealen, die zur Scham oder Nötigung verwendet werden.';

  @override
  String get metric_94_name => 'Autonomie-Unterstützung';

  @override
  String get metric_94_description =>
      'Misst Respekt für unabhängige Entscheidungen, Freundschaften, Ziele, Grenzen und persönliche Handlungsfähigkeit.';

  @override
  String get metric_95_name => 'Respekt für Zustimmung und Wahl';

  @override
  String get metric_95_description =>
      'Bewertet, ob Entscheidungen frei ohne Druck, Schuld, Drohungen oder Manipulation getroffen werden.';

  @override
  String get metric_96_name => 'Kollaborative Planung';

  @override
  String get metric_96_description =>
      'Sucht nach gemeinsamer Terminplanung, gemeinsamen Entscheidungen, koordinierten Verantwortlichkeiten und praktischer Umsetzung.';

  @override
  String get metric_97_name => 'Reparatur-Nachverfolgung';

  @override
  String get metric_97_description =>
      'Misst, ob versprochene Änderungen später im Verhalten widergespiegelt werden, nicht nur in Worten.';

  @override
  String get metric_98_name => 'Beweis für geändertes Verhalten';

  @override
  String get metric_98_description =>
      'Prüft auf beobachtbare, wiederholte Handlungen, die Lernen, Anpassung oder reduziertes schädliches Verhalten zeigen.';

  @override
  String get metric_99_name => 'Sprache emotionaler Sicherheit';

  @override
  String get metric_99_description =>
      'Identifiziert Sprache, die zur Ehrlichkeit einlädt, Angst reduziert, Würde schützt und sicheren Ausdruck beruhigt.';

  @override
  String get metric_100_name => 'Beziehungsambivalenz';

  @override
  String get metric_100_description =>
      'Erkennt Unsicherheit, gemischte Verpflichtung, Drück-Zieh-Nachrichten oder unklaren Wunsch fortzufahren.';

  @override
  String get unableToOpenConversations =>
      'Gespräche können nicht geöffnet werden';

  @override
  String get unableToOpenConversationsBody =>
      'Beim Laden Ihrer Gespräche ist ein Fehler aufgetreten. Bitte versuchen Sie es erneut.';

  @override
  String get unableToLoadConversationsBody =>
      'Gespräche können nicht geladen werden. Bitte überprüfen Sie Ihre Berechtigungen und versuchen Sie es erneut.';

  @override
  String get errorLoadingConversationsBody =>
      'Fehler beim Laden der Gespräche. Bitte versuchen Sie es erneut.';

  @override
  String get smsPermissionRequired => 'SMS-Berechtigung erforderlich';

  @override
  String get smsPermissionRequiredBody =>
      'Um SMS-Gespräche zu analysieren, benötigen wir die Berechtigung, Ihre Nachrichten zu lesen. Ihre Privatsphäre ist wichtig — Nachrichten werden nur lokal analysiert und nie auf unseren Servern gespeichert.';

  @override
  String get grantSmsPermission => 'SMS-Berechtigung erteilen';

  @override
  String get noSmsConversationsFound => 'Keine SMS-Gespräche gefunden';

  @override
  String get noConversationsMatchSearch =>
      'Keine Gespräche entsprechen Ihrer Suche';

  @override
  String get noSmsMessagesOnDevice =>
      'Sie haben keine SMS-Nachrichten auf diesem Gerät';

  @override
  String get tryDifferentSearch => 'Versuchen Sie einen anderen Suchbegriff';

  @override
  String get clearSearch => 'Suche löschen';

  @override
  String selectedFile(String filename) {
    return 'Ausgewählt: $filename';
  }

  @override
  String get invalidFile => 'Ungültige Datei';

  @override
  String get fileImport => 'Datei importieren';

  @override
  String get fileImportNotImplemented =>
      'Die Dateianalyse ist für diesen Dateityp noch nicht implementiert.';

  @override
  String get errorPickingFile =>
      'Die Datei kann nicht geöffnet werden. Bitte versuchen Sie es erneut.';

  @override
  String get readyToCapture => 'Bereit zur Aufnahme';

  @override
  String get readyToCaptureBody =>
      'Wechseln Sie jetzt zur Nachrichten-App und beginnen Sie mit Screenshots.\n\nKehren Sie zu dieser App zurück, wenn Sie fertig sind, und tippen Sie auf \"Fertig & Verarbeiten\".';

  @override
  String get noScreenshotsToProcess => 'Keine Screenshots zu verarbeiten.';

  @override
  String processingScreenshot(int current, int total) {
    return 'Screenshot $current von $total wird verarbeitet...';
  }

  @override
  String get noMessagesFound => 'Keine Nachrichten gefunden';

  @override
  String get noMessagesFoundBody =>
      'Aus den Screenshots konnten keine Nachrichten extrahiert werden.\n\nStellen Sie sicher, dass die Screenshots das Gespräch deutlich zeigen.';

  @override
  String loadedMessages(int count) {
    return '$count Nachrichten aus Screenshots geladen';
  }

  @override
  String get processingError => 'Verarbeitungsfehler';

  @override
  String get processingErrorBody =>
      'Fehler bei der Verarbeitung von Screenshots. Bitte versuchen Sie es erneut.';

  @override
  String metricListSavedAs(String name) {
    return 'Ihre Auswahl wurde als \"$name\" gespeichert.';
  }

  @override
  String metricListLoadedName(String name) {
    return 'Die Auswahl \"$name\" wurde abgerufen und angewendet.';
  }

  @override
  String conversationLoaded(int count, String name) {
    return '$count Nachrichten von $name geladen';
  }

  @override
  String get loadButton => 'Laden';

  @override
  String get photoPermissionRequired =>
      'Fotobibliothek-Berechtigung ist erforderlich, um Screenshots zu erkennen.';

  @override
  String get initializingConnection =>
      'Sichere Verbindung wird initialisiert...';

  @override
  String get configurationRequired => 'Konfiguration erforderlich';

  @override
  String get goBack => 'Zurück';

  @override
  String get enableDateRangeFiltering => 'Datumsbereichsfilterung aktivieren';

  @override
  String get clearSelectedDateRange => 'Ausgewählten Datumsbereich löschen';

  @override
  String get largeThreadNoticeTitle => 'HINWEIS AN DEN BENUTZER';

  @override
  String get largeThreadNoticeBody =>
      'Bei sehr großen Textthreads können einige Ladebildschirme in dieser App manchmal über eine Minute und eine halbe dauern.\n\nDie Anwendung hängt sich nicht auf. Wenn Sie einen sich drehenden Statusindikator sehen, lädt die App noch.\n\nBitte haben Sie in diesen Fällen Geduld, da die Ladezeit im Vergleich zu anderen Anwendungen länger als üblich sein kann, besonders bei einem großen Datensatz wie einem Thread mit 50.000 Nachrichten.';

  @override
  String get neverShowThisAgain => 'Diese Meldung nicht mehr anzeigen';

  @override
  String loadingConversationWith(String name) {
    return 'Gespräch wird geladen\nmit $name…';
  }

  @override
  String get iosCaptureInstructions =>
      '1. Öffnen Sie die Nachrichten-App und wählen Sie die Unterhaltung\n2. Scrollen Sie bis zur ältesten Nachricht, die Sie analysieren möchten\n3. Tippen Sie unten auf \"Aufnahme starten\"\n4. Machen Sie Screenshots, während Sie durch die Unterhaltung scrollen\n5. Wenn Sie fertig sind, tippen Sie auf \"Fertig & Verarbeiten\"';

  @override
  String get howToCaptureIosMessages => 'So erfassen Sie iOS-Nachrichten';

  @override
  String get deepSeekApiKey => 'DeepSeek API-Schlüssel';

  @override
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis =>
      'Geben Sie Ihren DeepSeek API-Schlüssel ein, um die KI-Analyse zu aktivieren.';

  @override
  String get getYourApiKeyFrom =>
      'Holen Sie Ihren API-Schlüssel von: https://platform.deepseek.com';

  @override
  String get apiKey => 'API-Schlüssel';

  @override
  String get skPlaceholder => 'sk-...';

  @override
  String get yourApiKeyIsStoredSecurely =>
      'Ihr API-Schlüssel wird sicher auf Ihrem Gerät gespeichert und niemals geteilt.';

  @override
  String get pleaseEnterApiKey => 'Bitte geben Sie einen API-Schlüssel ein';

  @override
  String get apiKeySavedSuccessfully =>
      'API-Schlüssel erfolgreich gespeichert!';

  @override
  String get pleaseBePatientLongerTextThreads =>
      'Bitte haben Sie Geduld, längere Text-Thread-Datensätze dauern ziemlich lange zum Laden';

  @override
  String get almostThereBigOne =>
      'Fast fertig, Wow, das muss ein großer gewesen sein';

  @override
  String get pleaseBePatientLargeDatasets =>
      'Bitte haben Sie Geduld, große Datensätze könnten zu Ladezeiten von mehr als eineinhalb Minuten führen';

  @override
  String continuingToLoadMassiveThread(String name) {
    return 'Lade weiterhin den massiven Thread mit $name…';
  }

  @override
  String get noMessagesInDateRange =>
      'Keine Nachrichten im ausgewählten Datumsbereich gefunden. Bitte wählen Sie andere Daten oder löschen Sie den Datumsfilter.';

  @override
  String get purchaseCustomMetricTileTitle =>
      'Benutzerdefinierte Metrik kaufen';

  @override
  String get purchaseCustomMetricTileDescription =>
      'Für eine einmalige Gebühr von \$4,99 geben Sie einen benutzerdefinierten Metriknamen und eine Definition ein, die dauerhaft neben Ihren anderen Metriken gespeichert wird, um in jeder zukünftigen Analyse verwendet zu werden. Kaufen Sie unbegrenzte benutzerdefinierte Metriken.';

  @override
  String get purchaseCustomMetricConfirmTitle =>
      'Benutzerdefinierte Metrik kaufen';

  @override
  String get purchaseCustomMetricConfirmBody =>
      'Ihnen wird \$4,99 (einmalig) berechnet, um einen benutzerdefinierten Metrik-Slot freizuschalten.\n\nIhr benutzerdefinierter Metrikname und Ihre Definition sind dauerhaft und können nach dem Speichern niemals geändert werden, also wählen Sie sorgfältig.';

  @override
  String get purchaseCustomMetricConfirmButton => 'Kaufen — \$4,99';

  @override
  String get purchaseCustomMetricEnterNameTitle =>
      'Benutzerdefinierter Metrik-Name';

  @override
  String get purchaseCustomMetricEnterNamePrompt =>
      'Geben Sie den Namen für Ihre benutzerdefinierte Metrik ein:';

  @override
  String get purchaseCustomMetricNameHint => 'Metrik-Name';

  @override
  String get purchaseCustomMetricConfirmNameTitle => 'Metrik-Namen bestätigen';

  @override
  String get purchaseCustomMetricConfirmNameYouEntered =>
      'Sie haben eingegeben:\n\n';

  @override
  String get purchaseCustomMetricConfirmNameWarning =>
      '\n\n⚠️  Dies ist ENDGÜLTIG und kann NIE geändert werden.';

  @override
  String get purchaseCustomMetricReenterName => 'Ups — Neu eingeben';

  @override
  String get purchaseCustomMetricSaveName => 'OK — Metrik-Namen speichern';

  @override
  String purchaseCustomMetricDefineTitleWithName(String name) {
    return 'Definieren: $name';
  }

  @override
  String purchaseCustomMetricDefinePromptWithName(String name) {
    return 'Geben Sie die Bedeutung Ihrer benutzerdefinierten Metrik ein: $name';
  }

  @override
  String get purchaseCustomMetricMeaningHint =>
      'Beschreiben Sie, was diese Metrik bedeutet, welche Verhaltensweisen sie sucht und wie sie auf Beziehungsdynamiken anwendet...';

  @override
  String get purchaseCustomMetricReenter => 'Ups — Neu eingeben';

  @override
  String get purchaseCustomMetricSaveMeaning => 'OK — Bedeutung speichern';

  @override
  String get purchaseCustomMetricPreviewTitle =>
      'Vorschau Ihrer benutzerdefinierten Metrik';

  @override
  String get purchaseCustomMetricPreviewSubtitle =>
      'So wird Ihre Kachel aussehen:';

  @override
  String get purchaseCustomMetricLastChanceWarning =>
      '⚠️  Dies ist Ihre LETZTE CHANCE, es sich anders zu überlegen.\nSobald festgelegt, sind Name und Definition dauerhaft.';

  @override
  String get purchaseCustomMetricCancelEverything => 'Alles abbrechen';

  @override
  String get purchaseCustomMetricCommit =>
      'Benutzerdefinierte Metrik festlegen';

  @override
  String purchaseCustomMetricSuccess(String name) {
    return '✓ \"$name\" zu Ihren Metriken hinzugefügt! Sie können sie jetzt für die Analyse auswählen.';
  }

  @override
  String get purchaseCustomMetricProcessingTitle => 'Kauf wird verarbeitet...';

  @override
  String get purchaseCustomMetricProcessingBody =>
      'Warte auf Bestätigung vom Store.\nBitte schließen Sie die App nicht.';

  @override
  String get next => 'Weiter';

  @override
  String get cancelNotReady => 'Abbrechen — Ich war nicht bereit';

  @override
  String get packGoodLabel => 'Gut';

  @override
  String get packBadLabel => 'Böse';

  @override
  String get packUglyLabel => 'Hässlich';

  @override
  String get metric_good_1_name => 'Aktives Zuhören';

  @override
  String get metric_good_1_description =>
      'Erkennt Paraphrasierungen, klärende Fragen und gezeigtes Verständnis für die Perspektive des Partners im Text.';

  @override
  String get metric_good_2_name => 'Wertschätzungsausdruck';

  @override
  String get metric_good_2_description =>
      'Identifiziert spezifische Dankbarkeit, Anerkennung von Bemühungen und Wertschätzung positiver Eigenschaften oder Handlungen des Partners.';

  @override
  String get metric_good_3_name => 'Bestätigungssprache';

  @override
  String get metric_good_3_description =>
      'Erkennt Aussagen, die die Gefühle, Erfahrungen, den Wert oder das Recht des Partners auf Bedürfnisse bestätigen.';

  @override
  String get metric_good_4_name => 'Kollaborativer Ton';

  @override
  String get metric_good_4_description =>
      'Misst die Verwendung von „wir“, gemeinsame Problemlösungssprache und die Darstellung von Themen als gemeinsame Herausforderungen.';

  @override
  String get metric_good_5_name => 'Neugier auf Partner';

  @override
  String get metric_good_5_description =>
      'Erfasst das Stellen von Fragen zu Gedanken, Gefühlen, Tag, Vorlieben oder innerem Erleben des Partners.';

  @override
  String get metric_good_6_name => 'Verletzlichkeit zeigen';

  @override
  String get metric_good_6_description =>
      'Identifiziert das Teilen von Ängsten, Unsicherheiten, Bedürfnissen oder emotionalen Wahrheiten ohne Abwehr oder Schuldzuweisung.';

  @override
  String get metric_good_7_name => 'Humor als Verbindung';

  @override
  String get metric_good_7_description =>
      'Erkennt spielerisches, gemeinsames Lachen, das Partner zusammenbringt, anstatt zu verspotten oder herabzusetzen.';

  @override
  String get metric_good_8_name => 'Beruhigungsangebot';

  @override
  String get metric_good_8_description =>
      'Sucht nach proaktiven Aussagen, die dem ängstlichen Partner Trost, Sicherheit oder Zuversicht bieten.';

  @override
  String get metric_good_9_name => 'Komplimenthäufigkeit';

  @override
  String get metric_good_9_description =>
      'Misst echte, spezifische Komplimente zu Aussehen, Charakter, Fähigkeiten oder positiven Handlungen.';

  @override
  String get metric_good_10_name => 'Emotionale Verfügbarkeit';

  @override
  String get metric_good_10_description =>
      'Bewertet die Reaktionsfähigkeit auf die emotionalen Bedürfnisse des Partners, die Präsenz in Notlagen und die Bereitschaft zur Interaktion.';

  @override
  String get metric_good_11_name => 'Dankbarkeitsgewohnheit';

  @override
  String get metric_good_11_description =>
      'Identifiziert regelmäßige Dankesbekundungen für kleine Dinge, Mühen, Anwesenheit oder Unterstützung.';

  @override
  String get metric_good_12_name => 'Unterstützende Sprache';

  @override
  String get metric_good_12_description =>
      'Erfasst Aussagen, die Hilfe, Ermutigung, Vertrauen in die Fähigkeiten des Partners oder das Beistehen bieten.';

  @override
  String get metric_good_13_name => 'Sanfte Meinungsverschiedenheit';

  @override
  String get metric_good_13_description =>
      'Misst die Fähigkeit, unterschiedliche Ansichten zu äußern, während Respekt, Neugier und die Beziehung gewahrt bleiben.';

  @override
  String get metric_good_14_name => 'Aufrichtigkeit der Entschuldigung';

  @override
  String get metric_good_14_description =>
      'Erkennt aufrichtige Reue, Verständnis der Auswirkungen und Engagement für Veränderung ohne Ausreden.';

  @override
  String get metric_good_15_name => 'Vergebungsbereitschaft';

  @override
  String get metric_good_15_description =>
      'Sucht nach der Bereitschaft, vergangenen Schaden loszulassen, voranzukommen und nach der Reparatur Vertrauen wieder aufzubauen.';

  @override
  String get metric_good_16_name => 'Qualitätszeit-Initiation';

  @override
  String get metric_good_16_description =>
      'Identifiziert Angebote, gemeinsame Zeit zu verbringen, Aktivitäten zu planen oder Verbindungsmomente zu schaffen.';

  @override
  String get metric_good_17_name => 'Körperliche Zuneigungssignale';

  @override
  String get metric_good_17_description =>
      'Erfasst Erwähnungen von Berührungen, Umarmungen, Küssen oder körperlicher Nähe als Ausdruck von Fürsorge und Intimität.';

  @override
  String get metric_good_18_name => 'Geteilte Freude-Erkennung';

  @override
  String get metric_good_18_description =>
      'Misst das Feiern von Erfolgen, Errungenschaften, Glück oder guten Nachrichten des Partners mit echter Begeisterung.';

  @override
  String get metric_good_19_name => 'Konfliktlösungsbemühung';

  @override
  String get metric_good_19_description =>
      'Erkennt Versuche, Lösungen zu finden, Kompromisse einzugehen oder nach einer Meinungsverschiedenheit Frieden wiederherzustellen.';

  @override
  String get metric_good_20_name => 'Geduldsbekundung';

  @override
  String get metric_good_20_description =>
      'Erkennt Toleranz für das Tempo, die Schwierigkeiten, die Lernkurve oder die emotionalen Verarbeitungsbedürfnisse des Partners.';

  @override
  String get metric_good_21_name => 'Perspektivenübernahme';

  @override
  String get metric_good_21_description =>
      'Sucht nach Aussagen, die Verständnis für den Standpunkt, den Kontext oder die emotionale Realität des Partners zeigen.';

  @override
  String get metric_good_22_name => 'Verlässlichkeitssignale';

  @override
  String get metric_good_22_description =>
      'Verfolgt das Einhalten von Versprechen, konsequentes Auftreten und Verlässlichkeit.';

  @override
  String get metric_good_23_name => 'Respekt für Unterschiede';

  @override
  String get metric_good_23_description =>
      'Misst die Akzeptanz der einzigartigen Eigenschaften, Vorlieben, Meinungen und Seinsweisen des Partners.';

  @override
  String get metric_good_24_name => 'Offenheit für Feedback';

  @override
  String get metric_good_24_description =>
      'Erkennt Offenheit für die Anliegen des Partners, Bereitschaft, Kritik zu hören, und den Wunsch nach Verbesserung.';

  @override
  String get metric_good_25_name => 'Emotionsvalidierung';

  @override
  String get metric_good_25_description =>
      'Erkennt die Anerkennung, dass die Gefühle des Partners real, verständlich und beachtenswert sind.';

  @override
  String get metric_good_26_name => 'Ermutigungssprache';

  @override
  String get metric_good_26_description =>
      'Sucht nach Aussagen, die Vertrauen stärken, zum Handeln motivieren oder die Ziele des Partners unterstützen.';

  @override
  String get metric_good_27_name => 'Intime Offenbarung';

  @override
  String get metric_good_27_description =>
      'Erkennt das Teilen persönlicher Gedanken, Träume, Ängste oder Geheimnisse, die die emotionale Verbindung vertiefen.';

  @override
  String get metric_good_28_name => 'Einstimmungssignale';

  @override
  String get metric_good_28_description =>
      'Misst das Erkennen der Stimmung, Bedürfnisse oder Belastungen des Partners, ohne dass es explizit gesagt wird.';

  @override
  String get metric_good_29_name => 'Positive Umdeutung';

  @override
  String get metric_good_29_description =>
      'Erkennt das Finden von Silberstreifen, Wachstumschancen oder konstruktiven Perspektiven in schwierigen Situationen.';

  @override
  String get metric_good_30_name => 'Engagement-Sprache';

  @override
  String get metric_good_30_description =>
      'Verfolgt Ausdrücke von Hingabe, langfristigem Denken und Investition in die Zukunft der Beziehung.';

  @override
  String get metric_good_31_name => 'Flexibilitätsdemonstration';

  @override
  String get metric_good_31_description =>
      'Identifiziert die Bereitschaft, Pläne anzupassen, Erwartungen zu ändern oder dem Partner entgegenzukommen.';

  @override
  String get metric_good_32_name => 'Schutzsprache';

  @override
  String get metric_good_32_description =>
      'Sucht nach Aussagen, die zeigen, dass die Sicherheit, das Wohlbefinden und die Interessen des Partners tief wichtig sind.';

  @override
  String get metric_good_33_name => 'Meilensteinfeier';

  @override
  String get metric_good_33_description =>
      'Misst das Anerkennen von Jahrestagen, Errungenschaften oder bedeutungsvollen gemeinsamen Momenten.';

  @override
  String get metric_good_34_name => 'Konstruktives Feedback';

  @override
  String get metric_good_34_description =>
      'Erkennt das Anbieten von Verbesserungsvorschlägen, die freundlich, spezifisch und wachstumsorientiert sind.';

  @override
  String get metric_good_35_name => 'Präsenz in schwierigen Zeiten';

  @override
  String get metric_good_35_description =>
      'Identifiziert das Engagement, wenn der Partner kämpft, trauert oder Herausforderungen gegenübersteht.';

  @override
  String get metric_good_36_name => 'Bewunderungsausdruck';

  @override
  String get metric_good_36_description =>
      'Verfolgt echten Respekt für den Charakter, die Stärke, Intelligenz oder Widerstandsfähigkeit des Partners.';

  @override
  String get metric_good_37_name => 'Verspieltheitsanzeichen';

  @override
  String get metric_good_37_description =>
      'Erkennt spielerische Neckereien, Insider-Witze oder lustige Interaktionen, die die Bindung stärken.';

  @override
  String get metric_good_38_name => 'Empathisches Spiegeln';

  @override
  String get metric_good_38_description =>
      'Misst das Zurückspiegeln der Emotionen des Partners, um Verständnis und Bestätigung zu zeigen.';

  @override
  String get metric_good_39_name => 'Akzeptanzsprache';

  @override
  String get metric_good_39_description =>
      'Erkennt das Akzeptieren des Partners mit all seinen Fehlern, ohne Veränderung zu fordern.';

  @override
  String get metric_good_40_name => 'Unterstützende Präsenz';

  @override
  String get metric_good_40_description =>
      'Identifiziert das Dasein ohne zu reparieren, Trost durch Zuhören und Begleitung.';

  @override
  String get metric_good_41_name => 'Echtes Interesse';

  @override
  String get metric_good_41_description =>
      'Verfolgt das Stellen von Nachfragen und das Erinnern an Details aus dem Leben und den Anliegen des Partners.';

  @override
  String get metric_good_42_name => 'Gegenseitiger Einsatz';

  @override
  String get metric_good_42_description =>
      'Misst den gleichen Beitrag beider Partner zur emotionalen Arbeit, Planung und Beziehungspflege.';

  @override
  String get metric_good_43_name => 'Vergebungssprache';

  @override
  String get metric_good_43_description =>
      'Erkennt das Loslassen von Groll, das Gewähren zweiter Chancen und die Entscheidung, über Verletzungen hinwegzukommen.';

  @override
  String get metric_good_44_name => 'Respektsignale';

  @override
  String get metric_good_44_description =>
      'Erkennt die Behandlung des Partners als Gleichgestellten, die Wertschätzung seiner Meinung und seines Beitrags.';

  @override
  String get metric_good_45_name => 'Emotionale Ehrlichkeit';

  @override
  String get metric_good_45_description =>
      'Identifiziert ehrlichen Ausdruck von Gefühlen ohne Manipulation, Übertreibung oder strategisches Zurückhalten.';

  @override
  String get metric_good_46_name => 'Unterstützendes Zuhören';

  @override
  String get metric_good_46_description =>
      'Misst, ob der Partner vollständig aussprechen kann, ohne unterbrochen, beurteilt oder sofort mit Lösungen konfrontiert zu werden.';

  @override
  String get metric_good_47_name => 'Liebevolle Kosenamen';

  @override
  String get metric_good_47_description =>
      'Erfasst die Verwendung liebevoller Kosenamen, die Wärme und innige Verbundenheit vermitteln.';

  @override
  String get metric_good_48_name => 'Geteiltes Lachen';

  @override
  String get metric_good_48_description =>
      'Identifiziert Momente gemeinsamen Humors und Freude, die positive Bindungserfahrungen schaffen.';

  @override
  String get metric_good_49_name => 'Aufmerksame Gesten';

  @override
  String get metric_good_49_description =>
      'Achtet auf kleine Freundlichkeiten, das Erinnern an Vorlieben oder Handlungen, die den Partner glücklich machen.';

  @override
  String get metric_good_50_name => 'Vertrauen in den Partner';

  @override
  String get metric_good_50_description =>
      'Erkennt den Glauben an die Fähigkeiten, das Potenzial und die Belastbarkeit des Partners.';

  @override
  String get metric_good_51_name => 'Gesunde Interdependenz';

  @override
  String get metric_good_51_description =>
      'Misst die Balance zwischen Nähe und Unabhängigkeit, die gegenseitige Unterstützung der Autonomie.';

  @override
  String get metric_good_52_name => 'Konfliktdeeskalation';

  @override
  String get metric_good_52_description =>
      'Identifiziert sanfte Sprache, Pausen oder Lösungsvorschläge, um hitzige Diskussionen zu beruhigen.';

  @override
  String get metric_good_53_name => 'Aufrichtige Entschuldigung';

  @override
  String get metric_good_53_description =>
      'Erfasst die vollständige Anerkennung von Fehlverhalten ohne Verharmlosung, Verteidigung oder Schuldzuweisung.';

  @override
  String get metric_good_54_name => 'Emotionale Unterstützungsangebote';

  @override
  String get metric_good_54_description =>
      'Achtet auf proaktive Nachfragen, wie es dem Partner geht, und das Anbieten von Hilfe.';

  @override
  String get metric_good_55_name => 'Respektvolle Grenzen';

  @override
  String get metric_good_55_description =>
      'Misst die Einhaltung der genannten Grenzen des Partners bei gleichzeitiger Wahrung eigener gesunder Grenzen.';

  @override
  String get metric_good_56_name => 'Positive Vorfreude';

  @override
  String get metric_good_56_description =>
      'Erkennt Vorfreude auf die gemeinsame Zukunft, Planung und die Erwartung gemeinsamer Erlebnisse.';

  @override
  String get metric_good_57_name => 'Aufmerksamkeitssignale';

  @override
  String get metric_good_57_description =>
      'Identifiziert das Erinnern wichtiger Daten, Vorlieben und Details, die zeigen, dass der Partner zählt.';

  @override
  String get metric_good_58_name => 'Wachstum fördern';

  @override
  String get metric_good_58_description =>
      'Verfolgt die Unterstützung der persönlichen Entwicklung, des Lernens und der Zielverfolgung des Partners.';

  @override
  String get metric_good_59_name => 'Zärtliche Sprache';

  @override
  String get metric_good_59_description =>
      'Sucht nach sanften, fürsorglichen Wortwahlen, die Zärtlichkeit und emotionale Wärme vermitteln.';

  @override
  String get metric_good_60_name => 'Gegenseitige Verantwortung';

  @override
  String get metric_good_60_description =>
      'Misst, dass beide Partner Verantwortung für ihr Handeln und dessen Auswirkungen übernehmen.';

  @override
  String get metric_good_61_name => 'Partner feiern';

  @override
  String get metric_good_61_description =>
      'Erkennt öffentliche oder private Äußerungen von Stolz, Freude oder Bewunderung für den Partner.';

  @override
  String get metric_good_62_name => 'Beständige Zuneigung';

  @override
  String get metric_good_62_description =>
      'Identifiziert regelmäßige Liebesbekundungen, die nicht von Leistung oder Compliance abhängen.';

  @override
  String get metric_good_63_name => 'Emotionale Abstimmung';

  @override
  String get metric_good_63_description =>
      'Verfolgt das Wahrnehmen und Reagieren auf subtile Veränderungen im emotionalen Zustand des Partners.';

  @override
  String get metric_good_64_name => 'Gemeinsame Entscheidungsfindung';

  @override
  String get metric_good_64_description =>
      'Misst das gemeinsame Besprechen von Optionen und das Treffen von Entscheidungen, die die Bedürfnisse beider Partner berücksichtigen.';

  @override
  String get metric_good_65_name => 'Bedingungslose Beruhigung';

  @override
  String get metric_good_65_description =>
      'Erfasst das Anbieten von Trost und Sicherheit, ohne dass der Partner es sich verdienen muss.';

  @override
  String get metric_good_66_name => 'Authentische Verbindung';

  @override
  String get metric_good_66_description =>
      'Erkennt echte Präsenz, authentisches Teilen und das Ablegen von Fassade in Interaktionen.';

  @override
  String get metric_good_67_name => 'Gegenseitige Ermutigung';

  @override
  String get metric_good_67_description =>
      'Identifiziert gegenseitige Unterstützung und das Feiern von Bemühungen, nicht nur von Ergebnissen.';

  @override
  String get metric_good_68_name => 'Respektvolles Nachfragen';

  @override
  String get metric_good_68_description =>
      'Verfolgt das Nachfragen nach der Perspektive des Partners mit echter Neugier statt Verhör.';

  @override
  String get metric_good_69_name => 'Liebevolle Beständigkeit';

  @override
  String get metric_good_69_description =>
      'Misst das gleichbleibende Verhalten in guten wie in schweren Zeiten, zuverlässig in der Zuneigung.';

  @override
  String get metric_good_70_name => 'Emotionale Gegenseitigkeit';

  @override
  String get metric_good_70_description =>
      'Erfasst das ausgewogene Teilen von Gefühlen, Bedürfnissen und Verletzlichkeiten beider Partner.';

  @override
  String get metric_good_71_name => 'Freudige Präsenz';

  @override
  String get metric_good_71_description =>
      'Erkennt echte Freude an der Gesellschaft des Partners und Begeisterung für gemeinsame Zeit.';

  @override
  String get metric_good_72_name => 'Konstruktiver Dialog';

  @override
  String get metric_good_72_description =>
      'Identifiziert Gespräche, die auf Verständnis abzielen, nicht auf Gewinnen oder Rechtbehalten.';

  @override
  String get metric_good_73_name => 'Schützende Fürsprache';

  @override
  String get metric_good_73_description =>
      'Erfasst das Eintreten für den Partner, die Verteidigung und die Priorisierung seines Wohlbefindens.';

  @override
  String get metric_good_74_name => 'Achtsame Kommunikation';

  @override
  String get metric_good_74_description =>
      'Misst durchdachte Wortwahl, Berücksichtigung der Wirkung vor dem Sprechen und bewusste Botschaften.';

  @override
  String get metric_good_75_name => 'Beziehungsinvestition';

  @override
  String get metric_good_75_description =>
      'Betrachtet Zeit, Energie und Ressourcen, die der Pflege der Partnerschaft gewidmet werden.';

  @override
  String get metric_good_76_name => 'Sprache der sicheren Basis';

  @override
  String get metric_good_76_description =>
      'Erkennt das Angebot von Stabilität, Sicherheit und einer Grundlage, von der aus der Partner erkunden kann.';

  @override
  String get metric_good_77_name => 'Gegenseitige Bewunderung';

  @override
  String get metric_good_77_description =>
      'Identifiziert, dass beide Partner Respekt und Wertschätzung für die Eigenschaften des anderen ausdrücken.';

  @override
  String get metric_good_78_name => 'Zärtliche Momente';

  @override
  String get metric_good_78_description =>
      'Erfasst das Schaffen oder Erkennen intimer, ruhiger Momente der Verbundenheit und Nähe.';

  @override
  String get metric_good_79_name => 'Echte Neugier';

  @override
  String get metric_good_79_description =>
      'Betrachtet echtes Interesse am Verständnis der Gedanken, Gefühle und Erfahrungen des Partners.';

  @override
  String get metric_good_80_name => 'Liebevolle Akzeptanz';

  @override
  String get metric_good_80_description =>
      'Erkennt die Annahme des gesamten Selbst des Partners, einschließlich Unvollkommenheiten und Vergangenheit.';

  @override
  String get metric_good_81_name => 'Gegenseitige Wachstumsunterstützung';

  @override
  String get metric_good_81_description =>
      'Identifiziert, dass beide Partner die Entwicklung des anderen fördern und Fortschritte feiern.';

  @override
  String get metric_good_82_name => 'Warme Ton-Indikatoren';

  @override
  String get metric_good_82_description =>
      'Erfasst die Verwendung von liebevoller Sprache, freundlichen Formulierungen und einem sanften Kommunikationsstil.';

  @override
  String get metric_good_83_name => 'Responsives Engagement';

  @override
  String get metric_good_83_description =>
      'Misst schnelle, engagierte Reaktionen auf die Nachrichten und emotionalen Angebote des Partners.';

  @override
  String get metric_good_84_name => 'Gemeinsame Werteausrichtung';

  @override
  String get metric_good_84_description =>
      'Sucht nach Bezügen zu gemeinsamen Überzeugungen, Zielen oder Lebensphilosophien, die das Paar verbinden.';

  @override
  String get metric_good_85_name => 'Bedingungslose Unterstützung';

  @override
  String get metric_good_85_description =>
      'Erkennt das Eintreten für den Partner in schwierigen Zeiten, ohne Unterstützung an Bedingungen zu knüpfen.';

  @override
  String get metric_good_86_name => 'Intime Verletzlichkeit';

  @override
  String get metric_good_86_description =>
      'Identifiziert das Teilen tiefer Ängste, Träume oder Unsicherheiten, die emotionale Bindungen vertiefen.';

  @override
  String get metric_good_87_name => 'Sprache gegenseitigen Respekts';

  @override
  String get metric_good_87_description =>
      'Erfasst die Wertschätzung der Perspektiven, Entscheidungen und Autonomie des anderen in der Kommunikation.';

  @override
  String get metric_good_88_name => 'Positive Rahmung';

  @override
  String get metric_good_88_description =>
      'Misst das Erkennen des Besten in Situationen und im Partner, mit Fokus auf Stärken.';

  @override
  String get metric_good_89_name => 'Gemeinsame Problemlösung';

  @override
  String get metric_good_89_description =>
      'Sucht nach gemeinsamer Arbeit an Lösungen, die beiden Partnern gleichermaßen zugutekommen.';

  @override
  String get metric_good_90_name => 'Emotionale Validierung';

  @override
  String get metric_good_90_description =>
      'Erkennt die Bestätigung, dass die Gefühle des Partners sinnvoll und akzeptabel sind.';

  @override
  String get metric_good_91_name => 'Beständige Freundlichkeit';

  @override
  String get metric_good_91_description =>
      'Erkennt regelmäßige kleine Fürsorgeakte, die zeigen, dass der Partner geschätzt und bedacht wird.';

  @override
  String get metric_good_92_name => 'Gegenseitiges Feiern';

  @override
  String get metric_good_92_description =>
      'Erfasst, ob beide Partner sich aufrichtig über die Erfolge und Freuden des anderen freuen.';

  @override
  String get metric_good_93_name => 'Sprache der sicheren Bindung';

  @override
  String get metric_good_93_description =>
      'Misst das Ausdrücken von Vertrauen, Wohlbefinden mit Intimität und Zuversicht in die Beziehung.';

  @override
  String get metric_good_94_name => 'Rücksichtsvolle Bedachtheit';

  @override
  String get metric_good_94_description =>
      'Untersucht Entscheidungen, die die Bedürfnisse und Gefühle des Partners berücksichtigen.';

  @override
  String get metric_good_95_name => 'Liebevolle Präsenz';

  @override
  String get metric_good_95_description =>
      'Erkennt völlige Präsenz und Engagement, die dem Partner zeigen, dass er am wichtigsten ist.';

  @override
  String get metric_good_96_name => 'Sprache echter Fürsorge';

  @override
  String get metric_good_96_description =>
      'Erfasst authentische Ausdrücke von Besorgnis, Fürsorge und Investition in das Wohlbefinden des Partners.';

  @override
  String get metric_good_97_name => 'Beziehungsengagement';

  @override
  String get metric_good_97_description =>
      'Misst das Ausdrücken von Hingabe zur Partnerschaft und Bereitschaft, Herausforderungen zu bewältigen.';

  @override
  String get metric_good_98_name => 'Authentischer Liebesausdruck';

  @override
  String get metric_good_98_description =>
      'Untersucht echte, beständige Liebesbekundungen, die sich real und bedingungslos anfühlen.';

  @override
  String get metric_good_99_name => 'Gemeinsame Zielsetzung';

  @override
  String get metric_good_99_description =>
      'Erkennt Partner, die gemeinsam gemeinsame Träume, Prioritäten und eine Richtung für ihre Zukunft definieren.';

  @override
  String get metric_good_100_name => 'Reparaturversuch-Erkennung';

  @override
  String get metric_good_100_description =>
      'Erkennt das Wahrnehmen und positive Reagieren auf die Versuche des Partners, Konflikte zu deeskalieren und die Verbindung wiederherzustellen.';

  @override
  String get metric_bad_1_name => 'Passive Aggression';

  @override
  String get metric_bad_1_description =>
      'Erkennt indirekte Feindseligkeit durch Aufschieben, Vergesslichkeit, Sarkasmus oder subtile Sabotage anstelle direkter Äußerung.';

  @override
  String get metric_bad_2_name => 'Schuld als Waffe';

  @override
  String get metric_bad_2_description =>
      'Erkennt den Einsatz von Schuld, Scham oder Verpflichtungssprache, um Entscheidungen zu manipulieren oder Grenzsetzung zu verhindern.';

  @override
  String get metric_bad_3_name => 'Emotionale Erpressung';

  @override
  String get metric_bad_3_description =>
      'Kennzeichnet Drohungen mit Selbstverletzung, Verlassenwerden oder Liebesentzug, um Verhalten zu kontrollieren oder Diskussionen zu verhindern.';

  @override
  String get metric_bad_4_name => 'Chronisches Beschweren';

  @override
  String get metric_bad_4_description =>
      'Erfasst anhaltende Negativität, Grübeln oder Beschwerden ohne Lösungs- oder Veränderungsbereitschaft.';

  @override
  String get metric_bad_5_name => 'Vergleichsbeschämung';

  @override
  String get metric_bad_5_description =>
      'Identifiziert ungünstige Vergleiche mit Ex-Partnern, Freunden oder Familie, um zu beschämen oder Verhaltensänderungen zu erzwingen.';

  @override
  String get metric_bad_6_name => 'Bedingtes Zuhören';

  @override
  String get metric_bad_6_description =>
      'Erkennt Zuhören nur dann, wenn es dem Zuhörer nützt oder seinem eigenen Ziel dient, statt echtem Verständnis.';

  @override
  String get metric_bad_7_name => 'Selektives Gedächtnis';

  @override
  String get metric_bad_7_description =>
      'Verfolgt bequemes Vergessen von Versprechen, Vereinbarungen oder vergangenem schädlichem Verhalten, um Verantwortung zu vermeiden.';

  @override
  String get metric_bad_8_name => 'Aufmerksamkeitssuche durch Krisen';

  @override
  String get metric_bad_8_description =>
      'Identifiziert dramatische Eskalation, Krisenerzeugung oder Übertreibung, um Aufmerksamkeit oder Mitgefühl zu gewinnen.';

  @override
  String get metric_bad_9_name => 'Grenztesten';

  @override
  String get metric_bad_9_description =>
      'Erkennt wiederholtes Testen oder Überschreiten gesetzter Grenzen, um festzustellen, ob sie durchgesetzt werden.';

  @override
  String get metric_bad_10_name => 'Informationszurückhaltung';

  @override
  String get metric_bad_10_description =>
      'Erkennt das absichtliche Auslassen relevanter Fakten, Zusammenhänge oder Transparenz, um Kontrolle zu behalten.';

  @override
  String get metric_bad_11_name => 'Unverhältnismäßige Wut';

  @override
  String get metric_bad_11_description =>
      'Verfolgt Wutreaktionen, die deutlich stärker sind als der auslösende Vorfall rechtfertigt.';

  @override
  String get metric_bad_12_name => 'Bestätigungssucht';

  @override
  String get metric_bad_12_description =>
      'Kennzeichnet ständiges Bedürfnis nach Bestätigung, wiederholte Fragen zur Bindung oder endlose Liebesbeweise.';

  @override
  String get metric_bad_13_name => 'Gesprächsvermeidung';

  @override
  String get metric_bad_13_description =>
      'Erkennt Weigerung, sich mit Anliegen auseinanderzusetzen, Vermeidungsphrasen oder das Abwürgen wichtiger Gespräche.';

  @override
  String get metric_bad_14_name => 'Widerspruchsmuster';

  @override
  String get metric_bad_14_description =>
      'Identifiziert widersprüchliche Aussagen, Versprechen oder Positionen, die Verwirrung oder Destabilisierung verursachen.';

  @override
  String get metric_bad_15_name => 'Abwertung durch Etikettierung';

  @override
  String get metric_bad_15_description =>
      'Kennzeichnet das Bezeichnen von Anliegen als „verrückt“, „dramatisch“, „paranoid“ oder „überreagierend“, um sie zu entwerten.';

  @override
  String get metric_bad_16_name => 'Selektive Empathie';

  @override
  String get metric_bad_16_description =>
      'Erkennt Empathie, die nur dann gezeigt wird, wenn es bequem ist oder den eigenen Interessen dient.';

  @override
  String get metric_bad_17_name => 'Transaktionale Rahmung';

  @override
  String get metric_bad_17_description =>
      'Identifiziert „du schuldest mir“, „nach allem, was ich getan habe“ oder das Betrachten von Beziehungshandlungen als Schulden.';

  @override
  String get metric_bad_18_name => 'Beschwerde-Recycling';

  @override
  String get metric_bad_18_description =>
      'Verfolgt das wiederholte Aufbringen alter Beschwerden oder das Nutzen vergangener Verletzungen als Munition in aktuellen Konflikten.';

  @override
  String get metric_bad_19_name => 'Fordernde Sprache';

  @override
  String get metric_bad_19_description =>
      'Kennzeichnet Befehle, Forderungen oder Ultimaten anstelle von Bitten oder gemeinsamer Problemlösung.';

  @override
  String get metric_bad_20_name => 'Emotionale Unverfügbarkeit';

  @override
  String get metric_bad_20_description =>
      'Erkennt konsequente Weigerung, sich emotional zu öffnen, Gefühle zu teilen oder Trost zu spenden.';

  @override
  String get metric_bad_21_name => 'Feindselige Interpretation';

  @override
  String get metric_bad_21_description =>
      'Identifiziert die Deutung neutraler Aussagen als Angriffe oder die Interpretation mehrdeutiger Nachrichten als feindselig.';

  @override
  String get metric_bad_22_name => 'Anspruchsdenken';

  @override
  String get metric_bad_22_description =>
      'Kennzeichnet Sprache, die darauf hindeutet, dass der Sprecher besondere Behandlung, Ausnahmen oder Priorität verdient.';

  @override
  String get metric_bad_23_name => 'Kritik als Hilfe getarnt';

  @override
  String get metric_bad_23_description =>
      'Erkennt Kritik, die in „Ich will nur helfen“- oder „zu deinem Besten“-Formulierungen verpackt ist.';

  @override
  String get metric_bad_24_name => 'Vernachlässigungsmuster';

  @override
  String get metric_bad_24_description =>
      'Identifiziert konsequentes Versagen, emotionale, körperliche oder beziehungsbezogene Bedürfnisse zu erfüllen.';

  @override
  String get metric_bad_25_name => 'Konfliktrumination';

  @override
  String get metric_bad_25_description =>
      'Verfolgt zwanghaftes Wiederaufgreifen von Konflikten ohne Fortschritt in Richtung Lösung oder Abschluss.';

  @override
  String get metric_bad_26_name => 'Empfindlichkeitsabwertung';

  @override
  String get metric_bad_26_description =>
      'Kennzeichnet Aussagen wie „du bist zu empfindlich“ oder „du überreagierst“, um Gefühle abzutun.';

  @override
  String get metric_bad_27_name => 'Wettbewerbsrahmen';

  @override
  String get metric_bad_27_description =>
      'Erkennt die Darstellung der Beziehung als Wettbewerb, bei dem ein Partner gewinnen oder dominieren muss.';

  @override
  String get metric_bad_28_name => 'Doppelmoral';

  @override
  String get metric_bad_28_description =>
      'Erkennt die Anwendung unterschiedlicher Regeln für sich selbst und den Partner oder willkürliche Erwartungsänderungen.';

  @override
  String get metric_bad_29_name => 'Zuneigung als Bestrafung';

  @override
  String get metric_bad_29_description =>
      'Kennzeichnet das Entziehen von Zuneigung, Aufmerksamkeit oder Kommunikation als Vergeltung für vermeintliches Fehlverhalten.';

  @override
  String get metric_bad_30_name => 'Schuldrotation';

  @override
  String get metric_bad_30_description =>
      'Verfolgt die Rotation von Schuldzuweisungen zwischen Partner, Umständen und externen Faktoren, um Verantwortung zu vermeiden.';

  @override
  String get metric_bad_31_name => 'Rhetorischer Spott';

  @override
  String get metric_bad_31_description =>
      'Erkennt rhetorische oder sarkastische Fragen, die zum Verspotten statt zum Verstehen dienen.';

  @override
  String get metric_bad_32_name => 'Opfererinnerungen';

  @override
  String get metric_bad_32_description =>
      'Erkennt das Erinnern an Opfer, Gefälligkeiten oder Unterstützung, um Schuldgefühle und Compliance zu erzeugen.';

  @override
  String get metric_bad_33_name => 'Bewusste Eskalation';

  @override
  String get metric_bad_33_description =>
      'Kennzeichnet die bewusste Eskalation der Intensität, um die rationale Reaktionsfähigkeit des Partners zu überfordern.';

  @override
  String get metric_bad_34_name => 'Strategische Verletzlichkeit';

  @override
  String get metric_bad_34_description =>
      'Erkennt das Teilen von Emotionen nur dann, wenn es der Manipulation oder Kontrolle dient.';

  @override
  String get metric_bad_35_name => 'Ablenkung durch Gegenangriff';

  @override
  String get metric_bad_35_description =>
      'Erkennt die Ablenkung von den Anliegen des Partners durch das Aufwerfen unzusammenhängender Themen oder Gegenbeschuldigungen.';

  @override
  String get metric_bad_36_name => 'Überlegenheitssprache';

  @override
  String get metric_bad_36_description =>
      'Kennzeichnet überlegene Sprache, Herablassung oder die Darstellung des Partners als unterlegen.';

  @override
  String get metric_bad_37_name => 'Konfliktflucht-Muster';

  @override
  String get metric_bad_37_description =>
      'Erkennt ein Muster, bei dem Gespräche abgebrochen, Engagement verweigert oder während eines Konflikts Distanz geschaffen wird.';

  @override
  String get metric_bad_38_name => 'Negativer Bias';

  @override
  String get metric_bad_38_description =>
      'Verfolgt die konsequente Interpretation neutraler oder positiver Handlungen als negativ oder verdächtig.';

  @override
  String get metric_bad_39_name => 'Ablehnung von Handlungsfähigkeit';

  @override
  String get metric_bad_39_description =>
      'Identifiziert Formulierungen wie „Ich muss“, „Du machst mich“ oder Sprache, die dem Sprecher die persönliche Handlungsfähigkeit entzieht.';

  @override
  String get metric_bad_40_name => 'Schweigen als Kontrolle';

  @override
  String get metric_bad_40_description =>
      'Kennzeichnet Schweigen oder Nicht-Reagieren als eine Form von Bestrafung oder Kontrolle.';

  @override
  String get metric_bad_41_name => 'Privatsphären-Heuchelei';

  @override
  String get metric_bad_41_description =>
      'Erkennt die Weigerung, Informationen zu teilen, während Transparenz vom Partner verlangt wird.';

  @override
  String get metric_bad_42_name => 'Unaufgefordertes hartes Feedback';

  @override
  String get metric_bad_42_description =>
      'Identifiziert harsches Feedback, das ohne Zustimmung als „konstruktiv“ oder „hilfreich“ präsentiert wird.';

  @override
  String get metric_bad_43_name => 'Bedingte Fürsorge';

  @override
  String get metric_bad_43_description =>
      'Kennzeichnet Unterstützung, die nur angeboten wird, wenn der Partner den Erwartungen des Sprechers entspricht.';

  @override
  String get metric_bad_44_name => 'Verleugnung der Auswirkung';

  @override
  String get metric_bad_44_description =>
      'Erkennt Aussagen wie „So habe ich das nicht gemeint“ oder „Du interpretierst zu viel hinein“ nach verursachtem Schaden.';

  @override
  String get metric_bad_45_name => 'Schuldenmentalität';

  @override
  String get metric_bad_45_description =>
      'Verfolgt das Aufbringen vergangener Hilfe oder Unterstützung, um Schulden zu schaffen und aktuelles Verhalten zu kontrollieren.';

  @override
  String get metric_bad_46_name => 'Verantwortungsvermeidung';

  @override
  String get metric_bad_46_description =>
      'Kennzeichnet ein durchgängiges Muster, keine Verantwortung für die Auswirkungen des eigenen Handelns zu übernehmen.';

  @override
  String get metric_bad_47_name => 'Bedürfnisabwertung';

  @override
  String get metric_bad_47_description =>
      'Erkennt, wenn die Bedürfnisse des Partners als unbequem, unvernünftig oder unwichtig behandelt werden.';

  @override
  String get metric_bad_48_name => 'Emotionale Manipulation';

  @override
  String get metric_bad_48_description =>
      'Kennzeichnet den strategischen Einsatz von Emotionen, um Ergebnisse zu kontrollieren oder Verantwortlichkeit zu vermeiden.';

  @override
  String get metric_bad_49_name => 'Intimitätsvermeidung';

  @override
  String get metric_bad_49_description =>
      'Erfasst konsequenten Rückzug aus emotionaler oder körperlicher Nähe ohne Erklärung.';

  @override
  String get metric_bad_50_name => 'Verdeckte Kritik';

  @override
  String get metric_bad_50_description =>
      'Erkennt als Scherz, Beobachtung oder beiläufige Bemerkung getarnte Kritik.';

  @override
  String get metric_bad_51_name => 'Problembagatellisierung';

  @override
  String get metric_bad_51_description =>
      'Kennzeichnet die Herabsetzung von Anliegen des Partners als unbedeutend oder übertrieben.';

  @override
  String get metric_bad_52_name => 'Schuldinduktion';

  @override
  String get metric_bad_52_description =>
      'Erkennt den Einsatz von Schuld oder Scham, um die Erwartungen des Partners durchzusetzen.';

  @override
  String get metric_bad_53_name => 'Entschuldigungsresistenz';

  @override
  String get metric_bad_53_description =>
      'Erfasst Widerstand gegen Entschuldigungen, das Wegreden von Schaden oder die Weigerung, Auswirkungen anzuerkennen.';

  @override
  String get metric_bad_54_name => 'Perspektivenablehnung';

  @override
  String get metric_bad_54_description =>
      'Kennzeichnet die Weigerung, die Sichtweise oder Erfahrung des Partners zu berücksichtigen oder zu validieren.';

  @override
  String get metric_bad_55_name => 'Emotionale Rationierung';

  @override
  String get metric_bad_55_description =>
      'Erkennt das bewusste Einschränken von emotionalem Ausdruck oder Verbindung als Kontrollmittel.';

  @override
  String get metric_bad_56_name => 'Verpflichtungsmanipulation';

  @override
  String get metric_bad_56_description =>
      'Kennzeichnet die Nutzung vergangener Unterstützung oder Opfer, um aktuelle Entscheidungen zu manipulieren.';

  @override
  String get metric_bad_57_name => 'Wachstumsresistenz';

  @override
  String get metric_bad_57_description =>
      'Verfolgt den Widerstand gegen die Änderung schädlichen Verhaltens trotz Aufforderungen oder nachgewiesener Auswirkungen.';

  @override
  String get metric_bad_58_name => 'Schadensleugnung';

  @override
  String get metric_bad_58_description =>
      'Erkennt die Weigerung, die Auswirkungen des eigenen Verhaltens anzuerkennen oder ernst zu nehmen.';

  @override
  String get metric_bad_59_name => 'Geladene Fragen';

  @override
  String get metric_bad_59_description =>
      'Kennzeichnet kritische Absicht, die als harmlose Fragen oder Neugier getarnt ist.';

  @override
  String get metric_bad_60_name => 'Verächtlicher Ton';

  @override
  String get metric_bad_60_description =>
      'Identifiziert abweisende Haltung oder Verachtung, die durch Textmuster und Wortwahl vermittelt wird.';

  @override
  String get metric_bad_61_name => 'Schuldgefühl-Zyklus';

  @override
  String get metric_bad_61_description =>
      'Erkennt wiederholtes Nutzen von Schuldgefühlen aufgrund vergangener Unterstützung oder Opfer, um aktuelles Verhalten zu kontrollieren.';

  @override
  String get metric_bad_62_name => 'Emotionale Zurückhaltung';

  @override
  String get metric_bad_62_description =>
      'Verfolgt die Weigerung, Emotionen, Ängste oder Bedürfnisse mit dem Partner zu teilen, als schützendes Zurückhalten.';

  @override
  String get metric_bad_63_name => 'Grenzverhandlung';

  @override
  String get metric_bad_63_description =>
      'Kennzeichnet die Behandlung festgelegter Grenzen als Vorschläge oder verhandelbar statt als verbindliche Zusagen.';

  @override
  String get metric_bad_64_name => 'Emotionale Abwesenheit';

  @override
  String get metric_bad_64_description =>
      'Erkennt konsequente Weigerung, emotionale Unterstützung oder engagierte Präsenz zu bieten.';

  @override
  String get metric_bad_65_name => 'Gefälligkeitsnachverfolgung';

  @override
  String get metric_bad_65_description =>
      'Markiert das mentale Führen einer Bilanz von Gefälligkeiten, Unterstützung oder Opfern für spätere Nutzung.';

  @override
  String get metric_bad_66_name => 'Ehrlichkeitsvermeidung';

  @override
  String get metric_bad_66_description =>
      'Erkennt Muster des Zurückhaltens von Wahrheit, Auslassens von Fakten oder absichtlicher Unklarheit.';

  @override
  String get metric_bad_67_name => 'Gültigkeitsverweigerung';

  @override
  String get metric_bad_67_description =>
      'Identifiziert die Behandlung von Gefühlen, Bedürfnissen oder Anliegen des Partners als ungültig oder unberechtigt.';

  @override
  String get metric_bad_68_name => 'Als Ratschlag getarnte Kritik';

  @override
  String get metric_bad_68_description =>
      'Markiert Kritik, die als Besorgnis, Ratschlag oder hilfreiche Beobachtung präsentiert wird.';

  @override
  String get metric_bad_69_name => 'Überlegenheitsindikatoren';

  @override
  String get metric_bad_69_description =>
      'Erkennt Überlegenheit, Spott oder Verachtung in Sprache oder Kommunikationsstil.';

  @override
  String get metric_bad_70_name => 'Wiederherstellungswiderstand';

  @override
  String get metric_bad_70_description =>
      'Verfolgt Widerstand gegen Wiedergutmachung, Wiederannäherung oder Wiederaufbau nach Konflikten.';

  @override
  String get metric_bad_71_name => 'Bemühungsabwertung';

  @override
  String get metric_bad_71_description =>
      'Markiert das Herunterspielen oder Ignorieren von Versuchen des Partners, sich zu verbessern oder Probleme anzugehen.';

  @override
  String get metric_bad_72_name => 'Emotionales Distanzmuster';

  @override
  String get metric_bad_72_description =>
      'Erkennt langfristiges Muster emotionaler Distanz oder Weigerung, authentisch zu interagieren.';

  @override
  String get metric_bad_73_name => 'Minderwertigkeitsrahmen';

  @override
  String get metric_bad_73_description =>
      'Stellt den Partner als minderwertig, fehlerhaft oder unwürdig vollen Respekts dar.';

  @override
  String get metric_bad_74_name => 'Feedback-Resistenz';

  @override
  String get metric_bad_74_description =>
      'Erkennt Widerstand gegen Kritik, Weigerung zuzuhören oder Abbruch von Diskussionen.';

  @override
  String get metric_bad_75_name => 'Sorgenabwertung';

  @override
  String get metric_bad_75_description =>
      'Identifiziert die Behandlung von Sorgen oder Ängsten des Partners als unbegründet oder irrational.';

  @override
  String get metric_bad_76_name => 'Fehlersuche';

  @override
  String get metric_bad_76_description =>
      'Markiert ein chronisches Muster des Fehlersuchens, Beschwerens oder Angreifens des Charakters des Partners.';

  @override
  String get metric_bad_77_name => 'Opfer-Schuld-Zyklus';

  @override
  String get metric_bad_77_description =>
      'Erkennt wiederholtes Hervorheben vergangener Unterstützung, um Schuldgefühle zu erzeugen oder Verhalten zu kontrollieren.';

  @override
  String get metric_bad_78_name => 'Bindungsambiguität';

  @override
  String get metric_bad_78_description =>
      'Verfolgt unklare oder schwankende Bekenntnissprache, gemischte Signale oder Zurückhaltung bei Bindung.';

  @override
  String get metric_bad_79_name => 'Anfragenabweisung';

  @override
  String get metric_bad_79_description =>
      'Markiert Ignorieren, Ablehnen oder Verzögern von Antworten auf angemessene Anfragen des Partners.';

  @override
  String get metric_bad_80_name => 'Emotionale Kontrolltaktiken';

  @override
  String get metric_bad_80_description =>
      'Erkennt strategischen Einsatz von Emotionen, um Ergebnisse zu kontrollieren oder Verantwortung zu vermeiden.';

  @override
  String get metric_bad_81_name => 'Austauschmentalität';

  @override
  String get metric_bad_81_description =>
      'Markiert Betrachtung der Beziehung durch die Linse von Schulden, Verpflichtung oder transaktionalem Austausch.';

  @override
  String get metric_bad_82_name => 'Widerstand gegen persönliche Entwicklung';

  @override
  String get metric_bad_82_description =>
      'Erkennt Widerstand gegen persönliche Entwicklung, Lernen oder das Ändern schädlicher Verhaltensmuster.';

  @override
  String get metric_bad_83_name => 'Ablehnung von Verbesserungen';

  @override
  String get metric_bad_83_description =>
      'Identifiziert das Herunterspielen oder Ablehnen der Bemühungen des Partners, sich zu verbessern oder Probleme anzugehen.';

  @override
  String get metric_bad_84_name => 'Chronische Kritik';

  @override
  String get metric_bad_84_description =>
      'Kennzeichnet ein chronisches Muster von Kritik, die in besorgte, hilfsbereite oder fürsorgliche Sprache verpackt ist.';

  @override
  String get metric_bad_85_name => 'Lösungsvermeidung';

  @override
  String get metric_bad_85_description =>
      'Erkennt ein konsistentes Muster, Abschluss, Fortschritt oder das Finden praktikabler Lösungen zu vermeiden.';

  @override
  String get metric_bad_86_name => 'Schuldabweisungsmuster';

  @override
  String get metric_bad_86_description =>
      'Kennzeichnet ein gewohnheitsmäßiges Muster, Verantwortung auf externe Faktoren oder den Partner abzuwälzen.';

  @override
  String get metric_bad_87_name => 'Abweisende Reaktionen';

  @override
  String get metric_bad_87_description =>
      'Identifiziert ein Muster, bei dem die Beiträge, Ideen oder Vorschläge des Partners ohne Berücksichtigung abgetan werden.';

  @override
  String get metric_bad_88_name => 'Ausdruck von Groll';

  @override
  String get metric_bad_88_description =>
      'Erkennt einen Ton von Groll, Bitterkeit oder lang gehegter Frustration in der Kommunikation.';

  @override
  String get metric_bad_89_name => 'Ambivalente Botschaften';

  @override
  String get metric_bad_89_description =>
      'Kennzeichnet gemischte Botschaften über Engagement, unklaren Fortsetzungswunsch oder Hin-und-her-Dynamiken.';

  @override
  String get metric_bad_90_name => 'Erwartungsverschiebung';

  @override
  String get metric_bad_90_description =>
      'Identifiziert das Ändern von Erwartungen ohne Kommunikation und anschließendes Beschuldigen des Partners, diese nicht erfüllt zu haben.';

  @override
  String get metric_bad_91_name => 'Ausweichgewohnheit';

  @override
  String get metric_bad_91_description =>
      'Erkennt gewohnheitsmäßiges Ausweichen vor direkten Antworten oder das Umleiten von Gesprächen weg von Verantwortlichkeit.';

  @override
  String get metric_bad_92_name => 'Manipulation durch Freundlichkeit';

  @override
  String get metric_bad_92_description =>
      'Kennzeichnet übertriebene Freundlichkeit, die strategisch eingesetzt wird, um Verpflichtungen zu schaffen oder Abwehrhaltungen zu senken.';

  @override
  String get metric_bad_93_name => 'Chronisches Zuspätkommen';

  @override
  String get metric_bad_93_description =>
      'Identifiziert konsequente Missachtung der Zeit des Partners durch Verspätung oder gebrochene Terminzusagen.';

  @override
  String get metric_bad_94_name => 'Fortschrittsminimierung';

  @override
  String get metric_bad_94_description =>
      'Verfolgt das Abtun oder Nichtanerkennen echter persönlicher Fortschritte oder Verbesserungen des Partners.';

  @override
  String get metric_bad_95_name => 'Emotionale Waffenführung';

  @override
  String get metric_bad_95_description =>
      'Erkennt die Nutzung offengelegter Verletzlichkeiten oder Ängste des Partners gegen ihn in Konflikten.';

  @override
  String get metric_bad_96_name => 'Gaslighting-ähnliche Taktiken';

  @override
  String get metric_bad_96_description =>
      'Identifiziert subtile realitätsverzerrende Taktiken, die Selbstzweifel erzeugen, ohne vollständiges Gaslighting.';

  @override
  String get metric_bad_97_name => 'Passives Schweigen';

  @override
  String get metric_bad_97_description =>
      'Kennzeichnet subtiles Desinteresse, einsilbige Antworten oder abwesende Präsenz als Vermeidung.';

  @override
  String get metric_bad_98_name => 'Erzählkontrolle';

  @override
  String get metric_bad_98_description =>
      'Erkennt das Bestehen darauf, die alleinige Autorität darüber zu sein, was passiert ist, wie es sich anfühlte oder was gemeint war.';

  @override
  String get metric_bad_99_name => 'Verantwortungsabwehr';

  @override
  String get metric_bad_99_description =>
      'Verfolgt konsequentes Umleiten von Verantwortlichkeit auf externe Faktoren, Dritte oder das Verhalten des Partners.';

  @override
  String get metric_bad_100_name => 'Emotionale Unverfügbarkeit';

  @override
  String get metric_bad_100_description =>
      'Kennzeichnet chronischen Rückzug aus emotionaler Intimität, Verletzlichkeit oder bedeutungsvoller Verbindung, wenn der Partner Nähe braucht.';

  @override
  String get metric_ugly_1_name => 'Drohungen körperlicher Gewalt';

  @override
  String get metric_ugly_1_description =>
      'Erkennt explizite oder versteckte Drohungen, den Partner zu schlagen, zu verletzen oder körperlich anzugreifen.';

  @override
  String get metric_ugly_2_name => 'Verweise auf Waffenbesitz';

  @override
  String get metric_ugly_2_description =>
      'Kennzeichnet Erwähnungen von Waffen, Messern oder anderen Waffen im Kontext von Wut, Kontrolle oder der Fähigkeit zu schaden.';

  @override
  String get metric_ugly_3_name => 'Strangulationsanzeichen';

  @override
  String get metric_ugly_3_description =>
      'Erkennt Hinweise auf Würgen, Kehlengriff, Erstickung oder Asphyxie.';

  @override
  String get metric_ugly_4_name => 'Instrumentalisierung von Suiziddrohungen';

  @override
  String get metric_ugly_4_description =>
      'Erkennt Drohungen mit Selbstverletzung, die zur Kontrolle, Manipulation oder Bestrafung des Partners eingesetzt werden.';

  @override
  String get metric_ugly_5_name => 'Sprache der Tötungsabsicht';

  @override
  String get metric_ugly_5_description =>
      'Kennzeichnet Aussagen, die Absicht, Planung oder den Wunsch ausdrücken, den Partner zu töten.';

  @override
  String get metric_ugly_6_name => 'Muster von Letalitätsrisiken';

  @override
  String get metric_ugly_6_description =>
      'Identifiziert Warnsignale hoher Letalität: Waffenzugang, Besessenheit, Eskalation und Trennungsdrohungen kombiniert.';

  @override
  String get metric_ugly_7_name => 'Stalking-Besessenheitssprache';

  @override
  String get metric_ugly_7_description =>
      'Erkennt obsessive Standortüberwachung, Verfolgung, Überraschungsbesuche oder anhaltende unerwünschte Nachstellungen.';

  @override
  String get metric_ugly_8_name => 'Erzwungene Isolationsdurchsetzung';

  @override
  String get metric_ugly_8_description =>
      'Kennzeichnet aggressive Forderungen, jeglichen Kontakt zu Familie, Freunden, Arbeit oder Außenwelt abzubrechen.';

  @override
  String get metric_ugly_9_name => 'Wirtschaftliche Sabotage';

  @override
  String get metric_ugly_9_description =>
      'Identifiziert die bewusste Zerstörung von Beschäftigung, Kreditwürdigkeit, Finanzen oder wirtschaftlicher Stabilität.';

  @override
  String get metric_ugly_10_name => 'Reproduktive Nötigung';

  @override
  String get metric_ugly_10_description =>
      'Erkennt erzwungene Schwangerschaft, Abtreibungsdruck, Manipulation von Verhütungsmitteln oder reproduktive Kontrolle.';

  @override
  String get metric_ugly_11_name => 'Sexueller Nötigungsdruck';

  @override
  String get metric_ugly_11_description =>
      'Kennzeichnet erzwungenen Sex, genötigte sexuelle Handlungen, Druck nach Ablehnung oder Sprache sexueller Bestrafung.';

  @override
  String get metric_ugly_12_name => 'Nicht-einvernehmliche sexuelle Sprache';

  @override
  String get metric_ugly_12_description =>
      'Identifiziert explizite oder implizite nicht-einvernehmliche sexuelle Übergriffsdrohungen oder -beschreibungen.';

  @override
  String get metric_ugly_13_name => 'Drohungen gegen Kinder';

  @override
  String get metric_ugly_13_description =>
      'Erkennt Drohungen, Kinder zu verletzen, zu vernachlässigen oder zu missbrauchen, als Druckmittel oder Bestrafung gegen den Partner.';

  @override
  String get metric_ugly_14_name => 'Instrumentalisierung des Sorgerechts';

  @override
  String get metric_ugly_14_description =>
      'Kennzeichnet Drohungen, Kinder zu nehmen, den Zugang zu verweigern oder das Sorgerecht als Kontrollmechanismus zu nutzen.';

  @override
  String get metric_ugly_15_name => 'Drohungen gegen Haustiere';

  @override
  String get metric_ugly_15_description =>
      'Identifiziert Drohungen, Haustiere zu verletzen, zu töten oder zu missbrauchen, als Bestrafung oder zur Demonstration von Kontrolle.';

  @override
  String get metric_ugly_16_name => 'Schlafentzugstaktiken';

  @override
  String get metric_ugly_16_description =>
      'Kennzeichnet absichtliche Verhinderung von Schlaf, ständige Unterbrechung oder Erschöpfung als Kontrollmethode.';

  @override
  String get metric_ugly_17_name => 'Sprache der Einschränkung';

  @override
  String get metric_ugly_17_description =>
      'Kennzeichnet Einsperren, Verhindern des Weggehens oder Einschränken des Partners an einem Ort.';

  @override
  String get metric_ugly_18_name => 'Raubtierhafte Anbahnungssprache';

  @override
  String get metric_ugly_18_description =>
      'Kennzeichnet systematische Manipulation, um Abwehrkräfte zu senken, falsches Vertrauen aufzubauen und dann den Partner auszunutzen.';

  @override
  String get metric_ugly_19_name => 'Entmenschlichende Sprache';

  @override
  String get metric_ugly_19_description =>
      'Erkennt die Beschreibung des Partners als Tier, Objekt, Untermensch oder als unwürdig grundlegender Rechte.';

  @override
  String get metric_ugly_20_name => 'Narzisstische Wut-Eskalation';

  @override
  String get metric_ugly_20_description =>
      'Erkennt explosive Wut, ausgelöst durch vermeintliche Kränkungen, Kritik oder jeglichen Kontrollverlust.';

  @override
  String get metric_ugly_21_name => 'Obsessive Besitzansprüche';

  @override
  String get metric_ugly_21_description =>
      'Markiert Sprache, die Besitzansprüche, Eigentumsrechte oder totale Kontrolle über die Person des Partners behauptet.';

  @override
  String get metric_ugly_22_name => 'Pathologische Lügenmuster';

  @override
  String get metric_ugly_22_description =>
      'Identifiziert konsequente, ausgefeilte oder unnötige Lügen über ernste Angelegenheiten ohne ersichtlichen Grund.';

  @override
  String get metric_ugly_23_name => 'Rachefantasie-Sprache';

  @override
  String get metric_ugly_23_description =>
      'Identifiziert detaillierte Fantasien über die Schädigung, Demütigung oder Zerstörung des Partners.';

  @override
  String get metric_ugly_24_name => 'Fixierung auf Verratsängste';

  @override
  String get metric_ugly_24_description =>
      'Erkennt obsessive Grübeleien, Anschuldigungen und Bestrafungen, die sich auf vermeintliche Untreue konzentrieren.';

  @override
  String get metric_ugly_25_name => 'Aggression bei Trennungsangst';

  @override
  String get metric_ugly_25_description =>
      'Markiert gewalttätige oder aggressive Reaktionen auf wahrgenommene Verlassenheit oder jeden Trennungsversuch.';

  @override
  String get metric_ugly_26_name => 'Eskalation bei Trennung';

  @override
  String get metric_ugly_26_description =>
      'Identifiziert extreme Drohungen oder gefährliches Verhalten, ausgelöst durch Trennungs- oder Scheidungsversuche.';

  @override
  String get metric_ugly_27_name => 'Belästigungsdrohungen nach Trennung';

  @override
  String get metric_ugly_27_description =>
      'Markiert Drohungen mit Stalking, Schädigung oder erzwungenem Kontakt nach Beendigung der Beziehung.';

  @override
  String get metric_ugly_28_name => 'Drohungen zur Kindesentführung';

  @override
  String get metric_ugly_28_description =>
      'Erkennt Drohungen, Kinder zu entführen und dauerhaft vor dem anderen Elternteil zu verstecken.';

  @override
  String get metric_ugly_29_name => 'Agenda der Eltern-Kind-Entfremdung';

  @override
  String get metric_ugly_29_description =>
      'Kennzeichnet systematische Versuche, Kinder durch Manipulation gegen den anderen Elternteil aufzubringen.';

  @override
  String get metric_ugly_30_name =>
      'Gleichgültigkeit gegenüber kindlichen Zeugen';

  @override
  String get metric_ugly_30_description =>
      'Erkennt Missachtung von Kindern, die Missbrauch, Konflikte oder emotionale Schäden miterleben.';

  @override
  String get metric_ugly_31_name => 'Sprache des Menschenhandels';

  @override
  String get metric_ugly_31_description =>
      'Erkennt Sprache, die auf Verkauf, Tausch oder sexuelle Ausbeutung des Partners hindeutet.';

  @override
  String get metric_ugly_32_name => 'Sprache der Sklaverei';

  @override
  String get metric_ugly_32_description =>
      'Erkennt Sprache, die den Partner als Eigentum, Sklaven oder rechtlose Person behandelt.';

  @override
  String get metric_ugly_33_name => 'Drohungen mit Schuldknechtschaft';

  @override
  String get metric_ugly_33_description =>
      'Erkennt Drohungen, den Partner durch künstliche Schulden oder finanzielle Verpflichtungen zu fesseln.';

  @override
  String get metric_ugly_34_name => 'Forderungen nach Zwangsarbeit';

  @override
  String get metric_ugly_34_description =>
      'Kennzeichnet Forderungen nach unbezahlter Arbeit, Knechtschaft oder Arbeit unter Androhung von Schaden oder Strafe.';

  @override
  String get metric_ugly_35_name => 'Normalisierung der Ausbeutung';

  @override
  String get metric_ugly_35_description =>
      'Erkennt die Darstellung schwerer Ausbeutung als normal, verdient, einvernehmlich oder sogar vorteilhaft.';

  @override
  String get metric_ugly_36_name => 'Anvisieren von Verletzlichkeit';

  @override
  String get metric_ugly_36_description =>
      'Erkennt gezielte Ansprache isolierter, wirtschaftlich abhängiger oder psychisch verletzlicher Personen.';

  @override
  String get metric_ugly_37_name => 'Trauma-Bindungstechnik';

  @override
  String get metric_ugly_37_description =>
      'Erkennt die bewusste Schaffung von Angst-Erleichterungs-Zyklen, die tiefe emotionale Abhängigkeit erzeugen sollen.';

  @override
  String get metric_ugly_38_name =>
      'Missbrauch durch intermittierende Verstärkung';

  @override
  String get metric_ugly_38_description =>
      'Kennzeichnet unberechenbare Zyklen von Belohnung und schwerer Bestrafung, die psychische Abhängigkeit erzeugen.';

  @override
  String get metric_ugly_39_name => 'Erlernte Hilflosigkeit induzieren';

  @override
  String get metric_ugly_39_description =>
      'Identifiziert die systematische Beseitigung von Handlungsfähigkeit, Ressourcen und wahrgenommenen Fluchtmöglichkeiten.';

  @override
  String get metric_ugly_40_name => 'Sprache der Identitätsauslöschung';

  @override
  String get metric_ugly_40_description =>
      'Kennzeichnet Forderungen, Persönlichkeit, Interessen, Aussehen oder das Kernselbst aufzugeben.';

  @override
  String get metric_ugly_41_name => 'Autonomievernichtung';

  @override
  String get metric_ugly_41_description =>
      'Erkennt die systematische Beseitigung von eigenständigem Denken, Entscheidungsfindung oder persönlicher Handlungsfähigkeit.';

  @override
  String get metric_ugly_42_name => 'Taktiken der Gedankenkontrolle';

  @override
  String get metric_ugly_42_description =>
      'Kennzeichnet Forderungen, nur so zu denken, zu glauben oder zu fühlen, wie der kontrollierende Partner es vorgibt.';

  @override
  String get metric_ugly_43_name => 'Erzwingung emotionaler Taubheit';

  @override
  String get metric_ugly_43_description =>
      'Identifiziert Bestrafung für das Zeigen von Emotionen oder explizite Aufforderungen, alle Gefühle zu unterdrücken.';

  @override
  String get metric_ugly_44_name => 'Erzeugung komplexer Traumata';

  @override
  String get metric_ugly_44_description =>
      'Kennzeichnet systematische Muster, die durch chronischen Missbrauch ein Trauma auf dem Niveau einer komplexen PTBS erzeugen.';

  @override
  String get metric_ugly_45_name => 'Zufügung von Verratstrauma';

  @override
  String get metric_ugly_45_description =>
      'Identifiziert bewussten Verrat, der grundlegendes Vertrauen und psychologische Sicherheit zerstören soll.';

  @override
  String get metric_ugly_46_name => 'Sprache moralischer Verletzung';

  @override
  String get metric_ugly_46_description =>
      'Erkennt, wenn der Partner gezwungen wird, gegen seine tiefsten Überzeugungen zu verstoßen oder schädliche Handlungen zu begehen.';

  @override
  String get metric_ugly_47_name => 'Sprache existenzieller Bedrohung';

  @override
  String get metric_ugly_47_description =>
      'Kennzeichnet Drohungen gegen die Existenz, Kernidentität, geistige Gesundheit oder den Lebenswillen des Partners.';

  @override
  String get metric_ugly_48_name => 'Sprache der Suizidnötigung';

  @override
  String get metric_ugly_48_description =>
      'Identifiziert, wenn der Partner durch anhaltenden Missbrauch und erzeugte Hoffnungslosigkeit in suizidale Gedanken getrieben wird.';

  @override
  String get metric_ugly_49_name => 'Rechtfertigungsmythologie';

  @override
  String get metric_ugly_49_description =>
      'Erkennt ausgeklügelte erfundene Erzählungen, die Missbrauch als notwendig, verdient oder gerechtfertigt darstellen.';

  @override
  String get metric_ugly_50_name => 'Umkehrung der Opfererzählung';

  @override
  String get metric_ugly_50_description =>
      'Erkennt eine vollständige Umkehrung, bei der der Täter behauptet, das eigentliche Opfer seines eigenen Missbrauchs zu sein.';

  @override
  String get metric_ugly_51_name => 'Predigt der Missbrauchsnormalisierung';

  @override
  String get metric_ugly_51_description =>
      'Kennzeichnet, wenn vermittelt oder darauf bestanden wird, dass Missbrauch normal, gesund oder vorteilhaft für den Partner sei.';

  @override
  String get metric_ugly_52_name => 'Räuberische Ideologie';

  @override
  String get metric_ugly_52_description =>
      'Identifiziert ideologische Rechtfertigungen für Ausbeutung, Dominanz oder Schädigung des Partners.';

  @override
  String get metric_ugly_53_name => 'Sektenführersprache';

  @override
  String get metric_ugly_53_description =>
      'Erkennt Botschaften, die besonderes Wissen, göttliches Recht oder überlegene Autorität gegenüber dem Partner behaupten.';

  @override
  String get metric_ugly_54_name => 'Sprache des Grooming-Zeitplans';

  @override
  String get metric_ugly_54_description =>
      'Kennzeichnet Verweise auf einen langfristigen Manipulationsplan oder Beschreibungen eines Grooming-Verlaufs.';

  @override
  String get metric_ugly_55_name => 'Chronische Demütigungskampagne';

  @override
  String get metric_ugly_55_description =>
      'Erkennt ein anhaltendes Muster öffentlicher oder privater Demütigung, das darauf abzielt, das Selbstwertgefühl zu zerstören.';

  @override
  String get metric_ugly_56_name => 'Blockierung von Sicherheitsausgängen';

  @override
  String get metric_ugly_56_description =>
      'Erkennt die aktive Verhinderung des Zugangs zu Fluchtwegen, Unterstützungssystemen oder Sicherheitsressourcen durch den Partner.';

  @override
  String get metric_ugly_57_name => 'Drohungen der Dokumentenbeschlagnahme';

  @override
  String get metric_ugly_57_description =>
      'Kennzeichnet Drohungen oder Handlungen, Identitätsdokumente zu nehmen, zu verstecken oder zu vernichten, um Flucht zu verhindern.';

  @override
  String get metric_ugly_58_name => 'Gewalttätige Eifersuchtsmuster';

  @override
  String get metric_ugly_58_description =>
      'Erkennt Eifersucht, die zu expliziten Drohungen, Überwachung oder gewalttätiger Vergeltung eskaliert ist.';

  @override
  String get metric_ugly_59_name => 'Wutausbruchsmuster';

  @override
  String get metric_ugly_59_description =>
      'Erkennt Beschreibungen oder Muster explosiver gewalttätiger Ausbrüche, die in keinem Verhältnis zu einem Auslöser stehen.';

  @override
  String get metric_ugly_60_name => 'Eskalation der Zwangskontrolle';

  @override
  String get metric_ugly_60_description =>
      'Verfolgt die zunehmende Schwere und Breite von Zwangskontrolltaktiken im Laufe der Zeit.';

  @override
  String get metric_ugly_61_name => 'Sprache der angstbasierten Compliance';

  @override
  String get metric_ugly_61_description =>
      'Erkennt Compliance, die vollständig aus Angst vor Gewalt oder schwerer Bestrafung resultiert, nicht aus freier Wahl.';

  @override
  String get metric_ugly_62_name => 'Sprache von Bestrafungsritualen';

  @override
  String get metric_ugly_62_description =>
      'Erkennt Verweise auf systematische Bestrafungspraktiken, die zur Durchsetzung von Compliance und Kontrolle eingesetzt werden.';

  @override
  String get metric_ugly_63_name => 'Indikatoren für Degradierungsrituale';

  @override
  String get metric_ugly_63_description =>
      'Kennzeichnet systematische Degradierungs- oder Demütigungsrituale, die darauf abzielen, die Würde zu zerstören.';

  @override
  String get metric_ugly_64_name =>
      'Drohungen nicht-einvernehmlicher Offenlegung';

  @override
  String get metric_ugly_64_description =>
      'Erkennt Drohungen, intime Bilder, private Informationen oder Geheimnisse ohne Zustimmung preiszugeben.';

  @override
  String get metric_ugly_65_name => 'Drohungen bildbasierter Misshandlung';

  @override
  String get metric_ugly_65_description =>
      'Erkennt Drohungen, intime Bilder als Rache, Bestrafung oder Erpressung zu verbreiten.';

  @override
  String get metric_ugly_66_name => 'Taktiken finanzieller Einengung';

  @override
  String get metric_ugly_66_description =>
      'Kennzeichnet bewusste Schaffung finanzieller Abhängigkeit, die eigenständiges Überleben unmöglich macht.';

  @override
  String get metric_ugly_67_name => 'Sprache der Wohnungsdrohungen';

  @override
  String get metric_ugly_67_description =>
      'Erkennt Drohungen, den Partner obdachlos zu machen, Wohnzugang zu entziehen oder die Sicherheit der Unterkunft zu zerstören.';

  @override
  String get metric_ugly_68_name => 'Drohungen bezüglich des Aufenthaltsstatus';

  @override
  String get metric_ugly_68_description =>
      'Identifiziert Drohungen, den Aufenthaltsstatus zu melden oder die Visumspatenschaft als Kontrollmittel zu entziehen.';

  @override
  String get metric_ugly_69_name => 'Religiöser oder spiritueller Missbrauch';

  @override
  String get metric_ugly_69_description =>
      'Erkennt die Nutzung religiöser Autorität, Lehre oder spiritueller Drohungen zur Kontrolle, Bestrafung oder Schädigung.';

  @override
  String get metric_ugly_70_name => 'Instrumentalisierung kultureller Scham';

  @override
  String get metric_ugly_70_description =>
      'Kennzeichnet Drohungen, Verhaltensweisen gegenüber der kulturellen oder familiären Gemeinschaft als Bestrafung offenzulegen.';

  @override
  String get metric_ugly_71_name => 'Drohungen gegen die Familie';

  @override
  String get metric_ugly_71_description =>
      'Identifiziert Drohungen, Familienmitglieder, Kinder oder Angehörige des Partners als Druckmittel zu schädigen.';

  @override
  String get metric_ugly_72_name => 'Koordinierte Belästigungskampagne';

  @override
  String get metric_ugly_72_description =>
      'Erkennt die Organisation anderer zur gemeinsamen Belästigung, Verfolgung oder Einschüchterung des Partners.';

  @override
  String get metric_ugly_73_name => 'Falsche Polizeimeldungsdrohungen';

  @override
  String get metric_ugly_73_description =>
      'Droht damit, falsche Polizeimeldungen oder rechtliche Anschuldigungen gegen den Partner zu erstatten.';

  @override
  String get metric_ugly_74_name => 'Waffeneinsatz des Rechtssystems';

  @override
  String get metric_ugly_74_description =>
      'Erkennt die Nutzung rechtlicher Verfahren, Gerichte oder Schutzanordnungen als Belästigungswaffen.';

  @override
  String get metric_ugly_75_name => 'Verstoß gegen Schutzanordnung';

  @override
  String get metric_ugly_75_description =>
      'Erkennt Verweise auf Verstöße oder geplante Verstöße gegen Schutz- oder Kontaktverbote.';

  @override
  String get metric_ugly_76_name => 'Sabotagedrohungen am Arbeitsplatz';

  @override
  String get metric_ugly_76_description =>
      'Kennzeichnet Drohungen, den Arbeitgeber, Kollegen oder Kunden zu kontaktieren, um die Existenzgrundlage des Partners zu zerstören.';

  @override
  String get metric_ugly_77_name => 'Soziale Vernichtungsdrohungen';

  @override
  String get metric_ugly_77_description =>
      'Erkennt Drohungen, den Ruf, die Beziehungen und den sozialen Status des Partners zu zerstören.';

  @override
  String get metric_ugly_78_name => 'Systematische Täuschungskampagne';

  @override
  String get metric_ugly_78_description =>
      'Identifiziert langfristige, ausgeklügelte Täuschungen, die darauf abzielen, den Partner finanziell oder emotional auszubeuten.';

  @override
  String get metric_ugly_79_name => 'Eigentumszerstörung als Terror';

  @override
  String get metric_ugly_79_description =>
      'Identifiziert die absichtliche Zerstörung von Eigentum des Partners als Einschüchterungstaktik.';

  @override
  String get metric_ugly_80_name => 'Tierquälerei als Stellvertreterterror';

  @override
  String get metric_ugly_80_description =>
      'Erkennt das Verletzen oder Bedrohen von Haustieren, um dem Partner die Fähigkeit zur Gewalt zu demonstrieren.';

  @override
  String get metric_ugly_81_name => 'Sprache der Kindesgefährdung';

  @override
  String get metric_ugly_81_description =>
      'Kennzeichnet das Aussetzen von Kindern in gefährlichen Situationen oder die Androhung dessen als Druckmittel.';

  @override
  String get metric_ugly_82_name => 'Behinderungsbasierte Kontrolle';

  @override
  String get metric_ugly_82_description =>
      'Erkennt die Ausnutzung der Behinderung des Partners durch Kontrolle über Medikamente, Mobilität oder Pflege.';

  @override
  String get metric_ugly_83_name => 'Inszenierte Krisenkontrolle';

  @override
  String get metric_ugly_83_description =>
      'Kennzeichnet das absichtliche Herbeiführen von Notfällen oder Krisen, um die Abhängigkeit des Partners zu erhöhen oder Überwachung zu rechtfertigen.';

  @override
  String get metric_ugly_84_name => 'Isolation von Notdiensten';

  @override
  String get metric_ugly_84_description =>
      'Identifiziert das aktive Verhindern, dass der Partner Polizei, Krankenwagen oder Krisendienste ruft.';

  @override
  String get metric_ugly_85_name => 'Eskalationsverlauf von Drohungen';

  @override
  String get metric_ugly_85_description =>
      'Verfolgt messbare Zunahme von Schweregrad, Spezifität oder Häufigkeit von Drohungen im Laufe der Zeit.';

  @override
  String get metric_ugly_86_name => 'Indikatoren für Tödlichkeitsrisiko';

  @override
  String get metric_ugly_86_description =>
      'Kennzeichnet Faktorenkombinationen, die mit dem höchsten Risiko für Tötungsdelikte in Partnerschaften verbunden sind.';

  @override
  String get metric_ugly_87_name => 'Psychologische Foltertaktiken';

  @override
  String get metric_ugly_87_description =>
      'Identifiziert anhaltende psychische Misshandlung, die darauf abzielt, die geistige Stabilität des Partners zu brechen.';

  @override
  String get metric_ugly_88_name => 'Gefangenschaftssprache';

  @override
  String get metric_ugly_88_description =>
      'Erkennt Hinweise auf Gefangenhaltung des Partners, Verhinderung des Weggehens oder Kontrolle aller Bewegungen.';

  @override
  String get metric_ugly_89_name => 'Geplante Gewaltvorbereitung';

  @override
  String get metric_ugly_89_description =>
      'Erkennt jede Sprache, die Planung, Vorbereitung oder Countdown zu Gewalt gegen den Partner anzeigt.';

  @override
  String get metric_ugly_90_name => 'Rekrutierung Dritter für Drohungen';

  @override
  String get metric_ugly_90_description =>
      'Identifiziert die Rekrutierung von Freunden, Familie oder anderen, um den Partner zu bedrohen oder zu schädigen.';

  @override
  String get metric_ugly_91_name => 'Ausbeutung suizidaler Gedanken';

  @override
  String get metric_ugly_91_description =>
      'Kennzeichnet die Ausnutzung einer suizidalen Krise des Partners als Druckmittel oder um ihn davon abzuhalten, Hilfe zu suchen.';

  @override
  String get metric_ugly_92_name => 'Vergiftungs- oder Betäubungsdrohungen';

  @override
  String get metric_ugly_92_description =>
      'Erkennt Drohungen oder Hinweise auf Betäubung, Vergiftung oder Manipulation von Essen oder Getränken des Partners.';

  @override
  String get metric_ugly_93_name =>
      'Ausbeutung nicht-suizidaler Selbstverletzung';

  @override
  String get metric_ugly_93_description =>
      'Kennzeichnet die Ausnutzung von selbstverletzendem Verhalten des Partners als Druckmittel, Spott oder zur weiteren Kontrolle.';

  @override
  String get metric_ugly_94_name => 'Sprache zur Induktion von Dissoziation';

  @override
  String get metric_ugly_94_description =>
      'Erkennt Muster, die darauf abzielen, Dissoziation, Loslösung oder Depersonalisation beim Partner auszulösen.';

  @override
  String get metric_ugly_95_name => 'Einpflanzung kognitiver Verzerrungen';

  @override
  String get metric_ugly_95_description =>
      'Erkennt die bewusste Einpflanzung falscher Überzeugungen über das Selbst, die Realität oder den eigenen Verstand des Partners.';

  @override
  String get metric_ugly_96_name => 'Behinderung medizinischer Versorgung';

  @override
  String get metric_ugly_96_description =>
      'Erkennt die Behinderung des Zugangs zu Medikamenten, Ärzten, Krankenhäusern oder medizinischer Behandlung.';

  @override
  String get metric_ugly_97_name => 'Extremistische Drohsprache';

  @override
  String get metric_ugly_97_description =>
      'Kennzeichnet Sprache, die aus extremistischen oder gewalttätigen ideologischen Rahmenwerken entlehnt und auf den Partner angewendet wird.';

  @override
  String get metric_ugly_98_name => 'Signale für Stalking nach der Trennung';

  @override
  String get metric_ugly_98_description =>
      'Erkennt Drohungen, Überwachungssprache oder Einschüchterungstaktiken, die einer Trennung folgen oder diese antizipieren.';

  @override
  String get metric_ugly_99_name => 'Instrumentalisierung von Kindern';

  @override
  String get metric_ugly_99_description =>
      'Identifiziert die Nutzung von Kindern als Schachfiguren, Drohungen bezüglich des Sorgerechts oder die Instrumentalisierung elterlicher Bindungen als Kontrollmechanismen.';

  @override
  String get metric_ugly_100_name => 'Systematische Entmenschlichung';

  @override
  String get metric_ugly_100_description =>
      'Erkennt anhaltende Sprache, die dem Partner die Menschlichkeit, Würde oder das Recht auf grundlegende Menschlichkeit entzieht.';

  @override
  String get metric_narcissist_1_name => 'Grandiose Selbstüberschätzung';

  @override
  String get metric_narcissist_1_description =>
      'Übertriebene Behauptungen über Leistungen, Talente oder Status, die über realistische Belege hinausgehen, oft mit einem Gefühl der Einzigartigkeit.';

  @override
  String get metric_narcissist_2_name => 'Anspruchshaltung';

  @override
  String get metric_narcissist_2_description =>
      'Unangemessene Erwartungen an eine besondere Behandlung oder automatische Erfüllung ihrer Wünsche ohne Gegenseitigkeit.';

  @override
  String get metric_narcissist_3_name => 'Empathiedefizit';

  @override
  String get metric_narcissist_3_description =>
      'Unfähigkeit oder Unwilligkeit, die Gefühle anderer zu erkennen oder zu validieren, wobei emotionale Bedürfnisse als irrelevant abgetan werden.';

  @override
  String get metric_narcissist_4_name => 'Bewunderungssuche';

  @override
  String get metric_narcissist_4_description =>
      'Übermäßiges Fischen nach Bewunderung, Komplimenten oder Bestätigung, um das fragile Selbstwertgefühl zu stärken.';

  @override
  String get metric_narcissist_5_name => 'Triangulationstaktiken';

  @override
  String get metric_narcissist_5_description =>
      'Einführung einer dritten Partei in Konflikte, um Eifersucht, Konkurrenz oder Manipulation der Wahrnehmung zu erzeugen.';

  @override
  String get metric_narcissist_6_name => 'Love-Bombing-Intensität';

  @override
  String get metric_narcissist_6_description =>
      'Überwältigende Schmeicheleien, Geschenke oder Aufmerksamkeit zu Beginn einer Beziehung, um Kontrolle zu erlangen und das Ziel zu idealisieren.';

  @override
  String get metric_narcissist_7_name => 'Abwertungskritik';

  @override
  String get metric_narcissist_7_description =>
      'Plötzlicher Wechsel zu harscher Kritik, Herabsetzung oder Verachtung nach der Idealisierung, was das Selbstwertgefühl des Ziels untergräbt.';

  @override
  String get metric_narcissist_8_name => 'Schweigestrafe';

  @override
  String get metric_narcissist_8_description =>
      'Vorenthaltung von Kommunikation oder Zuneigung als bewusste Bestrafung, um Angst und Fügsamkeit zu induzieren.';

  @override
  String get metric_narcissist_9_name => 'DARVO-Schuldumkehr';

  @override
  String get metric_narcissist_9_description =>
      'Leugnen der Verantwortung, Angriff auf den Ankläger und Umkehrung der Opfer-Täter-Rollen, um der Rechenschaft zu entgehen.';

  @override
  String get metric_narcissist_10_name => 'Gaslighting-Realitätsverzerrung';

  @override
  String get metric_narcissist_10_description =>
      'Leugnen oder Verdrehen von Tatsachen, Ereignissen oder Gefühlen, um das Ziel an seinem eigenen Gedächtnis oder Verstand zweifeln zu lassen.';

  @override
  String get metric_narcissist_11_name => 'Wut auf Kritik';

  @override
  String get metric_narcissist_11_description =>
      'Intensive Wut, Verachtung oder Vergeltung als Reaktion auf jede wahrgenommene Kränkung oder Rückmeldung, selbst wenn diese konstruktiv ist.';

  @override
  String get metric_narcissist_12_name => 'Grenzverletzung';

  @override
  String get metric_narcissist_12_description =>
      'Ignorieren oder Überschreiten festgelegter Grenzen, Privatsphäre oder persönlicher Räume ohne Reue oder Verhandlung.';

  @override
  String get metric_narcissist_13_name => 'Neidausdruck';

  @override
  String get metric_narcissist_13_description =>
      'Ressentiment gegenüber den Erfolgen oder Besitztümern anderer, oft begleitet von Abwertung oder Versuchen, diese zu untergraben.';

  @override
  String get metric_narcissist_14_name => 'Ausbeuterisches Verhalten';

  @override
  String get metric_narcissist_14_description =>
      'Andere für persönlichen Gewinn, Status oder Ressourcen nutzen, ohne Rücksicht auf ihr Wohlbefinden oder ihre Zustimmung.';

  @override
  String get metric_narcissist_15_name => 'Spiegelmanipulation';

  @override
  String get metric_narcissist_15_description =>
      'Nachahmung der Interessen, Werte oder Eigenschaften des Ziels, um falsche Vertrautheit herzustellen und Vertrauen zu gewinnen.';

  @override
  String get metric_narcissist_16_name => 'Überlegenheitsbehauptungen';

  @override
  String get metric_narcissist_16_description =>
      'Behauptung einer inhärenten Überlegenheit gegenüber anderen, oft mit herablassender oder abwertender Sprache.';

  @override
  String get metric_narcissist_17_name => 'Fantasiestörung';

  @override
  String get metric_narcissist_17_description =>
      'Obsessives Reden über unbegrenzten Erfolg, Macht, Brillanz oder ideale Liebe, die unrealistisch ist.';

  @override
  String get metric_narcissist_18_name => 'Sonderstatusbehauptung';

  @override
  String get metric_narcissist_18_description =>
      'Glaube, dass sie nur von hochrangigen Personen oder Institutionen verstanden werden oder mit ihnen verkehren können.';

  @override
  String get metric_narcissist_19_name => 'Zwischenmenschliche Ausbeutung';

  @override
  String get metric_narcissist_19_description =>
      'Ausnutzung der Ressourcen, Zeit oder Emotionen anderer ohne Gegenleistung oder Dankbarkeit.';

  @override
  String get metric_narcissist_20_name => 'Fehlende Reue';

  @override
  String get metric_narcissist_20_description =>
      'Abwesenheit von Schuldgefühlen oder Entschuldigung nach der Verursachung von Schaden, oft mit Rechtfertigung der Handlungen als vom Ziel verdient.';

  @override
  String get metric_narcissist_21_name => 'Konkurrenzuntergrabung';

  @override
  String get metric_narcissist_21_description =>
      'Sabotieren der Leistungen oder Beziehungen anderer, um eine überlegene Position zu behaupten.';

  @override
  String get metric_narcissist_22_name => 'Idealisierungsphase';

  @override
  String get metric_narcissist_22_description =>
      'Übermäßiges Lob und Bewunderung zu Beginn einer Beziehung, die unrealistische Erwartungen an das Ziel setzen.';

  @override
  String get metric_narcissist_23_name => 'Abwertungsphase';

  @override
  String get metric_narcissist_23_description =>
      'Allmähliche oder plötzliche Kritik und Verachtung nach der Idealisierung, die Verwirrung und Selbstzweifel hervorrufen.';

  @override
  String get metric_narcissist_24_name => 'Entsorgungsimpuls';

  @override
  String get metric_narcissist_24_description =>
      'Plötzliches Beenden von Beziehungen, wenn das Ziel keine narzisstische Versorgung mehr bietet oder es herausfordert.';

  @override
  String get metric_narcissist_25_name => 'Hoovering-Versuche';

  @override
  String get metric_narcissist_25_description =>
      'Wiederaufnahme des Kontakts zu einem entsorgten Ziel mit Versprechungen, Schuldgefühlen oder Manipulation, um die Versorgung wiederzuerlangen.';

  @override
  String get metric_narcissist_26_name => 'Projektion von Fehlern';

  @override
  String get metric_narcissist_26_description =>
      'Andere der eigenen negativen Eigenschaften oder Verhaltensweisen beschuldigen, um Selbstwahrnehmung zu vermeiden.';

  @override
  String get metric_narcissist_27_name => 'Kontrolle durch Schuld';

  @override
  String get metric_narcissist_27_description =>
      'Verwendung schuldeinflößender Aussagen, um andere zur Compliance oder Fürsorge zu manipulieren.';

  @override
  String get metric_narcissist_28_name => 'Emotionale Volatilität';

  @override
  String get metric_narcissist_28_description =>
      'Schnelle Stimmungsschwankungen von Charme zu Wut, oft ausgelöst durch wahrgenommene narzisstische Verletzung.';

  @override
  String get metric_narcissist_29_name => 'Invalidierung von Gefühlen';

  @override
  String get metric_narcissist_29_description =>
      'Abweisen oder Herunterspielen der Emotionen anderer als Überreaktion oder irrational.';

  @override
  String get metric_narcissist_30_name => 'Gesprächsmonopolisierung';

  @override
  String get metric_narcissist_30_description =>
      'Dominieren des Dialogs mit selbstbezogenen Themen, Unterbrechen oder Ignorieren der Beiträge anderer.';

  @override
  String get metric_narcissist_31_name => 'Beschimpfende Herabwürdigung';

  @override
  String get metric_narcissist_31_description =>
      'Verwendung von Beleidigungen, Etiketten oder abwertenden Begriffen, um das Ziel zu entwerten und zu kontrollieren.';

  @override
  String get metric_narcissist_32_name => 'Androhung des Verlassens';

  @override
  String get metric_narcissist_32_description =>
      'Nutzung der Angst vor Verlust oder Ablehnung, um Gehorsam oder Aufmerksamkeit zu erzwingen.';

  @override
  String get metric_narcissist_33_name => 'Opferrolle einnehmen';

  @override
  String get metric_narcissist_33_description =>
      'Sich selbst als ungerecht behandelt darstellen, um Mitleid zu erregen und Verantwortung abzuwälzen.';

  @override
  String get metric_narcissist_34_name => 'Märtyrer-Komplex';

  @override
  String get metric_narcissist_34_description =>
      'Behauptung übermäßiger Opfer oder Leiden, um Schuldgefühle und Verpflichtungen bei anderen hervorzurufen.';

  @override
  String get metric_narcissist_35_name => 'Selektives Gedächtnis';

  @override
  String get metric_narcissist_35_description =>
      'Praktisches Vergessen von Versprechen, Vereinbarungen oder schädlichen Handlungen, um Verantwortung zu vermeiden.';

  @override
  String get metric_narcissist_36_name => 'Kommunikationsblockade';

  @override
  String get metric_narcissist_36_description =>
      'Weigerung, sich auf Dialog einzulassen, Ignorieren von Fragen oder Abbrechen von Diskussionen, um Kontrolle zu behalten.';

  @override
  String get metric_narcissist_37_name => 'Zukunftsvortäuschung';

  @override
  String get metric_narcissist_37_description =>
      'Großartige Versprechungen über gemeinsame Zukunftspläne machen, um falsche Hoffnung und Abhängigkeit zu schaffen.';

  @override
  String get metric_narcissist_38_name => 'Rufmordkampagne';

  @override
  String get metric_narcissist_38_description =>
      'Verbreitung böswilliger Gerüchte oder Lügen über das Ziel, um es zu isolieren und den Ruf zu schädigen.';

  @override
  String get metric_narcissist_39_name => 'Isolationstaktiken';

  @override
  String get metric_narcissist_39_description =>
      'Abhalten oder Verhindern von Kontakten zu Freunden, Familie oder Unterstützungssystemen, um Abhängigkeit zu erhöhen.';

  @override
  String get metric_narcissist_40_name => 'Finanzielle Ausbeutung';

  @override
  String get metric_narcissist_40_description =>
      'Manipulation oder Kontrolle finanzieller Ressourcen zum persönlichen Vorteil oder zur Schaffung von Abhängigkeit.';

  @override
  String get metric_narcissist_41_name => 'Sexuelle Nötigung';

  @override
  String get metric_narcissist_41_description =>
      'Einsatz von Druck, Schuldgefühlen oder Manipulation, um sexuelle Gefügigkeit ohne echte Einwilligung zu erlangen.';

  @override
  String get metric_narcissist_42_name => 'Grenztest';

  @override
  String get metric_narcissist_42_description =>
      'Wiederholtes Überschreiten von Grenzen, um zu testen, welches Verhalten toleriert wird, und anschließende Eskalation der Verstöße.';

  @override
  String get metric_narcissist_43_name => 'Gaslighting-Verleugnung';

  @override
  String get metric_narcissist_43_description =>
      'Kategorisches Leugnen von Ereignissen oder Aussagen, die stattgefunden haben, was das Opfer an der Realität zweifeln lässt.';

  @override
  String get metric_narcissist_44_name => 'Herunterspielen von Anliegen';

  @override
  String get metric_narcissist_44_description =>
      'Abwerten legitimer Beschwerden als unwichtig oder überempfindlich.';

  @override
  String get metric_narcissist_45_name => 'Externalisierung der Schuld';

  @override
  String get metric_narcissist_45_description =>
      'Zuschreibung aller Probleme und Konflikte auf andere, ohne jemals eigene Fehler zu akzeptieren.';

  @override
  String get metric_narcissist_46_name => 'Eifersucht-Provokation';

  @override
  String get metric_narcissist_46_description =>
      'Flirten mit oder Loben anderer, um Eifersucht zu erregen und emotionale Kontrolle zu behalten.';

  @override
  String get metric_narcissist_47_name => 'Emotionale Erpressung';

  @override
  String get metric_narcissist_47_description =>
      'Einsatz von Angst, Verpflichtung oder Schuldgefühlen, um Entscheidungen und Verhalten zu manipulieren.';

  @override
  String get metric_narcissist_48_name => 'Pseudo-Einsicht';

  @override
  String get metric_narcissist_48_description =>
      'Vortäuschen von Selbstbewusstsein oder Empathie, um reformiert zu wirken, und dann Rückkehr zu toxischen Mustern.';

  @override
  String get metric_narcissist_49_name => 'Verächtlicher Ton';

  @override
  String get metric_narcissist_49_description =>
      'Verwendung von Sarkasmus, Spott oder verächtlicher Sprache, um andere herabzuwürdigen und abzutun.';

  @override
  String get metric_narcissist_50_name => 'Rachefantasien';

  @override
  String get metric_narcissist_50_description =>
      'Äußern von Wünschen nach Vergeltung oder Bestrafung gegenüber denen, die sie gekränkt haben.';

  @override
  String get metric_serial_killer_1_name => 'Raubtierhafte Rahmung';

  @override
  String get metric_serial_killer_1_description =>
      'Erkennt Sprache, die den Sprecher als Jäger und das Ziel als Beute positioniert, was auf räuberische Absicht hinweist.';

  @override
  String get metric_serial_killer_2_name => 'Empathiedefizit';

  @override
  String get metric_serial_killer_2_description =>
      'Identifiziert Aussagen ohne emotionale Resonanz oder Besorgnis über das Leid anderer, was auf Gefühllosigkeit hindeutet.';

  @override
  String get metric_serial_killer_3_name => 'Entmenschlichende Bezeichnungen';

  @override
  String get metric_serial_killer_3_description =>
      'Markiert die Verwendung abwertender Begriffe oder objektivierender Bezeichnungen, die den Opfern die Menschlichkeit nehmen.';

  @override
  String get metric_serial_killer_4_name => 'Objektivierungshinweise';

  @override
  String get metric_serial_killer_4_description =>
      'Erkennt Sprache, die Personen als Werkzeuge oder Objekte zur Befriedigung behandelt.';

  @override
  String get metric_serial_killer_5_name => 'Kontrollfixierung';

  @override
  String get metric_serial_killer_5_description =>
      'Erkennt obsessive Bezüge zu Dominanz, Manipulation oder Durchsetzung von Gehorsam.';

  @override
  String get metric_serial_killer_6_name => 'Sensationssuchender Ton';

  @override
  String get metric_serial_killer_6_description =>
      'Identifiziert Aufregung oder Erregung bei der Beschreibung riskanter, gewalttätiger oder räuberischer Handlungen.';

  @override
  String get metric_serial_killer_7_name => 'Kompartimentierungsmarker';

  @override
  String get metric_serial_killer_7_description =>
      'Markiert abrupte Wechsel zwischen normalen und gewalttätigen Themen, was auf psychische Trennung hindeutet.';

  @override
  String get metric_serial_killer_8_name => 'Opferauswahlsignale';

  @override
  String get metric_serial_killer_8_description =>
      'Erkennt Kriterien oder Präferenzen für die gezielte Auswahl bestimmter verletzlicher Gruppen.';

  @override
  String get metric_serial_killer_9_name => 'Sadistische Freude';

  @override
  String get metric_serial_killer_9_description =>
      'Erkennt Vergnügen, das aus dem Schmerz, der Angst oder dem Leid anderer gezogen wird.';

  @override
  String get metric_serial_killer_10_name => 'Manipulativer Schaden';

  @override
  String get metric_serial_killer_10_description =>
      'Identifiziert Sprache, die verwendet wird, um andere zu täuschen oder in schädliche Situationen zu zwingen.';

  @override
  String get metric_serial_killer_11_name => 'Stalking-Indikatoren';

  @override
  String get metric_serial_killer_11_description =>
      'Kennzeichnet detaillierte Verfolgung, Überwachung oder obsessive Beobachtung eines Ziels.';

  @override
  String get metric_serial_killer_12_name => 'Grooming-Sprache';

  @override
  String get metric_serial_killer_12_description =>
      'Erkennt schrittweise Vertrauensaufbautaktiken zur Ausbeutung oder Misshandlung von Opfern.';

  @override
  String get metric_serial_killer_13_name => 'Gewaltfantasien';

  @override
  String get metric_serial_killer_13_description =>
      'Identifiziert lebhafte Beschreibungen von Verletzung oder Tötung anderer als mentale Probe.';

  @override
  String get metric_serial_killer_14_name => 'Machtbehauptung';

  @override
  String get metric_serial_killer_14_description =>
      'Erkennt Aussagen, die Überlegenheit oder Kontrolle über andere betonen.';

  @override
  String get metric_serial_killer_15_name => 'Mangel an Reue';

  @override
  String get metric_serial_killer_15_description =>
      'Kennzeichnet das Fehlen von Schuld oder Bedauern nach der Erörterung schädlicher Handlungen.';

  @override
  String get metric_serial_killer_16_name => 'Schuldexternalisierung';

  @override
  String get metric_serial_killer_16_description =>
      'Erkennt die Verlagerung der Verantwortung für gewalttätige Impulse auf Opfer oder Gesellschaft.';

  @override
  String get metric_serial_killer_17_name => 'Sexualisierte Gewalt';

  @override
  String get metric_serial_killer_17_description =>
      'Identifiziert die Vermischung von sexuellen und gewalttätigen Themen in der Sprache.';

  @override
  String get metric_serial_killer_18_name => 'Isolationstaktiken';

  @override
  String get metric_serial_killer_18_description =>
      'Erkennt Bemühungen, ein Ziel von Unterstützungsnetzwerken zu trennen.';

  @override
  String get metric_serial_killer_19_name => 'Gaslighting-Muster';

  @override
  String get metric_serial_killer_19_description =>
      'Kennzeichnet Sprache, die darauf abzielt, die Realität zu verzerren und die geistige Gesundheit eines Opfers zu untergraben.';

  @override
  String get metric_serial_killer_20_name => 'Drohverschleierung';

  @override
  String get metric_serial_killer_20_description =>
      'Erkennt implizite Drohungen oder Warnungen, die als beiläufige Aussagen getarnt sind.';

  @override
  String get metric_serial_killer_21_name => 'Besitzergreifende Sprache';

  @override
  String get metric_serial_killer_21_description =>
      'Identifiziert Aussagen, die Besitzansprüche oder Anspruchsdenken gegenüber einer anderen Person ausdrücken.';

  @override
  String get metric_serial_killer_22_name => 'Rachethemen';

  @override
  String get metric_serial_killer_22_description =>
      'Erkennt Fixierung auf Vergeltung oder Bestrafung vermeintlichen Unrechts.';

  @override
  String get metric_serial_killer_23_name => 'Narzisstische Grandiosität';

  @override
  String get metric_serial_killer_23_description =>
      'Markiert übertriebene Selbstwichtigkeit und Missachtung des Wertes anderer.';

  @override
  String get metric_serial_killer_24_name => 'Emotionale Distanz';

  @override
  String get metric_serial_killer_24_description =>
      'Erkennt klinischen oder distanzierten Ton bei der Erörterung von Traumata oder Schäden.';

  @override
  String get metric_serial_killer_25_name => 'Räuberische Geduld';

  @override
  String get metric_serial_killer_25_description =>
      'Identifiziert langfristige Planungssprache für zukünftige Viktimisierung.';

  @override
  String get metric_serial_killer_26_name => 'Grenztesten';

  @override
  String get metric_serial_killer_26_description =>
      'Erkennt Sondieren nach Grenzen oder Widerstand bei potenziellen Opfern.';

  @override
  String get metric_serial_killer_27_name => 'Herunterspielen von Schaden';

  @override
  String get metric_serial_killer_27_description =>
      'Markiert das Herunterspielen der Schwere gewalttätiger oder missbräuchlicher Handlungen.';

  @override
  String get metric_serial_killer_28_name => 'Rechtfertigung von Gewalt';

  @override
  String get metric_serial_killer_28_description =>
      'Erkennt Rationalisierungen für die Schädigung anderer als notwendig oder verdient.';

  @override
  String get metric_serial_killer_29_name => 'Obsessiver Fokus';

  @override
  String get metric_serial_killer_29_description =>
      'Identifiziert wiederholte, fixierte Gedanken an eine bestimmte Person oder Handlung.';

  @override
  String get metric_serial_killer_30_name => 'Kalte Berechnung';

  @override
  String get metric_serial_killer_30_description =>
      'Erkennt strategische, emotionslose Planung schädlicher Handlungen.';

  @override
  String get metric_serial_killer_31_name => 'Täuschender Charme';

  @override
  String get metric_serial_killer_31_description =>
      'Kennzeichnet übermäßig schmeichelhafte oder einschmeichelnde Sprache zur Manipulation.';

  @override
  String get metric_serial_killer_32_name => 'Opferbeschuldigung';

  @override
  String get metric_serial_killer_32_description =>
      'Erkennt die Zuschreibung von Schuld am eigenen Leid an das Opfer.';

  @override
  String get metric_serial_killer_33_name => 'Eskalationssignale';

  @override
  String get metric_serial_killer_33_description =>
      'Identifiziert den Übergang von Fantasie zu Absicht in gewalttätiger Sprache.';

  @override
  String get metric_serial_killer_34_name => 'Parasitäre Orientierung';

  @override
  String get metric_serial_killer_34_description =>
      'Erkennt Sprache, die andere als auszubeutende Ressourcen behandelt.';

  @override
  String get metric_serial_killer_35_name => 'Erregungshinweise';

  @override
  String get metric_serial_killer_35_description =>
      'Kennzeichnet Indikatoren physiologischer Erregung im Zusammenhang mit gewalttätigen Themen.';

  @override
  String get metric_serial_killer_36_name => 'Loyalitätstest';

  @override
  String get metric_serial_killer_36_description =>
      'Erkennt Forderungen nach Beweisen für Loyalität oder Geheimhaltung von Komplizen.';

  @override
  String get metric_serial_killer_37_name => 'Ritualsprache';

  @override
  String get metric_serial_killer_37_description =>
      'Identifiziert musterhafte, zeremonielle Formulierungen im Zusammenhang mit Gewalttaten.';

  @override
  String get metric_serial_killer_38_name => 'Überlegenheitsansprüche';

  @override
  String get metric_serial_killer_38_description =>
      'Erkennt Behauptungen, über moralischen oder rechtlichen Beschränkungen zu stehen.';

  @override
  String get metric_serial_killer_39_name => 'Emotionales Vakuum';

  @override
  String get metric_serial_killer_39_description =>
      'Kennzeichnet das Fehlen emotionaler Wörter in Kontexten, die Empathie erfordern.';

  @override
  String get metric_serial_killer_40_name => 'Räuberische Neugier';

  @override
  String get metric_serial_killer_40_description =>
      'Erkennt ausforschende Fragen nach Ängsten oder Verletzlichkeiten eines Ziels.';

  @override
  String get metric_serial_killer_41_name =>
      'Bedrohungen zum Schweigen bringen';

  @override
  String get metric_serial_killer_41_description =>
      'Erkennt Warnungen, die eine Offenlegung oder Meldung verhindern sollen.';

  @override
  String get metric_serial_killer_42_name => 'Entmenschlichende Vergleiche';

  @override
  String get metric_serial_killer_42_description =>
      'Erkennt die Gleichsetzung von Menschen mit Tieren, Objekten oder unmenschlichen Wesen.';

  @override
  String get metric_serial_killer_43_name => 'Kontrollsprache';

  @override
  String get metric_serial_killer_43_description =>
      'Kennzeichnet imperative oder befehlende Töne, die darauf abzielen, andere zu dominieren.';

  @override
  String get metric_serial_killer_44_name => 'Sadistisches Detail';

  @override
  String get metric_serial_killer_44_description =>
      'Erkennt übermäßigen Fokus auf grafische Schmerzen oder Leiden in Erzählungen.';

  @override
  String get metric_serial_killer_45_name => 'Manipulative Empathie';

  @override
  String get metric_serial_killer_45_description =>
      'Erkennt vorgetäuschte Besorgnis, um die Abwehr eines Ziels zu senken.';

  @override
  String get metric_serial_killer_46_name => 'Raubtierhafter Blick';

  @override
  String get metric_serial_killer_46_description =>
      'Erkennt Sprache, die intensive, invasive Beobachtung von Zielen beschreibt.';

  @override
  String get metric_serial_killer_47_name => 'Gewalttätige Identität';

  @override
  String get metric_serial_killer_47_description =>
      'Kennzeichnet die Selbstidentifikation als Raubtier, Mörder oder Monster.';

  @override
  String get metric_serial_killer_48_name => 'Jagdlust';

  @override
  String get metric_serial_killer_48_description =>
      'Erkennt Aufregung im Prozess des Verfolgens oder Jagens von Opfern.';

  @override
  String get metric_serial_killer_49_name => 'Zwanghaftes Geständnis';

  @override
  String get metric_serial_killer_49_description =>
      'Erkennt Dränge, gewalttätige Handlungen zur psychologischen Erleichterung zu offenbaren.';

  @override
  String get metric_serial_killer_50_name => 'Endgültigkeitssprache';

  @override
  String get metric_serial_killer_50_description =>
      'Erkennt Verweise auf das Beenden, Töten oder dauerhafte Schweigen von Zielen.';

  @override
  String get packNarcissistLabel => 'Der Narzisst';

  @override
  String get packSerialKillerLabel => 'Der Serienmörder';
}
