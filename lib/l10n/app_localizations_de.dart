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
}
