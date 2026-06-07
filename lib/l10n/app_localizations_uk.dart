// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appTitle => 'ШІ-аналізатор токсичності стосунків';

  @override
  String get psychologicalMetrics => 'Психологічні метрики';

  @override
  String get metricsDescription =>
      'Менша кількість вибраних метрик забезпечує глибший, більш сконцентрований аналіз цієї поведінки. Більша кількість вибраних метрик забезпечує ширший звіт з меншою деталізацією по кожній метриці.';

  @override
  String get selectSMS => 'Вибрати SMS / RCS Чат';

  @override
  String get selectFile => 'Вибрати файл';

  @override
  String get analyzeSelectedMetrics => 'Аналізувати вибрані метрики';

  @override
  String get analyze20RandomMetrics => 'Аналізувати 20 випадкових метрик';

  @override
  String get membershipOptions => 'Варіанти підписки';

  @override
  String get free => 'Безкоштовно';

  @override
  String get oneTimeUnlock => 'Разове розблокування звіту';

  @override
  String get standard => 'Стандарт';

  @override
  String get discordAddon => 'Доповнення Discord';

  @override
  String get analyze => 'Аналізувати';

  @override
  String get report => 'Звіт';

  @override
  String get pdfReport => 'PDF-звіт';

  @override
  String get openPdf => 'Відкрити PDF';

  @override
  String get sharePdf => 'Поділитися PDF';

  @override
  String get printPdf => 'Друкувати PDF';

  @override
  String get closePdfPreview => 'Закрити вікно попереднього перегляду PDF';

  @override
  String get openPdfPreview => 'Відкрити вікно попереднього перегляду PDF';

  @override
  String get pdfPreviewDescription =>
      'Вбудоване вікно PDF спочатку закрите, щоб звіт залишався компактним.';

  @override
  String get notNow => 'Не зараз';

  @override
  String get unlockThisReport => 'Розблокувати цей звіт - \$20';

  @override
  String get joinStandard => 'Приєднатися до Стандарт - \$9.99/міс';

  @override
  String get instantUnlockTitle => 'Миттєве розблокування звіту - \$20';

  @override
  String get instantUnlockDescription =>
      'Це разова покупка для розблокування лише поточного звіту. Підписка не потрібна. Майбутні звіти потребуватимуть окремих розблокувань або членства.\n\nПродовжити оплату?';

  @override
  String get purchaseFor20 => 'Купити за \$20';

  @override
  String get share => 'Поділитися';

  @override
  String get print => 'Друкувати';

  @override
  String get save => 'Зберегти';

  @override
  String get cancel => 'Скасувати';

  @override
  String get ok => 'Гаразд';

  @override
  String get loading => 'Завантаження...';

  @override
  String get error => 'Помилка';

  @override
  String get success => 'Успіх';

  @override
  String get conversations => 'Розмови';

  @override
  String get messages => 'Повідомлення';

  @override
  String get selectConversation => 'Вибрати розмову';

  @override
  String get selectSmsConversation => 'Вибрати SMS / RCS розмову';

  @override
  String get searchConversations => 'Пошук розмов...';

  @override
  String get loadingConversations => 'Завантаження розмов...';

  @override
  String get errorLoadingConversations => 'Помилка завантаження розмов';

  @override
  String get selectConversationToAnalyze => 'Виберіть розмову для аналізу';

  @override
  String get analyzeWithSelectedMetrics => 'Аналізувати з вибраними метриками';

  @override
  String get loadConversationAndSelectMetric =>
      'Завантажте розмову та виберіть принаймні одну метрику';

  @override
  String get selectAtLeastOneMetric =>
      'Для запуску звіту потрібно вибрати принаймні одну метрику.';

  @override
  String get spinningMetricWheel => 'Обертання колеса метрик...';

  @override
  String get loadConversationToAnalyze => 'Завантажте розмову для аналізу';

  @override
  String get noConversationsFound => 'Розмов не знайдено';

  @override
  String get permissionsRequired => 'Потрібні дозволи';

  @override
  String get smsPermission => 'Текстові повідомлення';

  @override
  String get contactsPermission => 'Контакти';

  @override
  String get smsPermissionDescription =>
      'Для аналізу ваших SMS-розмов на наявність шаблонів стосунків';

  @override
  String get contactsPermissionDescription =>
      'Для відображення імен контактів замість номерів телефонів';

  @override
  String get analyzingMessage =>
      'Зачекайте, поки ваш психологічний аналіз генерується ШІ...';

  @override
  String get analyzingStatus => 'Аналіз розмови...';

  @override
  String get analyzingSubMessage =>
      'Будь ласка, наберіться терпіння, цей процес може зайняти до хвилини залежно від швидкості вашого з\'єднання та кількості вибраних метрик';

  @override
  String get unlockFullReport => 'Розблокувати та показати весь цей звіт';

  @override
  String get fullReportLocked => 'Повний звіт заблоковано';

  @override
  String get upgradeToUnlock =>
      'Оновіть своє членство, щоб розблокувати повний звіт психологічного аналізу з усіма метриками та детальними висновками.';

  @override
  String get language => 'Мова';

  @override
  String get english => 'Англійська';

  @override
  String get spanish => 'Іспанська';

  @override
  String get french => 'Французька';

  @override
  String get german => 'Німецька';

  @override
  String get italian => 'Італійська';

  @override
  String get portuguese => 'Португальська';

  @override
  String get dutch => 'Нідерландська';

  @override
  String get russian => 'Російська';

  @override
  String get chinese => 'Китайська';

  @override
  String get japanese => 'Японська';

  @override
  String get korean => 'Корейська';

  @override
  String get arabic => 'Арабська';

  @override
  String get hindi => 'Гінді';

  @override
  String get turkish => 'Турецька';

  @override
  String get polish => 'Польська';

  @override
  String get ukrainian => 'Українська';

  @override
  String get runAnotherAnalysis => 'Запустити ще один аналіз?';

  @override
  String get becomeMemberTitle =>
      'Станьте учасником, щоб отримати повний звіт аналізу';

  @override
  String get becomeMemberSubtitle =>
      'Виберіть рівень доступу, що відповідає розмовам і звітам, які вам потрібно проаналізувати.';

  @override
  String get benefitAnalyzeSms => 'Аналіз текстових SMS-повідомлень';

  @override
  String get benefitReportPreview => 'Запустити попередній перегляд звіту';

  @override
  String get benefitViewPartialReport => 'Переглянути близько 25% звіту';

  @override
  String get benefitLockedDetails => 'Повні деталі звіту заблоковано';

  @override
  String get currentFreeAccess => 'Поточний безкоштовний доступ';

  @override
  String get benefitUnlockCurrentReport => 'Розблокувати цей повний звіт';

  @override
  String get benefitNoSubscription => 'Без підписки';

  @override
  String get benefitSavePrintShareThis =>
      'Зберегти, надрукувати та поділитися цим звітом';

  @override
  String get benefitBestSingleAnalysis =>
      'Найкраще, якщо вам потрібен лише один аналіз';

  @override
  String get unlockThisReportShort => 'Розблокувати цей звіт';

  @override
  String get benefitFullSmsReport => 'Повний звіт аналізу SMS';

  @override
  String get benefitSavePrintSharePdf =>
      'Зберігати, друкувати та ділитися PDF-звітами';

  @override
  String get benefitTenReports => '10 звітів за 24-годинний період';

  @override
  String get benefitBestTextReview =>
      'Найкраще для аналізу стосунків за текстовими повідомленнями';

  @override
  String get benefitDateRangeFilter => 'Фільтрувати аналіз за діапазоном дат';

  @override
  String get signUpStandard => 'Підписатися на Стандарт';

  @override
  String get benefitAddToStandard => 'Додати до підписки Стандарт';

  @override
  String get benefitAnalyzeDiscord => 'Аналіз чатів серверів Discord';

  @override
  String get benefitRequiresBot => 'Потрібне встановлення бота';

  @override
  String get benefitBestGamers => 'Найкраще для геймерів і спільнот Discord';

  @override
  String get addDiscordAnalysis => 'Додати аналіз Discord';

  @override
  String get requiresStandardMembership => 'Потрібна підписка Стандарт';

  @override
  String get comingSoon => 'Незабаром';

  @override
  String get comingSoonWithNextUpdate => 'Незабаром у наступному оновленні:';

  @override
  String get proMembershipTier => 'Рівень підписки Pro - \$19.99';

  @override
  String get proPlusMembershipTier => 'Рівень підписки Pro-Plus - \$24.99';

  @override
  String get proGetsLabel => 'Pro включає:';

  @override
  String get proGetsDescription =>
      'Аналізуйте гілки чатів з усіх інших популярних платформ обміну повідомленнями та соціальних мереж, таких як:';

  @override
  String get proPlatformsList =>
      'LinkedIn, WhatsApp, Instagram, Facebook Messenger, Telegram, X (Twitter), електронна пошта та календар';

  @override
  String get proPlusGetsLabel => 'Pro-Plus включає:';

  @override
  String get proPlusGetsDescription =>
      'Усе, що є в Pro, плюс доповнення Discord за зниженою ціною.';

  @override
  String get purchaseSuccessfulUnlocked =>
      'Покупка успішна! Звіт розблоковано.';

  @override
  String get purchaseFailed =>
      'Покупка не вдалася. Будь ласка, спробуйте ще раз.';

  @override
  String get membershipActivated => 'Підписку активовано!';

  @override
  String get dateRangeFilter => 'Фільтр діапазону дат';

  @override
  String get dateRangeOptional => '(необов\'язково)';

  @override
  String get startDate => 'Початкова дата';

  @override
  String get endDate => 'Кінцева дата';

  @override
  String get clear => 'Очистити';

  @override
  String get dateRangeRequiresMembership =>
      'Потребує підписку Standard або вище';

  @override
  String selectUpToCount(Object current, Object max) {
    return 'Вибрати до $max. Поточний: $current';
  }

  @override
  String get clearSelections => 'Очистити вибір';

  @override
  String analyzeRandomMetrics(Object count) {
    return 'Аналізувати $count випадкових метрик';
  }

  @override
  String get saveSelections => 'Зберегти Вибір';

  @override
  String get loadSelections => 'Завантажити Вибори';

  @override
  String get saveMetricListName => 'Зберегти Список Метрик';

  @override
  String get enterListName => 'Введіть назву для цього списку метрик:';

  @override
  String get chooseSavedMetrics => 'Виберіть збережений список метрик:';

  @override
  String get noSavedLists =>
      'Немає збережених списків метрик для завантаження на даний момент.';

  @override
  String get metricListSaved => 'Список метрик успішно збережено.';

  @override
  String get metricListLoaded => 'Список метрик успішно завантажено.';

  @override
  String get filters => 'Фільтри';

  @override
  String get sortBy => 'Сортувати за:';

  @override
  String get recent => 'Нещодавні';

  @override
  String get name => 'Ім\'я';

  @override
  String get count => 'Кількість';

  @override
  String get namedOnly => 'Тільки з іменем';

  @override
  String get minMessages => 'Мін. повідомлень:';

  @override
  String get minimumMessages => 'Мінімум повідомлень:';

  @override
  String get executiveSummary => 'Виконавче резюме';

  @override
  String get metricScores => 'Оцінки метрик';

  @override
  String get contextualEvidenceExamples => 'Контекстуальні приклади';

  @override
  String get neutralSynthesis => 'Нейтральний синтез';

  @override
  String analysisOfSender(Object sender) {
    return 'Аналіз $sender (Відправник)';
  }

  @override
  String analysisOfReceiver(Object receiver) {
    return 'Аналіз $receiver (Отримувач)';
  }

  @override
  String get finalConclusion => 'Остаточний висновок';

  @override
  String get metric_1_name => 'Зневага';

  @override
  String get metric_1_description =>
      'Шукає переваги, огиди, насмішки, мову перекатування очей або образи, які ставлять одного партнера нижче іншого.';

  @override
  String get metric_2_name => 'Захисність';

  @override
  String get metric_2_description =>
      'Відстежує рефлективний самозахист, контратаки, виправдання та відмову розглядати скаргу іншої особи.';

  @override
  String get metric_3_name => 'Ігнорування';

  @override
  String get metric_3_description =>
      'Визначає закриття, відступ, ігнорування, відмову відповідати або завершення розмов, щоб уникнути залучення.';

  @override
  String get metric_4_name => 'Критика';

  @override
  String get metric_4_description =>
      'Виявляє атаки на характер або особистість замість конкретних поведінок, потреб або інцидентів.';

  @override
  String get metric_5_name => 'Індикатори газлайтингу';

  @override
  String get metric_5_description =>
      'Позначає спроби змусити когось сумніватися в пам\'яті, сприйнятті, здоровому глузді або легітимності свого досвіду.';

  @override
  String get metric_6_name => 'Перекладання провини';

  @override
  String get metric_6_description =>
      'Вимірює, чи відповідальність перенаправляється на іншого партнера замість прямого визнання.';

  @override
  String get metric_7_name => 'Взір ескалації';

  @override
  String get metric_7_description =>
      'Оцінює, чи тон, звинувачення, інтенсивність або загрози зростають замість руху до вирішення.';

  @override
  String get metric_8_name => 'Визнання спроб відновлення';

  @override
  String get metric_8_description =>
      'Перевіряє, чи помічаються та приймаються вибачення, гумор, паузи, заспокоєння або пропозиції миру.';

  @override
  String get metric_9_name => 'Мова відповідальності';

  @override
  String get metric_9_description =>
      'Шукає чітке визнання шкоди, конкретну відповідальність та бажання змінити поведінку.';

  @override
  String get metric_10_name => 'Повага до кордонів';

  @override
  String get metric_10_description =>
      'Оцінює, чи поважаються встановлені обмеження навколо часу, приватності, тіла, емоцій або контакту.';

  @override
  String get metric_11_name => 'Індикатори примусового контролю';

  @override
  String get metric_11_description =>
      'Позначає патерни залякування, обмеження, моніторингу, залежності або контролю над виборами та рухом.';

  @override
  String get metric_12_name => 'Мова загроз';

  @override
  String get metric_12_description =>
      'Визначає явні або натякні загрози, що включають безпеку, покинуття, викриття, помсту або покарання.';

  @override
  String get metric_13_name => 'Знецінення';

  @override
  String get metric_13_description =>
      'Виявляє відхилення занепокоєнь, ставлення до потреб як до неважливих або відмову серйозно ставитися до стресу.';

  @override
  String get metric_14_name => 'Недійсність';

  @override
  String get metric_14_description =>
      'Вимірює заперечення, насмішку або виправлення емоцій іншої особи замість їх визнання.';

  @override
  String get metric_15_name => 'Вираження емпатії';

  @override
  String get metric_15_description =>
      'Шукає прийняття перспективи, турботу, емоційне визнання та занепокоєння досвідом іншої особи.';

  @override
  String get metric_16_name => 'Взаємність';

  @override
  String get metric_16_description =>
      'Оцінює, чи увага, зусилля, вибачення, компроміс та емоційна підтримка течуть в обидва напрямки.';

  @override
  String get metric_17_name => 'Емоційна регуляція';

  @override
  String get metric_17_description =>
      'Оцінює здатність залишатися заземленим, паузувати, самозаспокоюватися та спілкуватися без вибухової реактивності.';

  @override
  String get metric_18_name => 'Сарказм, використаний як шкода';

  @override
  String get metric_18_description =>
      'Позначає сарказм, використаний для приниження, покарання, приниження або маскування ворожості як гумору.';

  @override
  String get metric_19_name => 'Назви';

  @override
  String get metric_19_description =>
      'Визначає принизливі мітки, образи, лайку, спрямовану на особу, або атаки на основі ідентичності.';

  @override
  String get metric_20_name => 'Взір мовчання';

  @override
  String get metric_20_description =>
      'Відстежує тишу, використану як покарання, контроль, уникнення або відсторонення зв\'язку.';

  @override
  String get metric_21_name => 'Фреймінг ревнощі';

  @override
  String get metric_21_description =>
      'Оцінює підозру, володіння, звинувачення або ревнощу, представлену як доказ турботи.';

  @override
  String get metric_22_name => 'Тиск ізоляції';

  @override
  String get metric_22_description =>
      'Позначає зусилля відокремити партнера від друзів, родини, систем підтримки або зовнішніх перспектив.';

  @override
  String get metric_23_name => 'Індикатори фінансового контролю';

  @override
  String get metric_23_description =>
      'Шукає контроль над грошима, витратами, зайнятістю, доступом до рахунків або фінансовою незалежністю.';

  @override
  String get metric_24_name => 'Індикатори порушення приватності';

  @override
  String get metric_24_description =>
      'Виявляє шпигунство, вимоги паролів, перевірку пристроїв, відстеження місцезнаходження або порушення приватності.';

  @override
  String get metric_25_name => 'Конкретність вибачень';

  @override
  String get metric_25_description =>
      'Вимірює, чи вибачення називають точну шкоду, вплив та майбутнє виправлення замість того, щоб залишатися нечіткими.';

  @override
  String get metric_26_name => 'Тиск прощення';

  @override
  String get metric_26_description =>
      'Позначає вимоги рухатися далі, швидко пробачати або припинити обговорення шкоди до відновлення.';

  @override
  String get metric_27_name => 'Мінімізація';

  @override
  String get metric_27_description =>
      'Виявляє применшення шкоди, називання серйозних занепокоєнь драматичними або зменшення впливу, щоб уникнути відповідальності.';

  @override
  String get metric_28_name => 'Проекція';

  @override
  String get metric_28_description =>
      'Шукає звинувачення, що відображають власну поведінку, мотиви або невирішені почуття мовця.';

  @override
  String get metric_29_name => 'Взір переривання';

  @override
  String get metric_29_description =>
      'Відстежує переривання, говоріння поверх, відмову від завершення або контроль розмовних ходів.';

  @override
  String get metric_30_name => 'Відхилення теми';

  @override
  String get metric_30_description =>
      'Визначає зміну теми, підняття не пов\'язаних питань або уникнення центральної занепокоєння.';

  @override
  String get metric_31_name => 'Орієнтація на вирішення';

  @override
  String get metric_31_description =>
      'Вимірює, чи спрямовані повідомлення на рішення, ясність, угоди та наступні кроки.';

  @override
  String get metric_32_name => 'Спільне вирішення проблем';

  @override
  String get metric_32_description =>
      'Оцінює співпрацю мову, спільну відповідальність, мозковий штурм та бажання знайти робочі компроміси.';

  @override
  String get metric_33_name => 'Емоційне затоплення';

  @override
  String get metric_33_description =>
      'Виявляє перевантаження, паніку, закриття, спіраль або нездатність обробляти під час конфлікту.';

  @override
  String get metric_34_name => 'Вказівки реакції на страх';

  @override
  String get metric_34_description =>
      'Шукає заспокоєння, обережний підбір слів, жах, занепокоєння безпекою або страх реакції партнера.';

  @override
  String get metric_35_name => 'Згодженість заяв';

  @override
  String get metric_35_description =>
      'Оцінює, чи рахунки залишаються внутрішньо узгодженими в повідомленнях та часі.';

  @override
  String get metric_36_name => 'Відновлення на основі доказів';

  @override
  String get metric_36_description =>
      'Перевіряє, чи посилаються заяви на конкретні події, цитати, хронології або спостережувану поведінку.';

  @override
  String get metric_37_name => 'Взір вимоги відступу';

  @override
  String get metric_37_description =>
      'Відстежує одного партнера, що переслідує відповіді або зміни, поки інший уникає, закривається або виходить.';

  @override
  String get metric_38_name => 'Індикатори дисбалансу влади';

  @override
  String get metric_38_description =>
      'Позначає нерівну владу рішень, страх наслідків, залежність, залякування або односторонній контроль.';

  @override
  String get metric_39_name => 'Поважна незгода';

  @override
  String get metric_39_description =>
      'Вимірює, чи конфлікт зберігає гідність, цікавість та незгоду без деградації.';

  @override
  String get metric_40_name => 'Цикл розриву та відновлення';

  @override
  String get metric_40_description =>
      'Оцінює, чи слідує за конфліктом визнання, відновлення та фактичне відновлення.';

  @override
  String get metric_41_name => 'Відсторонення прихильності';

  @override
  String get metric_41_description =>
      'Виявляє утримання любові, тепла, сексу, уваги або заспокоєння як покарання або важеля.';

  @override
  String get metric_42_name => 'Відсилання до публічного приниження';

  @override
  String get metric_42_description =>
      'Позначає загрози, жарти або дії, що принижують партнера перед іншими.';

  @override
  String get metric_43_name => 'Вказівки конфлікту, пов\'язаного з речовинами';

  @override
  String get metric_43_description =>
      'Шукає використання алкоголю або наркотиків, пов\'язане з агресією, ненадійністю, конфліктом або шкодою.';

  @override
  String get metric_44_name => 'Тиск батьківського конфлікту';

  @override
  String get metric_44_description =>
      'Визначає дітей, опіку, батьківські ролі або батьківську провину, використані в конфлікті або як важіль.';

  @override
  String get metric_45_name => 'Повага до сексуальних кордонів';

  @override
  String get metric_45_description =>
      'Оцінює повагу до згоди, тиску, відмови, комфорту, часу та сексуальної автономії.';

  @override
  String get metric_46_name => 'Індикатори цифрового переслідування';

  @override
  String get metric_46_description =>
      'Відстежує повторювані небажані повідомлення, спам-дзвінки, онлайн-тиск, спостереження або залякування на основі платформи.';

  @override
  String get metric_47_name => 'Мова моніторингу або спостереження';

  @override
  String get metric_47_description =>
      'Позначає перевірку місцезнаходження, вимогу доказів, відстеження поведінки або постійну перевірку.';

  @override
  String get metric_48_name => 'Орієнтація на майбутнє';

  @override
  String get metric_48_description =>
      'Вимірює, чи партнери обговорюють майбутнє покращення, зобов\'язання, плани або конструктивний напрямок.';

  @override
  String get metric_49_name => 'Сигнали планування безпеки';

  @override
  String get metric_49_description =>
      'Шукає спроби звернутися за допомогою, створити дистанцію, задокументувати шкоду або планувати фізичну/емоційну безпеку.';

  @override
  String get metric_50_name => 'Спільні спроби деескалації';

  @override
  String get metric_50_description =>
      'Відстежує паузи, заспокійливу мову, м\'якший тон, тайм-аути та спроби обох партнерів зменшити інтенсивність.';

  @override
  String get metric_51_name => 'Вказівки безпечного прив\'язування';

  @override
  String get metric_51_description =>
      'Визначає довіру, пряме заспокоєння, емоційну доступність та комфорт з близькістю та незалежністю.';

  @override
  String get metric_52_name => 'Активація тривожного прив\'язування';

  @override
  String get metric_52_description =>
      'Позначає протестну поведінку, термінові потреби заспокоєння, страх покинутості та підвищену чутливість до дистанції.';

  @override
  String get metric_53_name => 'Віддалення уникливого прив\'язування';

  @override
  String get metric_53_description =>
      'Виявляє емоційну мінімізацію, захист незалежності, відступ від вразливості або дискомфорт з потребами.';

  @override
  String get metric_54_name => 'Сигнали дезорганізованого прив\'язування';

  @override
  String get metric_54_description =>
      'Шукає цикли наближення-уникнення, страх, змішаний з потребою, хаотичні реакції або плутані патерни близькості.';

  @override
  String get metric_55_name => 'Емоційні пропозиції та відповіді';

  @override
  String get metric_55_description =>
      'Вимірює запрошення до уваги, комфорту або зв\'язку та чи вони приймаються або пропускаються.';

  @override
  String get metric_56_name => 'Відвертання від зв\'язку';

  @override
  String get metric_56_description =>
      'Позначає ігнорування, відхилення або невідповідь на пропозиції близькості чи підтримки.';

  @override
  String get metric_57_name => 'Відвертання проти зв\'язку';

  @override
  String get metric_57_description =>
      'Виявляє ворожі або каральні відповіді на спроби прихильності, вразливості або відновлення.';

  @override
  String get metric_58_name => 'Переваження позитивних настроїв';

  @override
  String get metric_58_description =>
      'Шукає щедрість, вигоду сумніву, прихильність та інтерпретацію конфлікту через турботу.';

  @override
  String get metric_59_name => 'Переваження негативних настроїв';

  @override
  String get metric_59_description =>
      'Позначає припущення поганих намірів, негативну інтерпретацію нейтральних повідомлень та постійне вороже фреймінгування.';

  @override
  String get metric_60_name => 'Взір жорсткого початку';

  @override
  String get metric_60_description =>
      'Визначає розмови, що починаються зі звинувачення, атаки, зневаги чи провини замість прохання.';

  @override
  String get metric_61_name => 'Взір м\'якого початку';

  @override
  String get metric_61_description =>
      'Шукає м\'які відкриття, використовуючи почуття, потреби, конкретні прохання та не звинувачувальну мову.';

  @override
  String get metric_62_name => 'Фізіологічне самозаспокоєння';

  @override
  String get metric_62_description =>
      'Оцінює спроби паузувати, дихати, взяти простір або регулювати тіло перед продовженням конфлікту.';

  @override
  String get metric_63_name => 'Взір уникнення конфлікту';

  @override
  String get metric_63_description =>
      'Відстежує повторюване уникнення необхідних тем, дискомфорту, незгоди або емоційної чесності.';

  @override
  String get metric_64_name => 'Нестабільний стиль конфлікту';

  @override
  String get metric_64_description =>
      'Виявляє конфлікт високої інтенсивності з прямим вираженням, який може все ще включати залучення та відновлення.';

  @override
  String get metric_65_name => 'Валідуючий стиль конфлікту';

  @override
  String get metric_65_description =>
      'Вимірює, чи партнери визнають перспективу один одного під час незгоди.';

  @override
  String get metric_66_name => 'Ворожий стиль конфлікту';

  @override
  String get metric_66_description =>
      'Позначає часту критику, зневагу, захисність, атаки та конфронтаційне фреймінгування.';

  @override
  String get metric_67_name => 'Взір ворожості-відчуження';

  @override
  String get metric_67_description =>
      'Визначає холодну ворожість, емоційне відчуження, зневагу та низьку мотивацію відновлення.';

  @override
  String get metric_68_name => 'Готовність до компромісу';

  @override
  String get metric_68_description =>
      'Шукає гнучкість, переговори, пропозиції середини та жертви, що поважають обидві потреби.';

  @override
  String get metric_69_name => 'Прийняття впливу';

  @override
  String get metric_69_description =>
      'Вимірює відкритість до впливу почуттів, потреб або перспективи партнера.';

  @override
  String get metric_70_name => 'Сигнали заблокованого конфлікту';

  @override
  String get metric_70_description =>
      'Позначає повторювані невирішені проблеми, пов\'язані з цінностями, мріями, ідентичністю або хронічною несумісністю.';

  @override
  String get metric_71_name => 'Фреймінг вирішуваної проблеми';

  @override
  String get metric_71_description =>
      'Виявляє практичні, конкретні визначення проблем, що можуть призвести до конкретних угод.';

  @override
  String get metric_72_name => 'Відсилання спільного значення';

  @override
  String get metric_72_description =>
      'Шукає цінності, ритуали, цілі, спогади або мову ідентичності, що створює спільну історію стосунків.';

  @override
  String get metric_73_name => 'Свідомість карти любові';

  @override
  String get metric_73_description =>
      'Оцінює знання внутрішнього світу партнера, стресорів, уподобань, страхів та повсякденного життя.';

  @override
  String get metric_74_name => 'Прихильність та захоплення';

  @override
  String get metric_74_description =>
      'Визначає вдячність, повагу, тепло, компліменти, подяку та позитивне ставлення.';

  @override
  String get metric_75_name => 'Дисбаланс емоційної праці';

  @override
  String get metric_75_description =>
      'Позначає одного партнера, що несе непропорційне планування, заспокоєння, запам\'ятовування, пояснення або підтримку стосунків.';

  @override
  String get metric_76_name => 'Знецінення ментального навантаження';

  @override
  String get metric_76_description =>
      'Виявляє мінімізацію невидимої планувальної роботи, домашньої координації, планування або відстеження відповідальності.';

  @override
  String get metric_77_name => 'Вказівки зброєної некомпетентності';

  @override
  String get metric_77_description =>
      'Шукає твердження про нездатність, плутанину або безпорадність, щоб уникнути справедливої відповідальності.';

  @override
  String get metric_78_name => 'Чутливість до тригерів травми';

  @override
  String get metric_78_description =>
      'Вимірює обізнаність про тригери, реакції на травму та обережне поводження з вразливими темами.';

  @override
  String get metric_79_name => 'Вказівки гіпервигідності';

  @override
  String get metric_79_description =>
      'Позначає сканування на небезпеку, надмірний моніторинг тону, страх помилок або постійну емоційну пильність.';

  @override
  String get metric_80_name => 'Мова страху покинутості';

  @override
  String get metric_80_description =>
      'Виявляє страх бути покинутим, заміненим, ігнорованим, відкинутим або емоційно покинутим.';

  @override
  String get metric_81_name => 'Взір пошуку заспокоєння';

  @override
  String get metric_81_description =>
      'Відстежує повторювані прохання про доказ любові, зобов\'язання, безпеку або продовження інтересу.';

  @override
  String get metric_82_name => 'Цикл переслідувача-віддаляючого';

  @override
  String get metric_82_description =>
      'Визначає одного партнера, що ескалює переслідування за близькістю, поки інший збільшує дистанцію.';

  @override
  String get metric_83_name => 'Накопичення ображення';

  @override
  String get metric_83_description =>
      'Шукає збережені скарги, повторювані посилання на минуле, гіркоту та невирішений емоційний борг.';

  @override
  String get metric_84_name => 'Поведінка підрахунку очок';

  @override
  String get metric_84_description =>
      'Позначає транзакційний підрахунок недоліків, послуг, жертв або помилок для отримання важеля.';

  @override
  String get metric_85_name => 'Умовна прихильність';

  @override
  String get metric_85_description =>
      'Виявляє любов, схвалення, доступ або тепло, що пропонуються лише тоді, коли досягнуто відповідності.';

  @override
  String get metric_86_name => 'Індикатори бомбардування любов\'ю';

  @override
  String get metric_86_description =>
      'Позначає інтенсивну прихильність, обіцянки, тиск або ідеалізацію, використані для прискорення прив\'язування або контролю.';

  @override
  String get metric_87_name => 'Спроби втягування';

  @override
  String get metric_87_description =>
      'Визначає спроби втягнути когось назад через провину, ностальгію, обіцянки, кризи або раптову прихильність.';

  @override
  String get metric_88_name => 'Взір DARVO';

  @override
  String get metric_88_description =>
      'Виявляє заперечення, атаку та зворотне перетворення жертви-злочинця при зустрічі зі шкідою.';

  @override
  String get metric_89_name => 'Взір позиції жертви';

  @override
  String get metric_89_description =>
      'Позначає повторюване самовictimizування, що уникає відповідальності або перенаправляє увагу від завданої шкоди.';

  @override
  String get metric_90_name => 'Фреймінг моральної переваги';

  @override
  String get metric_90_description =>
      'Шукає праведність, претензії на чистоту або моральну перевагу, використані для домінування в конфлікті.';

  @override
  String get metric_91_name => 'Знищення характеру';

  @override
  String get metric_91_description =>
      'Виявляє широкі атаки на ідентичність, цілісність, психічне здоров\'я або цінність замість конкретної поведінки.';

  @override
  String get metric_92_name => 'Індикатори триангуляції';

  @override
  String get metric_92_description =>
      'Позначає залучення третіх сторін у конфлікт для тиску, порівняння, валідації або дестабілізації партнера.';

  @override
  String get metric_93_name => 'Тиск соціального порівняння';

  @override
  String get metric_93_description =>
      'Шукає порівняння з колишніми, друзями, іншими парами або ідеалами, використані для сорому або примусу.';

  @override
  String get metric_94_name => 'Підтримка автономії';

  @override
  String get metric_94_description =>
      'Вимірює повагу до незалежних виборів, дружби, цілей, кордонів та особистої агенції.';

  @override
  String get metric_95_name => 'Повага до згоди та вибору';

  @override
  String get metric_95_description =>
      'Оцінює, чи рішення приймаються вільно без тиску, провини, загроз або маніпуляції.';

  @override
  String get metric_96_name => 'Спільне планування';

  @override
  String get metric_96_description =>
      'Шукає спільний розклад, спільні рішення, координовані відповідальності та практичне виконання.';

  @override
  String get metric_97_name => 'Виконання відновлення';

  @override
  String get metric_97_description =>
      'Вимірює, чи обіцяні зміни пізніше відображаються в поведінці, а не лише в словах.';

  @override
  String get metric_98_name => 'Доказ зміненої поведінки';

  @override
  String get metric_98_description =>
      'Перевіряє спостережувані, повторювані дії, що показують навчання, коригування або зменшену шкідливу поведінку.';

  @override
  String get metric_99_name => 'Мова емоційної безпеки';

  @override
  String get metric_99_description =>
      'Визначає мову, що запрошує до чесності, знижує страх, захищає гідність та заспокоює безпечний вираз.';

  @override
  String get metric_100_name => 'Невизначеність стосунків';

  @override
  String get metric_100_description =>
      'Виявляє невизначеність, змішані зобов\'язання, притягування-відштовхування або незрозуміле бажання продовжувати.';

  @override
  String get unableToOpenConversations => 'Unable to Open Conversations';

  @override
  String get unableToOpenConversationsBody =>
      'Something went wrong loading your conversations. Please try again.';

  @override
  String get unableToLoadConversationsBody =>
      'Unable to load conversations. Please check your permissions and try again.';

  @override
  String get errorLoadingConversationsBody =>
      'Error loading conversations. Please try again.';

  @override
  String get smsPermissionRequired => 'SMS Permission Required';

  @override
  String get smsPermissionRequiredBody =>
      'To analyze SMS conversations, we need permission to read your messages. Your privacy is important — messages are only analyzed locally and never stored on our servers.';

  @override
  String get grantSmsPermission => 'Grant SMS Permission';

  @override
  String get noSmsConversationsFound => 'No SMS conversations found';

  @override
  String get noConversationsMatchSearch => 'No conversations match your search';

  @override
  String get noSmsMessagesOnDevice =>
      'You don\'t have any SMS messages on this device';

  @override
  String get tryDifferentSearch => 'Try a different search term';

  @override
  String get clearSearch => 'Clear Search';

  @override
  String selectedFile(String filename) {
    return 'Selected: $filename';
  }

  @override
  String get invalidFile => 'Invalid File';

  @override
  String get fileImport => 'File Import';

  @override
  String get fileImportNotImplemented =>
      'File parsing is not yet implemented for this file type.';

  @override
  String get errorPickingFile => 'Unable to open the file. Please try again.';

  @override
  String get readyToCapture => 'Ready to Capture';

  @override
  String get readyToCaptureBody =>
      'Switch to the Messages app now and start taking screenshots.\n\nReturn to this app when you\'re done and tap \"Finish & Process\".';

  @override
  String get gotIt => 'Got it';

  @override
  String get noScreenshotsToProcess => 'No screenshots to process.';

  @override
  String processingScreenshot(int current, int total) {
    return 'Processing screenshot $current of $total...';
  }

  @override
  String get noMessagesFound => 'No Messages Found';

  @override
  String get noMessagesFoundBody =>
      'Could not extract any messages from the screenshots.\n\nPlease ensure the screenshots clearly show the message conversation.';

  @override
  String loadedMessages(int count) {
    return 'Loaded $count messages from screenshots';
  }

  @override
  String get processingError => 'Processing Error';

  @override
  String get processingErrorBody =>
      'Error processing screenshots. Please try again.';

  @override
  String metricListSavedAs(String name) {
    return 'Your selections have been saved as \"$name\".';
  }

  @override
  String metricListLoadedName(String name) {
    return 'Selections \"$name\" have been retrieved and applied.';
  }

  @override
  String conversationLoaded(int count, String name) {
    return 'Loaded $count messages from $name';
  }

  @override
  String get loadButton => 'Load';

  @override
  String get photoPermissionRequired =>
      'Photo library permission is required to detect screenshots.';

  @override
  String get initializingConnection => 'Initializing secure connection...';

  @override
  String get configurationRequired => 'Configuration Required';

  @override
  String get goBack => 'Go Back';

  @override
  String get enableDateRangeFiltering => 'Enable date range filtering';

  @override
  String get clearSelectedDateRange => 'Clear Selected Date Range';

  @override
  String get largeThreadNoticeTitle => 'NOTICE TO USER';

  @override
  String get largeThreadNoticeBody =>
      'When dealing with exceptionally large text threads, some loading screens within this app could exceed over a minute and a half at times.\n\nThe application does not hang. If you see a circling status indicator spinning, the app is still loading.\n\nPlease be patient in those cases, as loading time could be longer than usual compared to your average load time in other applications — especially when dealing with a large dataset such as a thread with 50,000 messages.';

  @override
  String get neverShowThisAgain => 'Never show this message again';

  @override
  String loadingConversationWith(String name) {
    return 'Loading conversation\nwith $name…';
  }
}
