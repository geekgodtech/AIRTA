// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'AI-Relatietoxiciteitsanalysator';

  @override
  String get psychologicalMetrics => 'Psychologische Metingen';

  @override
  String get metricsDescription =>
      'Minder geselecteerde metingen leveren een diepere, meer geconcentreerde analyse van dat gedrag op. Meer geselecteerde metingen leveren een breder rapport op met minder detail per meting.';

  @override
  String get selectSMS => 'SMS / RCS Chat selecteren';

  @override
  String get selectDiscordChannel => 'Discord-kanaal selecteren';

  @override
  String get lightMode => 'Licht';

  @override
  String get darkMode => 'Donker';

  @override
  String get discordSetupTitle => 'Discord Instellen';

  @override
  String get discordSetupDescription =>
      'Volg deze stappen om Discord-kanaalanalyse in de app in te schakelen:';

  @override
  String get discordStep1Title => 'Maak een Discord Bot';

  @override
  String get discordStep1Description =>
      'Ga naar discord.com/developers, maak een nieuwe applicatie en voeg een bot toe. Kopieer de bot-token.';

  @override
  String get discordStep2Title => 'Bot-rechten Inschakelen';

  @override
  String get discordStep2Description =>
      'Schakel in de bot-instellingen \'Message Content Intent\' en \'Server Members Intent\' in.';

  @override
  String get discordStep3Title => 'Nodig Bot uit naar Server';

  @override
  String get discordStep3Description =>
      'Gebruik de OAuth2-URL-generator om de bot met de benodigde rechten naar uw Discord-server uit te nodigen.';

  @override
  String get discordStep4Title => 'Configureren in App';

  @override
  String get discordStep4Description =>
      'Voer uw bot-token in de app-instellingen in (neem contact op met support als u hulp nodig heeft).';

  @override
  String get discordStep5Title => 'Kanaal Selecteren';

  @override
  String get discordStep5Description =>
      'Tik op \'Discord-kanaal Selecteren\', kies uw server en selecteer vervolgens het kanaal om te analyseren.';

  @override
  String get gotIt => 'Begrepen';

  @override
  String get selectFile => 'Bestand selecteren';

  @override
  String get analyzeSelectedMetrics => 'Geselecteerde metingen analyseren';

  @override
  String get analyze20RandomMetrics => '20 willekeurige metingen analyseren';

  @override
  String get membershipOptions => 'Lidmaatschapsopties';

  @override
  String get free => 'Gratis';

  @override
  String get oneTimeUnlock => 'Eenmalige rapportontgrendeling';

  @override
  String get standard => 'Standaard';

  @override
  String get discordAddon => 'Discord-add-on';

  @override
  String get analyze => 'Analyseren';

  @override
  String get report => 'Rapport';

  @override
  String get pdfReport => 'PDF-rapport';

  @override
  String get openPdf => 'PDF openen';

  @override
  String get sharePdf => 'PDF delen';

  @override
  String get printPdf => 'PDF afdrukken';

  @override
  String get closePdfPreview => 'PDF-voorbeeldvenster sluiten';

  @override
  String get openPdfPreview => 'PDF-voorbeeldvenster openen';

  @override
  String get pdfPreviewDescription =>
      'Het ingebedde PDF-venster start gesloten om het rapport compact te houden.';

  @override
  String get notNow => 'Niet nu';

  @override
  String get unlockThisReport => 'Dit rapport ontgrendelen - \$20';

  @override
  String get joinStandard => 'Word lid van Standaard - \$9.99/maand';

  @override
  String get instantUnlockTitle => 'Directe rapportontgrendeling - \$20';

  @override
  String get instantUnlockDescription =>
      'Dit is een eenmalige aankoop om alleen het huidige rapport te ontgrendelen. Geen abonnement vereist. Toekomstige rapporten vereisen aparte ontgrendelingen of een lidmaatschap.\n\nDoorgaan met betaling?';

  @override
  String get purchaseFor20 => 'Kopen voor \$20';

  @override
  String get share => 'Delen';

  @override
  String get print => 'Afdrukken';

  @override
  String get save => 'Opslaan';

  @override
  String get cancel => 'Annuleren';

  @override
  String get ok => 'OK';

  @override
  String get loading => 'Laden...';

  @override
  String get error => 'Fout';

  @override
  String get success => 'Gelukt';

  @override
  String get conversations => 'Gesprekken';

  @override
  String get messages => 'Berichten';

  @override
  String get selectConversation => 'Gesprek selecteren';

  @override
  String get selectSmsConversation => 'SMS / RCS Chat selecteren';

  @override
  String get searchConversations => 'Gesprekken zoeken...';

  @override
  String get loadingConversations => 'Gesprekken laden...';

  @override
  String get errorLoadingConversations => 'Fout bij het laden van gesprekken';

  @override
  String get selectConversationToAnalyze =>
      'Selecteer een gesprek om te analyseren';

  @override
  String get analyzeWithSelectedMetrics =>
      'Analyseren met de geselecteerde metingen';

  @override
  String get loadConversationAndSelectMetric =>
      'Laad een gesprek en selecteer ten minste één meting';

  @override
  String get selectAtLeastOneMetric =>
      'Er moet ten minste één meting worden geselecteerd om het rapport uit te voeren.';

  @override
  String get spinningMetricWheel => 'Het metingswiel draait...';

  @override
  String get loadConversationToAnalyze => 'Laad een gesprek om te analyseren';

  @override
  String get noConversationsFound => 'Geen gesprekken gevonden';

  @override
  String get permissionsRequired => 'Machtigingen vereist';

  @override
  String get smsPermission => 'Tekstberichten';

  @override
  String get contactsPermission => 'Contacten';

  @override
  String get smsPermissionDescription =>
      'Om uw SMS-gesprekken te analyseren op relatiepatronen';

  @override
  String get contactsPermissionDescription =>
      'Om contactnamen weer te geven in plaats van telefoonnummers';

  @override
  String get analyzingMessage =>
      'Even geduld terwijl uw psychologische analyse door AI wordt gegenereerd...';

  @override
  String get analyzingStatus => 'Gesprek analyseren...';

  @override
  String get analyzingSubMessage =>
      'Heb geduld, dit proces kan tot een minuut duren, afhankelijk van uw verbindingssnelheid en het aantal geselecteerde metingen';

  @override
  String get unlockFullReport => 'Ontgrendel en toon dit hele rapport';

  @override
  String get fullReportLocked => 'Volledig rapport vergrendeld';

  @override
  String get upgradeToUnlock =>
      'Upgrade uw lidmaatschap om het volledige psychologische analyserapport te ontgrendelen met alle metingen en gedetailleerde inzichten.';

  @override
  String get language => 'Taal';

  @override
  String get english => 'Engels';

  @override
  String get spanish => 'Spaans';

  @override
  String get french => 'Frans';

  @override
  String get german => 'Duits';

  @override
  String get italian => 'Italiaans';

  @override
  String get portuguese => 'Portugees';

  @override
  String get dutch => 'Nederlands';

  @override
  String get russian => 'Russisch';

  @override
  String get chinese => 'Chinees';

  @override
  String get japanese => 'Japans';

  @override
  String get korean => 'Koreaans';

  @override
  String get arabic => 'Arabisch';

  @override
  String get hindi => 'Hindi';

  @override
  String get turkish => 'Turks';

  @override
  String get polish => 'Pools';

  @override
  String get ukrainian => 'Oekraïens';

  @override
  String get runAnotherAnalysis => 'Nog een analyse uitvoeren?';

  @override
  String get becomeMemberTitle =>
      'Word lid om het volledige analyserapport te krijgen';

  @override
  String get becomeMemberSubtitle =>
      'Kies het toegangsniveau dat past bij de gesprekken en rapporten die u wilt analyseren.';

  @override
  String get benefitAnalyzeSms => 'SMS-tekstberichten analyseren';

  @override
  String get benefitReportPreview => 'Een rapportvoorbeeld uitvoeren';

  @override
  String get benefitViewPartialReport =>
      'Ongeveer 25% van het rapport bekijken';

  @override
  String get benefitLockedDetails => 'Volledige rapportdetails vergrendeld';

  @override
  String get currentFreeAccess => 'Huidige gratis toegang';

  @override
  String get benefitUnlockCurrentReport => 'Dit volledige rapport ontgrendelen';

  @override
  String get benefitNoSubscription => 'Geen abonnement';

  @override
  String get benefitSavePrintShareThis =>
      'Dit rapport opslaan, afdrukken en delen';

  @override
  String get benefitBestSingleAnalysis =>
      'Ideaal als u maar één analyse nodig heeft';

  @override
  String get unlockThisReportShort => 'Dit rapport ontgrendelen';

  @override
  String get benefitFullSmsReport => 'Volledig SMS-analyserapport';

  @override
  String get benefitSavePrintSharePdf =>
      'PDF-rapporten opslaan, afdrukken en delen';

  @override
  String get benefitTenReports => '10 rapporten per periode van 24 uur';

  @override
  String get benefitBestTextReview =>
      'Ideaal voor het beoordelen van relaties via sms';

  @override
  String get benefitDateRangeFilter => 'Analyse filteren op datumbereik';

  @override
  String get signUpStandard => 'Aanmelden voor Standaard-lidmaatschap';

  @override
  String get benefitAddToStandard => 'Toevoegen aan Standaard-lidmaatschap';

  @override
  String get benefitAnalyzeDiscord => 'Discord-serverchats analyseren';

  @override
  String get benefitRequiresBot => 'Vereist botinstallatie';

  @override
  String get benefitBestGamers => 'Ideaal voor gamers en Discord-communities';

  @override
  String get addDiscordAnalysis => 'Discord-analyse toevoegen';

  @override
  String get requiresStandardMembership => 'Vereist Standaard-lidmaatschap';

  @override
  String get comingSoon => 'Binnenkort';

  @override
  String get comingSoonWithNextUpdate => 'Binnenkort met de volgende update:';

  @override
  String get proMembershipTier => 'Pro-lidmaatschapsniveau - \$19.99';

  @override
  String get proPlusMembershipTier => 'Pro-Plus-lidmaatschapsniveau - \$24.99';

  @override
  String get proGetsLabel => 'Pro omvat:';

  @override
  String get proGetsDescription =>
      'Analyseer chatgesprekken van alle andere populaire berichten- en socialemediaplatforms zoals:';

  @override
  String get proPlatformsList =>
      'LinkedIn, WhatsApp, Instagram, Facebook Messenger, Telegram, X (Twitter), e-mail en agenda';

  @override
  String get proPlusGetsLabel => 'Pro-Plus omvat:';

  @override
  String get proPlusGetsDescription =>
      'Alles van Pro, plus de Discord-add-on tegen een gereduceerde prijs.';

  @override
  String get purchaseSuccessfulUnlocked =>
      'Aankoop geslaagd! Rapport ontgrendeld.';

  @override
  String get purchaseFailed => 'Aankoop mislukt. Probeer het opnieuw.';

  @override
  String get membershipActivated => 'Lidmaatschap geactiveerd!';

  @override
  String get dateRangeFilter => 'Datumbereik Filter';

  @override
  String get dateRangeOptional => '(optioneel)';

  @override
  String get startDate => 'Startdatum';

  @override
  String get endDate => 'Einddatum';

  @override
  String get clear => 'Wissen';

  @override
  String get dateRangeRequiresMembership =>
      'Vereist Standard-lidmaatschap of hoger';

  @override
  String selectUpToCount(Object current, Object max) {
    return 'Selecteer tot $max. Huidig: $current';
  }

  @override
  String get clearSelections => 'Selecties wissen';

  @override
  String analyzeRandomMetrics(Object count) {
    return 'Analyseer $count willekeurige metrieken';
  }

  @override
  String get saveSelections => 'Selecties Opslaan';

  @override
  String get loadSelections => 'Selecties Laden';

  @override
  String get saveMetricListName => 'Metriek-lijst Opslaan';

  @override
  String get enterListName => 'Voer een naam in voor deze metriek-lijst:';

  @override
  String get chooseSavedMetrics => 'Kies de opgeslagen metriek-lijst:';

  @override
  String get noSavedLists =>
      'Geen opgeslagen metriek-lijsten om te laden op dit moment.';

  @override
  String get metricListSaved => 'Metriek-lijst succesvol opgeslagen.';

  @override
  String get metricListLoaded => 'Metriek-lijst succesvol geladen.';

  @override
  String get filters => 'Filters';

  @override
  String get sortBy => 'Sorteren op:';

  @override
  String get recent => 'Recent';

  @override
  String get name => 'Naam';

  @override
  String get count => 'Aantal';

  @override
  String get namedOnly => 'Alleen met naam';

  @override
  String get minMessages => 'Min. berichten:';

  @override
  String get minimumMessages => 'Minimum aan berichten:';

  @override
  String get executiveSummary => 'Samenvatting';

  @override
  String get metricScores => 'Metriek Scores';

  @override
  String get contextualEvidenceExamples => 'Contextuele Voorbeelden';

  @override
  String get neutralSynthesis => 'Neutrale Synthese';

  @override
  String analysisOfSender(Object sender) {
    return 'Analyse van $sender (Afzender)';
  }

  @override
  String analysisOfReceiver(Object receiver) {
    return 'Analyse van $receiver (Ontvanger)';
  }

  @override
  String get finalConclusion => 'Eindconclusie';

  @override
  String get metric_1_name => 'Minachting';

  @override
  String get metric_1_description =>
      'Zoekt naar superioriteit, walging, spot, oprol-ogen taal of beledigingen die één partner onder de andere plaatsen.';

  @override
  String get metric_2_name => 'Defensiviteit';

  @override
  String get metric_2_description =>
      'Volgt reflexieve zelfbescherming, tegenaanvallen, excuses en weigering om de klacht van de andere persoon te overwegen.';

  @override
  String get metric_3_name => 'Blokkeren';

  @override
  String get metric_3_description =>
      'Identificeert afsluiting, terugtrekking, negeren, weigering om te antwoorden of beëindigen van gesprekken om betrokkenheid te vermijden.';

  @override
  String get metric_4_name => 'Kritiek';

  @override
  String get metric_4_description =>
      'Detecteert aanvallen op karakter of persoonlijkheid in plaats van specifiek gedrag, behoeften of incidenten.';

  @override
  String get metric_5_name => 'Gaslighting Indicatoren';

  @override
  String get metric_5_description =>
      'Markeert pogingen om iemand te laten twijfelen aan geheugen, waarneming, geestelijke gezondheid of legitimiteit van hun ervaring.';

  @override
  String get metric_6_name => 'Schuldverschuiving';

  @override
  String get metric_6_description =>
      'Meet of verantwoordelijkheid wordt omgeleid naar de andere partner in plaats van direct erkend te worden.';

  @override
  String get metric_7_name => 'Escalatiepatroon';

  @override
  String get metric_7_description =>
      'Evalueert of toon, beschuldigingen, intensiteit of dreigingen toenemen in plaats van naar oplossing te bewegen.';

  @override
  String get metric_8_name => 'Herkenning van Reparatiepogingen';

  @override
  String get metric_8_description =>
      'Controleert of excuses, humor, pauzes, geruststelling of vredesaanbiedingen worden opgemerkt en geaccepteerd.';

  @override
  String get metric_9_name => 'Verantwoordingsbesef Taal';

  @override
  String get metric_9_description =>
      'Zoekt naar duidelijke eigendom van schade, specifieke verantwoordelijkheid en bereidheid om gedrag te veranderen.';

  @override
  String get metric_10_name => 'Grenzenrespect';

  @override
  String get metric_10_description =>
      'Beoordeelt of gestelde grenzen rond tijd, privacy, lichaam, emoties of contact worden geëerd.';

  @override
  String get metric_11_name => 'Coercieve Controle Indicatoren';

  @override
  String get metric_11_description =>
      'Markeert patronen van intimidatie, beperking, monitoring, afhankelijkheid of controle over keuzes en bewegingen.';

  @override
  String get metric_12_name => 'Dreigende Taal';

  @override
  String get metric_12_description =>
      'Identificeert expliciete of impliciete dreigingen die veiligheid, verlating, blootstelling, vergelding of straf betreffen.';

  @override
  String get metric_13_name => 'Afwijzing';

  @override
  String get metric_13_description =>
      'Detecteert wegwuiven van zorgen, behandelen van behoeften als onbelangrijk of weigeren om nood serieus te nemen.';

  @override
  String get metric_14_name => 'Ongeldigverklaring';

  @override
  String get metric_14_description =>
      'Meet ontkenning, spot of correctie van de emoties van een andere persoon in plaats van ze te erkennen.';

  @override
  String get metric_15_name => 'Empathie Expressie';

  @override
  String get metric_15_description =>
      'Zoekt naar perspectiefneming, zorg, emotionele erkenning en bezorgdheid om de ervaring van de andere persoon.';

  @override
  String get metric_16_name => 'Reciprociteit';

  @override
  String get metric_16_description =>
      'Beoordeelt of aandacht, inspanning, excuses, compromis en emotionele ondersteuning in beide richtingen stromen.';

  @override
  String get metric_17_name => 'Emotionele Regulatie';

  @override
  String get metric_17_description =>
      'Evalueert vermogen om gegrond te blijven, te pauzeren, zichzelf te kalmeren en te communiceren zonder explosieve reactiviteit.';

  @override
  String get metric_18_name => 'Sarcasme Gebruikt als Schade';

  @override
  String get metric_18_description =>
      'Markeert sarcasme gebruikt om te vernederen, straffen, vernederen of vijandigheid te verbergen als humor.';

  @override
  String get metric_19_name => 'Namen noemen';

  @override
  String get metric_19_description =>
      'Identificeert denigrerende labels, beledigingen, grove taal gericht op de persoon of identiteitsgebaseerde aanvallen.';

  @override
  String get metric_20_name => 'Stiltebehandelingspatroon';

  @override
  String get metric_20_description =>
      'Volgt stilte gebruikt als straf, controle, vermijding of terugtrekking van verbinding.';

  @override
  String get metric_21_name => 'Jaloezie Kader';

  @override
  String get metric_21_description =>
      'Evalueert verdenking, bezitterigheid, beschuldigingen of jaloezie gepresenteerd als bewijs van zorg.';

  @override
  String get metric_22_name => 'Isolatiedruk';

  @override
  String get metric_22_description =>
      'Markeert inspanningen om een partner te scheiden van vrienden, familie, ondersteuningssystemen of externe perspectieven.';

  @override
  String get metric_23_name => 'Financiële Controle Indicatoren';

  @override
  String get metric_23_description =>
      'Zoekt naar controle van geld, uitgaven, werkgelegenheid, toegang tot rekeningen of financiële onafhankelijkheid.';

  @override
  String get metric_24_name => 'Privacy Schending Indicatoren';

  @override
  String get metric_24_description =>
      'Detecteert snuffelen, wachtwoordeisen, apparaatcontroles, locatietracking of privacyschendingen.';

  @override
  String get metric_25_name => 'Specifiekheid van Excuses';

  @override
  String get metric_25_description =>
      'Meet of excuses de exacte schade, impact en toekomstige correctie noemen in plaats van vaag te blijven.';

  @override
  String get metric_26_name => 'Vergevingsdruk';

  @override
  String get metric_26_description =>
      'Markeert eisen om door te gaan, snel te vergeven of te stoppen met bespreken van schade voordat reparatie plaatsvindt.';

  @override
  String get metric_27_name => 'Minimalisering';

  @override
  String get metric_27_description =>
      'Detecteert bagatelliseren van schade, noemen van serieuze zorgen dramatisch of verminderen van impact om verantwoordelijkheid te vermijden.';

  @override
  String get metric_28_name => 'Projectie';

  @override
  String get metric_28_description =>
      'Zoekt naar beschuldigingen die het eigen gedrag, motieven of onopgeloste gevoelens van de spreker weerspiegelen.';

  @override
  String get metric_29_name => 'Onderbrekingspatroon';

  @override
  String get metric_29_description =>
      'Volgt afkappen, over iemand heen praten, weigeren te voltooien of controleren van gespreksbeurten.';

  @override
  String get metric_30_name => 'Onderwerp Afleiding';

  @override
  String get metric_30_description =>
      'Identificeert veranderen van onderwerp, brengen van niet-gerelateerde problemen of vermijden van de centrale zorg.';

  @override
  String get metric_31_name => 'Resolutieoriëntatie';

  @override
  String get metric_31_description =>
      'Meet of berichten gericht zijn op oplossingen, duidelijkheid, overeenkomsten en volgende stappen.';

  @override
  String get metric_32_name => 'Mutuele Probleemoplossing';

  @override
  String get metric_32_description =>
      'Beoordeelt collaboratieve taal, gedeelde verantwoordelijkheid, brainstorming en bereidheid om werkbare compromissen te vinden.';

  @override
  String get metric_33_name => 'Emotionele Overstroming';

  @override
  String get metric_33_description =>
      'Detecteert overweldiging, paniek, afsluiting, spiraal of onvermogen om te verwerken tijdens conflict.';

  @override
  String get metric_34_name => 'Angstreactie Signalen';

  @override
  String get metric_34_description =>
      'Zoekt naar sussen, voorzichtig woordgebruik, angst, veiligheidszorgen of angst voor de reactie van de partner.';

  @override
  String get metric_35_name => 'Consistentie van Claims';

  @override
  String get metric_35_description =>
      'Evalueert of verslagen intern consistent blijven over berichten en tijd heen.';

  @override
  String get metric_36_name => 'Evidence-Based Herinnering';

  @override
  String get metric_36_description =>
      'Controleert of claims verwijzen naar concrete gebeurtenissen, citaten, tijdlijnen of observeerbaar gedrag.';

  @override
  String get metric_37_name => 'Vraag Terugtrekingspatroon';

  @override
  String get metric_37_description =>
      'Volgt één partner die antwoorden of verandering zoekt terwijl de andere vermijdt, afsluit of weggaat.';

  @override
  String get metric_38_name => 'Macht Onbalans Indicatoren';

  @override
  String get metric_38_description =>
      'Markeert ongelijke beslissingsmacht, angst voor gevolgen, afhankelijkheid, intimidatie of unilaterale controle.';

  @override
  String get metric_39_name => 'Respectvol Oneens';

  @override
  String get metric_39_description =>
      'Meet of conflict waardigheid, nieuwsgierigheid en oneenigheid behoudt zonder degradatie.';

  @override
  String get metric_40_name => 'Breuk en Reparatie Cyclus';

  @override
  String get metric_40_description =>
      'Beoordeelt of conflict wordt gevolgd door erkenning, herverbinding en daadwerkelijke reparatie.';

  @override
  String get metric_41_name => 'Genegenheid Terugtrekking';

  @override
  String get metric_41_description =>
      'Detecteert liefde, warmte, seks, aandacht of geruststelling die worden ingehouden als straf of hefboom.';

  @override
  String get metric_42_name => 'Openbare Vernediging Referenties';

  @override
  String get metric_42_description =>
      'Markeert dreigingen, grappen of acties die de partner voor anderen in verlegenheid brengen.';

  @override
  String get metric_43_name => 'Stof-Gelinkte Conflict Signalen';

  @override
  String get metric_43_description =>
      'Zoekt naar alcohol- of druggebruik gekoppeld aan agressie, onbetrouwbaarheid, conflict of schade.';

  @override
  String get metric_44_name => 'Ouderlijk Conflictdruk';

  @override
  String get metric_44_description =>
      'Identificeert kinderen, voogdij, ouderlijke rollen of ouderlijke schuld gebruikt in conflict of hefboom.';

  @override
  String get metric_45_name => 'Seksuele Grenzenrespect';

  @override
  String get metric_45_description =>
      'Beoordeelt respect voor toestemming, druk, weigering, comfort, timing en seksuele autonomie.';

  @override
  String get metric_46_name => 'Digitale Intimidatie Indicatoren';

  @override
  String get metric_46_description =>
      'Volgt herhaalde ongewenste berichten, spam-oproepen, online druk, surveillance of platform-gebaseerde intimidatie.';

  @override
  String get metric_47_name => 'Monitoring of Surveillance Taal';

  @override
  String get metric_47_description =>
      'Markeert controleren van verblijfplaats, eisen van bewijs, volgen van gedrag of constante verificatie.';

  @override
  String get metric_48_name => 'Toekomstoriëntatie';

  @override
  String get metric_48_description =>
      'Meet of partners toekomstige verbetering, verplichtingen, plannen of constructieve richting bespreken.';

  @override
  String get metric_49_name => 'Veiligheidsplanning Signalen';

  @override
  String get metric_49_description =>
      'Zoekt naar pogingen om hulp te zoeken, afstand te creëren, schade te documenteren of te plannen voor fysieke/emotionele veiligheid.';

  @override
  String get metric_50_name => 'Mutuele De-escalatie Pogingen';

  @override
  String get metric_50_description =>
      'Volgt pauzes, kalmerende taal, zachtere toon, timeouts en pogingen van beide partners om intensiteit te verminderen.';

  @override
  String get metric_51_name => 'Veilige Hechting Signalen';

  @override
  String get metric_51_description =>
      'Identificeert vertrouwen, directe geruststelling, emotionele beschikbaarheid en comfort met nabijheid en onafhankelijkheid.';

  @override
  String get metric_52_name => 'Angstige Hechting Activatie';

  @override
  String get metric_52_description =>
      'Markeert protestgedrag, dringende geruststellingsbehoeften, verlatingsangst en verhoogde gevoeligheid voor afstand.';

  @override
  String get metric_53_name => 'Vermijdende Hechting Afstand';

  @override
  String get metric_53_description =>
      'Detecteert emotionele minimalisering, onafhankelijkheidsverdedigingen, terugtrekking uit kwetsbaarheid of ongemak met behoeften.';

  @override
  String get metric_54_name => 'Gedesorganiseerde Hechting Signalen';

  @override
  String get metric_54_description =>
      'Zoekt naar nadering-vermijd cycli, angst gemengd met behoefte, chaotische reacties of verwarrende intimiteitspatronen.';

  @override
  String get metric_55_name => 'Emotionele Biedingen en Reacties';

  @override
  String get metric_55_description =>
      'Meet uitnodigingen voor aandacht, comfort of verbinding en of ze worden geaccepteerd of gemist.';

  @override
  String get metric_56_name => 'Afkeren van Verbinding';

  @override
  String get metric_56_description =>
      'Markeert negeren, afwijzen of falen om te reageren op biedingen voor nabijheid of ondersteuning.';

  @override
  String get metric_57_name => 'Tegen Verbinding Keren';

  @override
  String get metric_57_description =>
      'Detecteert vijandige of bestraffende reacties op pogingen tot genegenheid, kwetsbaarheid of reparatie.';

  @override
  String get metric_58_name => 'Positieve Sentiment Overschrijving';

  @override
  String get metric_58_description =>
      'Zoekt naar gulheid, voordeel van de twijfel, genegenheid en interpreteren van conflict door zorg.';

  @override
  String get metric_59_name => 'Negatieve Sentiment Overschrijving';

  @override
  String get metric_59_description =>
      'Markeert aannemen van slechte bedoelingen, negatief interpreteren van neutrale berichten en aanhoudend vijandig kader.';

  @override
  String get metric_60_name => 'Hard Startpatroon';

  @override
  String get metric_60_description =>
      'Identificeert gesprekken die beginnen met beschuldiging, aanval, minachting of schuld in plaats van een verzoek.';

  @override
  String get metric_61_name => 'Zacht Startpatroon';

  @override
  String get metric_61_description =>
      'Zoekt naar zachte openingen met behulp van gevoelens, behoeften, specifieke verzoeken en niet-beschuldigende taal.';

  @override
  String get metric_62_name => 'Fysiologische Zelfkalmering';

  @override
  String get metric_62_description =>
      'Beoordeelt pogingen om te pauzeren, te ademen, ruimte te nemen of het lichaam te reguleren voordat conflict wordt voortgezet.';

  @override
  String get metric_63_name => 'Conflictvermijdingspatroon';

  @override
  String get metric_63_description =>
      'Volgt herhaalde vermijding van noodzakelijke onderwerpen, ongemak, oneenigheid of emotionele eerlijkheid.';

  @override
  String get metric_64_name => 'Volatile Conflictstijl';

  @override
  String get metric_64_description =>
      'Detecteert conflict met hoge intensiteit met directe expressie die nog steeds betrokkenheid en reparatie kan omvatten.';

  @override
  String get metric_65_name => 'Validerende Conflictstijl';

  @override
  String get metric_65_description =>
      'Meet of partners het perspectief van elkaar erkennen terwijl ze oneens zijn.';

  @override
  String get metric_66_name => 'Vijandige Conflictstijl';

  @override
  String get metric_66_description =>
      'Markeert frequente kritiek, minachting, defensiviteit, aanvallen en adversair kader.';

  @override
  String get metric_67_name => 'Vijandig-Detacheerd Patroon';

  @override
  String get metric_67_description =>
      'Identificeert koude vijandigheid, emotionele desengagement, minachting en lage reparatiemotivatie.';

  @override
  String get metric_68_name => 'Compromisbereidheid';

  @override
  String get metric_68_description =>
      'Zoekt naar flexibiliteit, onderhandeling, middenwegvoorstellen en offers die beide behoeften respecteren.';

  @override
  String get metric_69_name => 'Invloed Acceptatie';

  @override
  String get metric_69_description =>
      'Meet openheid om beïnvloed te worden door de gevoelens, behoeften of het perspectief van de partner.';

  @override
  String get metric_70_name => 'Vastgelopen Conflict Signalen';

  @override
  String get metric_70_description =>
      'Markeert herhaalde onopgeloste problemen gekoppeld aan waarden, dromen, identiteit of chronische incompatibiliteit.';

  @override
  String get metric_71_name => 'Oplosbaar Probleem Kader';

  @override
  String get metric_71_description =>
      'Detecteert praktische, concrete probleemdefinities die kunnen leiden tot specifieke overeenkomsten.';

  @override
  String get metric_72_name => 'Gedeelde Betekenis Referenties';

  @override
  String get metric_72_description =>
      'Zoekt naar waarden, rituelen, doelen, herinneringen of identiteitstaal die een gedeeld relatieverhaal creëert.';

  @override
  String get metric_73_name => 'Liefdekaart Bewustzijn';

  @override
  String get metric_73_description =>
      'Beoordeelt kennis van de binnenwereld, stressoren, voorkeuren, angsten en dagelijks leven van de partner.';

  @override
  String get metric_74_name => 'Genegenheid en Bewondering';

  @override
  String get metric_74_description =>
      'Identificeert waardering, respect, warmte, complimenten, dankbaarheid en positieve beschouwing.';

  @override
  String get metric_75_name => 'Emotionele Arbeid Onbalans';

  @override
  String get metric_75_description =>
      'Markeert één partner die onevenredige planning, kalmering, herinnering, uitleg of relatieonderhoud draagt.';

  @override
  String get metric_76_name => 'Mentale Last Afwijzing';

  @override
  String get metric_76_description =>
      'Detecteert minimaliseren van onzichtbare planning, huishoudelijke coördinatie, planning of verantwoordelijkheidsvolgen.';

  @override
  String get metric_77_name => 'Gewapende Onbekwaamheid Signalen';

  @override
  String get metric_77_description =>
      'Zoekt naar claimen van onvermogen, verwarring of hulpeloosheid om eerlijke verantwoordelijkheid te vermijden.';

  @override
  String get metric_78_name => 'Trauma Trigger Gevoeligheid';

  @override
  String get metric_78_description =>
      'Meet bewustzijn van triggers, trauma-reacties en voorzichtig omgaan met kwetsbare onderwerpen.';

  @override
  String get metric_79_name => 'Hypervigilantie Signalen';

  @override
  String get metric_79_description =>
      'Markeert scannen naar gevaar, over-monitoring van toon, angst voor fouten of constante emotionele alertheid.';

  @override
  String get metric_80_name => 'Verlatingsangst Taal';

  @override
  String get metric_80_description =>
      'Detecteert angst om achtergelaten, vervangen, genegeerd, weggegooid of emotioneel verlaten te worden.';

  @override
  String get metric_81_name => 'Geruststelling Zoekend Patroon';

  @override
  String get metric_81_description =>
      'Volgt herhaalde verzoeken om bewijs van liefde, toewijding, veiligheid of voortgezet belang.';

  @override
  String get metric_82_name => 'Achtervolger-Distanciërder Cyclus';

  @override
  String get metric_82_description =>
      'Identificeert één partner die achtervolging voor nabijheid escaleert terwijl de andere afstand vergroot.';

  @override
  String get metric_83_name => 'Wrok Accumulatie';

  @override
  String get metric_83_description =>
      'Zoekt naar opgeslagen grieven, herhaalde verledenreferenties, bitterheid en onopgeloste emotionele schuld.';

  @override
  String get metric_84_name => 'Puntentellen Gedrag';

  @override
  String get metric_84_description =>
      'Markeert transactioneel tellen van fouten, gunsten, offers of fouten om hefboomwerking te krijgen.';

  @override
  String get metric_85_name => 'Conditionele Genegenheid';

  @override
  String get metric_85_description =>
      'Detecteert liefde, goedkeuring, toegang of warmte alleen aangeboden wanneer naleving wordt bereikt.';

  @override
  String get metric_86_name => 'Love Bombing Indicatoren';

  @override
  String get metric_86_description =>
      'Markeert intense genegenheid, beloften, druk of idealisatie gebruikt om hechting of controle te versnellen.';

  @override
  String get metric_87_name => 'Hoovering Pogingen';

  @override
  String get metric_87_description =>
      'Identificeert pogingen om iemand terug te trekken door schuld, nostalgie, beloften, crises of plotselinge genegenheid.';

  @override
  String get metric_88_name => 'DARVO Patroon';

  @override
  String get metric_88_description =>
      'Detecteert ontkennen, aanvallen en omkeren van slachtoffer-dader wanneer geconfronteerd met schade.';

  @override
  String get metric_89_name => 'Slachtofferhouding Patroon';

  @override
  String get metric_89_description =>
      'Markeert terugkerende zelfslachtoffering die verantwoordelijkheid vermijdt of aandacht afleidt van veroorzaakte schade.';

  @override
  String get metric_90_name => 'Morele Superioriteit Kader';

  @override
  String get metric_90_description =>
      'Zoekt naar rechtvaardigheid, zuiverheidsclaims of ethische superioriteit gebruikt om conflict te domineren.';

  @override
  String get metric_91_name => 'Karaktermoord';

  @override
  String get metric_91_description =>
      'Detecteert brede aanvallen op identiteit, integriteit, geestelijke gezondheid of waarde in plaats van specifiek gedrag.';

  @override
  String get metric_92_name => 'Triangulatie Indicatoren';

  @override
  String get metric_92_description =>
      'Markeert betrekken van derden bij conflict om te drukken, vergelijken, valideren of destabiliseren van de partner.';

  @override
  String get metric_93_name => 'Sociale Vergelijkingsdruk';

  @override
  String get metric_93_description =>
      'Zoekt naar vergelijkingen met exen, vrienden, andere koppels of idealen gebruikt om te schamen of te dwingen.';

  @override
  String get metric_94_name => 'Autonomie Ondersteuning';

  @override
  String get metric_94_description =>
      'Meet respect voor onafhankelijke keuzes, vriendschappen, doelen, grenzen en persoonlijke agency.';

  @override
  String get metric_95_name => 'Toestemming en Keuze Respect';

  @override
  String get metric_95_description =>
      'Beoordeelt of beslissingen vrij worden genomen zonder druk, schuld, dreigingen of manipulatie.';

  @override
  String get metric_96_name => 'Collaboratieve Planning';

  @override
  String get metric_96_description =>
      'Zoekt naar gedeelde planning, gezamenlijke beslissingen, gecoördineerde verantwoordelijkheden en praktische follow-through.';

  @override
  String get metric_97_name => 'Reparatie Follow-Through';

  @override
  String get metric_97_description =>
      'Meet of beloofde veranderingen later worden weerspiegeld in gedrag, niet alleen in woorden.';

  @override
  String get metric_98_name => 'Veranderd Gedrag Bewijs';

  @override
  String get metric_98_description =>
      'Controleert observeerbare, herhaalde acties die leren, aanpassing of verminderd schadelijk gedrag tonen.';

  @override
  String get metric_99_name => 'Emotionele Veiligheid Taal';

  @override
  String get metric_99_description =>
      'Identificeert taal die eerlijkheid uitnodigt, angst verlaagt, waardigheid beschermt en veilige expressie geruststelt.';

  @override
  String get metric_100_name => 'Relatie Ambivalentie';

  @override
  String get metric_100_description =>
      'Detecteert onzekerheid, gemengde toewijding, duw-trek berichten of onduidelijke wens om door te gaan.';

  @override
  String get unableToOpenConversations => 'Kan gesprekken niet openen';

  @override
  String get unableToOpenConversationsBody =>
      'Er is een fout opgetreden bij het laden van uw gesprekken. Probeer het opnieuw.';

  @override
  String get unableToLoadConversationsBody =>
      'Kan gesprekken niet laden. Controleer uw machtigingen en probeer het opnieuw.';

  @override
  String get errorLoadingConversationsBody =>
      'Fout bij het laden van gesprekken. Probeer het opnieuw.';

  @override
  String get smsPermissionRequired => 'SMS-machtiging vereist';

  @override
  String get smsPermissionRequiredBody =>
      'Om SMS-gesprekken te analyseren, hebben we toestemming nodig om uw berichten te lezen. Uw privacy is belangrijk — berichten worden alleen lokaal geanalyseerd en nooit op onze servers opgeslagen.';

  @override
  String get grantSmsPermission => 'SMS-machtiging verlenen';

  @override
  String get noSmsConversationsFound => 'Geen SMS-gesprekken gevonden';

  @override
  String get noConversationsMatchSearch =>
      'Geen gesprekken komen overeen met uw zoekopdracht';

  @override
  String get noSmsMessagesOnDevice =>
      'U heeft geen SMS-berichten op dit apparaat';

  @override
  String get tryDifferentSearch => 'Probeer een andere zoekterm';

  @override
  String get clearSearch => 'Zoekopdracht wissen';

  @override
  String selectedFile(String filename) {
    return 'Geselecteerd: $filename';
  }

  @override
  String get invalidFile => 'Ongeldig bestand';

  @override
  String get fileImport => 'Bestand importeren';

  @override
  String get fileImportNotImplemented =>
      'Bestandsanalyse is nog niet geïmplementeerd voor dit bestandstype.';

  @override
  String get errorPickingFile =>
      'Kan het bestand niet openen. Probeer het opnieuw.';

  @override
  String get readyToCapture => 'Klaar om vast te leggen';

  @override
  String get readyToCaptureBody =>
      'Ga nu naar de Berichten-app en begin met het maken van screenshots.\n\nKeer terug naar deze app wanneer u klaar bent en tik op \"Voltooien & Verwerken\".';

  @override
  String get noScreenshotsToProcess => 'Geen screenshots om te verwerken.';

  @override
  String processingScreenshot(int current, int total) {
    return 'Screenshot $current van $total verwerken...';
  }

  @override
  String get noMessagesFound => 'Geen berichten gevonden';

  @override
  String get noMessagesFoundBody =>
      'Kan geen berichten uit de screenshots halen.\n\nZorg ervoor dat de screenshots het gesprek duidelijk tonen.';

  @override
  String loadedMessages(int count) {
    return '$count berichten geladen uit screenshots';
  }

  @override
  String get processingError => 'Verwerkingsfout';

  @override
  String get processingErrorBody =>
      'Fout bij het verwerken van screenshots. Probeer het opnieuw.';

  @override
  String metricListSavedAs(String name) {
    return 'Uw selecties zijn opgeslagen als \"$name\".';
  }

  @override
  String metricListLoadedName(String name) {
    return 'De selecties \"$name\" zijn opgehaald en toegepast.';
  }

  @override
  String conversationLoaded(int count, String name) {
    return '$count berichten geladen van $name';
  }

  @override
  String get loadButton => 'Laden';

  @override
  String get photoPermissionRequired =>
      'Fotobibliotheek-machtiging is vereist om screenshots te detecteren.';

  @override
  String get initializingConnection => 'Beveiligde verbinding initialiseren...';

  @override
  String get configurationRequired => 'Configuratie vereist';

  @override
  String get goBack => 'Terug';

  @override
  String get enableDateRangeFiltering => 'Datumbereikfiltering inschakelen';

  @override
  String get clearSelectedDateRange => 'Geselecteerd datumbereik wissen';

  @override
  String get largeThreadNoticeTitle => 'KENNISGEVING AAN GEBRUIKER';

  @override
  String get largeThreadNoticeBody =>
      'Bij het verwerken van uitzonderlijk grote tekstthreads kunnen sommige laadschermen in deze app soms meer dan anderhalf minuut duren.\n\nDe app hangt niet. Als u een draaiende statusindicator ziet, laadt de app nog steeds.\n\nWees geduldig in deze gevallen, aangezien de laadtijd langer dan normaal kan zijn in vergelijking met andere apps, vooral bij een grote dataset zoals een thread met 50.000 berichten.';

  @override
  String get neverShowThisAgain => 'Dit bericht niet meer weergeven';

  @override
  String loadingConversationWith(String name) {
    return 'Gesprek laden\nmet $name…';
  }

  @override
  String get iosCaptureInstructions =>
      '1. Open de Berichten-app en selecteer het gesprek\n2. Scroll naar het oudste bericht dat u wilt analyseren\n3. Tik hieronder op \"Opname starten\"\n4. Maak screenshots terwijl u door het gesprek scrolt\n5. Wanneer u klaar bent, tik op \"Voltooien & Verwerken\"';

  @override
  String get howToCaptureIosMessages => 'iOS-berichten vastleggen';

  @override
  String get deepSeekApiKey => 'DeepSeek API-sleutel';

  @override
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis =>
      'Voer uw DeepSeek API-sleutel in om AI-analyse in te schakelen.';

  @override
  String get getYourApiKeyFrom =>
      'Haal uw API-sleutel op van: https://platform.deepseek.com';

  @override
  String get apiKey => 'API-sleutel';

  @override
  String get skPlaceholder => 'sk-...';

  @override
  String get yourApiKeyIsStoredSecurely =>
      'Uw API-sleutel wordt veilig op uw apparaat opgeslagen en nooit gedeeld.';

  @override
  String get pleaseEnterApiKey => 'Voer een API-sleutel in';

  @override
  String get apiKeySavedSuccessfully => 'API-sleutel succesvol opgeslagen!';

  @override
  String get pleaseBePatientLongerTextThreads =>
      'Wees geduldig, langere tekstthread-datasets duren behoorlijk lang om te laden';

  @override
  String get almostThereBigOne =>
      'Bijna klaar, Wow, dit moet groot zijn geweest';

  @override
  String get pleaseBePatientLargeDatasets =>
      'Wees geduldig, grote datasets kunnen leiden tot laadtijden van meer dan anderhalve minuut';

  @override
  String continuingToLoadMassiveThread(String name) {
    return 'Doorgaan met laden van de massieve thread met $name…';
  }

  @override
  String get noMessagesInDateRange =>
      'Geen berichten gevonden in het geselecteerde datumbereik. Selecteer andere datums of wis het datumfilter.';

  @override
  String get purchaseCustomMetricTileTitle => 'Aangepaste Meting Kopen';

  @override
  String get purchaseCustomMetricTileDescription =>
      'Voor een eenmalig bedrag van \$4.99 kunt u een aangepaste metingsnaam en definitie invoeren die permanent wordt opgeslagen naast uw andere metingen voor gebruik in toekomstige analyses. Koop onbeperkte aangepaste metingen.';

  @override
  String get purchaseCustomMetricConfirmTitle => 'Aangepaste Meting Kopen';

  @override
  String get purchaseCustomMetricConfirmBody =>
      'Er wordt \$4.99 (eenmalig) in rekening gebracht om één aangepaste metingsslot te ontgrendelen.\n\nUw aangepaste metingsnaam en definitie zijn permanent en kunnen nooit meer worden gewijzigd zodra opgeslagen, dus kies zorgvuldig.';

  @override
  String get purchaseCustomMetricConfirmButton => 'Kopen — \$4.99';

  @override
  String get purchaseCustomMetricEnterNameTitle => 'Aangepaste Metingsnaam';

  @override
  String get purchaseCustomMetricEnterNamePrompt =>
      'Voer de naam in voor uw aangepaste meting:';

  @override
  String get purchaseCustomMetricNameHint => 'Metingsnaam';

  @override
  String get purchaseCustomMetricConfirmNameTitle => 'Metingsnaam Bevestigen';

  @override
  String get purchaseCustomMetricConfirmNameYouEntered =>
      'U heeft ingevoerd:\n\n';

  @override
  String get purchaseCustomMetricConfirmNameWarning =>
      '\n\n⚠️  Dit is DEFINITIEF en kan NOOIT worden gewijzigd.';

  @override
  String get purchaseCustomMetricReenterName => 'Oeps — Naam Opnieuw Invoeren';

  @override
  String get purchaseCustomMetricSaveName => 'OK — Metingsnaam Opslaan';

  @override
  String purchaseCustomMetricDefineTitleWithName(String name) {
    return 'Definiëren: $name';
  }

  @override
  String purchaseCustomMetricDefinePromptWithName(String name) {
    return 'Voer de betekenis in van uw aangepaste meting: $name';
  }

  @override
  String get purchaseCustomMetricMeaningHint =>
      'Beschrijf wat deze meting betekent, welk gedrag het zoekt en hoe het van toepassing is op relatie-dynamiek...';

  @override
  String get purchaseCustomMetricReenter => 'Oeps — Opnieuw Invoeren';

  @override
  String get purchaseCustomMetricSaveMeaning => 'OK — Betekenis Opslaan';

  @override
  String get purchaseCustomMetricPreviewTitle =>
      'Uw Aangepaste Meting Bekijken';

  @override
  String get purchaseCustomMetricPreviewSubtitle =>
      'Zo zal uw tegel eruitzien:';

  @override
  String get purchaseCustomMetricLastChanceWarning =>
      '⚠️  Dit is uw LAATSTE KANS om van gedachten te veranderen.\nEenmaal vastgelegd, zijn de naam en definitie permanent.';

  @override
  String get purchaseCustomMetricCancelEverything => 'Alles Annuleren';

  @override
  String get purchaseCustomMetricCommit => 'Toewijden aan Aangepaste Meting';

  @override
  String purchaseCustomMetricSuccess(String name) {
    return '✓ 「$name」is toegevoegd aan uw metingen! U kunt het nu selecteren voor analyse.';
  }

  @override
  String get purchaseCustomMetricProcessingTitle => 'Aankoop Verwerken...';

  @override
  String get purchaseCustomMetricProcessingBody =>
      'Wachten op winkelbevestiging.\nSluit de app alstublieft niet af.';

  @override
  String get next => 'Volgende';

  @override
  String get cancelNotReady => 'Annuleren — Ik Was Niet Klaar';

  @override
  String get packGoodLabel => 'De Goede';

  @override
  String get packBadLabel => 'De Slechte';

  @override
  String get packUglyLabel => 'De Lelijke';

  @override
  String get metric_good_1_name => 'Actieve luisteraanwijzingen';

  @override
  String get metric_good_1_description =>
      'Detecteert parafraseren, verduidelijkende vragen en getoond begrip van het perspectief van de partner in tekst.';

  @override
  String get metric_good_2_name => 'Waarderingsuiting';

  @override
  String get metric_good_2_description =>
      'Identificeert specifieke dankbaarheid, erkenning van inspanning en waardering voor positieve eigenschappen of acties van de partner.';

  @override
  String get metric_good_3_name => 'Bevestigingstaal';

  @override
  String get metric_good_3_description =>
      'Zoekt naar uitspraken die de gevoelens, ervaringen, waarde of het recht op behoeften van de partner valideren.';

  @override
  String get metric_good_4_name => 'Samenwerkende Toon';

  @override
  String get metric_good_4_description =>
      'Meet het gebruik van \'wij\', gezamenlijke probleemoplossende taal en het framen van kwesties als gedeelde uitdagingen om samen aan te pakken.';

  @override
  String get metric_good_5_name => 'Nieuwsgierigheid naar Partner';

  @override
  String get metric_good_5_description =>
      'Volgt het stellen van vragen over de gedachten, gevoelens, dag, voorkeuren of innerlijke ervaring van de partner.';

  @override
  String get metric_good_6_name => 'Kwetsbaarheid Uiten';

  @override
  String get metric_good_6_description =>
      'Identificeert het delen van angsten, onzekerheden, behoeften of emotionele waarheden zonder verdediging of verwijten.';

  @override
  String get metric_good_7_name => 'Humor als Verbinding';

  @override
  String get metric_good_7_description =>
      'Detecteert speels gedeeld lachen dat partners samenbrengt in plaats van te bespotten of kleineren.';

  @override
  String get metric_good_8_name => 'Geruststelling Bieden';

  @override
  String get metric_good_8_description =>
      'Zoekt naar proactieve uitspraken die troost, veiligheid of vertrouwen bieden aan de angstige partner.';

  @override
  String get metric_good_9_name => 'Complimentfrequentie';

  @override
  String get metric_good_9_description =>
      'Meet oprechte, specifieke complimenten over uiterlijk, karakter, vaardigheden of positieve acties.';

  @override
  String get metric_good_10_name => 'Emotionele Beschikbaarheid';

  @override
  String get metric_good_10_description =>
      'Beoordeelt de responsiviteit op de emotionele behoeften van de partner, aanwezigheid tijdens stress en bereidheid tot betrokkenheid.';

  @override
  String get metric_good_11_name => 'Dankbaarheidsgewoonte';

  @override
  String get metric_good_11_description =>
      'Identificeert regelmatige uitingen van dank voor kleine dingen, inspanning, aanwezigheid of steun.';

  @override
  String get metric_good_12_name => 'Ondersteunende Taal';

  @override
  String get metric_good_12_description =>
      'Volgt uitspraken die hulp, aanmoediging, vertrouwen in de capaciteiten van de partner of steun bieden.';

  @override
  String get metric_good_13_name => 'Zachte Meningsverschil';

  @override
  String get metric_good_13_description =>
      'Meet het vermogen om verschillende meningen te uiten met behoud van respect, nieuwsgierigheid en de relatie.';

  @override
  String get metric_good_14_name => 'Oprechtheid van Verontschuldiging';

  @override
  String get metric_good_14_description =>
      'Detecteert oprecht berouw, begrip van de impact en toewijding aan verandering zonder excuses.';

  @override
  String get metric_good_15_name => 'Vergevingsacceptatie';

  @override
  String get metric_good_15_description =>
      'Zoekt naar bereidheid om oude pijn los te laten, vooruit te gaan en vertrouwen te herstellen na herstel.';

  @override
  String get metric_good_16_name => 'Kwaliteitstijd Initiatie';

  @override
  String get metric_good_16_description =>
      'Identificeert aanbiedingen om gerichte tijd samen door te brengen, activiteiten te plannen of verbindingsmomenten te creëren.';

  @override
  String get metric_good_17_name => 'Fysieke Genegenheidssignalen';

  @override
  String get metric_good_17_description =>
      'Volgt vermeldingen van aanraking, knuffels, kussen of fysieke nabijheid als uitingen van zorg en intimiteit.';

  @override
  String get metric_good_18_name => 'Gedeelde Vreugde Herkenning';

  @override
  String get metric_good_18_description =>
      'Meet het vieren van successen, prestaties, geluk of goed nieuws van de partner met oprechte enthousiasme.';

  @override
  String get metric_good_19_name => 'Conflictoplossingsinspanning';

  @override
  String get metric_good_19_description =>
      'Identificeert pogingen om oplossingen te vinden, compromissen te sluiten of de vrede te herstellen na een meningsverschil.';

  @override
  String get metric_good_20_name => 'Geduld tonen';

  @override
  String get metric_good_20_description =>
      'Detecteert tolerantie voor het tempo, worstelingen, leercurve of emotionele verwerkingsbehoeften van de partner.';

  @override
  String get metric_good_21_name => 'Perspectief innemen taal';

  @override
  String get metric_good_21_description =>
      'Zoekt naar uitspraken die begrip tonen voor het standpunt, de context of de emotionele realiteit van de partner.';

  @override
  String get metric_good_22_name => 'Betrouwbaarheidssignalen';

  @override
  String get metric_good_22_description =>
      'Volgt het nakomen van beloftes, consistent aanwezig zijn en betrouwbaar zijn.';

  @override
  String get metric_good_23_name => 'Respect voor verschillen';

  @override
  String get metric_good_23_description =>
      'Meet acceptatie van de unieke eigenschappen, voorkeuren, meningen en manieren van zijn van de partner.';

  @override
  String get metric_good_24_name => 'Openheid voor feedback';

  @override
  String get metric_good_24_description =>
      'Identificeert ontvankelijkheid voor de zorgen van de partner, bereidheid om kritiek te horen en verlangen om te verbeteren.';

  @override
  String get metric_good_25_name => 'Validatie van emoties';

  @override
  String get metric_good_25_description =>
      'Detecteert erkenning dat de gevoelens van de partner echt, begrijpelijk en aandacht waard zijn.';

  @override
  String get metric_good_26_name => 'Aanmoedigingstaal';

  @override
  String get metric_good_26_description =>
      'Zoekt naar uitspraken die vertrouwen inspireren, actie motiveren of de doelen van de partner ondersteunen.';

  @override
  String get metric_good_27_name => 'Intieme onthulling';

  @override
  String get metric_good_27_description =>
      'Identificeert het delen van persoonlijke gedachten, dromen, angsten of geheimen die de emotionele band verdiepen.';

  @override
  String get metric_good_28_name => 'Afstemmingssignalen';

  @override
  String get metric_good_28_description =>
      'Meet hoe de partner stemming, behoeften of stress opmerkt zonder dat het expliciet wordt gezegd.';

  @override
  String get metric_good_29_name => 'Positieve Herkadering';

  @override
  String get metric_good_29_description =>
      'Detecteert het vinden van zilveren randjes, groeimogelijkheden of constructieve invalshoeken in moeilijke situaties.';

  @override
  String get metric_good_30_name => 'Toewijdingstaal';

  @override
  String get metric_good_30_description =>
      'Volgt uitingen van toewijding, langetermijndenken en investering in de toekomst van de relatie.';

  @override
  String get metric_good_31_name => 'Flexibiliteitstoon';

  @override
  String get metric_good_31_description =>
      'Identificeert bereidheid om plannen aan te passen, verwachtingen bij te stellen of de partner tegemoet te komen.';

  @override
  String get metric_good_32_name => 'Beschermende Taal';

  @override
  String get metric_good_32_description =>
      'Zoekt naar uitspraken die tonen dat de veiligheid, het welzijn en de belangen van de partner er diep toe doen.';

  @override
  String get metric_good_33_name => 'Mijlpaalviering';

  @override
  String get metric_good_33_description =>
      'Meet het erkennen van jubilea, prestaties of betekenisvolle momenten samen.';

  @override
  String get metric_good_34_name => 'Constructieve Feedback';

  @override
  String get metric_good_34_description =>
      'Detecteert het geven van suggesties voor verbetering die vriendelijk, specifiek en groeigericht zijn.';

  @override
  String get metric_good_35_name => 'Aanwezigheid bij Moeilijkheden';

  @override
  String get metric_good_35_description =>
      'Identificeert betrokken blijven wanneer de partner worstelt, rouwt of uitdagingen aangaat.';

  @override
  String get metric_good_36_name => 'Bewonderingsuiting';

  @override
  String get metric_good_36_description =>
      'Volgt oprechte bewondering voor het karakter, de kracht, intelligentie of veerkracht van de partner.';

  @override
  String get metric_good_37_name => 'Speelsheidsindicatoren';

  @override
  String get metric_good_37_description =>
      'Zoekt naar luchtige plagerijen, inside jokes of leuke interacties die de band versterken.';

  @override
  String get metric_good_38_name => 'Empathisch spiegelen';

  @override
  String get metric_good_38_description =>
      'Meet het terugkaatsen van de emoties van de partner om begrip en validatie te tonen.';

  @override
  String get metric_good_39_name => 'Acceptatietaal';

  @override
  String get metric_good_39_description =>
      'Detecteert het omarmen van de partner zoals hij/zij is, inclusief gebreken, zonder verandering te eisen.';

  @override
  String get metric_good_40_name => 'Ondersteunende aanwezigheid';

  @override
  String get metric_good_40_description =>
      'Identificeert er zijn zonder te repareren, troost bieden door te luisteren en gezelschap te houden.';

  @override
  String get metric_good_41_name => 'Oprechte interesse';

  @override
  String get metric_good_41_description =>
      'Volgt het stellen van vervolgvragen en het onthouden van details over het leven en de zorgen van de partner.';

  @override
  String get metric_good_42_name => 'Wederkerige inspanning';

  @override
  String get metric_good_42_description =>
      'Meet of beide partners gelijkelijk bijdragen aan emotioneel werk, planning en relatieonderhoud.';

  @override
  String get metric_good_43_name => 'Vergevingstaal';

  @override
  String get metric_good_43_description =>
      'Zoekt naar het loslaten van wrok, het geven van tweede kansen en het kiezen om verder te gaan na pijn.';

  @override
  String get metric_good_44_name => 'Wederzijds respect signalen';

  @override
  String get metric_good_44_description =>
      'Detecteert het behandelen van de partner als gelijke, het eren van hun mening en het waarderen van hun inbreng.';

  @override
  String get metric_good_45_name => 'Emotionele eerlijkheid';

  @override
  String get metric_good_45_description =>
      'Identificeert eerlijke uiting van gevoelens zonder manipulatie, overdrijving of strategisch achterhouden.';

  @override
  String get metric_good_46_name => 'Ondersteunend Luisteren';

  @override
  String get metric_good_46_description =>
      'Meet hoe de partner volledig tot uitdrukking kan komen zonder te onderbreken, te oordelen of direct problemen op te lossen.';

  @override
  String get metric_good_47_name => 'Liefdevolle Koosnaampjes';

  @override
  String get metric_good_47_description =>
      'Volgt het gebruik van liefdevolle koosnaampjes die warmte en intieme verbinding overbrengen.';

  @override
  String get metric_good_48_name => 'Gedeeld Lachen';

  @override
  String get metric_good_48_description =>
      'Identificeert momenten van wederzijdse humor en vreugde die positieve bindingservaringen creëren.';

  @override
  String get metric_good_49_name => 'Attente Gebaren';

  @override
  String get metric_good_49_description =>
      'Zoekt naar kleine vriendelijke daden, het onthouden van voorkeuren of dingen doen om de partner blij te maken.';

  @override
  String get metric_good_50_name => 'Vertrouwen in Partner';

  @override
  String get metric_good_50_description =>
      'Detecteert vertrouwen in de capaciteiten, het potentieel en het vermogen van de partner om uitdagingen aan te gaan.';

  @override
  String get metric_good_51_name => 'Gezonde Wederzijdse Afhankelijkheid';

  @override
  String get metric_good_51_description =>
      'Meet de balans tussen samen zijn en onafhankelijkheid, waarbij elkaars autonomie wordt ondersteund.';

  @override
  String get metric_good_52_name => 'Conflictde-escalatie';

  @override
  String get metric_good_52_description =>
      'Identificeert zachte taal, pauzes of het aanbieden van oplossingen om verhitte discussies te kalmeren.';

  @override
  String get metric_good_53_name => 'Oprechte Verontschuldiging';

  @override
  String get metric_good_53_description =>
      'Volgt volledige erkenning van wangedrag zonder te minimaliseren, verdedigen of schuld te verschuiven.';

  @override
  String get metric_good_54_name => 'Emotionele Steunaanbiedingen';

  @override
  String get metric_good_54_description =>
      'Zoekt naar proactieve check-ins, vragen hoe het met de partner gaat en hulp aanbieden.';

  @override
  String get metric_good_55_name => 'Respectvolle Grenzen';

  @override
  String get metric_good_55_description =>
      'Meet hoe de partner zijn of haar aangegeven grenzen respecteert, terwijl men zelf gezonde grenzen handhaaft.';

  @override
  String get metric_good_56_name => 'Positieve Verwachting';

  @override
  String get metric_good_56_description =>
      'Detecteert enthousiasme over de gezamenlijke toekomst, vooruit plannen en uitkijken naar gedeelde ervaringen.';

  @override
  String get metric_good_57_name => 'Aandachtssignalen';

  @override
  String get metric_good_57_description =>
      'Identificeert het onthouden van belangrijke data, voorkeuren en details die laten zien dat de partner ertoe doet.';

  @override
  String get metric_good_58_name => 'Groei Aanmoedigen';

  @override
  String get metric_good_58_description =>
      'Volgt het ondersteunen van de persoonlijke ontwikkeling, het leren en het nastreven van doelen van de partner.';

  @override
  String get metric_good_59_name => 'Tedere Taal';

  @override
  String get metric_good_59_description =>
      'Zoekt naar zachte, zorgzame woordkeuzes die tederheid en emotionele warmte overbrengen.';

  @override
  String get metric_good_60_name => 'Gedeelde Verantwoordelijkheid';

  @override
  String get metric_good_60_description =>
      'Meet hoe beide partners verantwoordelijkheid nemen voor hun acties en de impact daarvan.';

  @override
  String get metric_good_61_name => 'Partner Vieren';

  @override
  String get metric_good_61_description =>
      'Detecteert het openlijk of privé uiten van trots, vreugde of bewondering voor de partner.';

  @override
  String get metric_good_62_name => 'Consistente Genegenheid';

  @override
  String get metric_good_62_description =>
      'Identificeert regelmatige uitingen van liefde die niet fluctueren op basis van prestaties of naleving.';

  @override
  String get metric_good_63_name => 'Emotionele Afstemming';

  @override
  String get metric_good_63_description =>
      'Volgt het aanvoelen van en reageren op subtiele verschuivingen in de emotionele toestand van de partner.';

  @override
  String get metric_good_64_name => 'Gezamenlijke Besluitvorming';

  @override
  String get metric_good_64_description =>
      'Meet hoe partners samen opties bespreken en keuzes maken die rekening houden met elkaars behoeften.';

  @override
  String get metric_good_65_name => 'Geruststelling Zonder Eis';

  @override
  String get metric_good_65_description =>
      'Zoekt naar het bieden van troost en veiligheid zonder dat de partner dit hoeft te verdienen.';

  @override
  String get metric_good_66_name => 'Authentieke Verbinding';

  @override
  String get metric_good_66_description =>
      'Detecteert oprechte aanwezigheid, echt delen en het loslaten van schijn in interacties.';

  @override
  String get metric_good_67_name => 'Wederzijdse Aanmoediging';

  @override
  String get metric_good_67_description =>
      'Identificeert hoe beide partners elkaar aanmoedigen en inspanningen vieren, niet alleen resultaten.';

  @override
  String get metric_good_68_name => 'Respectvol Vragen';

  @override
  String get metric_good_68_description =>
      'Volgt het vragen naar het perspectief van de partner met oprechte nieuwsgierigheid in plaats van verhoor.';

  @override
  String get metric_good_69_name => 'Liefdevolle Consistentie';

  @override
  String get metric_good_69_description =>
      'Meet hetzelfde gedrag in goede en moeilijke tijden, betrouwbaar in genegenheid.';

  @override
  String get metric_good_70_name => 'Emotionele Wederkerigheid';

  @override
  String get metric_good_70_description =>
      'Zoekt naar beide partners die gevoelens, behoeften en kwetsbaarheden op een evenwichtige manier delen.';

  @override
  String get metric_good_71_name => 'Vreugdevolle Aanwezigheid';

  @override
  String get metric_good_71_description =>
      'Detecteert oprechte blijdschap in elkaars gezelschap en enthousiasme voor samen tijd doorbrengen.';

  @override
  String get metric_good_72_name => 'Constructieve Dialoog';

  @override
  String get metric_good_72_description =>
      'Identificeert gesprekken die leiden tot begrip in plaats van winnen of gelijk krijgen.';

  @override
  String get metric_good_73_name => 'Beschermende Belangenbehartiging';

  @override
  String get metric_good_73_description =>
      'Volgt het opkomen voor de partner, hen verdedigen en prioriteit geven aan hun welzijn.';

  @override
  String get metric_good_74_name => 'Bewuste Communicatie';

  @override
  String get metric_good_74_description =>
      'Meet doordachte woordkeuze, overweging van de impact voor het spreken en intentionele communicatie.';

  @override
  String get metric_good_75_name => 'Relatie-investering';

  @override
  String get metric_good_75_description =>
      'Kijkt naar tijd, energie en middelen die worden besteed aan het koesteren van de relatie.';

  @override
  String get metric_good_76_name => 'Veilige Basis Taal';

  @override
  String get metric_good_76_description =>
      'Detecteert het bieden van stabiliteit, veiligheid en een basis van waaruit de partner kan verkennen.';

  @override
  String get metric_good_77_name => 'Wederzijdse Bewondering';

  @override
  String get metric_good_77_description =>
      'Identificeert beide partners die respect en waardering uiten voor elkaars kwaliteiten.';

  @override
  String get metric_good_78_name => 'Tedere Momenten';

  @override
  String get metric_good_78_description =>
      'Volgt het creëren of herkennen van intieme stille momenten van verbinding en nabijheid.';

  @override
  String get metric_good_79_name => 'Oprechte Nieuwsgierigheid';

  @override
  String get metric_good_79_description =>
      'Kijkt naar oprechte interesse in het begrijpen van de gedachten, gevoelens en ervaringen van de partner.';

  @override
  String get metric_good_80_name => 'Liefdevolle Acceptatie';

  @override
  String get metric_good_80_description =>
      'Detecteert het omarmen van de hele persoon van de partner, inclusief imperfecties en verleden.';

  @override
  String get metric_good_81_name => 'Wederzijdse Groeiondersteuning';

  @override
  String get metric_good_81_description =>
      'Identificeert beide partners die elkaars ontwikkeling aanmoedigen en vooruitgang vieren.';

  @override
  String get metric_good_82_name => 'Warme Toon Indicatoren';

  @override
  String get metric_good_82_description =>
      'Volgt het gebruik van liefdevolle taal, vriendelijke formuleringen en een zachte communicatiestijl.';

  @override
  String get metric_good_83_name => 'Responsieve Betrokkenheid';

  @override
  String get metric_good_83_description =>
      'Meet snelle, betrokken reacties op de berichten en emotionele signalen van de partner.';

  @override
  String get metric_good_84_name => 'Gedeelde Waarden Afstemming';

  @override
  String get metric_good_84_description =>
      'Zoekt naar verwijzingen naar gedeelde overtuigingen, doelen of levensfilosofieën die het stel verenigen.';

  @override
  String get metric_good_85_name => 'Onvoorwaardelijke Steun';

  @override
  String get metric_good_85_description =>
      'Detecteert het bijstaan van de partner in moeilijkheden zonder steun voorwaardelijk te maken.';

  @override
  String get metric_good_86_name => 'Intieme Kwetsbaarheid';

  @override
  String get metric_good_86_description =>
      'Identificeert het delen van diepe angsten, dromen of onzekerheden die emotionele banden verdiepen.';

  @override
  String get metric_good_87_name => 'Wederzijds Respect Taal';

  @override
  String get metric_good_87_description =>
      'Volgt het eren van elkaars perspectieven, keuzes en autonomie in communicatie.';

  @override
  String get metric_good_88_name => 'Positieve Framing';

  @override
  String get metric_good_88_description =>
      'Meet het zien van het beste in situaties en de partner, met focus op sterke punten.';

  @override
  String get metric_good_89_name => 'Gezamenlijk Probleemoplossen';

  @override
  String get metric_good_89_description =>
      'Zoekt naar samenwerken aan oplossingen die beide partners gelijkelijk ten goede komen.';

  @override
  String get metric_good_90_name => 'Emotionele Validatie';

  @override
  String get metric_good_90_description =>
      'Detecteert het bevestigen dat de gevoelens van de partner logisch en aanvaardbaar zijn.';

  @override
  String get metric_good_91_name => 'Consistente Vriendelijkheid';

  @override
  String get metric_good_91_description =>
      'Identificeert regelmatige kleine zorgzame handelingen die laten zien dat de partner wordt gewaardeerd en aan hem/haar wordt gedacht.';

  @override
  String get metric_good_92_name => 'Gezamenlijke Viering';

  @override
  String get metric_good_92_description =>
      'Volgt of beide partners oprecht blij zijn met elkaars successen en vreugde.';

  @override
  String get metric_good_93_name => 'Veilige Hechtingstaal';

  @override
  String get metric_good_93_description =>
      'Meet het uiten van vertrouwen, comfort met intimiteit en vertrouwen in de relatie.';

  @override
  String get metric_good_94_name => 'Attente Overweging';

  @override
  String get metric_good_94_description =>
      'Zoekt naar het nemen van beslissingen met de behoeften en gevoelens van de partner in gedachten.';

  @override
  String get metric_good_95_name => 'Liefdevolle Aanwezigheid';

  @override
  String get metric_good_95_description =>
      'Detecteert volledig aanwezig en betrokken zijn, waarmee de partner laat zien dat hij/zij het belangrijkst is.';

  @override
  String get metric_good_96_name => 'Oprechte Zorgtaal';

  @override
  String get metric_good_96_description =>
      'Volgt oprechte uitingen van bezorgdheid, zorg en investering in het welzijn van de partner.';

  @override
  String get metric_good_97_name => 'Relatiebetrokkenheid';

  @override
  String get metric_good_97_description =>
      'Meet het uiten van toewijding aan de relatie en de bereidheid om uitdagingen aan te gaan.';

  @override
  String get metric_good_98_name => 'Authentieke Liefdesuiting';

  @override
  String get metric_good_98_description =>
      'Zoekt naar oprechte, consistente uitingen van liefde die echt en onvoorwaardelijk aanvoelen.';

  @override
  String get metric_good_99_name => 'Gezamenlijke Doelstelling';

  @override
  String get metric_good_99_description =>
      'Identificeert partners die gezamenlijk gedeelde dromen, prioriteiten en richting voor hun toekomst definiëren.';

  @override
  String get metric_good_100_name => 'Herstelpoging Herkenning';

  @override
  String get metric_good_100_description =>
      'Detecteert het opmerken van en positief reageren op de pogingen van de partner om conflicten te de-escaleren en de verbinding te herstellen.';

  @override
  String get metric_bad_1_name => 'Passieve agressie';

  @override
  String get metric_bad_1_description =>
      'Detecteert indirecte vijandigheid door uitstelgedrag, vergeetachtigheid, sarcasme of subtiele sabotage in plaats van directe expressie.';

  @override
  String get metric_bad_2_name => 'Schuld als wapen';

  @override
  String get metric_bad_2_description =>
      'Identificeert het gebruik van schuld, schaamte of verplichtingstaal om beslissingen te manipuleren of grenzen te voorkomen.';

  @override
  String get metric_bad_3_name => 'Emotionele chantage';

  @override
  String get metric_bad_3_description =>
      'Meldt dreigementen van zelfbeschadiging, verlating of het onthouden van liefde om gedrag te controleren of discussie te voorkomen.';

  @override
  String get metric_bad_4_name => 'Chronisch Klagen';

  @override
  String get metric_bad_4_description =>
      'Volgt aanhoudende negativiteit, piekeren of klagen zonder te zoeken naar oplossingen of gezamenlijke verandering.';

  @override
  String get metric_bad_5_name => 'Vergelijkingsbeschaming';

  @override
  String get metric_bad_5_description =>
      'Identificeert ongunstige vergelijkingen met exen, vrienden of familie om gedragsverandering te beschamen of af te dwingen.';

  @override
  String get metric_bad_6_name => 'Voorwaardelijk Luisteren';

  @override
  String get metric_bad_6_description =>
      'Detecteert alleen luisteren wanneer het de luisteraar ten goede komt of hun agenda dient, in plaats van oprecht begrip.';

  @override
  String get metric_bad_7_name => 'Selectief geheugen';

  @override
  String get metric_bad_7_description =>
      'Volgt het gemakshalve vergeten van beloften, afspraken of eerder schadelijk gedrag om verantwoordelijkheid te vermijden.';

  @override
  String get metric_bad_8_name => 'Aandacht Zoeken via Crisis';

  @override
  String get metric_bad_8_description =>
      'Identificeert dramatische escalatie, crisiscreatie of overdrijving om aandacht of sympathie te krijgen.';

  @override
  String get metric_bad_9_name => 'Grenzen Testen';

  @override
  String get metric_bad_9_description =>
      'Detecteert herhaaldelijk testen of aandringen op gestelde grenzen om te bepalen of ze worden gehandhaafd.';

  @override
  String get metric_bad_10_name => 'Informatie Achterhouden';

  @override
  String get metric_bad_10_description =>
      'Identificeert opzettelijk weglaten van relevante feiten, context of transparantie om controle te behouden.';

  @override
  String get metric_bad_11_name => 'Disproportionele Woede';

  @override
  String get metric_bad_11_description =>
      'Volgt woede-reacties die aanzienlijk groter zijn dan het uitlokkende incident rechtvaardigt.';

  @override
  String get metric_bad_12_name => 'Geruststellingsverslaving';

  @override
  String get metric_bad_12_description =>
      'Signaleert constante behoefte aan bevestiging, herhaalde vragen over toewijding of eindeloos bewijs van liefde.';

  @override
  String get metric_bad_13_name => 'Gespreksvermijding';

  @override
  String get metric_bad_13_description =>
      'Detecteert weigering om in te gaan op zorgen, vermijdingszinnen of het afkappen van belangrijke gesprekken.';

  @override
  String get metric_bad_14_name => 'Tegenspraakpatroon';

  @override
  String get metric_bad_14_description =>
      'Identificeert tegenstrijdige uitspraken, beloften of standpunten die verwarring of destabilisatie veroorzaken.';

  @override
  String get metric_bad_15_name => 'Afwijzing door Etikettering';

  @override
  String get metric_bad_15_description =>
      'Signaleert het bestempelen van zorgen als \'gestoord\', \'dramatisch\', \'paranoïde\' of \'overdreven\' om ze te ontkrachten.';

  @override
  String get metric_bad_16_name => 'Selectieve Empathie';

  @override
  String get metric_bad_16_description =>
      'Detecteert empathie die alleen wordt geboden wanneer het uitkomt of de belangen van de spreker dient.';

  @override
  String get metric_bad_17_name => 'Transactionele Framing';

  @override
  String get metric_bad_17_description =>
      'Identificeert \'je bent me iets verschuldigd\', \'na alles wat ik heb gedaan\' of het zien van relationele handelingen als het creëren van schuld.';

  @override
  String get metric_bad_18_name => 'Grievenrecycling';

  @override
  String get metric_bad_18_description =>
      'Volgt het herhaaldelijk ter sprake brengen van oude grieven of het gebruiken van schade uit het verleden als munitie in huidige conflicten.';

  @override
  String get metric_bad_19_name => 'Eisende taal';

  @override
  String get metric_bad_19_description =>
      'Markeert bevelen, commando\'s of ultimatums in plaats van verzoeken of gezamenlijk probleemoplossen.';

  @override
  String get metric_bad_20_name => 'Emotionele onbeschikbaarheid';

  @override
  String get metric_bad_20_description =>
      'Detecteert consistente weigering om emotioneel te engageren, gevoelens te delen of troost te bieden.';

  @override
  String get metric_bad_21_name => 'Vijandige interpretatie';

  @override
  String get metric_bad_21_description =>
      'Identificeert het opvatten van neutrale uitspraken als aanvallen of het interpreteren van ambigue boodschappen als vijandig.';

  @override
  String get metric_bad_22_name => 'Gerechtigdheidskader';

  @override
  String get metric_bad_22_description =>
      'Markeert taal die suggereert dat de spreker speciale behandeling, uitzonderingen of prioriteit verdient.';

  @override
  String get metric_bad_23_name => 'Kritiek vermomd als hulp';

  @override
  String get metric_bad_23_description =>
      'Detecteert kritiek verpakt in \'ik probeer alleen te helpen\' of \'voor je eigen bestwil\' taal.';

  @override
  String get metric_bad_24_name => 'Verwaarlozingspatronen';

  @override
  String get metric_bad_24_description =>
      'Identificeert consistent falen om te voldoen aan emotionele, fysieke of relationele behoeften.';

  @override
  String get metric_bad_25_name => 'Conflict herkauwen';

  @override
  String get metric_bad_25_description =>
      'Volgt obsessief herkauwen van conflicten zonder richting oplossing of afsluiting.';

  @override
  String get metric_bad_26_name => 'Gevoeligheid afwijzen';

  @override
  String get metric_bad_26_description =>
      'Markeert uitspraken zoals \'je bent te gevoelig\' of \'je overdrijft\' om gevoelens te negeren.';

  @override
  String get metric_bad_27_name => 'Competitief kader';

  @override
  String get metric_bad_27_description =>
      'Detecteert het framen van de relatie als een competitie waarbij een partner moet winnen of domineren.';

  @override
  String get metric_bad_28_name => 'Dubbele standaarden';

  @override
  String get metric_bad_28_description =>
      'Identificeert het toepassen van verschillende regels voor zichzelf versus de partner of het willekeurig veranderen van verwachtingen.';

  @override
  String get metric_bad_29_name => 'Genegenheid als straf';

  @override
  String get metric_bad_29_description =>
      'Markeert het onthouden van genegenheid, aandacht of communicatie als vergelding voor vermeende fouten.';

  @override
  String get metric_bad_30_name => 'Schuldrotatie';

  @override
  String get metric_bad_30_description =>
      'Volgt het ronddraaien van schuld tussen partner, omstandigheden en externe factoren om verantwoordelijkheid te vermijden.';

  @override
  String get metric_bad_31_name => 'Retorische spot';

  @override
  String get metric_bad_31_description =>
      'Detecteert retorische of sarcastische vragen die worden gebruikt om te bespotten in plaats van te begrijpen.';

  @override
  String get metric_bad_32_name => 'Offers herinneren';

  @override
  String get metric_bad_32_description =>
      'Identificeert het herinneren van de partner aan offers, gunsten of steun om schuld en naleving te creëren.';

  @override
  String get metric_bad_33_name => 'Opzettelijke escalatie';

  @override
  String get metric_bad_33_description =>
      'Markeert het opzettelijk verhogen van de intensiteit om het vermogen van de partner om rationeel te reageren te overweldigen.';

  @override
  String get metric_bad_34_name => 'Strategische kwetsbaarheid';

  @override
  String get metric_bad_34_description =>
      'Detecteert het delen van emoties alleen wanneer het manipulatie of controle dient.';

  @override
  String get metric_bad_35_name => 'Afleiding door tegenaanval';

  @override
  String get metric_bad_35_description =>
      'Identificeert het wegleiden van de aandacht van de zorgen van de partner door niet-gerelateerde kwesties of tegenbeschuldigingen te uiten.';

  @override
  String get metric_bad_36_name => 'Superioriteitstaal';

  @override
  String get metric_bad_36_description =>
      'Markeert superieure taal, neerbuigendheid of het framen van de partner als minderwaardig.';

  @override
  String get metric_bad_37_name => 'Conflictuitstappatroon';

  @override
  String get metric_bad_37_description =>
      'Detecteert het patroon van gesprekken verlaten, weigeren om deel te nemen of afstand creëren tijdens conflicten.';

  @override
  String get metric_bad_38_name => 'Negatieve vooringenomenheid';

  @override
  String get metric_bad_38_description =>
      'Volgt het consequent interpreteren van neutrale of positieve acties als negatief of verdacht.';

  @override
  String get metric_bad_39_name => 'Keuzevrijheid ontkennen';

  @override
  String get metric_bad_39_description =>
      'Identificeert \'ik moet\', \'jij maakt dat ik\' of taal die persoonlijke keuzevrijheid van de spreker wegneemt.';

  @override
  String get metric_bad_40_name => 'Stilte als controle';

  @override
  String get metric_bad_40_description =>
      'Meldt het gebruik van stilte of geen reactie als een vorm van straf of controle.';

  @override
  String get metric_bad_41_name => 'Privacyhypocrisie';

  @override
  String get metric_bad_41_description =>
      'Detecteert het weigeren informatie te delen terwijl transparantie van de partner wordt geëist.';

  @override
  String get metric_bad_42_name => 'Ongevraagde harde feedback';

  @override
  String get metric_bad_42_description =>
      'Identificeert harde feedback die wordt gepresenteerd als \'constructief\' of \'behulpzaam\' zonder toestemming.';

  @override
  String get metric_bad_43_name => 'Voorwaardelijke zorg';

  @override
  String get metric_bad_43_description =>
      'Meldt steun die alleen wordt geboden wanneer de partner voldoet aan de verwachtingen van de spreker.';

  @override
  String get metric_bad_44_name => 'Impact ontkennen';

  @override
  String get metric_bad_44_description =>
      'Detecteert \'ik bedoelde het niet zo\' of \'je leest er te veel in\' na het veroorzaken van schade.';

  @override
  String get metric_bad_45_name => 'Schuldmentaliteit';

  @override
  String get metric_bad_45_description =>
      'Volgt het terughalen van eerdere hulp of steun om schuld te creëren en huidig gedrag te controleren.';

  @override
  String get metric_bad_46_name => 'Verantwoordelijkheid Ontwijken';

  @override
  String get metric_bad_46_description =>
      'Geeft een consistent patroon aan van het niet nemen van verantwoordelijkheid voor de impact van acties.';

  @override
  String get metric_bad_47_name => 'Behoeften Afwijzen';

  @override
  String get metric_bad_47_description =>
      'Identificeert het behandelen van de behoeften van de partner als onhandig, onredelijk of onbelangrijk.';

  @override
  String get metric_bad_48_name => 'Emotionele Manipulatie';

  @override
  String get metric_bad_48_description =>
      'Geeft aan dat emoties strategisch worden gebruikt om uitkomsten te controleren of verantwoording te voorkomen.';

  @override
  String get metric_bad_49_name => 'Intimiteit Vermijden';

  @override
  String get metric_bad_49_description =>
      'Volgt consistente terugtrekking uit emotionele of fysieke nabijheid zonder uitleg.';

  @override
  String get metric_bad_50_name => 'Verhulde Kritiek';

  @override
  String get metric_bad_50_description =>
      'Identificeert kritiek vermomd als grappen, opmerkingen of terloopse commentaren.';

  @override
  String get metric_bad_51_name => 'Zorgen Minimaliseren';

  @override
  String get metric_bad_51_description =>
      'Geeft aan dat de zorgen van de partner worden gereduceerd tot onbeduidendheid of overdrijving.';

  @override
  String get metric_bad_52_name => 'Schuld Afdwingen';

  @override
  String get metric_bad_52_description =>
      'Identificeert het gebruik van schuld of schaamte om ervoor te zorgen dat de partner voldoet aan verwachtingen.';

  @override
  String get metric_bad_53_name => 'Excuses Weerstand';

  @override
  String get metric_bad_53_description =>
      'Volgt weerstand tegen verontschuldigen, het wegpraten van schade of weigeren de impact te erkennen.';

  @override
  String get metric_bad_54_name => 'Perspectief Afwijzen';

  @override
  String get metric_bad_54_description =>
      'Geeft aan dat het standpunt of de ervaring van de partner wordt geweigerd te overwegen of te valideren.';

  @override
  String get metric_bad_55_name => 'Emotionele rantsoenering';

  @override
  String get metric_bad_55_description =>
      'Detecteert het opzettelijk beperken van emotionele expressie of verbinding als een vorm van controle.';

  @override
  String get metric_bad_56_name => 'Verplichtingsmanipulatie';

  @override
  String get metric_bad_56_description =>
      'Signaleert het gebruik van eerdere steun of opoffering om huidige beslissingen te manipuleren.';

  @override
  String get metric_bad_57_name => 'Weerstand tegen groei';

  @override
  String get metric_bad_57_description =>
      'Volgt weerstand tegen het aanpassen van schadelijk gedrag ondanks verzoeken of aangetoonde impact.';

  @override
  String get metric_bad_58_name => 'Schadeontkenning';

  @override
  String get metric_bad_58_description =>
      'Detecteert het weigeren om de impact van eigen gedrag te erkennen of serieus te nemen.';

  @override
  String get metric_bad_59_name => 'Geladen vragen';

  @override
  String get metric_bad_59_description =>
      'Signaleert kritische bedoelingen vermomd als onschuldige vragen of uitingen van nieuwsgierigheid.';

  @override
  String get metric_bad_60_name => 'Minachtende toon';

  @override
  String get metric_bad_60_description =>
      'Identificeert afwijzende houding of minachting overgebracht via tekstpatronen en woordkeuze.';

  @override
  String get metric_bad_61_name => 'Schuldgevoelcycli';

  @override
  String get metric_bad_61_description =>
      'Detecteert herhaaldelijk gebruik van schuldgevoel over eerdere steun of opoffering om huidig gedrag te controleren.';

  @override
  String get metric_bad_62_name => 'Emotionele gereserveerdheid';

  @override
  String get metric_bad_62_description =>
      'Volgt het weigeren om emoties, angsten of behoeften met partner te delen als beschermende terughoudendheid.';

  @override
  String get metric_bad_63_name => 'Grensonderhandeling';

  @override
  String get metric_bad_63_description =>
      'Signaleert het behandelen van gestelde grenzen als suggesties of onderhandelbaar in plaats van vaste afspraken.';

  @override
  String get metric_bad_64_name => 'Emotionele Afwezigheid';

  @override
  String get metric_bad_64_description =>
      'Detecteert consistente weigering om emotionele steun of betrokken aanwezigheid te bieden.';

  @override
  String get metric_bad_65_name => 'Gunstentracking';

  @override
  String get metric_bad_65_description =>
      'Signaleert het bijhouden van een mentale score van gunsten, steun of offers voor later gebruik als hefboom.';

  @override
  String get metric_bad_66_name => 'Eerlijkheidsvermijding';

  @override
  String get metric_bad_66_description =>
      'Detecteert een patroon van waarheid achterhouden, feiten weglaten of opzettelijk vaag zijn.';

  @override
  String get metric_bad_67_name => 'Geldigheidsontkenning';

  @override
  String get metric_bad_67_description =>
      'Identificeert het behandelen van de gevoelens, behoeften of zorgen van de partner als ongeldig of onterecht.';

  @override
  String get metric_bad_68_name => 'Advies Vermomde Kritiek';

  @override
  String get metric_bad_68_description =>
      'Signaleert kritiek die wordt gepresenteerd als bezorgdheid, advies of een behulpzame opmerking.';

  @override
  String get metric_bad_69_name => 'Superioriteitsindicatoren';

  @override
  String get metric_bad_69_description =>
      'Detecteert superioriteit, spot of minachting in taal of communicatiestijl.';

  @override
  String get metric_bad_70_name => 'Herstelweerstand';

  @override
  String get metric_bad_70_description =>
      'Volgt weerstand tegen het goedmaken, opnieuw verbinden of herbouwen na een conflict.';

  @override
  String get metric_bad_71_name => 'Inspanning Afwijzing';

  @override
  String get metric_bad_71_description =>
      'Signaleert het minimaliseren of negeren van pogingen van de partner om te verbeteren of problemen aan te pakken.';

  @override
  String get metric_bad_72_name => 'Emotioneel Afstandspatroon';

  @override
  String get metric_bad_72_description =>
      'Detecteert een langdurig patroon van emotionele afstand of weigering om authentiek betrokken te zijn.';

  @override
  String get metric_bad_73_name => 'Minderwaardigheidsframing';

  @override
  String get metric_bad_73_description =>
      'Identificeert het framen van de partner als inferieur, gebrekkig of onwaardig voor volledig respect.';

  @override
  String get metric_bad_74_name => 'Feedbackweerstand';

  @override
  String get metric_bad_74_description =>
      'Detecteert weerstand tegen het horen van kritiek, weigeren te luisteren of het afsluiten van discussie.';

  @override
  String get metric_bad_75_name => 'Zorgenafwijzing';

  @override
  String get metric_bad_75_description =>
      'Identificeert het behandelen van de zorgen of angsten van de partner als ongegrond of irrationeel.';

  @override
  String get metric_bad_76_name => 'Foutenvinden';

  @override
  String get metric_bad_76_description =>
      'Markeert een chronisch patroon van fouten vinden, klagen over of aanvallen van het karakter van de partner.';

  @override
  String get metric_bad_77_name => 'Offerschuldcyclus';

  @override
  String get metric_bad_77_description =>
      'Identificeert het herhaaldelijk ophalen van eerdere steun om schuldgevoelens te creëren of gedrag te controleren.';

  @override
  String get metric_bad_78_name => 'Toewijdingsambiguïteit';

  @override
  String get metric_bad_78_description =>
      'Volgt onduidelijke of wisselende toewijdingstaal, gemengde signalen of terughoudendheid om zich te binden.';

  @override
  String get metric_bad_79_name => 'Verzoekafwijzing';

  @override
  String get metric_bad_79_description =>
      'Markeert het negeren, weigeren of vertragen van reactie op redelijke verzoeken van de partner.';

  @override
  String get metric_bad_80_name => 'Emotionele controletactieken';

  @override
  String get metric_bad_80_description =>
      'Detecteert strategisch gebruik van emoties om uitkomsten te controleren of verantwoordelijkheid te voorkomen.';

  @override
  String get metric_bad_81_name => 'Uitwisselingsmentaliteit';

  @override
  String get metric_bad_81_description =>
      'Markeert het bekijken van de relatie door een lens van schuld, verplichting of transactionele uitwisseling.';

  @override
  String get metric_bad_82_name => 'Weerstand tegen Persoonlijke Ontwikkeling';

  @override
  String get metric_bad_82_description =>
      'Detecteert weerstand tegen persoonlijke ontwikkeling, leren of het veranderen van schadelijke patronen.';

  @override
  String get metric_bad_83_name => 'Afwijzing van Verbetering';

  @override
  String get metric_bad_83_description =>
      'Identificeert het minimaliseren of afwijzen van de inspanningen van de partner om te verbeteren of problemen aan te pakken.';

  @override
  String get metric_bad_84_name => 'Chronische Kritiek';

  @override
  String get metric_bad_84_description =>
      'Markeert een chronisch patroon van kritiek verpakt in bezorgdheid, behulpzaamheid of zorgtaal.';

  @override
  String get metric_bad_85_name => 'Vermijding van Oplossingen';

  @override
  String get metric_bad_85_description =>
      'Detecteert een consistent patroon van het vermijden van afsluiting, vooruitgang of het vinden van werkbare oplossingen.';

  @override
  String get metric_bad_86_name => 'Patroon van Schuldafschuiving';

  @override
  String get metric_bad_86_description =>
      'Markeert een gewoontepatroon van het afschuiven van verantwoordelijkheid naar externe factoren of de partner.';

  @override
  String get metric_bad_87_name => 'Afwijzende Reacties';

  @override
  String get metric_bad_87_description =>
      'Identificeert een patroon van het afwijzen van de inbreng, ideeën of suggesties van de partner zonder overweging.';

  @override
  String get metric_bad_88_name => 'Uiting van Wrok';

  @override
  String get metric_bad_88_description =>
      'Detecteert een toon van wrok, bitterheid of langdurige frustratie in communicatie.';

  @override
  String get metric_bad_89_name => 'Ambivalente Berichtgeving';

  @override
  String get metric_bad_89_description =>
      'Markeert gemengde signalen over betrokkenheid, onduidelijke wens om door te gaan, of duw-trek dynamiek.';

  @override
  String get metric_bad_90_name => 'Verwachtingen Verschoven';

  @override
  String get metric_bad_90_description =>
      'Identificeert het veranderen van verwachtingen zonder communicatie, en vervolgens de partner de schuld geven dat deze er niet aan voldoet.';

  @override
  String get metric_bad_91_name => 'Ontwijkingsgewoonte';

  @override
  String get metric_bad_91_description =>
      'Detecteert gewoonte om directe antwoorden te vermijden of gesprekken weg te leiden van verantwoordelijkheid.';

  @override
  String get metric_bad_92_name => 'Manipulatie door Vriendelijkheid';

  @override
  String get metric_bad_92_description =>
      'Markeert overdreven vrijgevigheid die strategisch wordt gebruikt om verplichting te creëren of verdediging te verlagen.';

  @override
  String get metric_bad_93_name => 'Chronisch Te Laat Patroon';

  @override
  String get metric_bad_93_description =>
      'Identificeert consequent gebrek aan respect voor de tijd van de partner door te laat te komen of afspraken te verbreken.';

  @override
  String get metric_bad_94_name => 'Minimalisatie van Vooruitgang';

  @override
  String get metric_bad_94_description =>
      'Volgt het negeren of niet erkennen van de oprechte persoonlijke groei of verbeteringen van de partner.';

  @override
  String get metric_bad_95_name => 'Emotioneel Bewapenen';

  @override
  String get metric_bad_95_description =>
      'Detecteert het gebruik van onthulde kwetsbaarheden of angsten van de partner tegen hen tijdens conflicten.';

  @override
  String get metric_bad_96_name => 'Gaslighting-achtige Tactieken';

  @override
  String get metric_bad_96_description =>
      'Identificeert subtiele werkelijkheidsvervormende tactieken die zelfvertrouwen ondermijnen zonder volledig gaslighting te zijn.';

  @override
  String get metric_bad_97_name => 'Passieve Stenenmuur';

  @override
  String get metric_bad_97_description =>
      'Markeert subtiele terugtrekking, eenlettergrepige antwoorden of afwezige aanwezigheid als vermijding.';

  @override
  String get metric_bad_98_name => 'Verhaalcontrole';

  @override
  String get metric_bad_98_description =>
      'Detecteert het aandringen op de enige autoriteit over wat er gebeurde, hoe het voelde of wat er bedoeld werd.';

  @override
  String get metric_bad_99_name => 'Verantwoordelijkheidsafschuiving';

  @override
  String get metric_bad_99_description =>
      'Volgt het consequent afschuiven van verantwoordelijkheid op externe factoren, derden of het gedrag van de partner.';

  @override
  String get metric_bad_100_name => 'Emotionele Onbeschikbaarheid';

  @override
  String get metric_bad_100_description =>
      'Signaleert chronische terugtrekking uit emotionele intimiteit, kwetsbaarheid of betekenisvolle verbinding wanneer de partner nabijheid nodig heeft.';

  @override
  String get metric_ugly_1_name => 'Fysieke Geweldsdreigingen';

  @override
  String get metric_ugly_1_description =>
      'Detecteert expliciete of verhulde dreigingen van slaan, verwonden of fysieke aanval tegen de partner.';

  @override
  String get metric_ugly_2_name => 'Verwijzingen naar wapenbezit';

  @override
  String get metric_ugly_2_description =>
      'Signaleert vermeldingen van geweren, messen of wapens in de context van woede, controle of de mogelijkheid om schade toe te brengen.';

  @override
  String get metric_ugly_3_name => 'Wurgingsindicatoren';

  @override
  String get metric_ugly_3_description =>
      'Identificeert taal of verwijzingen naar wurging, keelgrepen, verstikking of asfyxie.';

  @override
  String get metric_ugly_4_name => 'Zelfmoorddreiging als Wapen';

  @override
  String get metric_ugly_4_description =>
      'Detecteert dreigementen met zelfbeschadiging om de partner te controleren, manipuleren of straffen.';

  @override
  String get metric_ugly_5_name => 'Taal van Homicide Ideatie';

  @override
  String get metric_ugly_5_description =>
      'Signaleert uitspraken die intentie, planning of verlangen om de partner te doden uitdrukken.';

  @override
  String get metric_ugly_6_name => 'Patronen van letaliteitsrisico';

  @override
  String get metric_ugly_6_description =>
      'Identificeert waarschuwingssignalen met hoge letaliteit: wapentoegang, obsessie, escalatie en scheidingsdreigingen gecombineerd.';

  @override
  String get metric_ugly_7_name => 'Stalkende obsessietaal';

  @override
  String get metric_ugly_7_description =>
      'Detecteert obsessieve locatiebewaking, volgen, verrassingsbezoeken of aanhoudende ongewenste achtervolging.';

  @override
  String get metric_ugly_8_name => 'Gedwongen isolatiehandhaving';

  @override
  String get metric_ugly_8_description =>
      'Signaleert agressieve eisen om alle contact met familie, vrienden, werk of buitenwereld te verbreken.';

  @override
  String get metric_ugly_9_name => 'Economische sabotage';

  @override
  String get metric_ugly_9_description =>
      'Identificeert opzettelijke vernietiging van werk, kredietwaardigheid, financiën of economische stabiliteit.';

  @override
  String get metric_ugly_10_name => 'Reproductieve Dwang';

  @override
  String get metric_ugly_10_description =>
      'Detecteert gedwongen zwangerschap, abortusdruk, knoeien met anticonceptie of reproductieve controle.';

  @override
  String get metric_ugly_11_name => 'Seksuele Dwangdruk';

  @override
  String get metric_ugly_11_description =>
      'Markeert gedwongen seks, gedwongen seksuele handelingen, druk na weigering of taal over seksuele straf.';

  @override
  String get metric_ugly_12_name => 'Niet-consensuele Seksuele Taal';

  @override
  String get metric_ugly_12_description =>
      'Identificeert expliciete of impliciete niet-consensuele bedreigingen of beschrijvingen van seksueel geweld.';

  @override
  String get metric_ugly_13_name => 'Bedreigingen met Kindermishandeling';

  @override
  String get metric_ugly_13_description =>
      'Detecteert bedreigingen om kinderen te schaden, te verwaarlozen of te misbruiken als hefboom of straf tegen de partner.';

  @override
  String get metric_ugly_14_name => 'Wapenvoering met Kinderbewaring';

  @override
  String get metric_ugly_14_description =>
      'Markeert bedreigingen om kinderen mee te nemen, toegang te ontzeggen of voogdij te gebruiken als controlemiddel.';

  @override
  String get metric_ugly_15_name => 'Bedreigingen met Huisdierenmishandeling';

  @override
  String get metric_ugly_15_description =>
      'Identificeert bedreigingen om huisdieren te verwonden, te doden of te mishandelen als straf of om controle te tonen.';

  @override
  String get metric_ugly_16_name => 'Slaaponthoudingstactieken';

  @override
  String get metric_ugly_16_description =>
      'Markeert opzettelijke slaapverhindering, constante onderbreking of uitputting als controlemethode.';

  @override
  String get metric_ugly_17_name => 'Opsluitingstaal';

  @override
  String get metric_ugly_17_description =>
      'Markeert opsluiting, voorkomen van vertrek of het beperken van de partner tot een locatie.';

  @override
  String get metric_ugly_18_name => 'Predatorische Groomingtaal';

  @override
  String get metric_ugly_18_description =>
      'Markeert systematische manipulatie om verdediging te verlagen, vals vertrouwen op te bouwen en vervolgens de partner uit te buiten.';

  @override
  String get metric_ugly_19_name => 'Ontmenselijkende Taal';

  @override
  String get metric_ugly_19_description =>
      'Detecteert het beschrijven van de partner als een dier, object, ondermenselijk of onwaardig voor basisrechten.';

  @override
  String get metric_ugly_20_name => 'Narcistische Woede-Escalatie';

  @override
  String get metric_ugly_20_description =>
      'Detecteert explosieve woede veroorzaakt door vermeende beledigingen, kritiek of enig verlies van controle.';

  @override
  String get metric_ugly_21_name => 'Obsessieve Bezitsclaims';

  @override
  String get metric_ugly_21_description =>
      'Markeert taal die eigendom, eigendomsrechten of totale controle over de persoon van de partner claimt.';

  @override
  String get metric_ugly_22_name => 'Pathologische Leugengedragspatronen';

  @override
  String get metric_ugly_22_description =>
      'Identificeert consistente, uitgebreide of onnodige leugens over ernstige zaken zonder duidelijke reden.';

  @override
  String get metric_ugly_23_name => 'Wraakfantasie Taal';

  @override
  String get metric_ugly_23_description =>
      'Identificeert gedetailleerde fantasieën over het schaden, vernederen of vernietigen van de partner.';

  @override
  String get metric_ugly_24_name => 'Obsessie voor Verraad';

  @override
  String get metric_ugly_24_description =>
      'Detecteert obsessieve ruminatie, beschuldiging en straf gericht op vermeende ontrouw.';

  @override
  String get metric_ugly_25_name => 'Agressie bij Verlatingspaniek';

  @override
  String get metric_ugly_25_description =>
      'Markeert gewelddadige of agressieve reacties op vermeende verlating of elke scheidingspoging.';

  @override
  String get metric_ugly_26_name => 'Escalatie bij Scheidingsdreiging';

  @override
  String get metric_ugly_26_description =>
      'Identificeert extreme dreigingen of gevaarlijk gedrag veroorzaakt door breuk- of scheidingspogingen.';

  @override
  String get metric_ugly_27_name => 'Intimidatiedreigingen na Scheiding';

  @override
  String get metric_ugly_27_description =>
      'Markeert dreigingen van stalking, schade of gedwongen contact na het einde van de relatie.';

  @override
  String get metric_ugly_28_name => 'Dreigingen met kinderontvoering';

  @override
  String get metric_ugly_28_description =>
      'Identificeert dreigingen om kinderen mee te nemen en permanent te verbergen voor de andere ouder.';

  @override
  String get metric_ugly_29_name => 'Ouderverstotingsagenda';

  @override
  String get metric_ugly_29_description =>
      'Signaleert systematische pogingen om kinderen door manipulatie tegen de andere ouder op te zetten.';

  @override
  String get metric_ugly_30_name => 'Onverschilligheid voor kind als getuige';

  @override
  String get metric_ugly_30_description =>
      'Identificeert onverschilligheid voor kinderen die getuige zijn van misbruik, conflict of emotionele schade.';

  @override
  String get metric_ugly_31_name => 'Taal over mensenhandel';

  @override
  String get metric_ugly_31_description =>
      'Identificeert taal die suggereert dat de partner wordt verkocht, verhandeld of seksueel wordt uitgebuit.';

  @override
  String get metric_ugly_32_name => 'Slavernijtaal';

  @override
  String get metric_ugly_32_description =>
      'Identificeert taal die de partner behandelt als eigendom, slaaf of volledig bezit zonder rechten.';

  @override
  String get metric_ugly_33_name => 'Dreigingen met schuldslavernij';

  @override
  String get metric_ugly_33_description =>
      'Detecteert dreigingen om de partner te vangen door middel van gecreëerde schulden of financiële verplichtingen.';

  @override
  String get metric_ugly_34_name => 'Eisen tot dwangarbeid';

  @override
  String get metric_ugly_34_description =>
      'Signaleert eisen voor onbetaalde arbeid, dienstbaarheid of werk onder dreiging van letsel of straf.';

  @override
  String get metric_ugly_35_name => 'Normalisering van uitbuiting';

  @override
  String get metric_ugly_35_description =>
      'Identificeert het framen van ernstige uitbuiting als normaal, verdiend, vrijwillig of zelfs voordelig.';

  @override
  String get metric_ugly_36_name => 'Targeten van kwetsbaarheid';

  @override
  String get metric_ugly_36_description =>
      'Identificeert het opzettelijk targeten van geïsoleerde, economisch afhankelijke of psychologisch kwetsbare personen.';

  @override
  String get metric_ugly_37_name => 'Traumabindingstechniek';

  @override
  String get metric_ugly_37_description =>
      'Detecteert het opzettelijk creëren van angst-verlichtingscycli die ontworpen zijn om diepe emotionele afhankelijkheid te creëren.';

  @override
  String get metric_ugly_38_name => 'Intermitterende Bekrachtigingsmisbruik';

  @override
  String get metric_ugly_38_description =>
      'Signaleert onvoorspelbare cycli van beloning en zware straf die gebruikt worden om psychologische verslaving te creëren.';

  @override
  String get metric_ugly_39_name => 'Aangeleerde Hulpeloosheid Inductie';

  @override
  String get metric_ugly_39_description =>
      'Identificeert systematische verwijdering van autonomie, middelen en waargenomen ontsnappingsopties.';

  @override
  String get metric_ugly_40_name => 'Identiteitsuitwissingstaal';

  @override
  String get metric_ugly_40_description =>
      'Signaleert eisen om persoonlijkheid, interesses, uiterlijk of kernidentiteit op te geven.';

  @override
  String get metric_ugly_41_name => 'Autonomievernietiging';

  @override
  String get metric_ugly_41_description =>
      'Detecteert systematische eliminatie van onafhankelijk denken, besluitvorming of persoonlijke autonomie.';

  @override
  String get metric_ugly_42_name => 'Gedachtencontroletactieken';

  @override
  String get metric_ugly_42_description =>
      'Signaleert eisen om alleen te denken, geloven of voelen zoals de controlerende partner voorschrijft.';

  @override
  String get metric_ugly_43_name => 'Emotionele Gevoelloosheid Afdwinging';

  @override
  String get metric_ugly_43_description =>
      'Identificeert straf voor het tonen van emoties of expliciete eisen om alle gevoelens te onderdrukken.';

  @override
  String get metric_ugly_44_name => 'Complexe Traumacreatie';

  @override
  String get metric_ugly_44_description =>
      'Signaleert systematische patronen die complexe PTSS-niveau trauma creëren door chronisch misbruik.';

  @override
  String get metric_ugly_45_name => 'Verraadtraumatoebrenging';

  @override
  String get metric_ugly_45_description =>
      'Identificeert opzettelijk verraad ontworpen om fundamenteel vertrouwen en psychologische veiligheid te verbrijzelen.';

  @override
  String get metric_ugly_46_name => 'Morele Schade Taal';

  @override
  String get metric_ugly_46_description =>
      'Detecteert het dwingen van de partner om eigen diepgewortelde waarden te schenden of schadelijke daden te plegen.';

  @override
  String get metric_ugly_47_name => 'Existentiële Dreigingstaal';

  @override
  String get metric_ugly_47_description =>
      'Markeert bedreigingen voor het bestaan, de kernidentiteit, de geestelijke gezondheid of de levenswil van de partner.';

  @override
  String get metric_ugly_48_name => 'Zelfmoorddwang Taal';

  @override
  String get metric_ugly_48_description =>
      'Identificeert het aanzetten van de partner tot suïcidale gedachten door aanhoudend misbruik en gecreëerde hopeloosheid.';

  @override
  String get metric_ugly_49_name => 'Rechtvaardigingsmythologie';

  @override
  String get metric_ugly_49_description =>
      'Identificeert uitgebreide verzonnen verhalen die worden gepresenteerd om misbruik als noodzakelijk, verdiend of rechtvaardig te rechtvaardigen.';

  @override
  String get metric_ugly_50_name => 'Slachtofferomkering Narratief';

  @override
  String get metric_ugly_50_description =>
      'Detecteert volledige omkering waarbij de misbruiker beweert het echte slachtoffer van eigen misbruik te zijn.';

  @override
  String get metric_ugly_51_name => 'Misbruiknormalisatie Prediking';

  @override
  String get metric_ugly_51_description =>
      'Markeert het onderwijzen of beweren dat misbruik normaal, gezond of gunstig is voor de partner.';

  @override
  String get metric_ugly_52_name => 'Roofzuchtige Ideologie';

  @override
  String get metric_ugly_52_description =>
      'Identificeert ideologische rechtvaardiging voor uitbuiting, dominantie of schade aan de partner.';

  @override
  String get metric_ugly_53_name => 'Sekteleider Boodschappen';

  @override
  String get metric_ugly_53_description =>
      'Detecteert boodschappen die beweren speciale kennis, goddelijk recht of superieur gezag over de partner te hebben.';

  @override
  String get metric_ugly_54_name => 'Grooming Tijdlijn Taal';

  @override
  String get metric_ugly_54_description =>
      'Markeert verwijzingen naar een langetermijnmanipulatieplan of beschrijvingen van een geleidelijke grooming.';

  @override
  String get metric_ugly_55_name => 'Chronische Vernederingscampagne';

  @override
  String get metric_ugly_55_description =>
      'Identificeert een aanhoudend patroon van publieke of private vernedering bedoeld om eigenwaarde te vernietigen.';

  @override
  String get metric_ugly_56_name => 'Blokkade van Veilige Uitgangen';

  @override
  String get metric_ugly_56_description =>
      'Detecteert actief verhinderen dat de partner toegang krijgt tot ontsnappingsroutes, steunsystemen of veiligheidsbronnen.';

  @override
  String get metric_ugly_57_name => 'Dreigementen van Documentconfiscatie';

  @override
  String get metric_ugly_57_description =>
      'Signaleert dreigementen of acties om identiteitsdocumenten te nemen, verbergen of vernietigen om ontsnapping te voorkomen.';

  @override
  String get metric_ugly_58_name => 'Patronen van Gewelddadige Jaloezie';

  @override
  String get metric_ugly_58_description =>
      'Identificeert jaloezie die is geëscaleerd naar expliciete dreigementen, surveillance of gewelddadige vergelding.';

  @override
  String get metric_ugly_59_name => 'Patronen van Woede-uitbarstingen';

  @override
  String get metric_ugly_59_description =>
      'Detecteert beschrijvingen of patronen van explosieve gewelddadige uitbarstingen die onevenredig zijn aan elke trigger.';

  @override
  String get metric_ugly_60_name => 'Escalatie van Dwingende Controle';

  @override
  String get metric_ugly_60_description =>
      'Volgt toenemende ernst en breedte van dwingende controle tactieken in de loop van de tijd.';

  @override
  String get metric_ugly_61_name => 'Taal van Angstgedreven Naleving';

  @override
  String get metric_ugly_61_description =>
      'Identificeert naleving die volledig wordt gedreven door angst voor geweld of zware straf in plaats van keuze.';

  @override
  String get metric_ugly_62_name => 'Taal van Strafrituelen';

  @override
  String get metric_ugly_62_description =>
      'Detecteert verwijzingen naar systematische strafpraktijken die worden gebruikt om naleving en controle af te dwingen.';

  @override
  String get metric_ugly_63_name => 'Indicatoren van Degradatierituelen';

  @override
  String get metric_ugly_63_description =>
      'Signaleert systematische degradatie- of vernederingsrituelen bedoeld om waardigheid te vernietigen.';

  @override
  String get metric_ugly_64_name =>
      'Dreigingen met niet-consensuele openbaarmaking';

  @override
  String get metric_ugly_64_description =>
      'Identificeert dreigingen om intieme afbeeldingen, privégegevens of geheimen zonder toestemming openbaar te maken.';

  @override
  String get metric_ugly_65_name => 'Dreigingen met beeldgebaseerd misbruik';

  @override
  String get metric_ugly_65_description =>
      'Detecteert dreigingen om intieme afbeeldingen te verspreiden als wraak, straf of chantage.';

  @override
  String get metric_ugly_66_name => 'Financiële valstrik tactieken';

  @override
  String get metric_ugly_66_description =>
      'Markeert het opzettelijk creëren van financiële afhankelijkheid die zelfstandig overleven onmogelijk maakt.';

  @override
  String get metric_ugly_67_name => 'Taal over huisvestingsdreigingen';

  @override
  String get metric_ugly_67_description =>
      'Detecteert dreigingen om de partner dakloos te maken, toegang tot huisvesting te ontnemen of de veiligheid van onderdak te vernietigen.';

  @override
  String get metric_ugly_68_name => 'Dreigingen met immigratiestatus';

  @override
  String get metric_ugly_68_description =>
      'Identificeert dreigingen om de immigratiestatus te melden of visumsponsoring in te trekken als controlemechanisme.';

  @override
  String get metric_ugly_69_name => 'Religieus of spiritueel misbruik';

  @override
  String get metric_ugly_69_description =>
      'Detecteert het gebruik van religieus gezag, doctrine of spirituele dreiging om te controleren, straffen of schaden.';

  @override
  String get metric_ugly_70_name => 'Wapen van culturele schaamte';

  @override
  String get metric_ugly_70_description =>
      'Markeert dreigingen om gedrag bloot te stellen aan de culturele of familiegemeenschap als straf.';

  @override
  String get metric_ugly_71_name => 'Dreigingen met schade aan familie';

  @override
  String get metric_ugly_71_description =>
      'Identificeert dreigingen om familieleden, kinderen of dierbaren van de partner te schaden als drukmiddel.';

  @override
  String get metric_ugly_72_name => 'Gecoördineerde intimidatiecampagne';

  @override
  String get metric_ugly_72_description =>
      'Detecteert het organiseren van anderen om de partner collectief lastig te vallen, te stalken of te intimideren.';

  @override
  String get metric_ugly_73_name => 'Dreigementen met valse aangifte';

  @override
  String get metric_ugly_73_description =>
      'Geeft aan dat er wordt gedreigd met valse politierapporten of juridische beschuldigingen tegen de partner.';

  @override
  String get metric_ugly_74_name => 'Weaponisatie van het rechtssysteem';

  @override
  String get metric_ugly_74_description =>
      'Identificeert het gebruik van juridische procedures, rechtbanken of beschermingsbevelen als wapens voor intimidatie.';

  @override
  String get metric_ugly_75_name => 'Overtreding contactverbod';

  @override
  String get metric_ugly_75_description =>
      'Detecteert verwijzingen naar het overtreden of plannen om beschermings- of contactverboden te overtreden.';

  @override
  String get metric_ugly_76_name => 'Dreigementen met werkpleksabotage';

  @override
  String get metric_ugly_76_description =>
      'Geeft aan dat er wordt gedreigd contact op te nemen met werkgevers, collega\'s of klanten om het levensonderhoud van de partner te vernietigen.';

  @override
  String get metric_ugly_77_name => 'Dreigementen met sociale vernietiging';

  @override
  String get metric_ugly_77_description =>
      'Detecteert dreigementen om de reputatie, relaties en sociale status van de partner te vernietigen.';

  @override
  String get metric_ugly_78_name => 'Systematische misleidingscampagne';

  @override
  String get metric_ugly_78_description =>
      'Identificeert langdurige, uitgebreide misleiding die is ontworpen om de partner financieel of emotioneel uit te buiten.';

  @override
  String get metric_ugly_79_name => 'Eigendomsvernietiging als terreur';

  @override
  String get metric_ugly_79_description =>
      'Identificeert opzettelijke vernietiging van eigendommen van de partner als intimidatietactiek.';

  @override
  String get metric_ugly_80_name =>
      'Dierenmishandeling als plaatsvervangende terreur';

  @override
  String get metric_ugly_80_description =>
      'Detecteert het verwonden of bedreigen van huisdieren om het vermogen tot geweld tegen de partner te demonstreren.';

  @override
  String get metric_ugly_81_name => 'Taal over kind in gevaar brengen';

  @override
  String get metric_ugly_81_description =>
      'Geeft aan dat kinderen in gevaarlijke situaties worden gebracht of dat ermee wordt gedreigd als hefboom.';

  @override
  String get metric_ugly_82_name => 'Controle op basis van handicap';

  @override
  String get metric_ugly_82_description =>
      'Detecteert het misbruiken van de handicap van de partner door controle over medicatie, mobiliteit of zorg.';

  @override
  String get metric_ugly_83_name => 'Gefabriceerde crisiscontrole';

  @override
  String get metric_ugly_83_description =>
      'Signaleert het opzettelijk creëren van noodsituaties of crises om de afhankelijkheid van de partner te vergroten of toezicht te rechtvaardigen.';

  @override
  String get metric_ugly_84_name => 'Isolatie van hulpdiensten';

  @override
  String get metric_ugly_84_description =>
      'Identificeert het actief verhinderen dat de partner de politie, ambulance of crisisdiensten belt.';

  @override
  String get metric_ugly_85_name => 'Escalatietraject van dreigementen';

  @override
  String get metric_ugly_85_description =>
      'Volgt meetbare toename in ernst, specificiteit of frequentie van dreigementen in de loop van de tijd.';

  @override
  String get metric_ugly_86_name => 'Indicatoren voor letaliteitsbeoordeling';

  @override
  String get metric_ugly_86_description =>
      'Signaleert combinaties van factoren die samenhangen met het hoogste risico op partnerdoding.';

  @override
  String get metric_ugly_87_name => 'Psychologische marteltactieken';

  @override
  String get metric_ugly_87_description =>
      'Identificeert aanhoudend psychologisch misbruik dat erop gericht is de mentale stabiliteit van de partner te breken.';

  @override
  String get metric_ugly_88_name => 'Gevangenschapstaal';

  @override
  String get metric_ugly_88_description =>
      'Detecteert verwijzingen naar het gevangen houden van de partner, het verhinderen van vertrek of het controleren van alle bewegingen.';

  @override
  String get metric_ugly_89_name => 'Planning van gericht geweld';

  @override
  String get metric_ugly_89_description =>
      'Detecteert taal die wijst op planning, voorbereiding of aftellen naar geweld tegen de partner.';

  @override
  String get metric_ugly_90_name => 'Werving van derden voor bedreiging';

  @override
  String get metric_ugly_90_description =>
      'Identificeert het rekruteren van vrienden, familie of anderen om de partner te bedreigen of te beschadigen.';

  @override
  String get metric_ugly_91_name => 'Uitbuiting van suïcidale gedachten';

  @override
  String get metric_ugly_91_description =>
      'Signaleert het misbruiken van de suïcidale crisis van een partner als pressiemiddel of om hen ervan te weerhouden hulp te zoeken.';

  @override
  String get metric_ugly_92_name =>
      'Dreigementen met vergiftiging of drogering';

  @override
  String get metric_ugly_92_description =>
      'Detecteert dreigementen of verwijzingen naar drogeren, vergiftigen of knoeien met het eten of drinken van de partner.';

  @override
  String get metric_ugly_93_name =>
      'Uitbuiting van niet-suïcidale zelfbeschadiging';

  @override
  String get metric_ugly_93_description =>
      'Signaleert het misbruiken van zelfbeschadigend gedrag van de partner als pressiemiddel, spot of verdere controle.';

  @override
  String get metric_ugly_94_name => 'Taal voor het opwekken van dissociatie';

  @override
  String get metric_ugly_94_description =>
      'Detecteert patronen die bedoeld zijn om dissociatie, afstandelijkheid of depersonalisatie bij de partner te veroorzaken.';

  @override
  String get metric_ugly_95_name => 'Implanteren van cognitieve vertekening';

  @override
  String get metric_ugly_95_description =>
      'Detecteert het opzettelijk aanbrengen van valse overtuigingen over het zelf, de werkelijkheid of de eigen geestelijke gezondheid van de partner.';

  @override
  String get metric_ugly_96_name => 'Belemmering van medische zorg';

  @override
  String get metric_ugly_96_description =>
      'Detecteert het belemmeren van toegang tot medicatie, artsen, ziekenhuizen of gezondheidszorg.';

  @override
  String get metric_ugly_97_name => 'Extremistische dreigtaal';

  @override
  String get metric_ugly_97_description =>
      'Signaleert taal die is ontleend aan extremistische of gewelddadige ideologische kaders en wordt toegepast op de partner.';

  @override
  String get metric_ugly_98_name => 'Signalen van stalking na scheiding';

  @override
  String get metric_ugly_98_description =>
      'Detecteert dreigementen, taal over toezicht of intimidatietactieken na of in afwachting van een relatiebreuk.';

  @override
  String get metric_ugly_99_name => 'Inzetten van kinderen als wapen';

  @override
  String get metric_ugly_99_description =>
      'Identificeert het gebruik van kinderen als pionnen, dreigementen over voogdij of het inzetten van ouderbanden als controlemiddel.';

  @override
  String get metric_ugly_100_name => 'Systematische Ontmenselijking';

  @override
  String get metric_ugly_100_description =>
      'Detecteert aanhoudend taalgebruik dat de partner ontdoet van persoonlijkheid, waardigheid of het recht op basale menselijkheid.';

  @override
  String get metric_narcissist_1_name => 'Grootschalig Zelfbelang';

  @override
  String get metric_narcissist_1_description =>
      'Overdreven beweringen over prestaties, talenten of status die verder gaan dan realistisch bewijs, vaak met een gevoel van uniciteit.';

  @override
  String get metric_narcissist_2_name => 'Rechtmatige Eisen';

  @override
  String get metric_narcissist_2_description =>
      'Onredelijke verwachtingen van speciale behandeling of automatische naleving van hun wensen zonder wederkerigheid.';

  @override
  String get metric_narcissist_3_name => 'Empathietekort';

  @override
  String get metric_narcissist_3_description =>
      'Onvermogen of onwil om de gevoelens van anderen te herkennen of te valideren, waarbij emotionele behoeften als irrelevant worden afgedaan.';

  @override
  String get metric_narcissist_4_name => 'Lofzoekend Gedrag';

  @override
  String get metric_narcissist_4_description =>
      'Overmatig vissen naar bewondering, complimenten of validatie om het fragiele zelfbeeld te versterken.';

  @override
  String get metric_narcissist_5_name => 'Triangulatietactieken';

  @override
  String get metric_narcissist_5_description =>
      'Het introduceren van een derde partij in conflicten om jaloezie, concurrentie of manipulatie van percepties te creëren.';

  @override
  String get metric_narcissist_6_name => 'Liefdesbombardement Intensiteit';

  @override
  String get metric_narcissist_6_description =>
      'Overweldigende vleierij, geschenken of aandacht in het begin van een relatie om controle te krijgen en het doelwit te idealiseren.';

  @override
  String get metric_narcissist_7_name => 'Devaluatiekritiek';

  @override
  String get metric_narcissist_7_description =>
      'Plotselinge verschuiving naar harde kritiek, kleineren of minachting na idealisering, waardoor het zelfbeeld van het doelwit wordt aangetast.';

  @override
  String get metric_narcissist_8_name => 'Stiltebehandeling Straf';

  @override
  String get metric_narcissist_8_description =>
      'Het onthouden van communicatie of genegenheid als een opzettelijke straf om angst en gehoorzaamheid te induceren.';

  @override
  String get metric_narcissist_9_name => 'DARVO Schuldverschuiving';

  @override
  String get metric_narcissist_9_description =>
      'Het ontkennen van verantwoordelijkheid, het aanvallen van de aanklager en het omkeren van slachtoffer-daderrollen om verantwoording te ontwijken.';

  @override
  String get metric_narcissist_10_name => 'Gaslighting Realiteitsvervorming';

  @override
  String get metric_narcissist_10_description =>
      'Het ontkennen of verdraaien van feiten, gebeurtenissen of gevoelens om het doelwit te laten twijfelen aan hun eigen geheugen of gezond verstand.';

  @override
  String get metric_narcissist_11_name => 'Woede bij Kritiek';

  @override
  String get metric_narcissist_11_description =>
      'Intense woede, minachting of vergelding als reactie op elke waargenomen belediging of feedback, zelfs als deze constructief is.';

  @override
  String get metric_narcissist_12_name => 'Grensschending';

  @override
  String get metric_narcissist_12_description =>
      'Het negeren of overschrijden van gestelde grenzen, privacy of persoonlijke ruimte zonder spijt of overleg.';

  @override
  String get metric_narcissist_13_name => 'Afgunst Uiten';

  @override
  String get metric_narcissist_13_description =>
      'Wrok over successen of bezittingen van anderen, vaak gepaard met devaluatie of pogingen om te ondermijnen.';

  @override
  String get metric_narcissist_14_name => 'Uitbuitend Gedrag';

  @override
  String get metric_narcissist_14_description =>
      'Anderen gebruiken voor persoonlijk gewin, status of middelen zonder rekening te houden met hun welzijn of toestemming.';

  @override
  String get metric_narcissist_15_name => 'Spiegelmanipulatie';

  @override
  String get metric_narcissist_15_description =>
      'Het imiteren van de interesses, waarden of eigenschappen van het doelwit om een valse verstandhouding te creëren en vertrouwen te winnen.';

  @override
  String get metric_narcissist_16_name => 'Superioriteitsclaims';

  @override
  String get metric_narcissist_16_description =>
      'Het beweren van inherente superioriteit over anderen, vaak met neerbuigende of afwijzende taal.';

  @override
  String get metric_narcissist_17_name => 'Fantasiepreoccupatie';

  @override
  String get metric_narcissist_17_description =>
      'Obsessief praten over onbeperkt succes, macht, briljantie of ideale liefde die onrealistisch is.';

  @override
  String get metric_narcissist_18_name => 'Bijzondere Statusclaim';

  @override
  String get metric_narcissist_18_description =>
      'De overtuiging dat ze alleen begrepen kunnen worden door of omgaan met hooggeplaatste personen of instellingen.';

  @override
  String get metric_narcissist_19_name => 'Interpersoonlijke Uitbuiting';

  @override
  String get metric_narcissist_19_description =>
      'Profiteren van de middelen, tijd of emoties van anderen zonder wederkerigheid of dankbaarheid.';

  @override
  String get metric_narcissist_20_name => 'Gebrek aan Berouw';

  @override
  String get metric_narcissist_20_description =>
      'Afwezigheid van schuldgevoel of verontschuldiging na het veroorzaken van schade, waarbij acties vaak worden gerechtvaardigd als verdiend door het doelwit.';

  @override
  String get metric_narcissist_21_name => 'Concurrerende ondermijning';

  @override
  String get metric_narcissist_21_description =>
      'Het saboteren van prestaties of relaties van anderen om een superieure positie te behouden.';

  @override
  String get metric_narcissist_22_name => 'Idealiseringsfase';

  @override
  String get metric_narcissist_22_description =>
      'Overmatige lof en aanbidding in het begin van een relatie, waardoor onrealistische verwachtingen bij het doelwit worden gewekt.';

  @override
  String get metric_narcissist_23_name => 'Devaluatiefase';

  @override
  String get metric_narcissist_23_description =>
      'Geleidelijke of plotselinge kritiek en minachting na idealisering, wat verwarring en zelftwijfel veroorzaakt.';

  @override
  String get metric_narcissist_24_name => 'Afstootimpuls';

  @override
  String get metric_narcissist_24_description =>
      'Het abrupt beëindigen van relaties wanneer het doelwit geen narcistische voeding meer biedt of hen uitdaagt.';

  @override
  String get metric_narcissist_25_name => 'Hoovering-pogingen';

  @override
  String get metric_narcissist_25_description =>
      'Het opnieuw betrekken van een afgestoten doelwit met beloften, schuldgevoel of manipulatie om voeding te herwinnen.';

  @override
  String get metric_narcissist_26_name => 'Projectie van gebreken';

  @override
  String get metric_narcissist_26_description =>
      'Het beschuldigen van anderen van hun eigen negatieve eigenschappen of gedragingen om zelfbewustzijn te vermijden.';

  @override
  String get metric_narcissist_27_name => 'Controle door schuldgevoel';

  @override
  String get metric_narcissist_27_description =>
      'Het gebruiken van schuldinducerende uitspraken om anderen te manipuleren tot naleving of zorg.';

  @override
  String get metric_narcissist_28_name => 'Emotionele volatiliteit';

  @override
  String get metric_narcissist_28_description =>
      'Snelle stemmingswisselingen van charme naar woede, vaak getriggerd door waargenomen narcistische verwonding.';

  @override
  String get metric_narcissist_29_name => 'Ongeldigverklaring van gevoelens';

  @override
  String get metric_narcissist_29_description =>
      'Het afwijzen of minimaliseren van emoties van anderen als overdreven reacties of irrationeel.';

  @override
  String get metric_narcissist_30_name => 'Gesprekken monopoliseren';

  @override
  String get metric_narcissist_30_description =>
      'Het domineren van dialoog met zelfgerichte onderwerpen, onderbreken of negeren van inbreng van anderen.';

  @override
  String get metric_narcissist_31_name => 'Beledigende Benaming';

  @override
  String get metric_narcissist_31_description =>
      'Het gebruik van beledigingen, labels of kleinerende termen om het doelwit te devalueren en te controleren.';

  @override
  String get metric_narcissist_32_name => 'Dreigementen van Verlating';

  @override
  String get metric_narcissist_32_description =>
      'Het gebruik van angst voor verlies of afwijzing om gehoorzaamheid of aandacht af te dwingen.';

  @override
  String get metric_narcissist_33_name => 'Zich Voordoen als Slachtoffer';

  @override
  String get metric_narcissist_33_description =>
      'Zichzelf voorstellen als onterecht behandeld om sympathie op te wekken en verantwoordelijkheid te ontwijken.';

  @override
  String get metric_narcissist_34_name => 'Martelaarscomplex';

  @override
  String get metric_narcissist_34_description =>
      'Beweren van buitensporige opoffering of lijden om schuldgevoel en verplichting bij anderen op te wekken.';

  @override
  String get metric_narcissist_35_name => 'Selectief Geheugen';

  @override
  String get metric_narcissist_35_description =>
      'Handig vergeten van beloften, afspraken of schadelijke acties om verantwoordelijkheid te vermijden.';

  @override
  String get metric_narcissist_36_name => 'Communicatie Blokkeren';

  @override
  String get metric_narcissist_36_description =>
      'Weigeren om in dialoog te gaan, vragen negeren of discussies afkappen om controle te behouden.';

  @override
  String get metric_narcissist_37_name => 'Toekomstvervalsing';

  @override
  String get metric_narcissist_37_description =>
      'Grootschalige beloften doen over gedeelde toekomstplannen om valse hoop en afhankelijkheid te creëren.';

  @override
  String get metric_narcissist_38_name => 'Lastercampagne';

  @override
  String get metric_narcissist_38_description =>
      'Het verspreiden van kwaadaardige geruchten of leugens over het doelwit om hen te isoleren en reputatie te beschadigen.';

  @override
  String get metric_narcissist_39_name => 'Isolatietactieken';

  @override
  String get metric_narcissist_39_description =>
      'Het ontmoedigen of voorkomen van contact met vrienden, familie of steunsystemen om afhankelijkheid te vergroten.';

  @override
  String get metric_narcissist_40_name => 'Financiële Uitbuiting';

  @override
  String get metric_narcissist_40_description =>
      'Het manipuleren of controleren van financiële middelen voor persoonlijk gewin of om afhankelijkheid te creëren.';

  @override
  String get metric_narcissist_41_name => 'Seksuele dwang';

  @override
  String get metric_narcissist_41_description =>
      'Het gebruiken van druk, schuldgevoel of manipulatie om seksuele instemming te verkrijgen zonder echte toestemming.';

  @override
  String get metric_narcissist_42_name => 'Grenzen testen';

  @override
  String get metric_narcissist_42_description =>
      'Herhaaldelijk grenzen opzoeken om te zien welk gedrag getolereerd wordt, waarna de overtredingen worden opgevoerd.';

  @override
  String get metric_narcissist_43_name => 'Gaslighting-ontkenning';

  @override
  String get metric_narcissist_43_description =>
      'Vlakweg ontkennen van gebeurtenissen of uitspraken die hebben plaatsgevonden, waardoor het doelwit aan de realiteit gaat twijfelen.';

  @override
  String get metric_narcissist_44_name => 'Bagatelliseren van zorgen';

  @override
  String get metric_narcissist_44_description =>
      'Legitieme klachten afdoen als onbelangrijk of overdreven gevoelig.';

  @override
  String get metric_narcissist_45_name => 'Externalisatie van schuld';

  @override
  String get metric_narcissist_45_description =>
      'Alle problemen en conflicten aan anderen toeschrijven, nooit eigen fouten accepteren.';

  @override
  String get metric_narcissist_46_name => 'Uitlokken van jaloezie';

  @override
  String get metric_narcissist_46_description =>
      'Flirten met of anderen prijzen om jaloezie op te wekken en emotionele controle te behouden.';

  @override
  String get metric_narcissist_47_name => 'Emotionele chantage';

  @override
  String get metric_narcissist_47_description =>
      'Gebruikmaken van angst, verplichting of schuldgevoel om beslissingen en gedrag te manipuleren.';

  @override
  String get metric_narcissist_48_name => 'Schijninzicht';

  @override
  String get metric_narcissist_48_description =>
      'Voorwenden van zelfbewustzijn of empathie om hervormd te lijken, waarna terugval in toxische patronen.';

  @override
  String get metric_narcissist_49_name => 'Minachtende toon';

  @override
  String get metric_narcissist_49_description =>
      'Gebruik van sarcasme, spot of minachtende taal om anderen te kleineren en af te wijzen.';

  @override
  String get metric_narcissist_50_name => 'Wraakfantasieën';

  @override
  String get metric_narcissist_50_description =>
      'Uiten van verlangens naar vergelding of straf tegen degenen die hen hebben beledigd.';

  @override
  String get metric_serial_killer_1_name => 'Predatorische framing';

  @override
  String get metric_serial_killer_1_description =>
      'Detecteert taal die de spreker positioneert als jager en het doelwit als prooi, wat wijst op roofzuchtige intentie.';

  @override
  String get metric_serial_killer_2_name => 'Empathietekort';

  @override
  String get metric_serial_killer_2_description =>
      'Identificeert uitspraken zonder emotionele resonantie of bezorgdheid voor het lijden van anderen, wat duidt op ongevoeligheid.';

  @override
  String get metric_serial_killer_3_name => 'Ontmenselijkende labels';

  @override
  String get metric_serial_killer_3_description =>
      'Markeert het gebruik van denigrerende termen of objectiverende labels die slachtoffers van hun menselijkheid ontdoen.';

  @override
  String get metric_serial_killer_4_name => 'Objectiveringssignalen';

  @override
  String get metric_serial_killer_4_description =>
      'Herkent taal die individuen behandelt als gereedschap of objecten voor bevrediging.';

  @override
  String get metric_serial_killer_5_name => 'Controlefixatie';

  @override
  String get metric_serial_killer_5_description =>
      'Detecteert obsessieve verwijzingen naar dominantie, manipulatie of het afdwingen van gehoorzaamheid.';

  @override
  String get metric_serial_killer_6_name => 'Sensatiezoekende toon';

  @override
  String get metric_serial_killer_6_description =>
      'Identificeert opwinding of opwinding bij het beschrijven van risicovolle, gewelddadige of roofzuchtige handelingen.';

  @override
  String get metric_serial_killer_7_name => 'Compartimentalisatiemarkers';

  @override
  String get metric_serial_killer_7_description =>
      'Markeert abrupte verschuivingen tussen normale en gewelddadige onderwerpen, wat wijst op psychologische scheiding.';

  @override
  String get metric_serial_killer_8_name => 'Slachtofferselectiesignalen';

  @override
  String get metric_serial_killer_8_description =>
      'Detecteert criteria of voorkeuren voor het targeten van specifieke kwetsbare groepen.';

  @override
  String get metric_serial_killer_9_name => 'Sadistisch genot';

  @override
  String get metric_serial_killer_9_description =>
      'Herkent plezier dat wordt ontleend aan de pijn, angst of het lijden van anderen.';

  @override
  String get metric_serial_killer_10_name => 'Manipulatieve schade';

  @override
  String get metric_serial_killer_10_description =>
      'Identificeert taal die wordt gebruikt om anderen te misleiden of te dwingen tot schadelijke situaties.';

  @override
  String get metric_serial_killer_11_name => 'Stalkingindicatoren';

  @override
  String get metric_serial_killer_11_description =>
      'Markeert gedetailleerd volgen, surveilleren of obsessief monitoren van een doelwit.';

  @override
  String get metric_serial_killer_12_name => 'Groomingtaal';

  @override
  String get metric_serial_killer_12_description =>
      'Detecteert geleidelijke vertrouwenwekkende tactieken om slachtoffers te exploiteren of misbruiken.';

  @override
  String get metric_serial_killer_13_name => 'Gewelddadige Fantasieën';

  @override
  String get metric_serial_killer_13_description =>
      'Identificeert levendige beschrijvingen van het schaden of doden van anderen als mentale repetitie.';

  @override
  String get metric_serial_killer_14_name => 'Machtsassertie';

  @override
  String get metric_serial_killer_14_description =>
      'Herken uitspraken die superioriteit of controle over anderen benadrukken.';

  @override
  String get metric_serial_killer_15_name => 'Gebrek aan Berouw';

  @override
  String get metric_serial_killer_15_description =>
      'Markeert afwezigheid van schuld of spijt na het bespreken van schadelijke acties.';

  @override
  String get metric_serial_killer_16_name => 'Externe Schuldtoewijzing';

  @override
  String get metric_serial_killer_16_description =>
      'Detecteert het verschuiven van verantwoordelijkheid voor gewelddadige driften naar slachtoffers of de samenleving.';

  @override
  String get metric_serial_killer_17_name => 'Geseksualiseerd Geweld';

  @override
  String get metric_serial_killer_17_description =>
      'Identificeert het samenvoegen van seksuele en gewelddadige thema\'s in taal.';

  @override
  String get metric_serial_killer_18_name => 'Isolatietactieken';

  @override
  String get metric_serial_killer_18_description =>
      'Herken inspanningen om een doelwit te scheiden van ondersteuningsnetwerken.';

  @override
  String get metric_serial_killer_19_name => 'Gaslightingpatronen';

  @override
  String get metric_serial_killer_19_description =>
      'Markeert taal die bedoeld is om de werkelijkheid te verdraaien en de geestelijke gezondheid van een slachtoffer te ondermijnen.';

  @override
  String get metric_serial_killer_20_name => 'Verhulde Dreigingen';

  @override
  String get metric_serial_killer_20_description =>
      'Detecteert impliciete dreigingen of waarschuwingen vermomd als terloopse opmerkingen.';

  @override
  String get metric_serial_killer_21_name => 'Bezittelijk taalgebruik';

  @override
  String get metric_serial_killer_21_description =>
      'Identificeert claims van eigendom of recht over een andere persoon.';

  @override
  String get metric_serial_killer_22_name => 'Wraakthema\'s';

  @override
  String get metric_serial_killer_22_description =>
      'Herken fixatie op vergelding of het bestraffen van vermeende onrechtvaardigheden.';

  @override
  String get metric_serial_killer_23_name => 'Narcistische grootsheid';

  @override
  String get metric_serial_killer_23_description =>
      'Markeert overdreven zelfbelang en minachting voor de waarde van anderen.';

  @override
  String get metric_serial_killer_24_name => 'Emotionele afstandelijkheid';

  @override
  String get metric_serial_killer_24_description =>
      'Detecteert een klinische of afstandelijke toon bij het bespreken van trauma of schade.';

  @override
  String get metric_serial_killer_25_name => 'Predatorisch geduld';

  @override
  String get metric_serial_killer_25_description =>
      'Identificeert taal van langetermijnplanning voor toekomstige victimisatie.';

  @override
  String get metric_serial_killer_26_name => 'Grenzen testen';

  @override
  String get metric_serial_killer_26_description =>
      'Herken het aftasten van grenzen of weerstand bij potentiële slachtoffers.';

  @override
  String get metric_serial_killer_27_name => 'Minimalisatie van schade';

  @override
  String get metric_serial_killer_27_description =>
      'Markeert het bagatelliseren van de ernst van gewelddadige of misbruikende handelingen.';

  @override
  String get metric_serial_killer_28_name => 'Rechtvaardiging van geweld';

  @override
  String get metric_serial_killer_28_description =>
      'Detecteert rationalisaties om anderen te schaden als noodzakelijk of verdiend.';

  @override
  String get metric_serial_killer_29_name => 'Obsessieve focus';

  @override
  String get metric_serial_killer_29_description =>
      'Identificeert repetitieve, gefixeerde gedachten over een specifiek persoon of handeling.';

  @override
  String get metric_serial_killer_30_name => 'Koude berekening';

  @override
  String get metric_serial_killer_30_description =>
      'Herken strategische, emotieloze planning van schadelijke acties.';

  @override
  String get metric_serial_killer_31_name => 'Bedrieglijke charme';

  @override
  String get metric_serial_killer_31_description =>
      'Markeert overdreven vleiende of vleierige taal om te manipuleren.';

  @override
  String get metric_serial_killer_32_name => 'Slachtoffer de schuld geven';

  @override
  String get metric_serial_killer_32_description =>
      'Detecteert het toeschrijven van schuld aan het doelwit voor hun eigen victimisatie.';

  @override
  String get metric_serial_killer_33_name => 'Escalatiesignalen';

  @override
  String get metric_serial_killer_33_description =>
      'Identificeert de overgang van fantasie naar intentie in gewelddadige taal.';

  @override
  String get metric_serial_killer_34_name => 'Parasitaire oriëntatie';

  @override
  String get metric_serial_killer_34_description =>
      'Herken taal die anderen behandelt als hulpbronnen om te exploiteren.';

  @override
  String get metric_serial_killer_35_name => 'Opwindingssignalen';

  @override
  String get metric_serial_killer_35_description =>
      'Markeert fysiologische opwindingsindicatoren die verband houden met gewelddadige thema\'s.';

  @override
  String get metric_serial_killer_36_name => 'Loyaliteit testen';

  @override
  String get metric_serial_killer_36_description =>
      'Detecteert eisen voor bewijs van trouw of geheimhouding van medeplichtigen.';

  @override
  String get metric_serial_killer_37_name => 'Ritualistische taal';

  @override
  String get metric_serial_killer_37_description =>
      'Identificeert gestructureerde, ceremoniële formuleringen rond gewelddadige handelingen.';

  @override
  String get metric_serial_killer_38_name => 'Superioriteitsclaims';

  @override
  String get metric_serial_killer_38_description =>
      'Herken beweringen van boven morele of wettelijke beperkingen te staan.';

  @override
  String get metric_serial_killer_39_name => 'Emotioneel vacuüm';

  @override
  String get metric_serial_killer_39_description =>
      'Markeert de afwezigheid van emotionele woorden in contexten die empathie vereisen.';

  @override
  String get metric_serial_killer_40_name => 'Predatorische nieuwsgierigheid';

  @override
  String get metric_serial_killer_40_description =>
      'Detecteert onderzoekende vragen over de angsten of kwetsbaarheden van een doelwit.';

  @override
  String get metric_serial_killer_41_name => 'Stiltebedreigingen';

  @override
  String get metric_serial_killer_41_description =>
      'Identificeert waarschuwingen om openbaarmaking of melding te voorkomen.';

  @override
  String get metric_serial_killer_42_name => 'Ontmenselijkende Vergelijkingen';

  @override
  String get metric_serial_killer_42_description =>
      'Herken het gelijkstellen van mensen aan dieren, objecten of subhumane entiteiten.';

  @override
  String get metric_serial_killer_43_name => 'Controletaal';

  @override
  String get metric_serial_killer_43_description =>
      'Markeert imperatieve of bevelende tonen gericht op het domineren van anderen.';

  @override
  String get metric_serial_killer_44_name => 'Sadistisch Detail';

  @override
  String get metric_serial_killer_44_description =>
      'Detecteert overmatige focus op grafische pijn of lijden in verhalen.';

  @override
  String get metric_serial_killer_45_name => 'Manipulatief Medeleven';

  @override
  String get metric_serial_killer_45_description =>
      'Identificeert geveinsde bezorgdheid om de verdediging van een doelwit te verlagen.';

  @override
  String get metric_serial_killer_46_name => 'Roofzuchtige Blik';

  @override
  String get metric_serial_killer_46_description =>
      'Herken taal die intense, indringende observatie van doelwitten beschrijft.';

  @override
  String get metric_serial_killer_47_name => 'Gewelddadige Identiteit';

  @override
  String get metric_serial_killer_47_description =>
      'Markeert zelfidentificatie als een roofdier, moordenaar of monster.';

  @override
  String get metric_serial_killer_48_name => 'Opwinding van de Jacht';

  @override
  String get metric_serial_killer_48_description =>
      'Detecteert opwinding in het proces van het stalken of achtervolgen van slachtoffers.';

  @override
  String get metric_serial_killer_49_name => 'Dwangmatige Bekentenis';

  @override
  String get metric_serial_killer_49_description =>
      'Identificeert drang om gewelddadige daden te onthullen voor psychologische verlichting.';

  @override
  String get metric_serial_killer_50_name => 'Finaliteitstaal';

  @override
  String get metric_serial_killer_50_description =>
      'Herken verwijzingen naar het beëindigen, doden of permanent tot zwijgen brengen van doelwitten.';

  @override
  String get packNarcissistLabel => 'De Narcist';

  @override
  String get packSerialKillerLabel => 'De Seriemoordenaar';
}
