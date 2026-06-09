// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'Analizator Toksyczności Związków AI';

  @override
  String get psychologicalMetrics => 'Metryki Psychologiczne';

  @override
  String get metricsDescription =>
      'Mniej wybranych metryk zapewnia głębszą, bardziej skoncentrowaną analizę tych zachowań. Więcej wybranych metryk zapewnia szerszy raport z mniejszą ilością szczegółów na metrykę.';

  @override
  String get selectSMS => 'Wybierz SMS / RCS Czat';

  @override
  String get selectDiscordChannel => 'Wybierz kanał Discord';

  @override
  String get lightMode => 'Jasny';

  @override
  String get darkMode => 'Ciemny';

  @override
  String get discordSetupTitle => 'Jak Skonfigurować Discord';

  @override
  String get discordSetupDescription =>
      'Postępuj zgodnie z instrukcją, aby włączyć analizę kanałów Discord w aplikacji:';

  @override
  String get discordStep1Title => 'Utwórz Bota Discord';

  @override
  String get discordStep1Description =>
      'Przejdź do discord.com/developers, utwórz nową aplikację i dodaj bota. Skopiuj token bota.';

  @override
  String get discordStep2Title => 'Włącz Uprawnienia Bota';

  @override
  String get discordStep2Description =>
      'W ustawieniach bota włącz \'Message Content Intent\' i \'Server Members Intent\'.';

  @override
  String get discordStep3Title => 'Zaproś Bota na Serwer';

  @override
  String get discordStep3Description =>
      'Użyj generatora URL OAuth2, aby zaprosić bota na swój serwer Discord z niezbędnymi uprawnieniami.';

  @override
  String get discordStep4Title => 'Skonfiguruj w Aplikacji';

  @override
  String get discordStep4Description =>
      'Wprowadź swój token bota w ustawieniach aplikacji (skontaktuj się z pomocą techniczną, jeśli potrzebujesz pomocy).';

  @override
  String get discordStep5Title => 'Wybierz Kanał';

  @override
  String get discordStep5Description =>
      'Dotknij \'Wybierz Kanał Discord\', wybierz swój serwer, a następnie wybierz kanał do analizy.';

  @override
  String get gotIt => 'Rozumiem';

  @override
  String get selectFile => 'Wybierz plik';

  @override
  String get analyzeSelectedMetrics => 'Analizuj wybrane metryki';

  @override
  String get analyze20RandomMetrics => 'Analizuj 20 losowych metryk';

  @override
  String get membershipOptions => 'Opcje członkostwa';

  @override
  String get free => 'Darmowy';

  @override
  String get oneTimeUnlock => 'Jednorazowe odblokowanie raportu';

  @override
  String get standard => 'Standard';

  @override
  String get discordAddon => 'Dodatek Discord';

  @override
  String get analyze => 'Analizuj';

  @override
  String get report => 'Raport';

  @override
  String get pdfReport => 'Raport PDF';

  @override
  String get openPdf => 'Otwórz PDF';

  @override
  String get sharePdf => 'Udostępnij PDF';

  @override
  String get printPdf => 'Drukuj PDF';

  @override
  String get closePdfPreview => 'Zamknij okno podglądu PDF';

  @override
  String get openPdfPreview => 'Otwórz okno podglądu PDF';

  @override
  String get pdfPreviewDescription =>
      'Wbudowane okno PDF zaczyna się zamknięte, aby raport był kompaktowy.';

  @override
  String get notNow => 'Nie teraz';

  @override
  String get unlockThisReport => 'Odblokuj ten raport - \$20';

  @override
  String get joinStandard => 'Dołącz do Standard - \$9.99/mies.';

  @override
  String get instantUnlockTitle => 'Natychmiastowe odblokowanie raportu - \$20';

  @override
  String get instantUnlockDescription =>
      'To jednorazowy zakup odblokowujący tylko bieżący raport. Subskrypcja nie jest wymagana. Przyszłe raporty będą wymagały oddzielnych odblokowań lub członkostwa.\n\nKontynuować płatność?';

  @override
  String get purchaseFor20 => 'Kup za \$20';

  @override
  String get share => 'Udostępnij';

  @override
  String get print => 'Drukuj';

  @override
  String get save => 'Zapisz';

  @override
  String get cancel => 'Anuluj';

  @override
  String get ok => 'OK';

  @override
  String get loading => 'Ładowanie...';

  @override
  String get error => 'Błąd';

  @override
  String get success => 'Sukces';

  @override
  String get conversations => 'Rozmowy';

  @override
  String get messages => 'Wiadomości';

  @override
  String get selectConversation => 'Wybierz rozmowę';

  @override
  String get selectSmsConversation => 'Wybierz SMS / RCS Rozmowę';

  @override
  String get searchConversations => 'Szukaj rozmów...';

  @override
  String get loadingConversations => 'Ładowanie rozmów...';

  @override
  String get errorLoadingConversations => 'Błąd ładowania rozmów';

  @override
  String get selectConversationToAnalyze => 'Wybierz rozmowę do analizy';

  @override
  String get analyzeWithSelectedMetrics => 'Analizuj z wybranymi metrykami';

  @override
  String get loadConversationAndSelectMetric =>
      'Załaduj rozmowę i wybierz co najmniej jedną metrykę';

  @override
  String get selectAtLeastOneMetric =>
      'Aby uruchomić raport, należy wybrać co najmniej jedną metrykę.';

  @override
  String get spinningMetricWheel => 'Kręcenie kołem metryk...';

  @override
  String get loadConversationToAnalyze => 'Załaduj rozmowę do analizy';

  @override
  String get noConversationsFound => 'Nie znaleziono rozmów';

  @override
  String get permissionsRequired => 'Wymagane uprawnienia';

  @override
  String get smsPermission => 'Wiadomości tekstowe';

  @override
  String get contactsPermission => 'Kontakty';

  @override
  String get smsPermissionDescription =>
      'Aby analizować Twoje rozmowy SMS pod kątem wzorców relacji';

  @override
  String get contactsPermissionDescription =>
      'Aby wyświetlać nazwy kontaktów zamiast numerów telefonów';

  @override
  String get analyzingMessage =>
      'Poczekaj, aż Twoja analiza psychologiczna zostanie wygenerowana przez AI...';

  @override
  String get analyzingStatus => 'Analizowanie rozmowy...';

  @override
  String get analyzingSubMessage =>
      'Prosimy o cierpliwość, ten proces może potrwać do minuty w zależności od szybkości połączenia i liczby wybranych metryk';

  @override
  String get unlockFullReport => 'Odblokuj i pokaż cały ten raport';

  @override
  String get fullReportLocked => 'Pełny raport zablokowany';

  @override
  String get upgradeToUnlock =>
      'Ulepsz swoje członkostwo, aby odblokować pełny raport analizy psychologicznej ze wszystkimi metrykami i szczegółowymi spostrzeżeniami.';

  @override
  String get language => 'Język';

  @override
  String get english => 'Angielski';

  @override
  String get spanish => 'Hiszpański';

  @override
  String get french => 'Francuski';

  @override
  String get german => 'Niemiecki';

  @override
  String get italian => 'Włoski';

  @override
  String get portuguese => 'Portugalski';

  @override
  String get dutch => 'Holenderski';

  @override
  String get russian => 'Rosyjski';

  @override
  String get chinese => 'Chiński';

  @override
  String get japanese => 'Japoński';

  @override
  String get korean => 'Koreański';

  @override
  String get arabic => 'Arabski';

  @override
  String get hindi => 'Hindi';

  @override
  String get turkish => 'Turecki';

  @override
  String get polish => 'Polski';

  @override
  String get ukrainian => 'Ukraiński';

  @override
  String get runAnotherAnalysis => 'Uruchomić kolejną analizę?';

  @override
  String get becomeMemberTitle =>
      'Zostań członkiem, aby otrzymać pełny raport analizy';

  @override
  String get becomeMemberSubtitle =>
      'Wybierz poziom dostępu odpowiadający rozmowom i raportom, które musisz przeanalizować.';

  @override
  String get benefitAnalyzeSms => 'Analizuj wiadomości tekstowe SMS';

  @override
  String get benefitReportPreview => 'Uruchom podgląd raportu';

  @override
  String get benefitViewPartialReport => 'Zobacz około 25% raportu';

  @override
  String get benefitLockedDetails => 'Szczegóły pełnego raportu zablokowane';

  @override
  String get currentFreeAccess => 'Obecny bezpłatny dostęp';

  @override
  String get benefitUnlockCurrentReport => 'Odblokuj ten pełny raport';

  @override
  String get benefitNoSubscription => 'Bez subskrypcji';

  @override
  String get benefitSavePrintShareThis =>
      'Zapisz, drukuj i udostępnij ten raport';

  @override
  String get benefitBestSingleAnalysis =>
      'Najlepsze, jeśli potrzebujesz tylko jednej analizy';

  @override
  String get unlockThisReportShort => 'Odblokuj ten raport';

  @override
  String get benefitFullSmsReport => 'Pełny raport analizy SMS';

  @override
  String get benefitSavePrintSharePdf =>
      'Zapisuj, drukuj i udostępniaj raporty PDF';

  @override
  String get benefitTenReports => '10 raportów na okres 24 godzin';

  @override
  String get benefitBestTextReview =>
      'Najlepsze do przeglądu relacji w wiadomościach tekstowych';

  @override
  String get benefitDateRangeFilter => 'Filtruj analizę według zakresu dat';

  @override
  String get signUpStandard => 'Zarejestruj się w członkostwie Standard';

  @override
  String get benefitAddToStandard => 'Dodaj do członkostwa Standard';

  @override
  String get benefitAnalyzeDiscord => 'Analizuj czaty serwerów Discord';

  @override
  String get benefitRequiresBot => 'Wymaga instalacji bota';

  @override
  String get benefitBestGamers => 'Najlepsze dla graczy i społeczności Discord';

  @override
  String get addDiscordAnalysis => 'Dodaj analizę Discord';

  @override
  String get requiresStandardMembership => 'Wymaga członkostwa Standard';

  @override
  String get comingSoon => 'Wkrótce';

  @override
  String get comingSoonWithNextUpdate => 'Wkrótce w następnej aktualizacji:';

  @override
  String get proMembershipTier => 'Poziom członkostwa Pro - \$19.99';

  @override
  String get proPlusMembershipTier => 'Poziom członkostwa Pro-Plus - \$24.99';

  @override
  String get proGetsLabel => 'Pro obejmuje:';

  @override
  String get proGetsDescription =>
      'Analizuj wątki czatów ze wszystkich innych popularnych platform komunikacyjnych i społecznościowych, takich jak:';

  @override
  String get proPlatformsList =>
      'LinkedIn, WhatsApp, Instagram, Facebook Messenger, Telegram, X (Twitter), e-mail i kalendarz';

  @override
  String get proPlusGetsLabel => 'Pro-Plus obejmuje:';

  @override
  String get proPlusGetsDescription =>
      'Wszystko z Pro, plus dodatek Discord w obniżonej cenie.';

  @override
  String get purchaseSuccessfulUnlocked => 'Zakup udany! Raport odblokowany.';

  @override
  String get purchaseFailed => 'Zakup nie powiódł się. Spróbuj ponownie.';

  @override
  String get membershipActivated => 'Członkostwo aktywowano!';

  @override
  String get dateRangeFilter => 'Filtr Zakresu Dat';

  @override
  String get dateRangeOptional => '(opcjonalnie)';

  @override
  String get startDate => 'Data Początkowa';

  @override
  String get endDate => 'Data Końcowa';

  @override
  String get clear => 'Wyczyść';

  @override
  String get dateRangeRequiresMembership =>
      'Wymaga członkostwa Standard lub wyższego';

  @override
  String selectUpToCount(Object current, Object max) {
    return 'Wybierz do $max. Obecnie: $current';
  }

  @override
  String get clearSelections => 'Wyczyść wybory';

  @override
  String analyzeRandomMetrics(Object count) {
    return 'Analizuj $count losowych metryk';
  }

  @override
  String get saveSelections => 'Zapisz Wybory';

  @override
  String get loadSelections => 'Wczytaj Wybory';

  @override
  String get saveMetricListName => 'Zapisz Listę Metryk';

  @override
  String get enterListName => 'Wprowadź nazwę dla tej listy metryk:';

  @override
  String get chooseSavedMetrics => 'Wybierz zapisaną listę metryk:';

  @override
  String get noSavedLists =>
      'Brak zapisanych list metryk do wczytania w tym momencie.';

  @override
  String get metricListSaved => 'Lista metryk zapisana pomyślnie.';

  @override
  String get metricListLoaded => 'Lista metryk wczytana pomyślnie.';

  @override
  String get filters => 'Filtry';

  @override
  String get sortBy => 'Sortuj według:';

  @override
  String get recent => 'Ostatnie';

  @override
  String get name => 'Nazwa';

  @override
  String get count => 'Liczba';

  @override
  String get namedOnly => 'Tylko nazwane';

  @override
  String get minMessages => 'Min. wiadomości:';

  @override
  String get minimumMessages => 'Minimum wiadomości:';

  @override
  String get executiveSummary => 'Podsumowanie';

  @override
  String get metricScores => 'Wyniki Metryk';

  @override
  String get contextualEvidenceExamples => 'Przykłady Dowodów Kontekstowych';

  @override
  String get neutralSynthesis => 'Neutralna Synteza';

  @override
  String analysisOfSender(Object sender) {
    return 'Analiza $sender (Nadawca)';
  }

  @override
  String analysisOfReceiver(Object receiver) {
    return 'Analiza $receiver (Odbiorca)';
  }

  @override
  String get finalConclusion => 'Wnioski Końcowe';

  @override
  String get metric_1_name => 'Pogarda';

  @override
  String get metric_1_description =>
      'Szuka wyższości, obrzydzenia, drwiny, języka przewracania oczami lub obelg, które stawia jednego partnera poniżej drugiego.';

  @override
  String get metric_2_name => 'Obronność';

  @override
  String get metric_2_description =>
      'Śledzi odruchową samoobronę, kontrataki, wymówki i odmowę rozważenia skargi drugiej osoby.';

  @override
  String get metric_3_name => 'Budowanie muru';

  @override
  String get metric_3_description =>
      'Identyfikuje zamknięcie, wycofanie, ignorowanie, odmowę odpowiedzi lub kończenie rozmów, aby uniknąć zaangażowania.';

  @override
  String get metric_4_name => 'Krytyka';

  @override
  String get metric_4_description =>
      'Wykrywa ataki na charakter lub osobowość zamiast konkretnych zachowań, potrzeb lub incydentów.';

  @override
  String get metric_5_name => 'Wskaźniki gaslightingu';

  @override
  String get metric_5_description =>
      'Oznacza próby sprawienia, by ktoś wątpił w pamięć, percepcję, zdrowie psychiczne lub legalność swojego doświadczenia.';

  @override
  String get metric_6_name => 'Przenoszenie winy';

  @override
  String get metric_6_description =>
      'Mierzy, czy odpowiedzialność jest przekierowywana na drugiego partnera zamiast bezpośredniego uznania.';

  @override
  String get metric_7_name => 'Wzorzec eskalacji';

  @override
  String get metric_7_description =>
      'Ocenia, czy ton, oskarżenia, intensywność lub groźby rosną zamiast zmierzać do rozwiązania.';

  @override
  String get metric_8_name => 'Rozpoznawanie prób naprawy';

  @override
  String get metric_8_description =>
      'Sprawdza, czy przeprosiny, humor, pauzy, uspokojenie lub oferty pokoju są zauważane i akceptowane.';

  @override
  String get metric_9_name => 'Język odpowiedzialności';

  @override
  String get metric_9_description =>
      'Szuka jasnego uznania szkody, konkretnej odpowiedzialności i chęci zmiany zachowania.';

  @override
  String get metric_10_name => 'Szanowanie granic';

  @override
  String get metric_10_description =>
      'Ocenia, czy określone limity dotyczące czasu, prywatności, ciała, emocji lub kontaktu są respektowane.';

  @override
  String get metric_11_name => 'Wskaźniki przymusowej kontroli';

  @override
  String get metric_11_description =>
      'Oznacza wzorce zastraszania, ograniczania, monitorowania, zależności lub kontroli nad wyborami i ruchem.';

  @override
  String get metric_12_name => 'Język gróźb';

  @override
  String get metric_12_description =>
      'Identyfikuje wyraźne lub dorozumiane groźby dotyczące bezpieczeństwa, porzucenia, ujawnienia, odwetu lub kary.';

  @override
  String get metric_13_name => 'Bagatelizowanie';

  @override
  String get metric_13_description =>
      'Wykrywa odrzucanie obaw, traktowanie potrzeb jako nieistotnych lub odmowę poważnego traktowania złości.';

  @override
  String get metric_14_name => 'Unieważnianie';

  @override
  String get metric_14_description =>
      'Mierzy zaprzeczenie, drwiny lub korygowanie emocji innej osoby zamiast ich uznania.';

  @override
  String get metric_15_name => 'Wyrażanie empatii';

  @override
  String get metric_15_description =>
      'Szuka przyjmowania perspektywy, troski, rozpoznawania emocji i zainteresowania doświadczeniem drugiej osoby.';

  @override
  String get metric_16_name => 'Wzajemność';

  @override
  String get metric_16_description =>
      'Ocenia, czy uwaga, wysiłek, przeprosiny, kompromis i wsparcie emocjonalne płyną w obie strony.';

  @override
  String get metric_17_name => 'Regulacja emocjonalna';

  @override
  String get metric_17_description =>
      'Ocenia zdolność do pozostania uziemionym, pauzowania, samouspokojenia i komunikowania się bez wybuchowej reaktywności.';

  @override
  String get metric_18_name => 'Sarkazm używany jako szkoda';

  @override
  String get metric_18_description =>
      'Oznacza sarkazm używany do poniżania, karania, upokarzania lub maskowania wrogości jako humor.';

  @override
  String get metric_19_name => 'Okrzyki';

  @override
  String get metric_19_description =>
      'Identyfikuje obraźliwe etykiety, obelgi, wulgaryzmy skierowane do osoby lub ataki oparte na tożsamości.';

  @override
  String get metric_20_name => 'Wzorzec cichej terapii';

  @override
  String get metric_20_description =>
      'Śledzi ciszę używaną jako kara, kontrola, unikanie lub wycofanie połączenia.';

  @override
  String get metric_21_name => 'Framing zazdrości';

  @override
  String get metric_21_description =>
      'Ocenia podejrzenie, posiadliwość, oskarżenia lub zazdrość przedstawianą jako dowód troski.';

  @override
  String get metric_22_name => 'Presja izolacji';

  @override
  String get metric_22_description =>
      'Oznacza próby oddzielenia partnera od przyjaciół, rodziny, systemów wsparcia lub zewnętrznych perspektyw.';

  @override
  String get metric_23_name => 'Wskaźniki kontroli finansowej';

  @override
  String get metric_23_description =>
      'Szuka kontroli nad pieniędzmi, wydatkami, zatrudnieniem, dostępem do kont lub niezależnością finansową.';

  @override
  String get metric_24_name => 'Wskaźniki naruszenia prywatności';

  @override
  String get metric_24_description =>
      'Wykrywa szpiegowanie, żądania haseł, sprawdzanie urządzeń, śledzenie lokalizacji lub naruszenia prywatności.';

  @override
  String get metric_25_name => 'Konkretność przeprosin';

  @override
  String get metric_25_description =>
      'Mierzy, czy przeprosiny nazywają dokładną szkodę, wpływ i przyszłą korektę zamiast pozostawać niejasne.';

  @override
  String get metric_26_name => 'Presja wybaczenia';

  @override
  String get metric_26_description =>
      'Oznacza żądania pójścia dalej, szybkiego wybaczenia lub zaprzestania dyskusji o szkodę przed naprawą.';

  @override
  String get metric_27_name => 'Minimalizacja';

  @override
  String get metric_27_description =>
      'Wykrywa bagatelizowanie szkody, nazywanie poważnych obaw dramatycznymi lub zmniejszanie wpływu, aby uniknąć odpowiedzialności.';

  @override
  String get metric_28_name => 'Projekcja';

  @override
  String get metric_28_description =>
      'Szuka oskarżeń, które odzwierciedlają własne zachowanie, motywy lub nierozwiązane uczucia mówcy.';

  @override
  String get metric_29_name => 'Wzorzec przerywania';

  @override
  String get metric_29_description =>
      'Śledzi przerywanie, mówienie nad drugą osobą, odmowę ukończenia lub kontrolowanie turów rozmowy.';

  @override
  String get metric_30_name => 'Odwracanie tematu';

  @override
  String get metric_30_description =>
      'Identyfikuje zmianę tematu, podnoszenie niepowiązanych problemów lub unikanie głównego zmartwienia.';

  @override
  String get metric_31_name => 'Orientacja na rozwiązanie';

  @override
  String get metric_31_description =>
      'Mierzy, czy wiadomości zmierzają do rozwiązań, jasności, porozumień i kolejnych kroków.';

  @override
  String get metric_32_name => 'Wspólne rozwiązywanie problemów';

  @override
  String get metric_32_description =>
      'Ocenia język współpracy, wspólną odpowiedzialność, burzę mózgów i chęć znalezienia wykonalnych kompromisów.';

  @override
  String get metric_33_name => 'Zalew emocjonalny';

  @override
  String get metric_33_description =>
      'Wykrywa przytłoczenie, panikę, zamknięcie, spiralę lub niezdolność do przetwarzania podczas konfliktu.';

  @override
  String get metric_34_name => 'Wskaźniki reakcji na strach';

  @override
  String get metric_34_description =>
      'Szuka uspokajania, ostrożnego doboru słów, przerażenia, obaw o bezpieczeństwo lub strachu przed reakcją partnera.';

  @override
  String get metric_35_name => 'Spójność roszczeń';

  @override
  String get metric_35_description =>
      'Ocenia, czy relacje pozostają wewnętrznie spójne w wiadomościach i czasie.';

  @override
  String get metric_36_name => 'Wspomnienie oparte na dowodach';

  @override
  String get metric_36_description =>
      'Sprawdza, czy roszczenia odnoszą się do konkretnych wydarzeń, cytatów, osi czasu lub zachowań obserwowalnych.';

  @override
  String get metric_37_name => 'Wzorzec żądania wycofania';

  @override
  String get metric_37_description =>
      'Śledzi jednego partnera dążącego do odpowiedzi lub zmiany, podczas gdy drugi unika, zamyka się lub wychodzi.';

  @override
  String get metric_38_name => 'Wskaźniki nierównowagi siły';

  @override
  String get metric_38_description =>
      'Oznacza nierówną moc decyzyjną, strach przed konsekwencjami, zależność, zastraszanie lub jednostronną kontrolę.';

  @override
  String get metric_39_name => 'Szanowna niezgoda';

  @override
  String get metric_39_description =>
      'Mierzy, czy konflikt zachowuje godność, ciekawość i niezgodę bez degradacji.';

  @override
  String get metric_40_name => 'Cykl zerwania i naprawy';

  @override
  String get metric_40_description =>
      'Ocenia, czy konflikt jest następowany przez uznanie, ponowne połączenie i rzeczywistą naprawę.';

  @override
  String get metric_41_name => 'Wycofanie uczuć';

  @override
  String get metric_41_description =>
      'Wykrywa wstrzymywanie miłości, ciepła, seksu, uwagi lub uspokojenia jako kary lub dźwigni.';

  @override
  String get metric_42_name => 'Odniesienia do publicznego upokorzenia';

  @override
  String get metric_42_description =>
      'Oznacza groźby, żarty lub działania, które zawstydzają partnera przed innymi.';

  @override
  String get metric_43_name => 'Wskaźniki konfliktu związanego z substancjami';

  @override
  String get metric_43_description =>
      'Szuka używania alkoholu lub narkotyków związanego z agresją, niewiarygodnością, konfliktem lub szkodą.';

  @override
  String get metric_44_name => 'Presja konfliktu rodzicielskiego';

  @override
  String get metric_44_description =>
      'Identyfikuje dzieci, opiekę, role rodzicielskie lub winę rodzicielską używaną w konflikcie lub jako dźwignię.';

  @override
  String get metric_45_name => 'Szanowanie granic seksualnych';

  @override
  String get metric_45_description =>
      'Ocenia szacunek dla zgody, presji, odmowy, komfortu, czasu i autonomii seksualnej.';

  @override
  String get metric_46_name => 'Wskaźniki nękania cyfrowego';

  @override
  String get metric_46_description =>
      'Śledzi powtarzające się niechciane wiadomości, połączenia spam, presję online, nadzór lub zastraszanie oparte na platformie.';

  @override
  String get metric_47_name => 'Język monitorowania lub nadzoru';

  @override
  String get metric_47_description =>
      'Oznacza sprawdzanie miejsca pobytu, żądanie dowodów, śledzenie zachowania lub ciągłe weryfikowanie.';

  @override
  String get metric_48_name => 'Orientacja na przyszłość';

  @override
  String get metric_48_description =>
      'Mierzy, czy partnerzy dyskutują o przyszłej poprawie, zobowiązaniach, planach lub konstruktywnym kierunku.';

  @override
  String get metric_49_name => 'Sygnały planowania bezpieczeństwa';

  @override
  String get metric_49_description =>
      'Szuka prób szukania pomocy, tworzenia dystansu, dokumentowania szkody lub planowania bezpieczeństwa fizycznego/emocjonalnego.';

  @override
  String get metric_50_name => 'Wspólne próby deeskalacji';

  @override
  String get metric_50_description =>
      'Śledzi pauzy, uspokajający język, łagodniejszy ton, przerwy i próby obu partnerów zmniejszenia intensywności.';

  @override
  String get metric_51_name => 'Wskaźniki bezpiecznego przywiązania';

  @override
  String get metric_51_description =>
      'Identyfikuje zaufanie, bezpośrednie uspokojenie, dostępność emocjonalną i komfort z bliskością i niezależnością.';

  @override
  String get metric_52_name => 'Aktywacja lękliwego przywiązania';

  @override
  String get metric_52_description =>
      'Oznacza zachowanie protestu, pilne potrzeby uspokojenia, lęk przed porzuceniem i zwiększoną wrażliwość na dystans.';

  @override
  String get metric_53_name => 'Dystans unikającego przywiązania';

  @override
  String get metric_53_description =>
      'Wykrywa minimalizację emocjonalną, obrony niezależności, wycofanie z wrażliwości lub dyskomfort z potrzebami.';

  @override
  String get metric_54_name => 'Sygnały dezorganizowanego przywiązania';

  @override
  String get metric_54_description =>
      'Szuka cykli zbliżania-unikania, lęku wymieszanego z potrzebą, chaotycznych reakcji lub mylących wzorców intymności.';

  @override
  String get metric_55_name => 'Emocjonalne oferty i odpowiedzi';

  @override
  String get metric_55_description =>
      'Mierzy zaproszenia do uwagi, komfortu lub połączenia i czy są akceptowane lub pomijane.';

  @override
  String get metric_56_name => 'Odwracanie się od połączenia';

  @override
  String get metric_56_description =>
      'Oznacza ignorowanie, odrzucanie lub nieodpowiadanie na oferty bliskości lub wsparcia.';

  @override
  String get metric_57_name => 'Odwracanie się przeciwko połączeniu';

  @override
  String get metric_57_description =>
      'Wykrywa wrogie lub karne odpowiedzi na próby uczucia, wrażliwości lub naprawy.';

  @override
  String get metric_58_name => 'Nadrzędność pozytywnych sentymentów';

  @override
  String get metric_58_description =>
      'Szuka hojności, korzyści wątpliwości, uczucia i interpretowania konfliktu przez troskę.';

  @override
  String get metric_59_name => 'Nadrzędność negatywnych sentymentów';

  @override
  String get metric_59_description =>
      'Oznacza zakładanie złych intencji, negatywną interpretację neutralnych wiadomości i ciągłe wrogie ramowanie.';

  @override
  String get metric_60_name => 'Wzorzec surowego początku';

  @override
  String get metric_60_description =>
      'Identyfikuje rozmowy zaczynające się od oskarżenia, ataku, pogardy lub winy zamiast prośby.';

  @override
  String get metric_61_name => 'Wzorzec łagodnego początku';

  @override
  String get metric_61_description =>
      'Szuka łagodnych otwarć używających uczuć, potrzeb, konkretnych próśb i nieoskarżycielskiego języka.';

  @override
  String get metric_62_name => 'Fizjologiczne samouspokojenie';

  @override
  String get metric_62_description =>
      'Ocenia próby pauzowania, oddychania, wzięcia przestrzeni lub regulacji ciała przed kontynuowaniem konfliktu.';

  @override
  String get metric_63_name => 'Wzorzec unikania konfliktu';

  @override
  String get metric_63_description =>
      'Śledzi powtarzające się unikanie koniecznych tematów, dyskomfortu, niezgody lub emocjonalnej szczerości.';

  @override
  String get metric_64_name => 'Zmienny styl konfliktu';

  @override
  String get metric_64_description =>
      'Wykrywa konflikt o wysokiej intensywności z bezpośrednią ekspresją, który może nadal obejmować zaangażowanie i naprawę.';

  @override
  String get metric_65_name => 'Walidujący styl konfliktu';

  @override
  String get metric_65_description =>
      'Mierzy, czy partnerzy uznają perspektywę drugiego podczas niezgody.';

  @override
  String get metric_66_name => 'Wrogi styl konfliktu';

  @override
  String get metric_66_description =>
      'Oznacza częstą krytykę, pogardę, obronność, ataki i konfrontacyjne ramowanie.';

  @override
  String get metric_67_name => 'Wzorzec wrogości-odłączenia';

  @override
  String get metric_67_description =>
      'Identyfikuje zimną wrogość, emocjonalne odłączenie, pogardę i niską motywację naprawy.';

  @override
  String get metric_68_name => 'Chęć kompromisu';

  @override
  String get metric_68_description =>
      'Szuka elastyczności, negocjacji, propozycji środka i poświęceń, które szanują obie potrzeby.';

  @override
  String get metric_69_name => 'Akceptacja wpływu';

  @override
  String get metric_69_description =>
      'Mierzy otwartość na bycie dotkniętym przez uczucia, potrzeby lub perspektywę partnera.';

  @override
  String get metric_70_name => 'Sygnały zablokowanego konfliktu';

  @override
  String get metric_70_description =>
      'Oznacza powtarzające się nierozwiązane problemy związane z wartościami, marzeniami, tożsamością lub chroniczną niekompatybilnością.';

  @override
  String get metric_71_name => 'Framing problemu rozwiązywalnego';

  @override
  String get metric_71_description =>
      'Wykrywa praktyczne, konkretne definicje problemów, które mogą prowadzić do konkretnych porozumień.';

  @override
  String get metric_72_name => 'Odniesienia wspólnego znaczenia';

  @override
  String get metric_72_description =>
      'Szuka wartości, rytuałów, celów, wspomnień lub języka tożsamości, który tworzy wspólną historię relacji.';

  @override
  String get metric_73_name => 'Świadomość mapy miłości';

  @override
  String get metric_73_description =>
      'Ocenia wiedzę o wewnętrznym świecie partnera, stresorach, preferencjach, lękach i życiu codziennym.';

  @override
  String get metric_74_name => 'Uczucie i podziw';

  @override
  String get metric_74_description =>
      'Identyfikuje docenienie, szacunek, ciepło, komplementy, wdzięczność i pozytywne nastawienie.';

  @override
  String get metric_75_name => 'Nierównowaga pracy emocjonalnej';

  @override
  String get metric_75_description =>
      'Oznacza jednego partnera noszącego nieproporcjonalne planowanie, uspokajanie, pamiętanie, wyjaśnianie lub utrzymanie relacji.';

  @override
  String get metric_76_name => 'Bagatelizowanie obciążenia psychicznego';

  @override
  String get metric_76_description =>
      'Wykrywa minimalizowanie niewidzialnej pracy planowania, koordynacji domowej, planowania lub śledzenia odpowiedzialności.';

  @override
  String get metric_77_name => 'Wskaźniki uzbrojonej niekompetencji';

  @override
  String get metric_77_description =>
      'Szuka twierdzenia niezdolności, zamieszania lub bezradności, aby uniknąć sprawiedliwej odpowiedzialności.';

  @override
  String get metric_78_name => 'Wrażliwość na wyzwalacze traumy';

  @override
  String get metric_78_description =>
      'Mierzy świadomość wyzwalaczy, reakcji na traumę i ostrożne traktowanie wrażliwych tematów.';

  @override
  String get metric_79_name => 'Wskaźniki nadczujności';

  @override
  String get metric_79_description =>
      'Oznacza skanowanie w poszukiwaniu niebezpieczeństwa, nadmierne monitorowanie tonu, lęk przed błędami lub ciągłą czujność emocjonalną.';

  @override
  String get metric_80_name => 'Język lęku przed porzuceniem';

  @override
  String get metric_80_description =>
      'Wykrywa lęk przed pozostawieniem, zastąpieniem, ignorowaniem, odrzuceniem lub emocjonalnym opuszczeniem.';

  @override
  String get metric_81_name => 'Wzorzec poszukiwania uspokojenia';

  @override
  String get metric_81_description =>
      'Śledzi powtarzające się prośby o dowód miłości, zaangażowania, bezpieczeństwa lub ciągłego zainteresowania.';

  @override
  String get metric_82_name => 'Cykl ścigającego-oddalającego';

  @override
  String get metric_82_description =>
      'Identyfikuje jednego partnera eskalującego pościg za bliskością, podczas gdy drugi zwiększa dystans.';

  @override
  String get metric_83_name => 'Akumulacja urazy';

  @override
  String get metric_83_description =>
      'Szuka przechowywanych skarg, powtarzających się odniesień do przeszłości, goryczy i nierozwiązanego długu emocjonalnego.';

  @override
  String get metric_84_name => 'Zachowanie liczenia punktów';

  @override
  String get metric_84_description =>
      'Oznacza transakcyjne liczenie wad, przysług, poświęceń lub błędów w celu uzyskania dźwigni.';

  @override
  String get metric_85_name => 'Warunkowa uczucie';

  @override
  String get metric_85_description =>
      'Wykrywa miłość, zatwierdzenie, dostęp lub ciepło oferowane tylko wtedy, gdy osiągnięto zgodność.';

  @override
  String get metric_86_name => 'Wskaźniki bombardowania miłością';

  @override
  String get metric_86_description =>
      'Oznacza intensywną uczucie, obietnice, presję lub idealizację używaną do przyspieszenia przywiązania lub kontroli.';

  @override
  String get metric_87_name => 'Próby wciągania';

  @override
  String get metric_87_description =>
      'Identyfikuje próby wciągnięcia kogoś z powrotem przez winę, nostalgię, obietnice, kryzysy lub nagłe uczucie.';

  @override
  String get metric_88_name => 'Wzorzec DARVO';

  @override
  String get metric_88_description =>
      'Wykrywa zaprzeczenie, atak i odwrócenie ofiary-sprawcy, gdy konfrontowano ze szkodą.';

  @override
  String get metric_89_name => 'Wzorzec postawy ofiary';

  @override
  String get metric_89_description =>
      'Oznacza powtarzające się samowictimizację, która unika odpowiedzialności lub przekierowuje uwagę od wyrządzonej szkody.';

  @override
  String get metric_90_name => 'Framing moralnej wyższości';

  @override
  String get metric_90_description =>
      'Szuka prawości, roszczeń czystości lub moralnej wyższości używanej do dominowania konfliktu.';

  @override
  String get metric_91_name => 'Zabójstwo charakteru';

  @override
  String get metric_91_description =>
      'Wykrywa szerokie ataki na tożsamość, integralność, zdrowie psychiczne lub wartość zamiast konkretnego zachowania.';

  @override
  String get metric_92_name => 'Wskaźniki triangulacji';

  @override
  String get metric_92_description =>
      'Oznacza wprowadzanie stron trzecich do konfliktu, aby wywierać presję, porównywać, walidować lub destabilizować partnera.';

  @override
  String get metric_93_name => 'Presja porównania społecznego';

  @override
  String get metric_93_description =>
      'Szuka porównań do byłych, przyjaciół, innych par lub ideałów używanych do wstydzania lub zmuszania.';

  @override
  String get metric_94_name => 'Wsparcie autonomii';

  @override
  String get metric_94_description =>
      'Mierzy szacunek dla niezależnych wyborów, przyjaźni, celów, granic i osobistej sprawczości.';

  @override
  String get metric_95_name => 'Szanowanie zgody i wyboru';

  @override
  String get metric_95_description =>
      'Ocenia, czy decyzje są podejmowane swobodnie bez presji, winy, gróźb lub manipulacji.';

  @override
  String get metric_96_name => 'Wspólne planowanie';

  @override
  String get metric_96_description =>
      'Szuka wspólnego harmonogramu, wspólnych decyzji, skoordynowanych odpowiedzialności i praktycznego wykonania.';

  @override
  String get metric_97_name => 'Wykonanie naprawy';

  @override
  String get metric_97_description =>
      'Mierzy, czy obiecane zmiany są później odzwierciedlone w zachowaniu, a nie tylko w słowach.';

  @override
  String get metric_98_name => 'Dowód zmienionego zachowania';

  @override
  String get metric_98_description =>
      'Sprawdza obserwowalne, powtarzające się działania pokazujące uczenie się, dostosowanie lub zmniejszone szkodliwe zachowanie.';

  @override
  String get metric_99_name => 'Język bezpieczeństwa emocjonalnego';

  @override
  String get metric_99_description =>
      'Identyfikuje język, który zaprasza do szczerości, obniża strach, chroni godność i uspokaja bezpieczną ekspresję.';

  @override
  String get metric_100_name => 'Niejednoznaczność relacji';

  @override
  String get metric_100_description =>
      'Wykrywa niepewność, mieszane zaangażowanie, przyciąganie-odpychanie lub niejasną chęć kontynuacji.';

  @override
  String get unableToOpenConversations => 'Nie można otworzyć rozmów';

  @override
  String get unableToOpenConversationsBody =>
      'Wystąpił błąd podczas ładowania rozmów. Spróbuj ponownie.';

  @override
  String get unableToLoadConversationsBody =>
      'Nie można załadować rozmów. Sprawdź uprawnienia i spróbuj ponownie.';

  @override
  String get errorLoadingConversationsBody =>
      'Błąd ładowania rozmów. Spróbuj ponownie.';

  @override
  String get smsPermissionRequired => 'Wymagane uprawnienie SMS';

  @override
  String get smsPermissionRequiredBody =>
      'Aby analizować rozmowy SMS, potrzebujemy uprawnienia do odczytu wiadomości. Twoja prywatność jest ważna — wiadomości są analizowane tylko lokalnie i nigdy nie są przechowywane na naszych serwerach.';

  @override
  String get grantSmsPermission => 'Przyznaj uprawnienie SMS';

  @override
  String get noSmsConversationsFound => 'Nie znaleziono rozmów SMS';

  @override
  String get noConversationsMatchSearch =>
      'Brak rozmów pasujących do wyszukiwania';

  @override
  String get noSmsMessagesOnDevice =>
      'Nie masz wiadomości SMS na tym urządzeniu';

  @override
  String get tryDifferentSearch => 'Spróbuj innego terminu wyszukiwania';

  @override
  String get clearSearch => 'Wyczyść wyszukiwanie';

  @override
  String selectedFile(String filename) {
    return 'Wybrano: $filename';
  }

  @override
  String get invalidFile => 'Nieprawidłowy plik';

  @override
  String get fileImport => 'Import pliku';

  @override
  String get fileImportNotImplemented =>
      'Analiza plików nie jest jeszcze zaimplementowana dla tego typu pliku.';

  @override
  String get errorPickingFile => 'Nie można otworzyć pliku. Spróbuj ponownie.';

  @override
  String get readyToCapture => 'Gotowy do przechwytywania';

  @override
  String get readyToCaptureBody =>
      'Przejdź teraz do aplikacji Wiadomości i zacznij robić zrzuty ekranu.\n\nWróć do tej aplikacji po zakończeniu i naciśnij \"Zakończ i przetwórz\".';

  @override
  String get noScreenshotsToProcess => 'Brak zrzutów ekranu do przetworzenia.';

  @override
  String processingScreenshot(int current, int total) {
    return 'Przetwarzanie zrzutu $current z $total...';
  }

  @override
  String get noMessagesFound => 'Nie znaleziono wiadomości';

  @override
  String get noMessagesFoundBody =>
      'Nie można wyodrębnić wiadomości ze zrzutów ekranu.\n\nUpewnij się, że zrzuty ekranu wyraźnie pokazują rozmowę.';

  @override
  String loadedMessages(int count) {
    return '$count wiadomości załadowanych ze zrzutów ekranu';
  }

  @override
  String get processingError => 'Błąd przetwarzania';

  @override
  String get processingErrorBody =>
      'Błąd podczas przetwarzania zrzutów ekranu. Spróbuj ponownie.';

  @override
  String metricListSavedAs(String name) {
    return 'Twoje wybory zostały zapisane jako \"$name\".';
  }

  @override
  String metricListLoadedName(String name) {
    return 'Wybory \"$name\" zostały pobrane i zastosowane.';
  }

  @override
  String conversationLoaded(int count, String name) {
    return '$count wiadomości załadowanych z $name';
  }

  @override
  String get loadButton => 'Załaduj';

  @override
  String get photoPermissionRequired =>
      'Uprawnienie biblioteki zdjęć jest wymagane do wykrywania zrzutów ekranu.';

  @override
  String get initializingConnection => 'Inicjowanie bezpiecznego połączenia...';

  @override
  String get configurationRequired => 'Wymagana konfiguracja';

  @override
  String get goBack => 'Wstecz';

  @override
  String get enableDateRangeFiltering => 'Włącz filtrowanie według zakresu dat';

  @override
  String get clearSelectedDateRange => 'Wyczyść wybrany zakres dat';

  @override
  String get largeThreadNoticeTitle => 'POWIADOMIENIE DLA UŻYTKOWNIKA';

  @override
  String get largeThreadNoticeBody =>
      'Przy pracy z wyjątkowo dużymi wątkami tekstowymi niektóre ekrany ładowania w tej aplikacji mogą czasem przekraczać półtorej minuty.\n\nAplikacja nie zawiesza się. Jeśli widzisz obracający się wskaźnik stanu, aplikacja nadal się ładuje.\n\nProszę o cierpliwość w tych przypadkach, ponieważ czas ładowania może być dłuższy niż zwykle w porównaniu do innych aplikacji, szczególnie przy pracy z dużym zestawem danych, takim jak wątek z 50 000 wiadomości.';

  @override
  String get neverShowThisAgain => 'Nie pokazuj tego komunikatu ponownie';

  @override
  String loadingConversationWith(String name) {
    return 'Ładowanie rozmowy\nz $name…';
  }

  @override
  String get iosCaptureInstructions =>
      '1. Otwórz aplikację Wiadomości i wybierz rozmowę\n2. Przewiń do najstarszej wiadomości, którą chcesz przeanalizować\n3. Kliknij \"Rozpocznij przechwytywanie\" poniżej\n4. Rób zrzuty ekranu podczas przewijania rozmowy\n5. Po zakończeniu kliknij \"Zakończ i przetwórz\"';

  @override
  String get howToCaptureIosMessages => 'Jak przechwytywać wiadomości iOS';

  @override
  String get deepSeekApiKey => 'Klucz API DeepSeek';

  @override
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis =>
      'Wprowadź swój klucz API DeepSeek, aby włączyć analizę AI.';

  @override
  String get getYourApiKeyFrom =>
      'Uzyskaj swój klucz API z: https://platform.deepseek.com';

  @override
  String get apiKey => 'Klucz API';

  @override
  String get skPlaceholder => 'sk-...';

  @override
  String get yourApiKeyIsStoredSecurely =>
      'Twój klucz API jest bezpiecznie przechowywany na Twoim urządzeniu i nigdy nie jest udostępniany.';

  @override
  String get pleaseEnterApiKey => 'Proszę wprowadzić klucz API';

  @override
  String get apiKeySavedSuccessfully => 'Klucz API został pomyślnie zapisany!';

  @override
  String get pleaseBePatientLongerTextThreads =>
      'Proszę o cierpliwość, dłuższe zestawy danych wątków tekstowych ładują się dość długo';

  @override
  String get almostThereBigOne => 'Prawie gotowe, Wow, to musiało być duże';

  @override
  String get pleaseBePatientLargeDatasets =>
      'Proszę o cierpliwość, duże zestawy danych mogą spowodować czas ładowania dłuższy niż półtorej minuty';

  @override
  String continuingToLoadMassiveThread(String name) {
    return 'Kontynuuję ładowanie masywnego wątku z $name…';
  }

  @override
  String get noMessagesInDateRange =>
      'Nie znaleziono wiadomości w wybranym zakresie dat. Wybierz inne daty lub wyczyść filtr daty.';

  @override
  String get purchaseCustomMetricTileTitle => 'Kup Metrykę Własną';

  @override
  String get purchaseCustomMetricTileDescription =>
      'Za jednorazową opłatą \$4.99 wprowadź własną nazwę i definicję metryki, która zostanie trwale zapisana obok innych metryk i będzie dostępna w każdej przyszłej analizie. Kupuj nieograniczoną liczbę metryk własnych.';

  @override
  String get purchaseCustomMetricConfirmTitle => 'Kup Metrykę Własną';

  @override
  String get purchaseCustomMetricConfirmBody =>
      'Zostanie pobrana opłata \$4.99 (jednorazowa) za odblokowanie jednego miejsca na metrykę własną.\n\nNazwa i definicja metryki własnej są trwałe i nie mogą być nigdy zmienione po zapisaniu, więc proszę dobrze przemyśleć swój wybór.';

  @override
  String get purchaseCustomMetricConfirmButton => 'Kup — \$4.99';

  @override
  String get purchaseCustomMetricEnterNameTitle => 'Nazwa Metryki Własnej';

  @override
  String get purchaseCustomMetricEnterNamePrompt =>
      'Wprowadź nazwę swojej metryki własnej:';

  @override
  String get purchaseCustomMetricNameHint => 'Nazwa Metryki';

  @override
  String get purchaseCustomMetricConfirmNameTitle => 'Potwierdź Nazwę Metryki';

  @override
  String get purchaseCustomMetricConfirmNameYouEntered => 'Wprowadzono:\n\n';

  @override
  String get purchaseCustomMetricConfirmNameWarning =>
      '\n\n⚠️  Jest to OSTATECZNE i NIGDY nie może zostać zmienione.';

  @override
  String get purchaseCustomMetricReenterName => 'Ups — Wprowadź Ponownie Nazwę';

  @override
  String get purchaseCustomMetricSaveName => 'OK — Zapisz Nazwę Metryki';

  @override
  String purchaseCustomMetricDefineTitleWithName(String name) {
    return 'Zdefiniuj: $name';
  }

  @override
  String purchaseCustomMetricDefinePromptWithName(String name) {
    return 'Wprowadź znaczenie swojej Metryki Własnej: $name';
  }

  @override
  String get purchaseCustomMetricMeaningHint =>
      'Opisz, co ta metryka oznacza, jakich zachowań szuka i jak odnosi się do dynamiki relacji...';

  @override
  String get purchaseCustomMetricReenter => 'Ups — Wprowadź Ponownie';

  @override
  String get purchaseCustomMetricSaveMeaning => 'OK — Zapisz Znaczenie';

  @override
  String get purchaseCustomMetricPreviewTitle => 'Podgląd Metryki Własnej';

  @override
  String get purchaseCustomMetricPreviewSubtitle =>
      'Tak będzie wyglądać Twój kafelek:';

  @override
  String get purchaseCustomMetricLastChanceWarning =>
      '⚠️  To Twoja OSTATNIA SZANSA na zmianę zdania.\nPo zatwierdzeniu nazwa i definicja są trwałe.';

  @override
  String get purchaseCustomMetricCancelEverything => 'Anuluj Wszystko';

  @override
  String get purchaseCustomMetricCommit => 'Zatwierdź Metrykę Własną';

  @override
  String purchaseCustomMetricSuccess(String name) {
    return '✓ \"$name\" dodano do Twoich metryk! Możesz teraz wybrać ją do analizy.';
  }

  @override
  String get purchaseCustomMetricProcessingTitle => 'Przetwarzanie Zakupu...';

  @override
  String get purchaseCustomMetricProcessingBody =>
      'Oczekiwanie na potwierdzenie ze sklepu.\nProszę nie zamykać aplikacji.';

  @override
  String get next => 'Dalej';

  @override
  String get cancelNotReady => 'Anuluj — Nie byłem/am gotowy/a';

  @override
  String get packGoodLabel => 'Dobry';

  @override
  String get packBadLabel => 'Zły';

  @override
  String get packUglyLabel => 'Brzydki';

  @override
  String get metric_good_1_name => 'Sygnały aktywnego słuchania';

  @override
  String get metric_good_1_description =>
      'Wykrywa parafrazy, pytania wyjaśniające i okazywanie zrozumienia perspektywy partnera w tekście.';

  @override
  String get metric_good_2_name => 'Wyrażanie uznania';

  @override
  String get metric_good_2_description =>
      'Identyfikuje konkretną wdzięczność, uznanie wysiłku i docenienie pozytywnych cech lub działań partnera.';

  @override
  String get metric_good_3_name => 'Język afirmacji';

  @override
  String get metric_good_3_description =>
      'Szuka stwierdzeń potwierdzających uczucia, doświadczenia, wartość partnera lub jego prawo do potrzeb.';

  @override
  String get metric_good_4_name => 'Współpracujący ton';

  @override
  String get metric_good_4_description =>
      'Mierzy używanie „my”, języka wspólnego rozwiązywania problemów i przedstawiania kwestii jako wspólnych wyzwań do rozwiązania razem.';

  @override
  String get metric_good_5_name => 'Ciekawość Partnera';

  @override
  String get metric_good_5_description =>
      'Śledzi zadawanie pytań o myśli, uczucia, dzień, preferencje lub wewnętrzne doświadczenia partnera.';

  @override
  String get metric_good_6_name => 'Wyrażanie wrażliwości';

  @override
  String get metric_good_6_description =>
      'Identyfikuje dzielenie się lękami, niepewnością, potrzebami lub prawdami emocjonalnymi bez defensywy i obwiniania.';

  @override
  String get metric_good_7_name => 'Humor jako Połączenie';

  @override
  String get metric_good_7_description =>
      'Wykrywa wspólny, figlarny śmiech, który łączy partnerów, a nie wyśmiewa lub poniża.';

  @override
  String get metric_good_8_name => 'Oferowanie Zapewnień';

  @override
  String get metric_good_8_description =>
      'Szuka proaktywnych stwierdzeń, które zapewniają komfort, bezpieczeństwo lub pewność zaniepokojonemu partnerowi.';

  @override
  String get metric_good_9_name => 'Częstotliwość komplementów';

  @override
  String get metric_good_9_description =>
      'Mierzy szczere, konkretne pochwały dotyczące wyglądu, charakteru, umiejętności lub pozytywnych działań.';

  @override
  String get metric_good_10_name => 'Dostępność emocjonalna';

  @override
  String get metric_good_10_description =>
      'Ocenia wrażliwość na potrzeby emocjonalne partnera, obecność w trudnych chwilach i gotowość do zaangażowania.';

  @override
  String get metric_good_11_name => 'Nawyk wdzięczności';

  @override
  String get metric_good_11_description =>
      'Identyfikuje regularne wyrażanie wdzięczności za drobne rzeczy, wysiłek, obecność lub wsparcie.';

  @override
  String get metric_good_12_name => 'Język wsparcia';

  @override
  String get metric_good_12_description =>
      'Śledzi wypowiedzi oferujące pomoc, zachętę, wiarę w możliwości partnera lub stanie u jego boku.';

  @override
  String get metric_good_13_name => 'Łagodna niezgoda';

  @override
  String get metric_good_13_description =>
      'Mierzy umiejętność wyrażania odmiennych poglądów przy zachowaniu szacunku, ciekawości i relacji.';

  @override
  String get metric_good_14_name => 'Szczerość przeprosin';

  @override
  String get metric_good_14_description =>
      'Wykrywa szczerą skruchę, zrozumienie wpływu i zaangażowanie w zmianę bez usprawiedliwień.';

  @override
  String get metric_good_15_name => 'Akceptacja przebaczenia';

  @override
  String get metric_good_15_description =>
      'Szuka gotowości do odpuszczenia przeszłych krzywd, pójścia naprzód i odbudowy zaufania po naprawie.';

  @override
  String get metric_good_16_name => 'Inicjowanie czasu jakościowego';

  @override
  String get metric_good_16_description =>
      'Identyfikuje propozycje spędzenia wspólnie czasu, planowania aktywności lub tworzenia chwil bliskości.';

  @override
  String get metric_good_17_name => 'Sygnały czułości fizycznej';

  @override
  String get metric_good_17_description =>
      'Śledzi wzmianki o dotyku, przytulaniu, pocałunkach lub fizycznej bliskości jako wyrazie troski i intymności.';

  @override
  String get metric_good_18_name => 'Rozpoznawanie wspólnej radości';

  @override
  String get metric_good_18_description =>
      'Mierzy świętowanie sukcesów, osiągnięć, szczęścia lub dobrych wieści partnera z autentycznym entuzjazmem.';

  @override
  String get metric_good_19_name => 'Wysiłek w rozwiązywaniu konfliktów';

  @override
  String get metric_good_19_description =>
      'Wykrywa próby znalezienia rozwiązań, kompromisu lub przywrócenia spokoju po nieporozumieniu.';

  @override
  String get metric_good_20_name => 'Okazywanie cierpliwości';

  @override
  String get metric_good_20_description =>
      'Wykrywa tolerancję dla tempa partnera, trudności, procesu uczenia się lub potrzeb emocjonalnych.';

  @override
  String get metric_good_21_name => 'Język przyjmowania perspektywy';

  @override
  String get metric_good_21_description =>
      'Szuka stwierdzeń pokazujących zrozumienie punktu widzenia partnera, kontekstu lub rzeczywistości emocjonalnej.';

  @override
  String get metric_good_22_name => 'Sygnały niezawodności';

  @override
  String get metric_good_22_description =>
      'Śledzi dotrzymywanie obietnic, konsekwentne pojawianie się i bycie godnym zaufania.';

  @override
  String get metric_good_23_name => 'Szacunek dla różnic';

  @override
  String get metric_good_23_description =>
      'Mierzy akceptację unikalnych cech, preferencji, opinii i sposobów bycia partnera.';

  @override
  String get metric_good_24_name => 'Otwartość na informację zwrotną';

  @override
  String get metric_good_24_description =>
      'Wykrywa otwartość na obawy partnera, gotowość do wysłuchania krytyki i chęć poprawy.';

  @override
  String get metric_good_25_name => 'Walidacja emocji';

  @override
  String get metric_good_25_description =>
      'Wykrywa uznanie, że uczucia partnera są realne, zrozumiałe i warte uwagi.';

  @override
  String get metric_good_26_name => 'Język zachęty';

  @override
  String get metric_good_26_description =>
      'Szuka stwierdzeń, które inspirują pewność siebie, motywują do działania lub wspierają cele partnera.';

  @override
  String get metric_good_27_name => 'Intymne ujawnienie';

  @override
  String get metric_good_27_description =>
      'Wykrywa dzielenie się osobistymi myślami, marzeniami, obawami lub sekretami pogłębiającymi więź emocjonalną.';

  @override
  String get metric_good_28_name => 'Sygnały dostrojenia';

  @override
  String get metric_good_28_description =>
      'Mierzy dostrzeganie nastroju, potrzeb lub niepokoju partnera bez konieczności wyraźnego mówienia o tym.';

  @override
  String get metric_good_29_name => 'Pozytywne przeformułowanie';

  @override
  String get metric_good_29_description =>
      'Wykrywa znajdowanie pozytywów, możliwości rozwoju lub konstruktywnych aspektów w trudnych sytuacjach.';

  @override
  String get metric_good_30_name => 'Język zaangażowania';

  @override
  String get metric_good_30_description =>
      'Śledzi wyrazy oddania, myślenie długoterminowe i inwestowanie w przyszłość związku.';

  @override
  String get metric_good_31_name => 'Przejaw elastyczności';

  @override
  String get metric_good_31_description =>
      'Identyfikuje gotowość do dostosowania planów, zmiany oczekiwań lub pójścia na kompromis.';

  @override
  String get metric_good_32_name => 'Język ochronny';

  @override
  String get metric_good_32_description =>
      'Szuka stwierdzeń pokazujących, że bezpieczeństwo, dobrostan i zainteresowania partnera są bardzo ważne.';

  @override
  String get metric_good_33_name => 'Świętowanie kamieni milowych';

  @override
  String get metric_good_33_description =>
      'Mierzy docenianie rocznic, osiągnięć lub znaczących chwil spędzonych razem.';

  @override
  String get metric_good_34_name => 'Konstruktywna informacja zwrotna';

  @override
  String get metric_good_34_description =>
      'Wykrywa oferowanie sugestii dotyczących poprawy, które są życzliwe, konkretne i skoncentrowane na rozwoju.';

  @override
  String get metric_good_35_name => 'Obecność w trudnych chwilach';

  @override
  String get metric_good_35_description =>
      'Identyfikuje pozostawanie zaangażowanym, gdy partner zmaga się z trudnościami, przeżywa żałobę lub stawia czoła wyzwaniom.';

  @override
  String get metric_good_36_name => 'Wyrażanie podziwu';

  @override
  String get metric_good_36_description =>
      'Śledzi szczery szacunek dla charakteru, siły, inteligencji lub odporności partnera.';

  @override
  String get metric_good_37_name => 'Wskaźniki figlarności';

  @override
  String get metric_good_37_description =>
      'Wykrywa żartobliwe przekomarzanie, wewnętrzne żarty lub zabawne interakcje wzmacniające więź.';

  @override
  String get metric_good_38_name => 'Empatyczne odzwierciedlanie';

  @override
  String get metric_good_38_description =>
      'Mierzy odzwierciedlanie emocji partnera w celu okazania zrozumienia i walidacji.';

  @override
  String get metric_good_39_name => 'Język akceptacji';

  @override
  String get metric_good_39_description =>
      'Wykrywa akceptację partnera takim, jaki jest, z wadami, bez żądania zmiany.';

  @override
  String get metric_good_40_name => 'Wspierająca obecność';

  @override
  String get metric_good_40_description =>
      'Identyfikuje bycie obecnym bez naprawiania, oferowanie wsparcia przez słuchanie i towarzystwo.';

  @override
  String get metric_good_41_name => 'Szczere zainteresowanie';

  @override
  String get metric_good_41_description =>
      'Śledzi zadawanie pytań uzupełniających i zapamiętywanie szczegółów z życia i trosk partnera.';

  @override
  String get metric_good_42_name => 'Wzajemny wysiłek';

  @override
  String get metric_good_42_description =>
      'Mierzy równy wkład obojga partnerów w pracę emocjonalną, planowanie i utrzymanie związku.';

  @override
  String get metric_good_43_name => 'Język przebaczenia';

  @override
  String get metric_good_43_description =>
      'Wykrywa porzucanie urazów, dawanie drugich szans i wybór pójścia naprzód mimo bólu.';

  @override
  String get metric_good_44_name => 'Sygnały wzajemnego szacunku';

  @override
  String get metric_good_44_description =>
      'Wykrywa traktowanie partnera jako równego, szanowanie jego opinii i docenianie jego wkładu.';

  @override
  String get metric_good_45_name => 'Emocjonalna uczciwość';

  @override
  String get metric_good_45_description =>
      'Identyfikuje szczere wyrażanie uczuć bez manipulacji, wyolbrzymiania lub strategicznego ukrywania.';

  @override
  String get metric_good_46_name => 'Wspierające słuchanie';

  @override
  String get metric_good_46_description =>
      'Mierzy pozwalanie partnerowi na pełne wyrażenie siebie bez przerywania, oceniania lub natychmiastowego rozwiązywania problemów.';

  @override
  String get metric_good_47_name => 'Czułe przezwiska';

  @override
  String get metric_good_47_description =>
      'Śledzi używanie czułych określeń, które przekazują ciepło i intymną więź.';

  @override
  String get metric_good_48_name => 'Wspólny śmiech';

  @override
  String get metric_good_48_description =>
      'Identyfikuje momenty wzajemnego humoru i radości, które tworzą pozytywne doświadczenia wiążące.';

  @override
  String get metric_good_49_name => 'Troskliwe gesty';

  @override
  String get metric_good_49_description =>
      'Szuka drobnych aktów życzliwości, pamiętania o preferencjach lub robienia rzeczy, które uszczęśliwiają partnera.';

  @override
  String get metric_good_50_name => 'Zaufanie do partnera';

  @override
  String get metric_good_50_description =>
      'Wykrywa wiarę w umiejętności, potencjał i zdolność partnera do radzenia sobie z wyzwaniami.';

  @override
  String get metric_good_51_name => 'Zdrowa współzależność';

  @override
  String get metric_good_51_description =>
      'Mierzy równowagę między byciem razem a niezależnością, wspierając autonomię partnera.';

  @override
  String get metric_good_52_name => 'Deeskalacja konfliktu';

  @override
  String get metric_good_52_description =>
      'Identyfikuje łagodny język, przerwy lub propozycje rozwiązań w celu uspokojenia gorących dyskusji.';

  @override
  String get metric_good_53_name => 'Szczere przeprosiny';

  @override
  String get metric_good_53_description =>
      'Śledzi pełne przyznanie się do winy bez umniejszania, bronienia się lub przerzucania winy.';

  @override
  String get metric_good_54_name => 'Oferty wsparcia emocjonalnego';

  @override
  String get metric_good_54_description =>
      'Szuka proaktywnych meldunków, pytania jak się ma partner i oferowania pomocy.';

  @override
  String get metric_good_55_name => 'Szanujące Granice';

  @override
  String get metric_good_55_description =>
      'Mierzy szanowanie wyraźnych granic partnera przy jednoczesnym utrzymywaniu własnych zdrowych granic.';

  @override
  String get metric_good_56_name => 'Pozytywne Oczekiwanie';

  @override
  String get metric_good_56_description =>
      'Wykrywa entuzjazm dotyczący wspólnej przyszłości, planowanie i oczekiwanie na wspólne doświadczenia.';

  @override
  String get metric_good_57_name => 'Sygnały Uważności';

  @override
  String get metric_good_57_description =>
      'Identyfikuje pamiętanie ważnych dat, preferencji i szczegółów, które pokazują, że partner ma znaczenie.';

  @override
  String get metric_good_58_name => 'Wspieranie Rozwoju';

  @override
  String get metric_good_58_description =>
      'Śledzi wspieranie rozwoju osobistego partnera, nauki i dążenia do celów.';

  @override
  String get metric_good_59_name => 'Czuły Język';

  @override
  String get metric_good_59_description =>
      'Szuka łagodnych, troskliwych słów, które przekazują delikatność i emocjonalne ciepło.';

  @override
  String get metric_good_60_name => 'Wzajemna Odpowiedzialność';

  @override
  String get metric_good_60_description =>
      'Mierzy branie odpowiedzialności przez oboje partnerów za swoje działania i ich wpływ.';

  @override
  String get metric_good_61_name => 'Świętowanie Partnera';

  @override
  String get metric_good_61_description =>
      'Wykrywa publiczne lub prywatne wyrażanie dumy, radości lub podziwu dla partnera.';

  @override
  String get metric_good_62_name => 'Stałe Uczucie';

  @override
  String get metric_good_62_description =>
      'Identyfikuje regularne wyrazy miłości, które nie zmieniają się w zależności od osiągnięć lub posłuszeństwa.';

  @override
  String get metric_good_63_name => 'Emocjonalne Dostrojenie';

  @override
  String get metric_good_63_description =>
      'Śledzi wyczuwanie i reagowanie na subtelne zmiany stanu emocjonalnego partnera.';

  @override
  String get metric_good_64_name => 'Wspólne podejmowanie decyzji';

  @override
  String get metric_good_64_description =>
      'Mierzy wspólne omawianie opcji i podejmowanie decyzji uwzględniających potrzeby obojga partnerów.';

  @override
  String get metric_good_65_name => 'Zapewnienie bez warunków';

  @override
  String get metric_good_65_description =>
      'Szuka oferowania pocieszenia i bezpieczeństwa bez wymagania od partnera zasługiwania na nie.';

  @override
  String get metric_good_66_name => 'Autentyczne połączenie';

  @override
  String get metric_good_66_description =>
      'Wykrywa autentyczną obecność, prawdziwe dzielenie się i rezygnację z pozorów w interakcjach.';

  @override
  String get metric_good_67_name => 'Wzajemne wsparcie';

  @override
  String get metric_good_67_description =>
      'Identyfikuje wzajemne kibicowanie sobie i docenianie wysiłków, nie tylko rezultatów.';

  @override
  String get metric_good_68_name => 'Pełne szacunku pytanie';

  @override
  String get metric_good_68_description =>
      'Śledzi pytania o perspektywę partnera z autentyczną ciekawością, a nie przesłuchaniem.';

  @override
  String get metric_good_69_name => 'Kochająca konsekwencja';

  @override
  String get metric_good_69_description =>
      'Mierzy bycie takim samym w dobrych i trudnych chwilach, niezawodnym w okazywaniu uczuć.';

  @override
  String get metric_good_70_name => 'Emocjonalna wzajemność';

  @override
  String get metric_good_70_description =>
      'Szuka wzajemnego dzielenia się uczuciami, potrzebami i wrażliwością w zrównoważony sposób.';

  @override
  String get metric_good_71_name => 'Radosna obecność';

  @override
  String get metric_good_71_description =>
      'Wykrywa autentyczną radość z towarzystwa partnera i entuzjazm do wspólnego spędzania czasu.';

  @override
  String get metric_good_72_name => 'Konstruktywny dialog';

  @override
  String get metric_good_72_description =>
      'Identyfikuje rozmowy zmierzające ku zrozumieniu, a nie wygrywaniu lub udowadnianiu racji.';

  @override
  String get metric_good_73_name => 'Ochronne Wsparcie';

  @override
  String get metric_good_73_description =>
      'Śledzi stawanie w obronie partnera, bronienie go i priorytetowe traktowanie jego dobra.';

  @override
  String get metric_good_74_name => 'Uważna Komunikacja';

  @override
  String get metric_good_74_description =>
      'Mierzy przemyślany dobór słów, rozważanie wpływu przed mówieniem i intencjonalne komunikowanie.';

  @override
  String get metric_good_75_name => 'Inwestycja w Związek';

  @override
  String get metric_good_75_description =>
      'Sprawdza czas, energię i zasoby poświęcone na pielęgnowanie związku.';

  @override
  String get metric_good_76_name => 'Język Bezpiecznej Bazy';

  @override
  String get metric_good_76_description =>
      'Wykrywa oferowanie stabilności, bezpieczeństwa i fundamentu, z którego partner może eksplorować.';

  @override
  String get metric_good_77_name => 'Wzajemny Podziw';

  @override
  String get metric_good_77_description =>
      'Identyfikuje oboje partnerów wyrażających szacunek i uznanie dla swoich cech.';

  @override
  String get metric_good_78_name => 'Czułe Chwile';

  @override
  String get metric_good_78_description =>
      'Śledzi tworzenie lub rozpoznawanie intymnych, cichych chwil połączenia i bliskości.';

  @override
  String get metric_good_79_name => 'Szczera Ciekawość';

  @override
  String get metric_good_79_description =>
      'Sprawdza autentyczne zainteresowanie zrozumieniem myśli, uczuć i doświadczeń partnera.';

  @override
  String get metric_good_80_name => 'Kochająca Akceptacja';

  @override
  String get metric_good_80_description =>
      'Wykrywa akceptację całej osoby partnera, w tym niedoskonałości i przeszłości.';

  @override
  String get metric_good_81_name => 'Wzajemne Wsparcie Rozwoju';

  @override
  String get metric_good_81_description =>
      'Identyfikuje oboje partnerów zachęcających się nawzajem do rozwoju i świętujących postępy.';

  @override
  String get metric_good_82_name => 'Wskaźniki Ciepłego Tonu';

  @override
  String get metric_good_82_description =>
      'Śledzi użycie czułego języka, życzliwych sformułowań i delikatnego stylu komunikacji.';

  @override
  String get metric_good_83_name => 'Responsywne Zaangażowanie';

  @override
  String get metric_good_83_description =>
      'Mierzy szybkie, zaangażowane odpowiedzi na wiadomości partnera i emocjonalne sygnały.';

  @override
  String get metric_good_84_name => 'Zgodność Wartości';

  @override
  String get metric_good_84_description =>
      'Szuka odniesień do wspólnych przekonań, celów lub filozofii życiowych, które łączą parę.';

  @override
  String get metric_good_85_name => 'Bezwarunkowe Wsparcie';

  @override
  String get metric_good_85_description =>
      'Wykrywa stanie po stronie partnera w trudnościach bez warunkowania wsparcia.';

  @override
  String get metric_good_86_name => 'Intymna Wrażliwość';

  @override
  String get metric_good_86_description =>
      'Identyfikuje dzielenie się głębokimi lękami, marzeniami lub niepewnościami, które pogłębiają więzi emocjonalne.';

  @override
  String get metric_good_87_name => 'Język Wzajemnego Szacunku';

  @override
  String get metric_good_87_description =>
      'Śledzi szanowanie wzajemnych perspektyw, wyborów i autonomii w komunikacji.';

  @override
  String get metric_good_88_name => 'Pozytywne Ramowanie';

  @override
  String get metric_good_88_description =>
      'Mierzy dostrzeganie dobra w sytuacjach i w partnerze, skupiając się na mocnych stronach.';

  @override
  String get metric_good_89_name => 'Wspólne Rozwiązywanie Problemów';

  @override
  String get metric_good_89_description =>
      'Szuka wspólnego dążenia do rozwiązań, które przynoszą korzyści obojgu partnerom w równym stopniu.';

  @override
  String get metric_good_90_name => 'Emocjonalna Walidacja';

  @override
  String get metric_good_90_description =>
      'Wykrywa potwierdzanie, że uczucia partnera są zrozumiałe i akceptowalne.';

  @override
  String get metric_good_91_name => 'Konsekwentna życzliwość';

  @override
  String get metric_good_91_description =>
      'Identyfikuje regularne, drobne akty troski, które pokazują, że partner jest pamiętany i ceniony.';

  @override
  String get metric_good_92_name => 'Wzajemne świętowanie';

  @override
  String get metric_good_92_description =>
      'Śledzi, czy oboje partnerzy są szczerze zadowoleni z sukcesów i radości drugiej osoby.';

  @override
  String get metric_good_93_name => 'Język bezpiecznego przywiązania';

  @override
  String get metric_good_93_description =>
      'Mierzy wyrażanie zaufania, komfort z intymnością i pewność w związku.';

  @override
  String get metric_good_94_name => 'Przemyślane uwzględnianie';

  @override
  String get metric_good_94_description =>
      'Sprawdza podejmowanie decyzji z uwzględnieniem potrzeb i uczuć partnera.';

  @override
  String get metric_good_95_name => 'Kochająca obecność';

  @override
  String get metric_good_95_description =>
      'Wykrywa pełną obecność i zaangażowanie, pokazując partnerowi, że jest najważniejszy.';

  @override
  String get metric_good_96_name => 'Język szczerej troski';

  @override
  String get metric_good_96_description =>
      'Śledzi autentyczne wyrazy troski, opieki i zaangażowania w dobrostan partnera.';

  @override
  String get metric_good_97_name => 'Zaangażowanie w związek';

  @override
  String get metric_good_97_description =>
      'Mierzy wyrażanie oddania związkowi i gotowość do pokonywania wyzwań.';

  @override
  String get metric_good_98_name => 'Autentyczne wyrażanie miłości';

  @override
  String get metric_good_98_description =>
      'Sprawdza szczere, konsekwentne wyrazy miłości, które wydają się prawdziwe i bezwarunkowe.';

  @override
  String get metric_good_99_name => 'Wspólne wyznaczanie celów';

  @override
  String get metric_good_99_description =>
      'Identyfikuje partnerów wspólnie definiujących wspólne marzenia, priorytety i kierunek na przyszłość.';

  @override
  String get metric_good_100_name => 'Rozpoznawanie prób naprawy';

  @override
  String get metric_good_100_description =>
      'Wykrywa zauważanie i pozytywne reagowanie na próby partnera mające na celu deeskalację konfliktu i przywrócenie więzi.';

  @override
  String get metric_bad_1_name => 'Agresja bierna';

  @override
  String get metric_bad_1_description =>
      'Wykrywa pośrednią wrogość poprzez zwlekanie, zapominanie, sarkazm lub subtelny sabotaż zamiast bezpośredniego wyrażania.';

  @override
  String get metric_bad_2_name => 'Uzbrojenie winy';

  @override
  String get metric_bad_2_description =>
      'Wskazuje na używanie poczucia winy, wstydu lub języka zobowiązań do manipulowania decyzjami lub uniemożliwiania stawiania granic.';

  @override
  String get metric_bad_3_name => 'Szantaż emocjonalny';

  @override
  String get metric_bad_3_description =>
      'Oznacza groźby samookaleczenia, porzucenia lub wycofania miłości w celu kontrolowania zachowania lub uniemożliwienia dyskusji.';

  @override
  String get metric_bad_4_name => 'Chroniczne narzekanie';

  @override
  String get metric_bad_4_description =>
      'Śledzi uporczywą negatywność, ruminacje lub narzekanie bez szukania rozwiązań lub wspólnej zmiany.';

  @override
  String get metric_bad_5_name => 'Zawstydzanie porównaniem';

  @override
  String get metric_bad_5_description =>
      'Identyfikuje niekorzystne porównania do byłych, przyjaciół lub rodziny w celu zawstydzenia lub wymuszenia zmiany zachowania.';

  @override
  String get metric_bad_6_name => 'Warunkowe Słuchanie';

  @override
  String get metric_bad_6_description =>
      'Wykrywa słuchanie tylko wtedy, gdy przynosi to korzyść słuchaczowi lub służy jego celom, a nie prawdziwemu zrozumieniu.';

  @override
  String get metric_bad_7_name => 'Selektywna pamięć';

  @override
  String get metric_bad_7_description =>
      'Śledzi wygodne zapominanie obietnic, umów lub przeszłych szkodliwych zachowań w celu uniknięcia odpowiedzialności.';

  @override
  String get metric_bad_8_name => 'Szukanie uwagi przez kryzys';

  @override
  String get metric_bad_8_description =>
      'Identyfikuje dramatyczną eskalację, tworzenie kryzysów lub wyolbrzymianie w celu zdobycia uwagi lub współczucia.';

  @override
  String get metric_bad_9_name => 'Testowanie granic';

  @override
  String get metric_bad_9_description =>
      'Wykrywa wielokrotne sondowanie lub naciskanie na ustalone granice, aby sprawdzić, czy będą egzekwowane.';

  @override
  String get metric_bad_10_name => 'Zatajanie informacji';

  @override
  String get metric_bad_10_description =>
      'Identyfikuje celowe pomijanie istotnych faktów, kontekstu lub przejrzystości w celu utrzymania kontroli.';

  @override
  String get metric_bad_11_name => 'Nieproporcjonalny gniew';

  @override
  String get metric_bad_11_description =>
      'Śledzi reakcje gniewu, które są znacząco większe niż uzasadnia to wyzwalające zdarzenie.';

  @override
  String get metric_bad_12_name => 'Uzależnienie od otuchy';

  @override
  String get metric_bad_12_description =>
      'Wskazuje na ciągłą potrzebę walidacji, powtarzające się pytania o zaangażowanie lub nieustanne dowody miłości.';

  @override
  String get metric_bad_13_name => 'Unikanie rozmów';

  @override
  String get metric_bad_13_description =>
      'Wykrywa odmowę zajęcia się obawami, zwroty unikowe lub zamykanie ważnych rozmów.';

  @override
  String get metric_bad_14_name => 'Wzorzec sprzeczności';

  @override
  String get metric_bad_14_description =>
      'Identyfikuje sprzeczne wypowiedzi, obietnice lub stanowiska, które wywołują zamęt lub destabilizację.';

  @override
  String get metric_bad_15_name => 'Unieważnianie przez etykietowanie';

  @override
  String get metric_bad_15_description =>
      'Wskazuje na etykietowanie obaw jako „szalonych”, „dramatycznych”, „paranoidalnych” lub „przesadzonych” w celu ich unieważnienia.';

  @override
  String get metric_bad_16_name => 'Selektywna empatia';

  @override
  String get metric_bad_16_description =>
      'Wykrywa empatię okazywaną tylko wtedy, gdy jest to wygodne lub służy interesom mówiącego.';

  @override
  String get metric_bad_17_name => 'Transakcyjne ujęcie';

  @override
  String get metric_bad_17_description =>
      'Identyfikuje zwroty typu „jesteś mi winien”, „po tym wszystkim, co zrobiłem” lub postrzeganie działań w związku jako tworzenia długu.';

  @override
  String get metric_bad_18_name => 'Recykling żalów';

  @override
  String get metric_bad_18_description =>
      'Śledzi wielokrotne przywoływanie starych żalów lub używanie przeszłych krzywd jako amunicji w bieżących konfliktach.';

  @override
  String get metric_bad_19_name => 'Język żądań';

  @override
  String get metric_bad_19_description =>
      'Wskazuje na rozkazy, nakazy lub ultimata zamiast próśb lub wspólnego rozwiązywania problemów.';

  @override
  String get metric_bad_20_name => 'Niedostępność emocjonalna';

  @override
  String get metric_bad_20_description =>
      'Wykrywa konsekwentną odmowę angażowania się emocjonalnego, dzielenia się uczuciami lub udzielania wsparcia.';

  @override
  String get metric_bad_21_name => 'Wroga interpretacja';

  @override
  String get metric_bad_21_description =>
      'Identyfikuje traktowanie neutralnych stwierdzeń jako ataków lub interpretowanie niejednoznacznych komunikatów jako wrogich.';

  @override
  String get metric_bad_22_name => 'Ramowanie roszczeniowe';

  @override
  String get metric_bad_22_description =>
      'Wskazuje na język sugerujący, że mówca zasługuje na specjalne traktowanie, wyjątki lub pierwszeństwo.';

  @override
  String get metric_bad_23_name => 'Krytyka udająca pomoc';

  @override
  String get metric_bad_23_description =>
      'Wykrywa krytykę owiniętą w język „próbuję tylko pomóc” lub „dla twojego dobra”.';

  @override
  String get metric_bad_24_name => 'Wzorce zaniedbania';

  @override
  String get metric_bad_24_description =>
      'Identyfikuje konsekwentne niezaspokajanie potrzeb emocjonalnych, fizycznych lub relacyjnych.';

  @override
  String get metric_bad_25_name => 'Rozpamiętywanie konfliktów';

  @override
  String get metric_bad_25_description =>
      'Śledzi obsesyjne rozpamiętywanie konfliktów bez dążenia do rozwiązania lub zamknięcia.';

  @override
  String get metric_bad_26_name => 'Odrzucanie wrażliwości';

  @override
  String get metric_bad_26_description =>
      'Wskazuje na stwierdzenia typu „jesteś zbyt wrażliwy” lub „przesadzasz” w celu odrzucenia uczuć.';

  @override
  String get metric_bad_27_name => 'Ramowanie rywalizacyjne';

  @override
  String get metric_bad_27_description =>
      'Wykrywa przedstawianie relacji jako rywalizacji, w której jeden partner musi wygrać lub dominować.';

  @override
  String get metric_bad_28_name => 'Podwójne standardy';

  @override
  String get metric_bad_28_description =>
      'Wskazuje na stosowanie różnych zasad wobec siebie i partnera lub arbitralną zmianę oczekiwań.';

  @override
  String get metric_bad_29_name => 'Uczucia jako kara';

  @override
  String get metric_bad_29_description =>
      'Sygnalizuje wycofywanie uczuć, uwagi lub komunikacji jako odwetu za dostrzeżone krzywdy.';

  @override
  String get metric_bad_30_name => 'Rotacja winy';

  @override
  String get metric_bad_30_description =>
      'Śledzi przerzucanie winy między partnerem, okolicznościami i czynnikami zewnętrznymi, aby uniknąć odpowiedzialności.';

  @override
  String get metric_bad_31_name => 'Retoryczna kpina';

  @override
  String get metric_bad_31_description =>
      'Wykrywa retoryczne lub sarkastyczne pytania używane do wyśmiewania, a nie zrozumienia.';

  @override
  String get metric_bad_32_name => 'Przypomnienia o poświęceniach';

  @override
  String get metric_bad_32_description =>
      'Wskazuje na przypominanie partnerowi o poświęceniach, przysługach lub wsparciu, aby wywołać poczucie długu i uległość.';

  @override
  String get metric_bad_33_name => 'Celowa eskalacja';

  @override
  String get metric_bad_33_description =>
      'Sygnalizuje celowe zwiększanie intensywności, aby przytłoczyć zdolność partnera do racjonalnej reakcji.';

  @override
  String get metric_bad_34_name => 'Strategiczna wrażliwość';

  @override
  String get metric_bad_34_description =>
      'Wykrywa dzielenie się emocjami tylko wtedy, gdy służy to manipulacji lub kontroli.';

  @override
  String get metric_bad_35_name => 'Odwracanie przez kontratak';

  @override
  String get metric_bad_35_description =>
      'Wskazuje na odwracanie uwagi od obaw partnera poprzez podnoszenie niepowiązanych kwestii lub kontrataków.';

  @override
  String get metric_bad_36_name => 'Język wyższości';

  @override
  String get metric_bad_36_description =>
      'Sygnalizuje język wyższości, protekcjonalność lub przedstawianie partnera jako gorszego.';

  @override
  String get metric_bad_37_name => 'Wzorzec wyjścia z konfliktu';

  @override
  String get metric_bad_37_description =>
      'Wykrywa wzorzec wychodzenia z rozmów, odmawiania angażowania się lub tworzenia dystansu podczas konfliktu.';

  @override
  String get metric_bad_38_name => 'Negatywne nastawienie';

  @override
  String get metric_bad_38_description =>
      'Śledzi konsekwentne interpretowanie neutralnych lub pozytywnych działań jako negatywnych lub podejrzanych.';

  @override
  String get metric_bad_39_name => 'Zaprzeczenie sprawczości';

  @override
  String get metric_bad_39_description =>
      'Identyfikuje „muszę”, „sprawiasz, że” lub język usuwający osobistą sprawczość mówiącego.';

  @override
  String get metric_bad_40_name => 'Cisza jako kontrola';

  @override
  String get metric_bad_40_description =>
      'Oznacza używanie ciszy lub braku odpowiedzi jako formy kary lub kontroli.';

  @override
  String get metric_bad_41_name => 'Hipokryzja prywatności';

  @override
  String get metric_bad_41_description =>
      'Wykrywa odmowę dzielenia się informacjami przy jednoczesnym żądaniu przejrzystości od partnera.';

  @override
  String get metric_bad_42_name => 'Nieproszona ostra krytyka';

  @override
  String get metric_bad_42_description =>
      'Identyfikuje ostrą krytykę przedstawianą jako „konstruktywną” lub „pomocną” bez zgody.';

  @override
  String get metric_bad_43_name => 'Warunkowa troska';

  @override
  String get metric_bad_43_description =>
      'Oznacza wsparcie oferowane tylko wtedy, gdy partner spełnia oczekiwania mówiącego.';

  @override
  String get metric_bad_44_name => 'Zaprzeczenie wpływu';

  @override
  String get metric_bad_44_description =>
      'Wykrywa „nie miałem tego na myśli” lub „za bardzo to analizujesz” po wyrządzeniu krzywdy.';

  @override
  String get metric_bad_45_name => 'Mentalność długu';

  @override
  String get metric_bad_45_description =>
      'Śledzi przywoływanie przeszłej pomocy lub wsparcia w celu stworzenia długu i kontrolowania obecnego zachowania.';

  @override
  String get metric_bad_46_name => 'Unikanie odpowiedzialności';

  @override
  String get metric_bad_46_description =>
      'Wskazuje na stały wzorzec nieprzyjmowania odpowiedzialności za skutki swoich działań.';

  @override
  String get metric_bad_47_name => 'Odrzucanie potrzeb';

  @override
  String get metric_bad_47_description =>
      'Identyfikuje traktowanie potrzeb partnera jako niewygodnych, nierozsądnych lub nieistotnych.';

  @override
  String get metric_bad_48_name => 'Manipulacja emocjonalna';

  @override
  String get metric_bad_48_description =>
      'Wskazuje na strategiczne wykorzystywanie emocji do kontrolowania wyników lub unikania odpowiedzialności.';

  @override
  String get metric_bad_49_name => 'Unikanie intymności';

  @override
  String get metric_bad_49_description =>
      'Śledzi konsekwentne wycofywanie się z bliskości emocjonalnej lub fizycznej bez wyjaśnienia.';

  @override
  String get metric_bad_50_name => 'Zakamuflowana krytyka';

  @override
  String get metric_bad_50_description =>
      'Identyfikuje krytykę maskowaną jako żarty, spostrzeżenia lub luźne komentarze.';

  @override
  String get metric_bad_51_name => 'Minimalizowanie obaw';

  @override
  String get metric_bad_51_description =>
      'Wskazuje na sprowadzanie obaw partnera do nieistotności lub przesady.';

  @override
  String get metric_bad_52_name => 'Egzekwowanie przez winę';

  @override
  String get metric_bad_52_description =>
      'Identyfikuje używanie poczucia winy lub wstydu, aby zapewnić zgodność partnera z oczekiwaniami.';

  @override
  String get metric_bad_53_name => 'Opór przed przeprosinami';

  @override
  String get metric_bad_53_description =>
      'Śledzi opór przed przeprosinami, usprawiedliwianie krzywdy lub odmowę uznania wpływu.';

  @override
  String get metric_bad_54_name => 'Odrzucenie perspektywy';

  @override
  String get metric_bad_54_description =>
      'Wskazuje na odmowę rozważenia lub uznania punktu widzenia lub doświadczenia partnera.';

  @override
  String get metric_bad_55_name => 'Racjonowanie emocji';

  @override
  String get metric_bad_55_description =>
      'Wykrywa celowe ograniczanie ekspresji emocjonalnej lub więzi jako formy kontroli.';

  @override
  String get metric_bad_56_name => 'Manipulacja obowiązkiem';

  @override
  String get metric_bad_56_description =>
      'Sygnalizuje wykorzystywanie przeszłego wsparcia lub poświęcenia do manipulowania obecnymi decyzjami.';

  @override
  String get metric_bad_57_name => 'Opór przed rozwojem';

  @override
  String get metric_bad_57_description =>
      'Śledzi opór przed modyfikacją szkodliwego zachowania pomimo próśb lub wykazanego wpływu.';

  @override
  String get metric_bad_58_name => 'Zaprzeczanie krzywdzie';

  @override
  String get metric_bad_58_description =>
      'Wykrywa odmowę uznania lub potraktowania poważnie wpływu własnego zachowania.';

  @override
  String get metric_bad_59_name => 'Podchwytliwe pytania';

  @override
  String get metric_bad_59_description =>
      'Sygnalizuje krytyczne intencje ukryte pod pozorem niewinnych pytań lub wyrazów ciekawości.';

  @override
  String get metric_bad_60_name => 'Pogardliwy ton';

  @override
  String get metric_bad_60_description =>
      'Identyfikuje lekceważącą postawę lub pogardę wyrażoną poprzez wzorce tekstu i dobór słów.';

  @override
  String get metric_bad_61_name => 'Cykl wywoływania poczucia winy';

  @override
  String get metric_bad_61_description =>
      'Wykrywa wielokrotne używanie poczucia winy z powodu przeszłego wsparcia lub poświęcenia do kontrolowania obecnego zachowania.';

  @override
  String get metric_bad_62_name => 'Emocjonalna powściągliwość';

  @override
  String get metric_bad_62_description =>
      'Śledzi odmowę dzielenia się emocjami, obawami lub potrzebami z partnerem jako ochronne wstrzymywanie.';

  @override
  String get metric_bad_63_name => 'Negocjowanie granic';

  @override
  String get metric_bad_63_description =>
      'Sygnalizuje traktowanie wyrażonych granic jako sugestii lub negocjowalnych, a nie stanowczych zobowiązań.';

  @override
  String get metric_bad_64_name => 'Emocjonalna Nieobecność';

  @override
  String get metric_bad_64_description =>
      'Wykrywa konsekwentną odmowę udzielania wsparcia emocjonalnego lub zaangażowanej obecności.';

  @override
  String get metric_bad_65_name => 'Śledzenie Przysług';

  @override
  String get metric_bad_65_description =>
      'Wskazuje na prowadzenie mentalnego rachunku przysług, wsparcia lub poświęceń w celu późniejszego wykorzystania.';

  @override
  String get metric_bad_66_name => 'Unikanie Szczerości';

  @override
  String get metric_bad_66_description =>
      'Wykrywa wzorzec ukrywania prawdy, pomijania faktów lub celowego bycia niejasnym.';

  @override
  String get metric_bad_67_name => 'Zaprzeczanie Ważności';

  @override
  String get metric_bad_67_description =>
      'Identyfikuje traktowanie uczuć, potrzeb lub obaw partnera jako nieważnych lub nieuzasadnionych.';

  @override
  String get metric_bad_68_name => 'Krytyka Przebrana za Radę';

  @override
  String get metric_bad_68_description =>
      'Wskazuje na krytykę przedstawianą jako troska, rada lub pomocna uwaga.';

  @override
  String get metric_bad_69_name => 'Wskaźniki Wyższości';

  @override
  String get metric_bad_69_description =>
      'Wykrywa przejawy wyższości, kpiny lub pogardy w języku lub stylu komunikacji.';

  @override
  String get metric_bad_70_name => 'Opór przed Naprawą';

  @override
  String get metric_bad_70_description =>
      'Śledzi opór przed naprawianiem szkód, ponownym nawiązywaniem więzi lub odbudową po konflikcie.';

  @override
  String get metric_bad_71_name => 'Odrzucanie Wysiłku';

  @override
  String get metric_bad_71_description =>
      'Wskazuje na bagatelizowanie lub ignorowanie prób partnera w celu poprawy sytuacji lub rozwiązania problemów.';

  @override
  String get metric_bad_72_name => 'Wzorzec Dystansu Emocjonalnego';

  @override
  String get metric_bad_72_description =>
      'Wykrywa długoterminowy wzorzec dystansu emocjonalnego lub odmowy autentycznego zaangażowania.';

  @override
  String get metric_bad_73_name => 'Ramowanie niższości';

  @override
  String get metric_bad_73_description =>
      'Określa partnera jako gorszego, wadliwego lub niegodnego pełnego szacunku.';

  @override
  String get metric_bad_74_name => 'Opór przed informacją zwrotną';

  @override
  String get metric_bad_74_description =>
      'Wykrywa opór przed słuchaniem krytyki, odmowę słuchania lub zamykanie dyskusji.';

  @override
  String get metric_bad_75_name => 'Odrzucanie obaw';

  @override
  String get metric_bad_75_description =>
      'Identyfikuje traktowanie obaw lub lęków partnera jako bezpodstawnych lub irracjonalnych.';

  @override
  String get metric_bad_76_name => 'Wyszukiwanie wad';

  @override
  String get metric_bad_76_description =>
      'Sygnalizuje chroniczne wyszukiwanie wad, narzekanie lub atakowanie charakteru partnera.';

  @override
  String get metric_bad_77_name => 'Cykl winy przez poświęcenie';

  @override
  String get metric_bad_77_description =>
      'Identyfikuje wielokrotne przywoływanie przeszłego wsparcia w celu wywołania poczucia winy lub kontroli zachowania.';

  @override
  String get metric_bad_78_name => 'Niejasność zaangażowania';

  @override
  String get metric_bad_78_description =>
      'Śledzi niejasny lub zmienny język zaangażowania, mieszane sygnały lub niechęć do zobowiązań.';

  @override
  String get metric_bad_79_name => 'Odrzucanie próśb';

  @override
  String get metric_bad_79_description =>
      'Sygnalizuje ignorowanie, odmowę lub opóźnianie odpowiedzi na uzasadnione prośby partnera.';

  @override
  String get metric_bad_80_name => 'Taktyki kontroli emocjonalnej';

  @override
  String get metric_bad_80_description =>
      'Wykrywa strategiczne wykorzystywanie emocji do kontrolowania wyników lub zapobiegania odpowiedzialności.';

  @override
  String get metric_bad_81_name => 'Mentality wymiany';

  @override
  String get metric_bad_81_description =>
      'Sygnalizuje postrzeganie związku przez pryzmat długu, obowiązku lub wymiany transakcyjnej.';

  @override
  String get metric_bad_82_name => 'Opór wobec rozwoju osobistego';

  @override
  String get metric_bad_82_description =>
      'Wykrywa opór wobec rozwoju osobistego, uczenia się lub zmiany szkodliwych wzorców.';

  @override
  String get metric_bad_83_name => 'Odrzucanie poprawy';

  @override
  String get metric_bad_83_description =>
      'Identyfikuje minimalizowanie lub odrzucanie wysiłków partnera w celu poprawy lub rozwiązania problemów.';

  @override
  String get metric_bad_84_name => 'Chroniczna krytyka';

  @override
  String get metric_bad_84_description =>
      'Sygnalizuje chroniczny wzorzec krytyki owiniętej w język troski, pomocności lub opieki.';

  @override
  String get metric_bad_85_name => 'Unikanie rozwiązań';

  @override
  String get metric_bad_85_description =>
      'Wykrywa konsekwentny wzorzec unikania zamknięcia, pójścia naprzód lub znalezienia wykonalnych rozwiązań.';

  @override
  String get metric_bad_86_name => 'Wzorzec przerzucania winy';

  @override
  String get metric_bad_86_description =>
      'Sygnalizuje nawykowy wzorzec przerzucania odpowiedzialności na czynniki zewnętrzne lub partnera.';

  @override
  String get metric_bad_87_name => 'Lekceważące odpowiedzi';

  @override
  String get metric_bad_87_description =>
      'Identyfikuje wzorzec lekceważenia wkładu, pomysłów lub sugestii partnera bez rozważenia.';

  @override
  String get metric_bad_88_name => 'Wyrażanie urazy';

  @override
  String get metric_bad_88_description =>
      'Wykrywa ton urazy, goryczy lub długo utrzymywanej frustracji w komunikacji.';

  @override
  String get metric_bad_89_name => 'Niejednoznaczne komunikaty';

  @override
  String get metric_bad_89_description =>
      'Sygnalizuje mieszane komunikaty dotyczące zaangażowania, niejasną chęć kontynuacji lub dynamikę przyciągania i odpychania.';

  @override
  String get metric_bad_90_name => 'Zmiana oczekiwań';

  @override
  String get metric_bad_90_description =>
      'Identyfikuje zmienianie oczekiwań bez komunikacji, a następnie obwinianie partnera za ich niespełnienie.';

  @override
  String get metric_bad_91_name => 'Nawyk unikania';

  @override
  String get metric_bad_91_description =>
      'Wykrywa nawykowe unikanie bezpośrednich odpowiedzi lub kierowanie rozmowy z dala od odpowiedzialności.';

  @override
  String get metric_bad_92_name => 'Manipulacja przez życzliwość';

  @override
  String get metric_bad_92_description =>
      'Oznacza przesadną hojność stosowaną strategicznie w celu stworzenia zobowiązania lub obniżenia czujności.';

  @override
  String get metric_bad_93_name => 'Chroniczne spóźnianie się';

  @override
  String get metric_bad_93_description =>
      'Identyfikuje konsekwentne lekceważenie czasu partnera poprzez spóźnienia lub niedotrzymywanie ustaleń.';

  @override
  String get metric_bad_94_name => 'Minimalizowanie postępów';

  @override
  String get metric_bad_94_description =>
      'Śledzi lekceważenie lub nieuznawanie prawdziwego rozwoju osobistego partnera lub jego postępów.';

  @override
  String get metric_bad_95_name => 'Emocjonalne uzbrojenie';

  @override
  String get metric_bad_95_description =>
      'Wykrywa wykorzystywanie ujawnionych słabości lub obaw partnera przeciwko niemu w konflikcie.';

  @override
  String get metric_bad_96_name => 'Taktyki zbliżone do gaslightingu';

  @override
  String get metric_bad_96_description =>
      'Identyfikuje subtelne taktyki zniekształcania rzeczywistości, które wywołują zwątpienie w siebie bez pełnego gaslightingu.';

  @override
  String get metric_bad_97_name => 'Pasywne milczenie';

  @override
  String get metric_bad_97_description =>
      'Oznacza subtelne wycofanie, odpowiedzi monosylabowe lub nieobecność jako formę unikania.';

  @override
  String get metric_bad_98_name => 'Kontrola narracji';

  @override
  String get metric_bad_98_description =>
      'Wykrywa naleganie na bycie jedynym autorytetem w kwestii tego, co się wydarzyło, jak było odczuwane lub co było zamierzone.';

  @override
  String get metric_bad_99_name => 'Przerzucanie odpowiedzialności';

  @override
  String get metric_bad_99_description =>
      'Śledzi konsekwentne przerzucanie odpowiedzialności na czynniki zewnętrzne, osoby trzecie lub zachowanie partnera.';

  @override
  String get metric_bad_100_name => 'Niedostępność emocjonalna';

  @override
  String get metric_bad_100_description =>
      'Wskazuje na chroniczne wycofywanie się z intymności emocjonalnej, wrażliwości lub znaczącej więzi, gdy partner potrzebuje bliskości.';

  @override
  String get metric_ugly_1_name => 'Groźby przemocy fizycznej';

  @override
  String get metric_ugly_1_description =>
      'Wykrywa jawne lub zawoalowane groźby uderzenia, skrzywdzenia lub fizycznej napaści na partnera.';

  @override
  String get metric_ugly_2_name => 'Odniesienia do posiadania broni';

  @override
  String get metric_ugly_2_description =>
      'Wskazuje wzmianki o broni palnej, nożach lub innych narzędziach w kontekście gniewu, kontroli lub zdolności do wyrządzenia krzywdy.';

  @override
  String get metric_ugly_3_name => 'Wskaźniki duszenia';

  @override
  String get metric_ugly_3_description =>
      'Identyfikuje język lub odniesienia do duszenia, chwytania za gardło, uduszenia lub asfiksji.';

  @override
  String get metric_ugly_4_name => 'Uzbrojenie groźby samobójczej';

  @override
  String get metric_ugly_4_description =>
      'Wykrywa groźby samookaleczenia używane do kontrolowania, manipulowania lub karania partnera.';

  @override
  String get metric_ugly_5_name => 'Język myśli zabójczych';

  @override
  String get metric_ugly_5_description =>
      'Sygnalizuje wypowiedzi wyrażające zamiar, planowanie lub pragnienie zabicia partnera.';

  @override
  String get metric_ugly_6_name => 'Wzorce ryzyka śmiertelności';

  @override
  String get metric_ugly_6_description =>
      'Identyfikuje sygnały ostrzegawcze wysokiej śmiertelności: dostęp do broni, obsesja, eskalacja i groźby separacji łącznie.';

  @override
  String get metric_ugly_7_name => 'Język obsesji stalkerskiej';

  @override
  String get metric_ugly_7_description =>
      'Wykrywa obsesyjne śledzenie lokalizacji, chodzenie za kimś, niespodziewane wizyty lub uporczywe, niechciane dążenie do kontaktu.';

  @override
  String get metric_ugly_8_name => 'Egzekwowanie wymuszonej izolacji';

  @override
  String get metric_ugly_8_description =>
      'Sygnalizuje agresywne żądania zerwania wszelkich kontaktów z rodziną, przyjaciółmi, pracą lub otoczeniem.';

  @override
  String get metric_ugly_9_name => 'Sabotaż ekonomiczny';

  @override
  String get metric_ugly_9_description =>
      'Identyfikuje celowe niszczenie zatrudnienia, zdolności kredytowej, finansów lub stabilności ekonomicznej.';

  @override
  String get metric_ugly_10_name => 'Przymus reprodukcyjny';

  @override
  String get metric_ugly_10_description =>
      'Wykrywa przymus ciąży, presję aborcyjną, manipulację antykoncepcją lub kontrolę reprodukcyjną.';

  @override
  String get metric_ugly_11_name => 'Presja seksualna';

  @override
  String get metric_ugly_11_description =>
      'Oznacza język dotyczący przymusowego seksu, wymuszonych aktów seksualnych, presji po odmowie lub kary seksualnej.';

  @override
  String get metric_ugly_12_name => 'Język niekonsensualny seksualnie';

  @override
  String get metric_ugly_12_description =>
      'Identyfikuje jawne lub ukryte groźby lub opisy niekonsensualnej napaści seksualnej.';

  @override
  String get metric_ugly_13_name => 'Groźby wobec dzieci';

  @override
  String get metric_ugly_13_description =>
      'Wykrywa groźby skrzywdzenia, zaniedbania lub wykorzystywania dzieci jako dźwigni lub kary wobec partnera.';

  @override
  String get metric_ugly_14_name => 'Wykorzystanie opieki nad dzieckiem';

  @override
  String get metric_ugly_14_description =>
      'Oznacza groźby odebrania dzieci, odmowy dostępu lub wykorzystania opieki jako mechanizmu kontroli.';

  @override
  String get metric_ugly_15_name => 'Groźby wobec zwierząt';

  @override
  String get metric_ugly_15_description =>
      'Identyfikuje groźby skrzywdzenia, zabicia lub znęcania się nad zwierzętami jako karę lub demonstrację kontroli.';

  @override
  String get metric_ugly_16_name => 'Taktyki deprywacji snu';

  @override
  String get metric_ugly_16_description =>
      'Oznacza celowe uniemożliwianie snu, ciągłe przerywanie lub wyczerpanie jako metodę kontroli.';

  @override
  String get metric_ugly_17_name => 'Język izolacji';

  @override
  String get metric_ugly_17_description =>
      'Oznacza zamykanie, uniemożliwianie wyjścia lub ograniczanie partnera do jednego miejsca.';

  @override
  String get metric_ugly_18_name => 'Język drapieżnego uwodzenia';

  @override
  String get metric_ugly_18_description =>
      'Oznacza systematyczną manipulację mającą na celu obniżenie obronności, zbudowanie fałszywego zaufania, a następnie wykorzystanie partnera.';

  @override
  String get metric_ugly_19_name => 'Język dehumanizacji';

  @override
  String get metric_ugly_19_description =>
      'Wykrywa opisywanie partnera jako zwierzęcia, przedmiotu, istoty podludzkiej lub niegodnej podstawowych praw.';

  @override
  String get metric_ugly_20_name => 'Eskalacja narcystycznej wściekłości';

  @override
  String get metric_ugly_20_description =>
      'Wykrywa wybuchową złość wywołaną postrzeganymi urazami, krytyką lub jakąkolwiek utratą kontroli.';

  @override
  String get metric_ugly_21_name => 'Obsesyjne roszczenia własnościowe';

  @override
  String get metric_ugly_21_description =>
      'Oznacza język roszczący sobie prawo własności, prawa majątkowe lub całkowitą kontrolę nad osobą partnera.';

  @override
  String get metric_ugly_22_name => 'Wzory patologicznego kłamstwa';

  @override
  String get metric_ugly_22_description =>
      'Identyfikuje konsekwentne, rozbudowane lub niepotrzebne kłamstwa dotyczące poważnych spraw bez wyraźnego powodu.';

  @override
  String get metric_ugly_23_name => 'Język fantazji zemsty';

  @override
  String get metric_ugly_23_description =>
      'Identyfikuje szczegółowe fantazje na temat krzywdzenia, upokarzania lub niszczenia partnera.';

  @override
  String get metric_ugly_24_name => 'Fiksacja na punkcie zdrady';

  @override
  String get metric_ugly_24_description =>
      'Wykrywa obsesyjne ruminacje, oskarżenia i karanie skoncentrowane na postrzeganej niewierności.';

  @override
  String get metric_ugly_25_name => 'Agresja z paniki porzucenia';

  @override
  String get metric_ugly_25_description =>
      'Oznacza gwałtowne lub agresywne reakcje na postrzegane porzucenie lub jakąkolwiek próbę separacji.';

  @override
  String get metric_ugly_26_name => 'Eskalacja gróźb przy separacji';

  @override
  String get metric_ugly_26_description =>
      'Identyfikuje ekstremalne groźby lub niebezpieczne zachowania wywołane próbą zerwania lub separacji.';

  @override
  String get metric_ugly_27_name => 'Groźby nękania po separacji';

  @override
  String get metric_ugly_27_description =>
      'Oznacza groźby stalkingu, krzywdy lub wymuszonego kontaktu po zakończeniu związku.';

  @override
  String get metric_ugly_28_name => 'Groźby porwania opiekuńczego';

  @override
  String get metric_ugly_28_description =>
      'Identyfikuje groźby zabrania dzieci i ucieczki lub ukrycia ich na stałe przed drugim rodzicem.';

  @override
  String get metric_ugly_29_name => 'Agenda alienacji rodzicielskiej';

  @override
  String get metric_ugly_29_description =>
      'Wskazuje systematyczne próby nastawiania dzieci przeciwko drugiemu rodzicowi poprzez manipulację.';

  @override
  String get metric_ugly_30_name => 'Obojętność na świadectwo dziecka';

  @override
  String get metric_ugly_30_description =>
      'Identyfikuje lekceważenie dla bycia świadkiem przez dzieci przemocy, konfliktów lub krzywdy emocjonalnej.';

  @override
  String get metric_ugly_31_name => 'Język handlu ludźmi';

  @override
  String get metric_ugly_31_description =>
      'Identyfikuje język sugerujący sprzedaż, handel lub wykorzystywanie seksualne partnera.';

  @override
  String get metric_ugly_32_name => 'Język niewolnictwa';

  @override
  String get metric_ugly_32_description =>
      'Identyfikuje język traktujący partnera jako własność, niewolnika lub osobę całkowicie pozbawioną praw.';

  @override
  String get metric_ugly_33_name => 'Groźby niewoli zadłużenia';

  @override
  String get metric_ugly_33_description =>
      'Wykrywa groźby uwięzienia partnera poprzez sztucznie wywołane długi lub zobowiązania finansowe.';

  @override
  String get metric_ugly_34_name => 'Żądania pracy przymusowej';

  @override
  String get metric_ugly_34_description =>
      'Wskazuje żądania nieodpłatnej pracy, służby lub pracy pod groźbą kary lub przemocy.';

  @override
  String get metric_ugly_35_name => 'Normalizacja wykorzystywania';

  @override
  String get metric_ugly_35_description =>
      'Identyfikuje przedstawianie poważnego wykorzystywania jako normalnego, zasłużonego, dobrowolnego lub nawet korzystnego.';

  @override
  String get metric_ugly_36_name => 'Celowanie w wrażliwość';

  @override
  String get metric_ugly_36_description =>
      'Identyfikuje celowe wybieranie osób izolowanych, zależnych ekonomicznie lub psychicznie wrażliwych.';

  @override
  String get metric_ugly_37_name => 'Inżynieria więzi traumy';

  @override
  String get metric_ugly_37_description =>
      'Wykrywa celowe tworzenie cykli ulgi po strachu, zaprojektowanych w celu wywołania głębokiej zależności emocjonalnej.';

  @override
  String get metric_ugly_38_name => 'Przemoc przez wzmocnienie przerywane';

  @override
  String get metric_ugly_38_description =>
      'Sygnalizuje nieprzewidywalne cykle nagrody i surowej kary, używane do wywołania uzależnienia psychicznego.';

  @override
  String get metric_ugly_39_name => 'Indukcja wyuczonej bezradności';

  @override
  String get metric_ugly_39_description =>
      'Identyfikuje systematyczne pozbawianie sprawczości, zasobów i postrzeganych możliwości ucieczki.';

  @override
  String get metric_ugly_40_name => 'Język wymazywania tożsamości';

  @override
  String get metric_ugly_40_description =>
      'Sygnalizuje żądania porzucenia osobowości, zainteresowań, wyglądu lub podstawowego poczucia tożsamości.';

  @override
  String get metric_ugly_41_name => 'Anihilacja autonomii';

  @override
  String get metric_ugly_41_description =>
      'Wykrywa systematyczne eliminowanie niezależnego myślenia, podejmowania decyzji lub osobistej sprawczości.';

  @override
  String get metric_ugly_42_name => 'Taktyki kontroli myśli';

  @override
  String get metric_ugly_42_description =>
      'Sygnalizuje żądania myślenia, wierzenia lub odczuwania wyłącznie zgodnie z dyktatem kontrolującego partnera.';

  @override
  String get metric_ugly_43_name => 'Wymuszanie emocjonalnego odrętwienia';

  @override
  String get metric_ugly_43_description =>
      'Identyfikuje karanie za okazywanie emocji lub wyraźne żądania tłumienia wszystkich uczuć.';

  @override
  String get metric_ugly_44_name => 'Tworzenie złożonej traumy';

  @override
  String get metric_ugly_44_description =>
      'Sygnalizuje systematyczne wzorce tworzące traumę na poziomie zespołu stresu pourazowego (C-PTSD) poprzez chroniczne znęcanie się.';

  @override
  String get metric_ugly_45_name => 'Zadawanie traumy zdrady';

  @override
  String get metric_ugly_45_description =>
      'Identyfikuje celową zdradę mającą na celu zniszczenie podstawowego zaufania i bezpieczeństwa psychicznego.';

  @override
  String get metric_ugly_46_name => 'Język szkody moralnej';

  @override
  String get metric_ugly_46_description =>
      'Wykrywa zmuszanie partnera do naruszania własnych głęboko zakorzenionych wartości lub popełniania szkodliwych czynów.';

  @override
  String get metric_ugly_47_name => 'Język zagrożenia egzystencjalnego';

  @override
  String get metric_ugly_47_description =>
      'Oznacza groźby wobec istnienia partnera, jego tożsamości, zdrowia psychicznego lub woli życia.';

  @override
  String get metric_ugly_48_name => 'Język przymusu samobójczego';

  @override
  String get metric_ugly_48_description =>
      'Identyfikuje popychanie partnera w kierunku myśli samobójczych poprzez ciągłe znęcanie się i wytworzoną beznadzieję.';

  @override
  String get metric_ugly_49_name => 'Mitologia usprawiedliwiająca';

  @override
  String get metric_ugly_49_description =>
      'Identyfikuje rozbudowane, zmyślone narracje przedstawiane w celu uzasadnienia znęcania się jako koniecznego, zasłużonego lub słusznego.';

  @override
  String get metric_ugly_50_name => 'Inwersja narracji ofiary';

  @override
  String get metric_ugly_50_description =>
      'Wykrywa całkowite odwrócenie, w którym sprawca twierdzi, że jest prawdziwą ofiarą własnego znęcania się.';

  @override
  String get metric_ugly_51_name => 'Normalizacja znęcania się';

  @override
  String get metric_ugly_51_description =>
      'Oznacza nauczanie lub naleganie, że znęcanie się jest normalne, zdrowe lub korzystne dla partnera.';

  @override
  String get metric_ugly_52_name => 'Ideologia drapieżcza';

  @override
  String get metric_ugly_52_description =>
      'Identyfikuje ideologiczne uzasadnienie eksploatacji, dominacji lub krzywdzenia partnera.';

  @override
  String get metric_ugly_53_name => 'Przekaz przywódcy sekty';

  @override
  String get metric_ugly_53_description =>
      'Wykrywa komunikaty głoszące szczególną wiedzę, boskie prawo lub wyższą władzę nad partnerem.';

  @override
  String get metric_ugly_54_name => 'Język harmonogramu uwodzenia';

  @override
  String get metric_ugly_54_description =>
      'Oznacza odniesienia do długoterminowego planu manipulacji lub opisy postępu procesu uwodzenia.';

  @override
  String get metric_ugly_55_name => 'Chroniczna kampania upokorzeń';

  @override
  String get metric_ugly_55_description =>
      'Identyfikuje utrzymujący się wzorzec publicznego lub prywatnego upokarzania mającego na celu zniszczenie poczucia własnej wartości.';

  @override
  String get metric_ugly_56_name => 'Blokowanie dróg ucieczki';

  @override
  String get metric_ugly_56_description =>
      'Wykrywa aktywne uniemożliwianie partnerowi dostępu do dróg ucieczki, systemów wsparcia lub zasobów bezpieczeństwa.';

  @override
  String get metric_ugly_57_name => 'Groźby konfiskaty dokumentów';

  @override
  String get metric_ugly_57_description =>
      'Sygnalizuje groźby lub działania mające na celu zabranie, ukrycie lub zniszczenie dokumentów tożsamości w celu uniemożliwienia ucieczki.';

  @override
  String get metric_ugly_58_name => 'Wzorce gwałtownej zazdrości';

  @override
  String get metric_ugly_58_description =>
      'Identyfikuje zazdrość, która przerodziła się w jawne groźby, inwigilację lub gwałtowne odwety.';

  @override
  String get metric_ugly_59_name => 'Wzorce wybuchów wściekłości';

  @override
  String get metric_ugly_59_description =>
      'Wykrywa opisy lub wzorce wybuchowych, gwałtownych napadów złości nieproporcjonalnych do jakiegokolwiek wyzwalacza.';

  @override
  String get metric_ugly_60_name => 'Eskalacja kontroli przymusowej';

  @override
  String get metric_ugly_60_description =>
      'Śledzi rosnącą dotkliwość i zakres taktyk kontroli przymusowej w czasie.';

  @override
  String get metric_ugly_61_name => 'Język uległości opartej na strachu';

  @override
  String get metric_ugly_61_description =>
      'Identyfikuje uległość wynikającą wyłącznie ze strachu przed przemocą lub surową karą, a nie z wyboru.';

  @override
  String get metric_ugly_62_name => 'Język rytuałów karania';

  @override
  String get metric_ugly_62_description =>
      'Wykrywa odniesienia do systematycznych praktyk karania stosowanych w celu wymuszenia posłuszeństwa i kontroli.';

  @override
  String get metric_ugly_63_name => 'Wskaźniki rytuałów degradacji';

  @override
  String get metric_ugly_63_description =>
      'Sygnalizuje systematyczne rytuały degradacji lub upokarzania mające na celu zniszczenie godności.';

  @override
  String get metric_ugly_64_name => 'Groźby ujawnienia bez zgody';

  @override
  String get metric_ugly_64_description =>
      'Identyfikuje groźby ujawnienia intymnych zdjęć, prywatnych informacji lub tajemnic bez zgody.';

  @override
  String get metric_ugly_65_name => 'Groźby wykorzystania wizerunku';

  @override
  String get metric_ugly_65_description =>
      'Wykrywa groźby rozpowszechniania intymnych zdjęć jako zemsty, kary lub szantażu.';

  @override
  String get metric_ugly_66_name => 'Taktyki uwięzienia finansowego';

  @override
  String get metric_ugly_66_description =>
      'Oznacza celowe tworzenie zależności finansowej uniemożliwiającej samodzielne przetrwanie.';

  @override
  String get metric_ugly_67_name => 'Groźby dotyczące mieszkania';

  @override
  String get metric_ugly_67_description =>
      'Wykrywa groźby pozbawienia partnera mieszkania, odebrania dostępu do lokalu lub zniszczenia bezpieczeństwa schronienia.';

  @override
  String get metric_ugly_68_name => 'Groźby dotyczące statusu imigracyjnego';

  @override
  String get metric_ugly_68_description =>
      'Identyfikuje groźby zgłoszenia statusu imigracyjnego lub cofnięcia sponsoringu wizowego jako formę kontroli.';

  @override
  String get metric_ugly_69_name => 'Przemoc religijna lub duchowa';

  @override
  String get metric_ugly_69_description =>
      'Wykrywa wykorzystywanie autorytetu religijnego, doktryny lub gróźb duchowych do kontroli, karania lub krzywdzenia.';

  @override
  String get metric_ugly_70_name => 'Wykorzystanie wstydu kulturowego';

  @override
  String get metric_ugly_70_description =>
      'Oznacza groźby ujawnienia zachowań społeczności kulturowej lub rodzinnej jako kary.';

  @override
  String get metric_ugly_71_name => 'Groźby wobec rodziny';

  @override
  String get metric_ugly_71_description =>
      'Identyfikuje groźby skrzywdzenia członków rodziny partnera, dzieci lub bliskich jako formę nacisku.';

  @override
  String get metric_ugly_72_name => 'Zorganizowana kampania nękania';

  @override
  String get metric_ugly_72_description =>
      'Wykrywa organizowanie innych do wspólnego nękania, śledzenia lub zastraszania partnera.';

  @override
  String get metric_ugly_73_name => 'Groźby fałszywych doniesień';

  @override
  String get metric_ugly_73_description =>
      'Grozi fałszywymi doniesieniami na policję lub oskarżeniami prawnymi wobec partnera.';

  @override
  String get metric_ugly_74_name => 'Uzbrojenie systemu prawnego';

  @override
  String get metric_ugly_74_description =>
      'Identyfikuje wykorzystywanie procesów prawnych, sądów lub nakazów ochronnych jako broni do nękania.';

  @override
  String get metric_ugly_75_name => 'Naruszenie nakazu ochronnego';

  @override
  String get metric_ugly_75_description =>
      'Wykrywa wzmianki o naruszaniu lub planowaniu naruszenia nakazów ochronnych lub zakazu kontaktowania się.';

  @override
  String get metric_ugly_76_name => 'Groźby sabotażu zawodowego';

  @override
  String get metric_ugly_76_description =>
      'Sygnalizuje groźby skontaktowania się z pracodawcą, współpracownikami lub klientami w celu zniszczenia źródła utrzymania partnera.';

  @override
  String get metric_ugly_77_name => 'Groźby unicestwienia społecznego';

  @override
  String get metric_ugly_77_description =>
      'Wykrywa groźby zniszczenia reputacji, relacji i pozycji społecznej partnera.';

  @override
  String get metric_ugly_78_name => 'Systematyczna kampania oszustwa';

  @override
  String get metric_ugly_78_description =>
      'Identyfikuje długoterminowe, złożone oszustwo mające na celu wyzyskanie partnera finansowo lub emocjonalnie.';

  @override
  String get metric_ugly_79_name => 'Niszczenie mienia jako terror';

  @override
  String get metric_ugly_79_description =>
      'Identyfikuje celowe niszczenie mienia partnera jako taktykę zastraszania.';

  @override
  String get metric_ugly_80_name =>
      'Okrucieństwo wobec zwierząt jako terror zastępczy';

  @override
  String get metric_ugly_80_description =>
      'Wykrywa krzywdzenie lub grożenie zwierzętom domowym w celu zademonstrowania zdolności do przemocy wobec partnera.';

  @override
  String get metric_ugly_81_name =>
      'Język narażania dzieci na niebezpieczeństwo';

  @override
  String get metric_ugly_81_description =>
      'Sygnalizuje narażanie dzieci na niebezpieczeństwo lub grożenie tym w celu wywarcia presji.';

  @override
  String get metric_ugly_82_name => 'Kontrola oparta na niepełnosprawności';

  @override
  String get metric_ugly_82_description =>
      'Wykrywa wykorzystywanie niepełnosprawności partnera poprzez kontrolowanie dostępu do leków, mobilności lub opieki.';

  @override
  String get metric_ugly_83_name => 'Kontrola poprzez wywołany kryzys';

  @override
  String get metric_ugly_83_description =>
      'Sygnalizuje celowe tworzenie sytuacji kryzysowych lub nagłych wypadków w celu zwiększenia zależności partnera lub uzasadnienia monitorowania.';

  @override
  String get metric_ugly_84_name => 'Izolacja od służb ratunkowych';

  @override
  String get metric_ugly_84_description =>
      'Identyfikuje aktywne uniemożliwianie partnerowi wezwania policji, karetki lub służb kryzysowych.';

  @override
  String get metric_ugly_85_name => 'Trajektoria eskalacji gróźb';

  @override
  String get metric_ugly_85_description =>
      'Śledzi mierzalny wzrost nasilenia, szczegółowości lub częstotliwości gróźb w czasie.';

  @override
  String get metric_ugly_86_name => 'Wskaźniki oceny śmiertelności';

  @override
  String get metric_ugly_86_description =>
      'Sygnalizuje kombinacje czynników związanych z najwyższym ryzykiem zabójstwa partnera intymnego.';

  @override
  String get metric_ugly_87_name => 'Taktyki tortur psychologicznych';

  @override
  String get metric_ugly_87_description =>
      'Identyfikuje długotrwałe znęcanie psychiczne mające na celu załamanie stabilności psychicznej partnera.';

  @override
  String get metric_ugly_88_name => 'Język niewoli';

  @override
  String get metric_ugly_88_description =>
      'Wykrywa odniesienia do przetrzymywania partnera w niewoli, uniemożliwiania odejścia lub kontrolowania wszelkich ruchów.';

  @override
  String get metric_ugly_89_name => 'Planowanie ukierunkowanej przemocy';

  @override
  String get metric_ugly_89_description =>
      'Wykrywa język wskazujący na planowanie, przygotowanie lub odliczanie do przemocy wobec partnera.';

  @override
  String get metric_ugly_90_name => 'Rekrutacja osób trzecich do gróźb';

  @override
  String get metric_ugly_90_description =>
      'Identyfikuje werbowanie przyjaciół, rodziny lub innych osób do grożenia partnerowi lub wyrządzania mu krzywdy.';

  @override
  String get metric_ugly_91_name => 'Wykorzystywanie myśli samobójczych';

  @override
  String get metric_ugly_91_description =>
      'Wykorzystywanie kryzysu samobójczego partnera jako dźwigni lub uniemożliwianie mu szukania pomocy.';

  @override
  String get metric_ugly_92_name => 'Groźby otrucia lub odurzenia';

  @override
  String get metric_ugly_92_description =>
      'Wykrywa groźby lub wzmianki o odurzaniu, truciu lub manipulowaniu jedzeniem lub napojem partnera.';

  @override
  String get metric_ugly_93_name => 'Wykorzystywanie samookaleczeń';

  @override
  String get metric_ugly_93_description =>
      'Wykorzystywanie samookaleczeń partnera jako dźwigni, wyśmiewania lub dalszej kontroli.';

  @override
  String get metric_ugly_94_name => 'Język indukujący dysocjację';

  @override
  String get metric_ugly_94_description =>
      'Wykrywa wzorce mające na celu wywołanie dysocjacji, oderwania lub depersonalizacji u partnera.';

  @override
  String get metric_ugly_95_name => 'Wszczepianie zniekształceń poznawczych';

  @override
  String get metric_ugly_95_description =>
      'Wykrywa celowe wszczepianie fałszywych przekonań o sobie, rzeczywistości lub zdrowiu psychicznym partnera.';

  @override
  String get metric_ugly_96_name => 'Blokowanie opieki medycznej';

  @override
  String get metric_ugly_96_description =>
      'Wykrywa uniemożliwianie dostępu do leków, lekarzy, szpitali lub leczenia.';

  @override
  String get metric_ugly_97_name => 'Język ekstremistycznych gróźb';

  @override
  String get metric_ugly_97_description =>
      'Wykrywa język zapożyczony z ekstremistycznych lub brutalnych ideologii stosowany wobec partnera.';

  @override
  String get metric_ugly_98_name => 'Sygnały nękania po rozstaniu';

  @override
  String get metric_ugly_98_description =>
      'Wykrywa groźby, język inwigilacji lub taktyki zastraszania po lub w oczekiwaniu na rozstanie.';

  @override
  String get metric_ugly_99_name => 'Wykorzystywanie dzieci';

  @override
  String get metric_ugly_99_description =>
      'Identyfikuje wykorzystywanie dzieci jako pionków, groźby dotyczące opieki lub wykorzystywanie więzi rodzicielskich jako mechanizmów kontroli.';

  @override
  String get metric_ugly_100_name => 'Systematyczne odczłowieczanie';

  @override
  String get metric_ugly_100_description =>
      'Wykrywa ciągłe używanie języka, który pozbawia partnera osobowości, godności lub prawa do podstawowego człowieczeństwa.';

  @override
  String get metric_narcissist_1_name => 'Wielka samoocena';

  @override
  String get metric_narcissist_1_description =>
      'Przesadne twierdzenia o osiągnięciach, talentach lub statusie, wykraczające poza realistyczne dowody, często z poczuciem wyjątkowości.';

  @override
  String get metric_narcissist_2_name => 'Żądania uprzywilejowania';

  @override
  String get metric_narcissist_2_description =>
      'Nierealistyczne oczekiwania specjalnego traktowania lub automatycznego spełniania ich życzeń bez wzajemności.';

  @override
  String get metric_narcissist_3_name => 'Deficyt empatii';

  @override
  String get metric_narcissist_3_description =>
      'Niezdolność lub niechęć do rozpoznawania lub potwierdzania uczuć innych, odrzucanie potrzeb emocjonalnych jako nieistotnych.';

  @override
  String get metric_narcissist_4_name => 'Poszukiwanie podziwu';

  @override
  String get metric_narcissist_4_description =>
      'Nadmierne zabieganie o podziw, komplementy lub walidację w celu wzmocnienia kruchej samooceny.';

  @override
  String get metric_narcissist_5_name => 'Taktyki triangulacji';

  @override
  String get metric_narcissist_5_description =>
      'Wprowadzanie osoby trzeciej w konflikty w celu wywołania zazdrości, rywalizacji lub manipulowania percepcją.';

  @override
  String get metric_narcissist_6_name => 'Intensywność bombardowania miłością';

  @override
  String get metric_narcissist_6_description =>
      'Przytłaczające pochlebstwa, prezenty lub uwaga na początku związku w celu uzyskania kontroli i idealizacji celu.';

  @override
  String get metric_narcissist_7_name => 'Krytyka dewaluacyjna';

  @override
  String get metric_narcissist_7_description =>
      'Nagłe przejście do ostrej krytyki, poniżania lub pogardy po idealizacji, niszczące poczucie własnej wartości celu.';

  @override
  String get metric_narcissist_8_name => 'Kara milczeniem';

  @override
  String get metric_narcissist_8_description =>
      'Wstrzymanie komunikacji lub uczuć jako celowa kara w celu wywołania lęku i uległości.';

  @override
  String get metric_narcissist_9_name => 'Przerzucanie winy DARVO';

  @override
  String get metric_narcissist_9_description =>
      'Zaprzeczanie odpowiedzialności, atakowanie oskarżyciela i odwracanie ról ofiary-sprawcy w celu uniknięcia odpowiedzialności.';

  @override
  String get metric_narcissist_10_name =>
      'Zniekształcanie rzeczywistości gaslightingiem';

  @override
  String get metric_narcissist_10_description =>
      'Zaprzeczanie lub zniekształcanie faktów, wydarzeń lub uczuć, aby cel zwątpił we własną pamięć lub zdrowie psychiczne.';

  @override
  String get metric_narcissist_11_name => 'Gniew na krytykę';

  @override
  String get metric_narcissist_11_description =>
      'Intensywny gniew, pogarda lub odwet w odpowiedzi na jakiekolwiek postrzegane uchybienie lub informację zwrotną, nawet konstruktywną.';

  @override
  String get metric_narcissist_12_name => 'Naruszenie granic';

  @override
  String get metric_narcissist_12_description =>
      'Ignorowanie lub przekraczanie ustalonych granic, prywatności lub przestrzeni osobistej bez skruchy lub negocjacji.';

  @override
  String get metric_narcissist_13_name => 'Wyrażanie zazdrości';

  @override
  String get metric_narcissist_13_description =>
      'Uraza wobec sukcesów lub posiadania innych, często połączona z dewaluacją lub próbami podważania.';

  @override
  String get metric_narcissist_14_name => 'Zachowanie eksploatacyjne';

  @override
  String get metric_narcissist_14_description =>
      'Wykorzystywanie innych dla osobistych korzyści, statusu lub zasobów bez względu na ich dobro lub zgodę.';

  @override
  String get metric_narcissist_15_name => 'Manipulacja lustrzana';

  @override
  String get metric_narcissist_15_description =>
      'Naśladowanie zainteresowań, wartości lub cech celu w celu stworzenia fałszywego porozumienia i zdobycia zaufania.';

  @override
  String get metric_narcissist_16_name => 'Twierdzenia o wyższości';

  @override
  String get metric_narcissist_16_description =>
      'Twierdzenie o wrodzonej wyższości nad innymi, często z protekcjonalnym lub lekceważącym językiem.';

  @override
  String get metric_narcissist_17_name => 'Zajęcie fantazjami';

  @override
  String get metric_narcissist_17_description =>
      'Obsesyjne mówienie o nieograniczonym sukcesie, władzy, błyskotliwości lub idealnej miłości, które jest nierealistyczne.';

  @override
  String get metric_narcissist_18_name => 'Twierdzenie o specjalnym statusie';

  @override
  String get metric_narcissist_18_description =>
      'Przekonanie, że mogą być zrozumiani tylko przez osoby lub instytucje o wysokim statusie lub się z nimi wiązać.';

  @override
  String get metric_narcissist_19_name => 'Eksploatacja interpersonalna';

  @override
  String get metric_narcissist_19_description =>
      'Wykorzystywanie zasobów, czasu lub emocji innych bez wzajemności lub wdzięczności.';

  @override
  String get metric_narcissist_20_name => 'Brak skruchy';

  @override
  String get metric_narcissist_20_description =>
      'Brak poczucia winy lub przeprosin po wyrządzeniu szkody, często usprawiedliwianie działań jako zasłużonych przez cel.';

  @override
  String get metric_narcissist_21_name => 'Podważanie konkurencyjne';

  @override
  String get metric_narcissist_21_description =>
      'Sabotowanie osiągnięć lub relacji innych w celu utrzymania pozycji wyższości.';

  @override
  String get metric_narcissist_22_name => 'Faza idealizacji';

  @override
  String get metric_narcissist_22_description =>
      'Nadmierne pochwały i uwielbienie na początku związku, stawiające nierealistyczne oczekiwania wobec celu.';

  @override
  String get metric_narcissist_23_name => 'Faza dewaluacji';

  @override
  String get metric_narcissist_23_description =>
      'Stopniowa lub nagła krytyka i pogarda po idealizacji, wywołująca zamęt i zwątpienie w siebie.';

  @override
  String get metric_narcissist_24_name => 'Impuls odrzucenia';

  @override
  String get metric_narcissist_24_description =>
      'Nagłe zakończenie związku, gdy cel przestaje dostarczać narcystycznego zaopatrzenia lub stawia opór.';

  @override
  String get metric_narcissist_25_name => 'Próby hooveringu';

  @override
  String get metric_narcissist_25_description =>
      'Ponowne angażowanie odrzuconego celu obietnicami, poczuciem winy lub manipulacją w celu odzyskania zaopatrzenia.';

  @override
  String get metric_narcissist_26_name => 'Projekcja wad';

  @override
  String get metric_narcissist_26_description =>
      'Oskarżanie innych o własne negatywne cechy lub zachowania, aby uniknąć samoświadomości.';

  @override
  String get metric_narcissist_27_name => 'Kontrola przez poczucie winy';

  @override
  String get metric_narcissist_27_description =>
      'Używanie stwierdzeń wywołujących poczucie winy w celu manipulowania innymi do uległości lub opieki.';

  @override
  String get metric_narcissist_28_name => 'Emocjonalna zmienność';

  @override
  String get metric_narcissist_28_description =>
      'Gwałtowne wahania nastroju od uroku do gniewu, często wywołane postrzeganym narcystycznym urazem.';

  @override
  String get metric_narcissist_29_name => 'Unieważnianie uczuć';

  @override
  String get metric_narcissist_29_description =>
      'Odrzucanie lub bagatelizowanie emocji innych jako nadmiernych reakcji lub irracjonalnych.';

  @override
  String get metric_narcissist_30_name => 'Monopolizowanie rozmów';

  @override
  String get metric_narcissist_30_description =>
      'Dominowanie w dialogu tematami dotyczącymi siebie, przerywanie lub ignorowanie wkładu innych.';

  @override
  String get metric_narcissist_31_name => 'Obraźliwe etykietowanie';

  @override
  String get metric_narcissist_31_description =>
      'Używanie obelg, etykiet lub poniżających określeń w celu dewaluacji i kontroli ofiary.';

  @override
  String get metric_narcissist_32_name => 'Groźby porzucenia';

  @override
  String get metric_narcissist_32_description =>
      'Wykorzystywanie strachu przed stratą lub odrzuceniem w celu wymuszenia posłuszeństwa lub uwagi.';

  @override
  String get metric_narcissist_33_name => 'Granie roli ofiary';

  @override
  String get metric_narcissist_33_description =>
      'Przedstawianie siebie jako niesprawiedliwie traktowanego, aby wzbudzić współczucie i uniknąć odpowiedzialności.';

  @override
  String get metric_narcissist_34_name => 'Kompleks męczennika';

  @override
  String get metric_narcissist_34_description =>
      'Twierdzenie o nadmiernym poświęceniu lub cierpieniu w celu wywołania poczucia winy i zobowiązania u innych.';

  @override
  String get metric_narcissist_35_name => 'Selektywna pamięć';

  @override
  String get metric_narcissist_35_description =>
      'Wygodne zapominanie o obietnicach, umowach lub szkodliwych działaniach, aby uniknąć odpowiedzialności.';

  @override
  String get metric_narcissist_36_name => 'Blokowanie komunikacji';

  @override
  String get metric_narcissist_36_description =>
      'Odmowa udziału w dialogu, ignorowanie pytań lub zamykanie dyskusji w celu utrzymania kontroli.';

  @override
  String get metric_narcissist_37_name => 'Fałszywe obietnice przyszłości';

  @override
  String get metric_narcissist_37_description =>
      'Składanie wielkich obietnic dotyczących wspólnych planów na przyszłość w celu stworzenia fałszywej nadziei i uzależnienia.';

  @override
  String get metric_narcissist_38_name => 'Kampania oszczerstw';

  @override
  String get metric_narcissist_38_description =>
      'Rozpowszechnianie złośliwych plotek lub kłamstw na temat ofiary w celu jej izolacji i zniszczenia reputacji.';

  @override
  String get metric_narcissist_39_name => 'Taktyki izolacji';

  @override
  String get metric_narcissist_39_description =>
      'Zniechęcanie lub uniemożliwianie kontaktu z przyjaciółmi, rodziną lub systemami wsparcia w celu zwiększenia zależności.';

  @override
  String get metric_narcissist_40_name => 'Wykorzystanie finansowe';

  @override
  String get metric_narcissist_40_description =>
      'Manipulowanie lub kontrolowanie zasobów finansowych dla osobistej korzyści lub w celu stworzenia zależności.';

  @override
  String get metric_narcissist_41_name => 'Przymus seksualny';

  @override
  String get metric_narcissist_41_description =>
      'Stosowanie presji, poczucia winy lub manipulacji w celu uzyskania zgody seksualnej bez autentycznej dobrowolności.';

  @override
  String get metric_narcissist_42_name => 'Testowanie granic';

  @override
  String get metric_narcissist_42_description =>
      'Wielokrotne przekraczanie granic, aby sprawdzić, jakie zachowania są tolerowane, a następnie eskalowanie naruszeń.';

  @override
  String get metric_narcissist_43_name => 'Zaprzeczanie przez gaslighting';

  @override
  String get metric_narcissist_43_description =>
      'Kategoryczne zaprzeczanie wydarzeniom lub wypowiedziom, które miały miejsce, co powoduje, że ofiara kwestionuje rzeczywistość.';

  @override
  String get metric_narcissist_44_name => 'Bagatelizowanie obaw';

  @override
  String get metric_narcissist_44_description =>
      'Odrzucanie uzasadnionych skarg jako nieistotnych lub przesadnie wrażliwych.';

  @override
  String get metric_narcissist_45_name => 'Eksternalizacja winy';

  @override
  String get metric_narcissist_45_description =>
      'Przypisywanie wszystkich problemów i konfliktów innym, bez przyjmowania osobistej odpowiedzialności.';

  @override
  String get metric_narcissist_46_name => 'Prowokowanie zazdrości';

  @override
  String get metric_narcissist_46_description =>
      'Flirtowanie lub chwalenie innych w celu wzbudzenia zazdrości i utrzymania kontroli emocjonalnej.';

  @override
  String get metric_narcissist_47_name => 'Szantaż emocjonalny';

  @override
  String get metric_narcissist_47_description =>
      'Wykorzystywanie strachu, obowiązku lub poczucia winy do manipulowania decyzjami i zachowaniem.';

  @override
  String get metric_narcissist_48_name => 'Pozorny wgląd';

  @override
  String get metric_narcissist_48_description =>
      'Udawanie samoświadomości lub empatii, aby sprawiać wrażenie zmiany, a następnie powracanie do toksycznych wzorców.';

  @override
  String get metric_narcissist_49_name => 'Pogardliwy ton';

  @override
  String get metric_narcissist_49_description =>
      'Używanie sarkazmu, drwin lub lekceważącego języka w celu poniżania i odrzucania innych.';

  @override
  String get metric_narcissist_50_name => 'Fantazje o zemście';

  @override
  String get metric_narcissist_50_description =>
      'Wyrażanie pragnienia odwetu lub kary wobec tych, którzy ich obrazili.';

  @override
  String get metric_serial_killer_1_name => 'Drapieżne Ramowanie';

  @override
  String get metric_serial_killer_1_description =>
      'Wykrywa język, który pozycjonuje mówcę jako myśliwego, a cel jako ofiarę, wskazując na drapieżne zamiary.';

  @override
  String get metric_serial_killer_2_name => 'Deficyt Empatii';

  @override
  String get metric_serial_killer_2_description =>
      'Identyfikuje wypowiedzi pozbawione emocjonalnego rezonansu lub troski o cierpienie innych, sugerujące bezduszność.';

  @override
  String get metric_serial_killer_3_name => 'Odczłowieczające Etykiety';

  @override
  String get metric_serial_killer_3_description =>
      'Wskazuje na użycie obraźliwych terminów lub uprzedmiotawiających etykiet, które pozbawiają ofiary człowieczeństwa.';

  @override
  String get metric_serial_killer_4_name => 'Sygnały Uprzedmiotowienia';

  @override
  String get metric_serial_killer_4_description =>
      'Rozpoznaje język traktujący jednostki jako narzędzia lub przedmioty do zaspokojenia potrzeb.';

  @override
  String get metric_serial_killer_5_name => 'Fiksacja na Kontroli';

  @override
  String get metric_serial_killer_5_description =>
      'Wykrywa obsesyjne odniesienia do dominacji, manipulacji lub wymuszania posłuszeństwa.';

  @override
  String get metric_serial_killer_6_name => 'Ton Poszukiwania Podniecenia';

  @override
  String get metric_serial_killer_6_description =>
      'Identyfikuje podekscytowanie lub pobudzenie w opisywaniu ryzykownych, brutalnych lub drapieżnych czynów.';

  @override
  String get metric_serial_killer_7_name => 'Markery Kompartmentalizacji';

  @override
  String get metric_serial_killer_7_description =>
      'Wskazuje na nagłe przejścia między normalnymi a brutalnymi tematami, sugerujące psychologiczne oddzielenie.';

  @override
  String get metric_serial_killer_8_name => 'Sygnały Wyboru Ofiary';

  @override
  String get metric_serial_killer_8_description =>
      'Wykrywa kryteria lub preferencje dotyczące celowania w konkretne wrażliwe grupy.';

  @override
  String get metric_serial_killer_9_name => 'Sadystyczna Przyjemność';

  @override
  String get metric_serial_killer_9_description =>
      'Rozpoznaje czerpanie przyjemności z bólu, strachu lub cierpienia innych.';

  @override
  String get metric_serial_killer_10_name => 'Manipulacyjna Krzywda';

  @override
  String get metric_serial_killer_10_description =>
      'Identyfikuje język używany do oszukiwania lub zmuszania innych do szkodliwych sytuacji.';

  @override
  String get metric_serial_killer_11_name => 'Wskaźniki Stalkingu';

  @override
  String get metric_serial_killer_11_description =>
      'Wykrywa szczegółowe śledzenie, inwigilację lub obsesyjne monitorowanie celu.';

  @override
  String get metric_serial_killer_12_name => 'Język Groomingu';

  @override
  String get metric_serial_killer_12_description =>
      'Wykrywa stopniowe taktyki budowania zaufania w celu wykorzystania lub znęcania się nad ofiarami.';

  @override
  String get metric_serial_killer_13_name => 'Przemocowe Fantazjowanie';

  @override
  String get metric_serial_killer_13_description =>
      'Identyfikuje żywe opisy krzywdzenia lub zabijania innych jako mentalną próbę.';

  @override
  String get metric_serial_killer_14_name => 'Asertywność Władzy';

  @override
  String get metric_serial_killer_14_description =>
      'Rozpoznaje wypowiedzi podkreślające wyższość lub kontrolę nad innymi.';

  @override
  String get metric_serial_killer_15_name => 'Brak Skruchy';

  @override
  String get metric_serial_killer_15_description =>
      'Wykrywa brak winy lub żalu po omówieniu szkodliwych działań.';

  @override
  String get metric_serial_killer_16_name => 'Eksternalizacja Win';

  @override
  String get metric_serial_killer_16_description =>
      'Wykrywa przerzucanie odpowiedzialności za przemocowe popędy na ofiary lub społeczeństwo.';

  @override
  String get metric_serial_killer_17_name => 'Seksualizowana Przemoc';

  @override
  String get metric_serial_killer_17_description =>
      'Identyfikuje łączenie tematów seksualnych i przemocy w języku.';

  @override
  String get metric_serial_killer_18_name => 'Taktyki Izolacji';

  @override
  String get metric_serial_killer_18_description =>
      'Rozpoznaje wysiłki mające na celu oddzielenie celu od sieci wsparcia.';

  @override
  String get metric_serial_killer_19_name => 'Wzorce Gaslightingu';

  @override
  String get metric_serial_killer_19_description =>
      'Wykrywa język zaprojektowany do zniekształcania rzeczywistości i podważania zdrowia psychicznego ofiary.';

  @override
  String get metric_serial_killer_20_name => 'Maskowanie Gróźb';

  @override
  String get metric_serial_killer_20_description =>
      'Wykrywa ukryte groźby lub ostrzeżenia zamaskowane jako swobodne wypowiedzi.';

  @override
  String get metric_serial_killer_21_name => 'Język Zaborczy';

  @override
  String get metric_serial_killer_21_description =>
      'Identyfikuje twierdzenia o własności lub uprawnieniach wobec innej osoby.';

  @override
  String get metric_serial_killer_22_name => 'Motywy Zemsty';

  @override
  String get metric_serial_killer_22_description =>
      'Rozpoznaje fiksację na odwetu lub karaniu postrzeganych krzywd.';

  @override
  String get metric_serial_killer_23_name => 'Narcystyczna Wielkość';

  @override
  String get metric_serial_killer_23_description =>
      'Wskazuje na przesadne poczucie własnej ważności i lekceważenie wartości innych.';

  @override
  String get metric_serial_killer_24_name => 'Emocjonalne Odłączenie';

  @override
  String get metric_serial_killer_24_description =>
      'Wykrywa kliniczny lub zdystansowany ton podczas omawiania traumy lub krzywdy.';

  @override
  String get metric_serial_killer_25_name => 'Drapieżna Cierpliwość';

  @override
  String get metric_serial_killer_25_description =>
      'Identyfikuje język długoterminowego planowania przyszłej wiktymizacji.';

  @override
  String get metric_serial_killer_26_name => 'Testowanie Granic';

  @override
  String get metric_serial_killer_26_description =>
      'Rozpoznaje sondowanie granic lub oporu u potencjalnych ofiar.';

  @override
  String get metric_serial_killer_27_name => 'Minimalizacja Szkody';

  @override
  String get metric_serial_killer_27_description =>
      'Wskazuje na bagatelizowanie powagi aktów przemocy lub nadużyć.';

  @override
  String get metric_serial_killer_28_name => 'Usprawiedliwianie Przemocy';

  @override
  String get metric_serial_killer_28_description =>
      'Wykrywa racjonalizacje krzywdzenia innych jako konieczne lub zasłużone.';

  @override
  String get metric_serial_killer_29_name => 'Obsesyjne Skupienie';

  @override
  String get metric_serial_killer_29_description =>
      'Identyfikuje powtarzające się, utrwalone myśli na temat konkretnej osoby lub czynu.';

  @override
  String get metric_serial_killer_30_name => 'Zimna Kalkulacja';

  @override
  String get metric_serial_killer_30_description =>
      'Rozpoznaje strategiczne, pozbawione emocji planowanie szkodliwych działań.';

  @override
  String get metric_serial_killer_31_name => 'Zwodniczy Urok';

  @override
  String get metric_serial_killer_31_description =>
      'Wskazuje na nadmiernie pochlebny lub przypochlebny język używany do manipulacji.';

  @override
  String get metric_serial_killer_32_name => 'Obwinianie Ofiary';

  @override
  String get metric_serial_killer_32_description =>
      'Wykrywa przypisywanie winy ofierze za jej własną wiktymizację.';

  @override
  String get metric_serial_killer_33_name => 'Sygnały Eskalacji';

  @override
  String get metric_serial_killer_33_description =>
      'Identyfikuje przejście od fantazji do zamiaru w agresywnym języku.';

  @override
  String get metric_serial_killer_34_name => 'Orientacja Pasożytnicza';

  @override
  String get metric_serial_killer_34_description =>
      'Rozpoznaje język traktujący innych jako zasoby do wykorzystania.';

  @override
  String get metric_serial_killer_35_name => 'Sygnały Pobudzenia';

  @override
  String get metric_serial_killer_35_description =>
      'Wskazuje na fizjologiczne oznaki podniecenia związane z przemocą.';

  @override
  String get metric_serial_killer_36_name => 'Testowanie Lojalności';

  @override
  String get metric_serial_killer_36_description =>
      'Wykrywa żądania dowodów lojalności lub tajemnicy od wspólników.';

  @override
  String get metric_serial_killer_37_name => 'Język Rytualny';

  @override
  String get metric_serial_killer_37_description =>
      'Identyfikuje wzorcowe, ceremonialne sformułowania wokół aktów przemocy.';

  @override
  String get metric_serial_killer_38_name => 'Twierdzenia o Wyższości';

  @override
  String get metric_serial_killer_38_description =>
      'Rozpoznaje stwierdzenia o byciu ponad normami moralnymi lub prawnymi.';

  @override
  String get metric_serial_killer_39_name => 'Pustka Emocjonalna';

  @override
  String get metric_serial_killer_39_description =>
      'Wskazuje na brak słów emocjonalnych w kontekstach wymagających empatii.';

  @override
  String get metric_serial_killer_40_name => 'Drapieżna Ciekawość';

  @override
  String get metric_serial_killer_40_description =>
      'Wykrywa dociekliwe pytania o lęki lub słabości ofiary.';

  @override
  String get metric_serial_killer_41_name => 'Uciszanie zagrożeń';

  @override
  String get metric_serial_killer_41_description =>
      'Identyfikuje ostrzeżenia mające zapobiec ujawnieniu lub zgłoszeniu.';

  @override
  String get metric_serial_killer_42_name => 'Odczłowieczające porównania';

  @override
  String get metric_serial_killer_42_description =>
      'Rozpoznaje porównywanie ludzi do zwierząt, przedmiotów lub istot podludzkich.';

  @override
  String get metric_serial_killer_43_name => 'Język kontroli';

  @override
  String get metric_serial_killer_43_description =>
      'Wykrywa rozkazujący lub dominujący ton mający na celu podporządkowanie innych.';

  @override
  String get metric_serial_killer_44_name => 'Sadystyczne szczegóły';

  @override
  String get metric_serial_killer_44_description =>
      'Wykrywa nadmierne skupienie na graficznym bólu lub cierpieniu w narracjach.';

  @override
  String get metric_serial_killer_45_name => 'Manipulacyjna empatia';

  @override
  String get metric_serial_killer_45_description =>
      'Identyfikuje udawaną troskę mającą na celu obniżenie czujności ofiary.';

  @override
  String get metric_serial_killer_46_name => 'Drapieżne spojrzenie';

  @override
  String get metric_serial_killer_46_description =>
      'Rozpoznaje język opisujący intensywną, inwazyjną obserwację celów.';

  @override
  String get metric_serial_killer_47_name => 'Przemocowa tożsamość';

  @override
  String get metric_serial_killer_47_description =>
      'Wykrywa samoidentyfikację jako drapieżnika, zabójcy lub potwora.';

  @override
  String get metric_serial_killer_48_name => 'Dreszcz polowania';

  @override
  String get metric_serial_killer_48_description =>
      'Wykrywa podekscytowanie w procesie tropienia lub ścigania ofiar.';

  @override
  String get metric_serial_killer_49_name => 'Kom pulsywne wyznanie';

  @override
  String get metric_serial_killer_49_description =>
      'Identyfikuje pragnienie ujawnienia aktów przemocy w celu uzyskania ulgi psychicznej.';

  @override
  String get metric_serial_killer_50_name => 'Język ostateczności';

  @override
  String get metric_serial_killer_50_description =>
      'Rozpoznaje odniesienia do zakończenia, zabijania lub trwałego uciszenia celów.';

  @override
  String get packNarcissistLabel => 'Narcysta';

  @override
  String get packSerialKillerLabel => 'Seryjny Morderca';
}
