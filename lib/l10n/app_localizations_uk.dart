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
  String get selectDiscordChannel => 'Вибрати канал';

  @override
  String get lightMode => 'Світла';

  @override
  String get darkMode => 'Темна';

  @override
  String get discordSetupTitle => 'Як Налаштувати Discord';

  @override
  String get discordSetupDescription =>
      'Дотримуйтесь цих кроків, щоб увімкнути аналіз каналів Discord у додатку:';

  @override
  String get discordStep1Title => 'Створити Бот Discord';

  @override
  String get discordStep1Description =>
      'Перейдіть на discord.com/developers, створіть новий додаток і додайте бота. Скопіюйте токен бота.';

  @override
  String get discordStep2Title => 'Увімкнути Привілеї Бота';

  @override
  String get discordStep2Description =>
      'У налаштуваннях бота увімкніть \'Message Content Intent\' та \'Server Members Intent\'.';

  @override
  String get discordStep3Title => 'Запросити Бота на Сервер';

  @override
  String get discordStep3Description =>
      'Використовуйте генератор URL OAuth2, щоб запросити бота на свій сервер Discord з необхідними дозволами.';

  @override
  String get discordStep4Title => 'Налаштувати в Додатку';

  @override
  String get discordStep4Description =>
      'Введіть свій токен бота в налаштуваннях додатку (зв\'яжіться з підтримкою, якщо потрібна допомога).';

  @override
  String get discordStep5Title => 'Вибрати Канал';

  @override
  String get discordStep5Description =>
      'Натисніть \'Вибрати Канал Discord\', виберіть свій сервер, потім виберіть канал для аналізу.';

  @override
  String get discordBotConfiguration => 'Конфігурація Бота';

  @override
  String get discordBotConfigTitle => 'Discord Bot Configuration';

  @override
  String get discordBotTokenSetupTitle => 'Bot Token Setup';

  @override
  String get discordBotTokenSetupDescription =>
      'Enter your Discord bot token below. This is required to access your Discord servers and channels.';

  @override
  String get discordWhereToFindToken => 'Where to find your bot token:';

  @override
  String get discordStepDiscordDevelopers => 'Go to discord.com/developers';

  @override
  String get discordStepClickApplication => 'Click on your application';

  @override
  String get discordStepGoToBot => 'Go to \"Bot\" section';

  @override
  String get discordStepResetToken => 'Click \"Reset Token\" if needed';

  @override
  String get discordStepCopyToken => 'Copy the token and paste it below';

  @override
  String get discordNeverShareToken => '⚠️ Never share this token with anyone!';

  @override
  String get discordBotTokenLabel => 'Bot Token';

  @override
  String get discordBotTokenHint => 'Paste your Discord bot token here';

  @override
  String get discordTokenRequiredError => 'Please enter your bot token';

  @override
  String get discordTokenTooShortError => 'Token appears too short';

  @override
  String get discordSaveToken => 'Save Token';

  @override
  String get discordSaving => 'Saving...';

  @override
  String get discordTestConnection => 'Test Connection';

  @override
  String get discordViewFullSetup => 'View Full Setup Instructions';

  @override
  String get discordTokenSavedSuccess => 'Bot token saved successfully';

  @override
  String get discordTokenSaveFailed => 'Failed to save';

  @override
  String get discordConnectionTestNotImplemented =>
      'Connection test not yet implemented';

  @override
  String get discordReadyToConfigureTitle => 'Ready to configure your bot?';

  @override
  String get discordReadyToConfigureDescription =>
      'Once you\'ve created your Discord bot following the steps above, enter your bot token in the settings to start analyzing.';

  @override
  String get gotIt => 'Зрозумів';

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
  String get unableToOpenConversations => 'Не вдається відкрити розмови';

  @override
  String get unableToOpenConversationsBody =>
      'Сталася помилка під час завантаження ваших розмов. Будь ласка, спробуйте ще раз.';

  @override
  String get unableToLoadConversationsBody =>
      'Не вдається завантажити розмови. Перевірте дозволи та спробуйте ще раз.';

  @override
  String get errorLoadingConversationsBody =>
      'Помилка завантаження розмов. Будь ласка, спробуйте ще раз.';

  @override
  String get smsPermissionRequired => 'Потрібен дозвіл SMS';

  @override
  String get smsPermissionRequiredBody =>
      'Для аналізу SMS-розмов нам потрібен дозвіл на читання ваших повідомлень. Ваша конфіденційність важлива — повідомлення аналізуються лише локально і ніколи не зберігаються на наших серверах.';

  @override
  String get grantSmsPermission => 'Надати дозвіл SMS';

  @override
  String get noSmsConversationsFound => 'SMS-розмов не знайдено';

  @override
  String get noConversationsMatchSearch =>
      'Немає розмов, що відповідають вашому пошуку';

  @override
  String get noSmsMessagesOnDevice =>
      'У вас немає SMS-повідомлень на цьому пристрої';

  @override
  String get tryDifferentSearch => 'Спробуйте інший пошуковий запит';

  @override
  String get clearSearch => 'Очистити пошук';

  @override
  String selectedFile(String filename) {
    return 'Вибрано: $filename';
  }

  @override
  String get invalidFile => 'Недійсний файл';

  @override
  String get fileImport => 'Імпорт файлу';

  @override
  String get fileImportNotImplemented =>
      'Аналіз файлів ще не реалізовано для цього типу файлу.';

  @override
  String get errorPickingFile =>
      'Не вдається відкрити файл. Будь ласка, спробуйте ще раз.';

  @override
  String get readyToCapture => 'Готовий до захоплення';

  @override
  String get readyToCaptureBody =>
      'Перейдіть зараз до програми повідомлень і почніть робити знімки екрана.\n\nПоверніться до цієї програми, коли закінчите, і натисніть \"Завершити та обробити\".';

  @override
  String get noScreenshotsToProcess => 'Немає знімків екрана для обробки.';

  @override
  String processingScreenshot(int current, int total) {
    return 'Обробка знімка екрана $current з $total...';
  }

  @override
  String get noMessagesFound => 'Повідомлення не знайдено';

  @override
  String get noMessagesFoundBody =>
      'Не вдалося витягти повідомлення зі знімків екрана.\n\nПереконайтеся, що знімки чітко показують розмову.';

  @override
  String loadedMessages(int count) {
    return '$count повідомлень завантажено зі знімків екрана';
  }

  @override
  String get processingError => 'Помилка обробки';

  @override
  String get processingErrorBody =>
      'Помилка під час обробки знімків екрана. Будь ласка, спробуйте ще раз.';

  @override
  String metricListSavedAs(String name) {
    return 'Ваші вибори збережено як \"$name\".';
  }

  @override
  String metricListLoadedName(String name) {
    return 'Вибори \"$name\" отримано та застосовано.';
  }

  @override
  String conversationLoaded(int count, String name) {
    return '$count повідомлень завантажено з $name';
  }

  @override
  String get loadButton => 'Завантажити';

  @override
  String get photoPermissionRequired =>
      'Дозвіл бібліотеки фотографій необхідний для виявлення знімків екрана.';

  @override
  String get initializingConnection => 'Ініціалізація безпечного з\'єднання...';

  @override
  String get configurationRequired => 'Конфігурація необхідна';

  @override
  String get goBack => 'Назад';

  @override
  String get enableDateRangeFiltering =>
      'Увімкнути фільтрацію за діапазоном дат';

  @override
  String get clearSelectedDateRange => 'Очистити вибраний діапазон дат';

  @override
  String get largeThreadNoticeTitle => 'ПОВІДОМЛЕННЯ КОРИСТУВАЧУ';

  @override
  String get largeThreadNoticeBody =>
      'При роботі з винятково великими текстовими потоками деякі екрани завантаження в цій програмі можуть іноді перевищувати півтори хвилини.\n\nПрограма не зависає. Якщо ви бачите обертовий індикатор стану, програма все ще завантажується.\n\nБудь ласка, будьте терплячими в цих випадках, оскільки час завантаження може бути довшим за звичайний порівняно з іншими програмами, особливо при роботі з великим набором даних, таким як потік із 50 000 повідомлень.';

  @override
  String get neverShowThisAgain => 'Більше не показувати це повідомлення';

  @override
  String loadingConversationWith(String name) {
    return 'Завантаження розмови\nз $name…';
  }

  @override
  String get iosCaptureInstructions =>
      '1. Відкрийте програму повідомлень і виберіть розмову\n2. Прокрутіть до найстарішого повідомлення, яке хочете проаналізувати\n3. Натисніть \"Почати захоплення\" нижче\n4. Робіть знімки екрана, прокручуючи розмову\n5. Коли закінчите, натисніть \"Завершити та обробити\"';

  @override
  String get howToCaptureIosMessages => 'Як захоплювати повідомлення iOS';

  @override
  String get deepSeekApiKey => 'Ключ API DeepSeek';

  @override
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis =>
      'Введіть свій ключ API DeepSeek, щоб увімкнути аналіз ШІ.';

  @override
  String get getYourApiKeyFrom =>
      'Отримайте свій ключ API на: https://platform.deepseek.com';

  @override
  String get apiKey => 'Ключ API';

  @override
  String get skPlaceholder => 'sk-...';

  @override
  String get yourApiKeyIsStoredSecurely =>
      'Ваш ключ API безпечно зберігається на вашому пристрої і ніколи не передається.';

  @override
  String get pleaseEnterApiKey => 'Будь ласка, введіть ключ API';

  @override
  String get apiKeySavedSuccessfully => 'Ключ API успішно збережено!';

  @override
  String get pleaseBePatientLongerTextThreads =>
      'Будь ласка, будьте терплячими, довші текстові потоки даних завантажуються доволі довго';

  @override
  String get almostThereBigOne => 'Майже готово, Вау, це мало бути великим';

  @override
  String get pleaseBePatientLargeDatasets =>
      'Будь ласка, будьте терплячими, великі набори даних можуть призвести до часу завантаження понад півтори хвилини';

  @override
  String continuingToLoadMassiveThread(String name) {
    return 'Продовжую завантажувати масивний потік з $name…';
  }

  @override
  String get noMessagesInDateRange =>
      'Повідомлень не знайдено у вибраному діапазоні дат. Виберіть інші дати або очистіть фільтр дати.';

  @override
  String get purchaseCustomMetricTileTitle => 'Придбати кастомну метрику';

  @override
  String get purchaseCustomMetricTileDescription =>
      'За разову плату \$4.99 введіть назву та визначення кастомної метрики, які назавжди збережуться поряд з іншими вашими метриками для використання в будь-якому майбутньому аналізі. Придбайте необмежену кількість кастомних метрик.';

  @override
  String get purchaseCustomMetricConfirmTitle => 'Придбати кастомну метрику';

  @override
  String get purchaseCustomMetricConfirmBody =>
      'З вас буде стягнуто \$4.99 (разово) для розблокування одного слота кастомної метрики.\n\nНазва та визначення вашої кастомної метрики є постійними і не можуть бути змінені після збереження, тому будь ласка, обирайте уважно.';

  @override
  String get purchaseCustomMetricConfirmButton => 'Придбати — \$4.99';

  @override
  String get purchaseCustomMetricEnterNameTitle => 'Назва кастомної метрики';

  @override
  String get purchaseCustomMetricEnterNamePrompt =>
      'Введіть назву для вашої кастомної метрики:';

  @override
  String get purchaseCustomMetricNameHint => 'Назва метрики';

  @override
  String get purchaseCustomMetricConfirmNameTitle =>
      'Підтвердити назву метрики';

  @override
  String get purchaseCustomMetricConfirmNameYouEntered => 'Ви ввели:\n\n';

  @override
  String get purchaseCustomMetricConfirmNameWarning =>
      '\n\n⚠️  Це ФІНАЛЬНО і НІКОЛИ не може бути змінено.';

  @override
  String get purchaseCustomMetricReenterName => 'Ой — Ввести назву знову';

  @override
  String get purchaseCustomMetricSaveName => 'OK — Зберегти назву метрики';

  @override
  String purchaseCustomMetricDefineTitleWithName(String name) {
    return 'Визначити: $name';
  }

  @override
  String purchaseCustomMetricDefinePromptWithName(String name) {
    return 'Введіть значення вашої кастомної метрики: $name';
  }

  @override
  String get purchaseCustomMetricMeaningHint =>
      'Опишіть, що означає ця метрика, які поведінки вона шукає та як застосовується до динаміки стосунків...';

  @override
  String get purchaseCustomMetricReenter => 'Ой — Ввести знову';

  @override
  String get purchaseCustomMetricSaveMeaning => 'OK — Зберегти значення';

  @override
  String get purchaseCustomMetricPreviewTitle =>
      'Попередній перегляд вашої кастомної метрики';

  @override
  String get purchaseCustomMetricPreviewSubtitle =>
      'Так виглядатиме ваша плитка:';

  @override
  String get purchaseCustomMetricLastChanceWarning =>
      '⚠️  Це ваш ОСТАННІЙ ШАНС передумати.\nПісля підтвердження назва та визначення є постійними.';

  @override
  String get purchaseCustomMetricCancelEverything => 'Скасувати все';

  @override
  String get purchaseCustomMetricCommit => 'Підтвердити кастомну метрику';

  @override
  String purchaseCustomMetricSuccess(String name) {
    return '✓ \"$name\" додано до ваших метрик! Тепер ви можете вибрати її для аналізу.';
  }

  @override
  String get purchaseCustomMetricProcessingTitle => 'Обробка покупки...';

  @override
  String get purchaseCustomMetricProcessingBody =>
      'Очікується підтвердження від магазину.\nБудь ласка, не закривайте додаток.';

  @override
  String get next => 'Далі';

  @override
  String get cancelNotReady => 'Скасувати — Я не готовий';

  @override
  String get packGoodLabel => 'Добрий';

  @override
  String get packBadLabel => 'Злий';

  @override
  String get packUglyLabel => 'Потворний';

  @override
  String get metric_good_1_name => 'Ознаки активного слухання';

  @override
  String get metric_good_1_description =>
      'Виявляє перефразування, уточнювальні запитання та демонстрацію розуміння точки зору партнера в тексті.';

  @override
  String get metric_good_2_name => 'Вираження вдячності';

  @override
  String get metric_good_2_description =>
      'Ідентифікує конкретну вдячність, визнання зусиль та відзначення позитивних якостей або дій партнера.';

  @override
  String get metric_good_3_name => 'Мова підтвердження';

  @override
  String get metric_good_3_description =>
      'Шукає твердження, які підтверджують почуття, досвід, цінність або право партнера на потреби.';

  @override
  String get metric_good_4_name => 'Співпрацюючий тон';

  @override
  String get metric_good_4_description =>
      'Вимірює використання «ми», мови спільного вирішення проблем та формулювання питань як спільних викликів.';

  @override
  String get metric_good_5_name => 'Цікавість до партнера';

  @override
  String get metric_good_5_description =>
      'Відстежує запитання про думки, почуття, день, уподобання або внутрішній досвід партнера.';

  @override
  String get metric_good_6_name => 'Вираження вразливості';

  @override
  String get metric_good_6_description =>
      'Визначає ділення страхами, невпевненістю, потребами або емоційними правдами без захисту чи звинувачень.';

  @override
  String get metric_good_7_name => 'Гумор як зв\'язок';

  @override
  String get metric_good_7_description =>
      'Виявляє грайливий спільний сміх, який зближує партнерів, а не висміює чи принижує.';

  @override
  String get metric_good_8_name => 'Пропозиція заспокоєння';

  @override
  String get metric_good_8_description =>
      'Шукає проактивні висловлювання, що забезпечують комфорт, безпеку або впевненість тривожному партнеру.';

  @override
  String get metric_good_9_name => 'Частота компліментів';

  @override
  String get metric_good_9_description =>
      'Вимірює щирі конкретні похвали щодо зовнішності, характеру, здібностей або позитивних дій.';

  @override
  String get metric_good_10_name => 'Емоційна доступність';

  @override
  String get metric_good_10_description =>
      'Оцінює чуйність до емоційних потреб партнера, присутність у моменти страждання та готовність до взаємодії.';

  @override
  String get metric_good_11_name => 'Звичка до вдячності';

  @override
  String get metric_good_11_description =>
      'Визначає регулярні висловлення подяки за дрібниці, зусилля, присутність або підтримку.';

  @override
  String get metric_good_12_name => 'Підтримуюча мова';

  @override
  String get metric_good_12_description =>
      'Відстежує висловлювання, що пропонують допомогу, підбадьорення, віру в здібності партнера або підтримку поруч.';

  @override
  String get metric_good_13_name => 'М\'яка незгода';

  @override
  String get metric_good_13_description =>
      'Вимірює здатність висловлювати різні погляди, зберігаючи повагу, цікавість та стосунки.';

  @override
  String get metric_good_14_name => 'Щирість вибачення';

  @override
  String get metric_good_14_description =>
      'Виявляє щире каяття, розуміння впливу та зобов\'язання змінитися без виправдань.';

  @override
  String get metric_good_15_name => 'Прийняття прощення';

  @override
  String get metric_good_15_description =>
      'Шукає готовність відпустити минулі образи, рухатися вперед і відновити довіру після виправлення.';

  @override
  String get metric_good_16_name => 'Ініціювання якісного часу';

  @override
  String get metric_good_16_description =>
      'Визначає пропозиції провести час разом, спланувати заходи або створити моменти зв\'язку.';

  @override
  String get metric_good_17_name => 'Сигнали фізичної прихильності';

  @override
  String get metric_good_17_description =>
      'Відстежує згадки про дотики, обійми, поцілунки або фізичну близькість як прояви турботи та інтимності.';

  @override
  String get metric_good_18_name => 'Розпізнавання спільної радості';

  @override
  String get metric_good_18_description =>
      'Вимірює святкування перемог, досягнень, щастя або хороших новин партнера зі щирим ентузіазмом.';

  @override
  String get metric_good_19_name => 'Зусилля щодо вирішення конфлікту';

  @override
  String get metric_good_19_description =>
      'Визначає спроби знайти рішення, компроміс або відновити мир після розбіжностей.';

  @override
  String get metric_good_20_name => 'Демонстрація терпіння';

  @override
  String get metric_good_20_description =>
      'Виявляє терпимість до темпу партнера, труднощів, процесу навчання або потреб в емоційній обробці.';

  @override
  String get metric_good_21_name => 'Мова прийняття перспективи';

  @override
  String get metric_good_21_description =>
      'Шукає висловлювання, що свідчать про розуміння точки зору партнера, контексту або емоційної реальності.';

  @override
  String get metric_good_22_name => 'Сигнали надійності';

  @override
  String get metric_good_22_description =>
      'Відстежує виконання обіцянок, послідовну присутність і надійність.';

  @override
  String get metric_good_23_name => 'Повага до відмінностей';

  @override
  String get metric_good_23_description =>
      'Вимірює прийняття унікальних рис, уподобань, думок і способів буття партнера.';

  @override
  String get metric_good_24_name => 'Відкритість до зворотного зв\'язку';

  @override
  String get metric_good_24_description =>
      'Визначає сприйнятливість до занепокоєнь партнера, готовність вислухати критику та бажання вдосконалюватися.';

  @override
  String get metric_good_25_name => 'Валідація емоцій';

  @override
  String get metric_good_25_description =>
      'Виявляє визнання того, що почуття партнера є реальними, зрозумілими та заслуговують на увагу.';

  @override
  String get metric_good_26_name => 'Мова підбадьорення';

  @override
  String get metric_good_26_description =>
      'Шукає висловлювання, які вселяють впевненість, мотивують до дій або підтримують цілі партнера.';

  @override
  String get metric_good_27_name => 'Інтимне розкриття';

  @override
  String get metric_good_27_description =>
      'Визначає обмін особистими думками, мріями, страхами або секретами, що поглиблюють емоційний зв\'язок.';

  @override
  String get metric_good_28_name => 'Сигнали налаштованості';

  @override
  String get metric_good_28_description =>
      'Вимірює помічання настрою, потреб або дистресу партнера без явного повідомлення.';

  @override
  String get metric_good_29_name => 'Позитивне переосмислення';

  @override
  String get metric_good_29_description =>
      'Виявляє пошук позитивних сторін, можливостей для зростання або конструктивних кутів у складних ситуаціях.';

  @override
  String get metric_good_30_name => 'Мова зобов\'язань';

  @override
  String get metric_good_30_description =>
      'Відстежує вирази відданості, довгострокового мислення та інвестицій у майбутнє стосунків.';

  @override
  String get metric_good_31_name => 'Демонстрація гнучкості';

  @override
  String get metric_good_31_description =>
      'Ідентифікує готовність адаптувати плани, коригувати очікування або йти на компроміс.';

  @override
  String get metric_good_32_name => 'Захисна мова';

  @override
  String get metric_good_32_description =>
      'Шукає висловлювання, що показують, що безпека, благополуччя та інтереси партнера мають велике значення.';

  @override
  String get metric_good_33_name => 'Святкування віх';

  @override
  String get metric_good_33_description =>
      'Вимірює визнання річниць, досягнень або значущих моментів разом.';

  @override
  String get metric_good_34_name => 'Конструктивний зворотний зв\'язок';

  @override
  String get metric_good_34_description =>
      'Виявляє пропозиції щодо покращення, які є добрими, конкретними та орієнтованими на зростання.';

  @override
  String get metric_good_35_name => 'Присутність у складні часи';

  @override
  String get metric_good_35_description =>
      'Ідентифікує залишення залученим, коли партнер бореться, переживає втрату або стикається з викликами.';

  @override
  String get metric_good_36_name => 'Вираження захоплення';

  @override
  String get metric_good_36_description =>
      'Відстежує справжню повагу до характеру, сили, інтелекту або стійкості партнера.';

  @override
  String get metric_good_37_name => 'Індикатори грайливості';

  @override
  String get metric_good_37_description =>
      'Шукає легкі жарти, внутрішні жарти або веселі взаємодії, які зміцнюють зв\'язок.';

  @override
  String get metric_good_38_name => 'Емпатійне віддзеркалення';

  @override
  String get metric_good_38_description =>
      'Вимірює відображення емоцій партнера, щоб показати розуміння та підтвердження.';

  @override
  String get metric_good_39_name => 'Мова прийняття';

  @override
  String get metric_good_39_description =>
      'Виявляє прийняття партнера таким, яким він є, включаючи недоліки, без вимоги змін.';

  @override
  String get metric_good_40_name => 'Підтримуюча присутність';

  @override
  String get metric_good_40_description =>
      'Визначає присутність без виправлення, пропонуючи комфорт через слухання та спілкування.';

  @override
  String get metric_good_41_name => 'Щирий інтерес';

  @override
  String get metric_good_41_description =>
      'Відстежує запитання та запам\'ятовування деталей про життя та турботи партнера.';

  @override
  String get metric_good_42_name => 'Взаємні зусилля';

  @override
  String get metric_good_42_description =>
      'Вимірює рівний внесок обох партнерів в емоційну роботу, планування та підтримку стосунків.';

  @override
  String get metric_good_43_name => 'Мова прощення';

  @override
  String get metric_good_43_description =>
      'Шукає відпускання образ, надання другого шансу та вибір рухатися далі після болю.';

  @override
  String get metric_good_44_name => 'Сигнали взаємної поваги';

  @override
  String get metric_good_44_description =>
      'Виявляє ставлення до партнера як до рівного, повагу до його думки та цінність його внеску.';

  @override
  String get metric_good_45_name => 'Емоційна чесність';

  @override
  String get metric_good_45_description =>
      'Визначає правдиве вираження почуттів без маніпуляцій, перебільшень або стратегічного приховування.';

  @override
  String get metric_good_46_name => 'Підтримуюче слухання';

  @override
  String get metric_good_46_description =>
      'Вимірює здатність дозволяти партнеру повністю висловлюватися без переривання, осуду чи негайного вирішення проблем.';

  @override
  String get metric_good_47_name => 'Лагідні прізвиська';

  @override
  String get metric_good_47_description =>
      'Відстежує використання лагідних звернень, що передають тепло та інтимний зв\'язок.';

  @override
  String get metric_good_48_name => 'Спільний сміх';

  @override
  String get metric_good_48_description =>
      'Визначає моменти спільного гумору та радості, що створюють позитивний досвід зближення.';

  @override
  String get metric_good_49_name => 'Уважні жести';

  @override
  String get metric_good_49_description =>
      'Шукає маленькі прояви доброти, запам\'ятовування вподобань або дії, що роблять партнера щасливим.';

  @override
  String get metric_good_50_name => 'Впевненість у партнері';

  @override
  String get metric_good_50_description =>
      'Виявляє віру в здібності, потенціал та здатність партнера справлятися з викликами.';

  @override
  String get metric_good_51_name => 'Здорова взаємозалежність';

  @override
  String get metric_good_51_description =>
      'Вимірює баланс між спільністю та незалежністю, підтримуючи автономію одне одного.';

  @override
  String get metric_good_52_name => 'Зниження конфлікту';

  @override
  String get metric_good_52_description =>
      'Визначає м\'яку мову, паузи або пропозиції рішень для заспокоєння гарячих дискусій.';

  @override
  String get metric_good_53_name => 'Щире вибачення';

  @override
  String get metric_good_53_description =>
      'Відстежує повне визнання провини без применшення, захисту чи перекладання відповідальності.';

  @override
  String get metric_good_54_name => 'Пропозиції емоційної підтримки';

  @override
  String get metric_good_54_description =>
      'Шукає проактивні перевірки, запитання про стан партнера та пропозиції допомоги.';

  @override
  String get metric_good_55_name => 'Поважні кордони';

  @override
  String get metric_good_55_description =>
      'Вимірює повагу до встановлених партнером меж при збереженні власних здорових кордонів.';

  @override
  String get metric_good_56_name => 'Позитивне передчуття';

  @override
  String get metric_good_56_description =>
      'Виявляє захоплення спільним майбутнім, планування наперед і передчуття спільних переживань.';

  @override
  String get metric_good_57_name => 'Сигнали уважності';

  @override
  String get metric_good_57_description =>
      'Визначає запам\'ятовування важливих дат, уподобань і деталей, які показують, що партнер важливий.';

  @override
  String get metric_good_58_name => 'Заохочення зростання';

  @override
  String get metric_good_58_description =>
      'Відстежує підтримку особистісного розвитку партнера, навчання та досягнення цілей.';

  @override
  String get metric_good_59_name => 'Ніжна мова';

  @override
  String get metric_good_59_description =>
      'Шукає м\'які, турботливі слова, що передають ніжність та емоційну теплоту.';

  @override
  String get metric_good_60_name => 'Взаємна відповідальність';

  @override
  String get metric_good_60_description =>
      'Вимірює, як обидва партнери беруть на себе відповідальність за свої дії та їхній вплив.';

  @override
  String get metric_good_61_name => 'Вшанування партнера';

  @override
  String get metric_good_61_description =>
      'Виявляє публічне або приватне вираження гордості, радості чи захоплення партнером.';

  @override
  String get metric_good_62_name => 'Постійна прихильність';

  @override
  String get metric_good_62_description =>
      'Визначає регулярні прояви любові, які не залежать від поведінки чи відповідності очікуванням.';

  @override
  String get metric_good_63_name => 'Емоційна налаштованість';

  @override
  String get metric_good_63_description =>
      'Відстежує відчуття та реагування на тонкі зміни емоційного стану партнера.';

  @override
  String get metric_good_64_name => 'Спільне прийняття рішень';

  @override
  String get metric_good_64_description =>
      'Вимірює спільне обговорення варіантів і прийняття рішень, які враховують потреби обох партнерів.';

  @override
  String get metric_good_65_name => 'Заспокоєння без вимог';

  @override
  String get metric_good_65_description =>
      'Визначає пропозицію комфорту та безпеки без необхідності заслуговувати це партнером.';

  @override
  String get metric_good_66_name => 'Автентичний зв\'язок';

  @override
  String get metric_good_66_description =>
      'Виявляє справжню присутність, реальне ділення та відмову від удавання у взаємодіях.';

  @override
  String get metric_good_67_name => 'Взаємне підбадьорення';

  @override
  String get metric_good_67_description =>
      'Визначає, коли обидва партнери підтримують одне одного та святкують зусилля, а не лише результати.';

  @override
  String get metric_good_68_name => 'Шанобливе запитування';

  @override
  String get metric_good_68_description =>
      'Відстежує запитання про точку зору партнера зі щирою цікавістю, а не допитом.';

  @override
  String get metric_good_69_name => 'Любляча послідовність';

  @override
  String get metric_good_69_description =>
      'Вимірює однакову поведінку в хороші та важкі часи, надійність у прояві прихильності.';

  @override
  String get metric_good_70_name => 'Емоційна взаємність';

  @override
  String get metric_good_70_description =>
      'Визначає, коли обидва партнери діляться почуттями, потребами та вразливістю збалансовано.';

  @override
  String get metric_good_71_name => 'Радісна присутність';

  @override
  String get metric_good_71_description =>
      'Виявляє щиру радість від компанії партнера та ентузіазм щодо спільного часу.';

  @override
  String get metric_good_72_name => 'Конструктивний діалог';

  @override
  String get metric_good_72_description =>
      'Визначає розмови, які спрямовані на розуміння, а не на перемогу чи доведення своєї правоти.';

  @override
  String get metric_good_73_name => 'Захисна адвокація';

  @override
  String get metric_good_73_description =>
      'Відстежує захист партнера, його підтримку та пріоритетність його благополуччя.';

  @override
  String get metric_good_74_name => 'Усвідомлене спілкування';

  @override
  String get metric_good_74_description =>
      'Вимірює обдуманий вибір слів, врахування впливу перед висловлюванням та цілеспрямоване повідомлення.';

  @override
  String get metric_good_75_name => 'Інвестиції у стосунки';

  @override
  String get metric_good_75_description =>
      'Оцінює час, енергію та ресурси, присвячені розвитку партнерства.';

  @override
  String get metric_good_76_name => 'Мова безпечної основи';

  @override
  String get metric_good_76_description =>
      'Виявляє пропозицію стабільності, безпеки та основи, з якої партнер може досліджувати.';

  @override
  String get metric_good_77_name => 'Взаємне захоплення';

  @override
  String get metric_good_77_description =>
      'Ідентифікує, коли обидва партнери висловлюють повагу та вдячність за якості один одного.';

  @override
  String get metric_good_78_name => 'Ніжні моменти';

  @override
  String get metric_good_78_description =>
      'Відстежує створення або визнання інтимних тихих моментів зв\'язку та близькості.';

  @override
  String get metric_good_79_name => 'Щира цікавість';

  @override
  String get metric_good_79_description =>
      'Виявляє справжній інтерес до розуміння думок, почуттів та досвіду партнера.';

  @override
  String get metric_good_80_name => 'Любляче прийняття';

  @override
  String get metric_good_80_description =>
      'Виявляє прийняття всього єства партнера, включаючи недоліки та минуле.';

  @override
  String get metric_good_81_name => 'Взаємна підтримка зростання';

  @override
  String get metric_good_81_description =>
      'Ідентифікує, коли обидва партнери заохочують розвиток один одного та святкують прогрес.';

  @override
  String get metric_good_82_name => 'Індикатори теплого тону';

  @override
  String get metric_good_82_description =>
      'Відстежує використання ласкавої мови, добрих формулювань та м\'якого стилю спілкування.';

  @override
  String get metric_good_83_name => 'Чуйна взаємодія';

  @override
  String get metric_good_83_description =>
      'Вимірює швидкі, залучені відповіді на повідомлення партнера та емоційні заклики.';

  @override
  String get metric_good_84_name => 'Збіг спільних цінностей';

  @override
  String get metric_good_84_description =>
      'Шукає згадки про спільні переконання, цілі або життєві філософії, що об\'єднують пару.';

  @override
  String get metric_good_85_name => 'Безумовна підтримка';

  @override
  String get metric_good_85_description =>
      'Виявляє підтримку партнера у складних ситуаціях без умов.';

  @override
  String get metric_good_86_name => 'Інтимна вразливість';

  @override
  String get metric_good_86_description =>
      'Ідентифікує обмін глибокими страхами, мріями або невпевненістю, що зміцнює емоційні зв\'язки.';

  @override
  String get metric_good_87_name => 'Мова взаємної поваги';

  @override
  String get metric_good_87_description =>
      'Відстежує повагу до точок зору, вибору та автономії партнера у спілкуванні.';

  @override
  String get metric_good_88_name => 'Позитивне обрамлення';

  @override
  String get metric_good_88_description =>
      'Вимірює бачення найкращого в ситуаціях та партнері, зосередження на сильних сторонах.';

  @override
  String get metric_good_89_name => 'Спільне вирішення проблем';

  @override
  String get metric_good_89_description =>
      'Шукає спільну роботу над рішеннями, які однаково вигідні обом партнерам.';

  @override
  String get metric_good_90_name => 'Емоційне підтвердження';

  @override
  String get metric_good_90_description =>
      'Виявляє підтвердження того, що почуття партнера є зрозумілими та прийнятними.';

  @override
  String get metric_good_91_name => 'Послідовна доброта';

  @override
  String get metric_good_91_description =>
      'Визначає регулярні маленькі прояви турботи, які показують, що партнера пам\'ятають і цінують.';

  @override
  String get metric_good_92_name => 'Взаємне святкування';

  @override
  String get metric_good_92_description =>
      'Відстежує, коли обидва партнери щиро радіють успіхам і радощам одне одного.';

  @override
  String get metric_good_93_name => 'Мова безпечної прив\'язаності';

  @override
  String get metric_good_93_description =>
      'Вимірює вираження довіри, комфорту з близькістю та впевненості у стосунках.';

  @override
  String get metric_good_94_name => 'Уважне врахування';

  @override
  String get metric_good_94_description =>
      'Шукає прийняття рішень з урахуванням потреб і почуттів партнера.';

  @override
  String get metric_good_95_name => 'Любляча присутність';

  @override
  String get metric_good_95_description =>
      'Виявляє повну присутність і залученість, показуючи партнеру, що він найважливіший.';

  @override
  String get metric_good_96_name => 'Мова щирої турботи';

  @override
  String get metric_good_96_description =>
      'Відстежує щирі прояви турботи, уваги та інвестицій у благополуччя партнера.';

  @override
  String get metric_good_97_name => 'Відданість стосункам';

  @override
  String get metric_good_97_description =>
      'Вимірює вираження відданості стосункам і готовності долати труднощі.';

  @override
  String get metric_good_98_name => 'Автентичне вираження любові';

  @override
  String get metric_good_98_description =>
      'Шукає справжні послідовні прояви любові, які відчуваються реальними та безумовними.';

  @override
  String get metric_good_99_name => 'Спільне цілепокладання';

  @override
  String get metric_good_99_description =>
      'Визначає партнерів, які спільно визначають спільні мрії, пріоритети та напрямок майбутнього.';

  @override
  String get metric_good_100_name => 'Розпізнавання спроб відновлення';

  @override
  String get metric_good_100_description =>
      'Виявляє помічання та позитивне реагування на спроби партнера знизити конфлікт і відновити зв\'язок.';

  @override
  String get metric_bad_1_name => 'Пасивна агресія';

  @override
  String get metric_bad_1_description =>
      'Виявляє приховану ворожість через зволікання, забудькуватість, сарказм або тонкий саботаж замість прямого вираження.';

  @override
  String get metric_bad_2_name => 'Озброєння провиною';

  @override
  String get metric_bad_2_description =>
      'Визначає використання провини, сорому або мови обов\'язку для маніпуляції рішеннями чи запобігання встановленню кордонів.';

  @override
  String get metric_bad_3_name => 'Емоційний шантаж';

  @override
  String get metric_bad_3_description =>
      'Позначає погрози самопошкодження, розриву стосунків або позбавлення любові для контролю поведінки чи уникнення обговорення.';

  @override
  String get metric_bad_4_name => 'Хронічне скарження';

  @override
  String get metric_bad_4_description =>
      'Відстежує постійний негатив, рефлексію або скарги без пошуку рішень чи спільних змін.';

  @override
  String get metric_bad_5_name => 'Приниження порівнянням';

  @override
  String get metric_bad_5_description =>
      'Ідентифікує несприятливі порівняння з колишніми, друзями чи родиною для присоромлення або примусу до зміни поведінки.';

  @override
  String get metric_bad_6_name => 'Умовне слухання';

  @override
  String get metric_bad_6_description =>
      'Виявляє слухання лише тоді, коли це вигідно слухачеві або служить його цілям, а не для справжнього розуміння.';

  @override
  String get metric_bad_7_name => 'Вибіркова пам\'ять';

  @override
  String get metric_bad_7_description =>
      'Відстежує зручне забування обіцянок, домовленостей або минулої шкідливої поведінки для уникнення відповідальності.';

  @override
  String get metric_bad_8_name => 'Привернення уваги через кризу';

  @override
  String get metric_bad_8_description =>
      'Ідентифікує драматичну ескалацію, створення кризи або перебільшення для привернення уваги чи співчуття.';

  @override
  String get metric_bad_9_name => 'Тестування меж';

  @override
  String get metric_bad_9_description =>
      'Виявляє повторне зондування або порушення встановлених меж, щоб визначити, чи будуть вони дотримуватися.';

  @override
  String get metric_bad_10_name => 'Приховування інформації';

  @override
  String get metric_bad_10_description =>
      'Виявляє навмисне замовчування важливих фактів, контексту або прозорості для збереження контролю.';

  @override
  String get metric_bad_11_name => 'Непропорційний гнів';

  @override
  String get metric_bad_11_description =>
      'Відстежує прояви гніву, які значно перевищують причину, що їх викликала.';

  @override
  String get metric_bad_12_name => 'Залежність від підтвердження';

  @override
  String get metric_bad_12_description =>
      'Вказує на постійну потребу в підтвердженні, повторні запитання про відданість або нескінченні докази любові.';

  @override
  String get metric_bad_13_name => 'Уникнення розмов';

  @override
  String get metric_bad_13_description =>
      'Виявляє відмову обговорювати проблеми, фрази уникнення або припинення важливих розмов.';

  @override
  String get metric_bad_14_name => 'Шаблон суперечностей';

  @override
  String get metric_bad_14_description =>
      'Ідентифікує суперечливі твердження, обіцянки або позиції, що створюють плутанину або дестабілізацію.';

  @override
  String get metric_bad_15_name => 'Знецінення через ярлики';

  @override
  String get metric_bad_15_description =>
      'Вказує на позначення проблем як «божевільних», «драматичних», «параноїдальних» або «перебільшених» для їх знецінення.';

  @override
  String get metric_bad_16_name => 'Вибіркова емпатія';

  @override
  String get metric_bad_16_description =>
      'Виявляє емпатію, яку проявляють лише тоді, коли це зручно або служить інтересам мовця.';

  @override
  String get metric_bad_17_name => 'Транзакційне мислення';

  @override
  String get metric_bad_17_description =>
      'Ідентифікує фрази «ти мені винен», «після всього, що я зробив» або сприйняття стосунків як створення боргу.';

  @override
  String get metric_bad_18_name => 'Повторення образ';

  @override
  String get metric_bad_18_description =>
      'Відстежує повторне згадування старих образ або використання минулих помилок як зброї в поточних конфліктах.';

  @override
  String get metric_bad_19_name => 'Мова вимог';

  @override
  String get metric_bad_19_description =>
      'Визначає накази, команди або ультиматуми замість прохань чи спільного вирішення проблем.';

  @override
  String get metric_bad_20_name => 'Емоційна недоступність';

  @override
  String get metric_bad_20_description =>
      'Виявляє постійну відмову від емоційної залученості, обміну почуттями або надання підтримки.';

  @override
  String get metric_bad_21_name => 'Ворожа інтерпретація';

  @override
  String get metric_bad_21_description =>
      'Ідентифікує сприйняття нейтральних висловлювань як нападів або тлумачення неоднозначних повідомлень як ворожих.';

  @override
  String get metric_bad_22_name => 'Рамка привілейованості';

  @override
  String get metric_bad_22_description =>
      'Визначає мову, що вказує на очікування особливого ставлення, винятків або пріоритету.';

  @override
  String get metric_bad_23_name => 'Критика під виглядом допомоги';

  @override
  String get metric_bad_23_description =>
      'Виявляє критику, замасковану під «я просто хочу допомогти» або «це для твого ж блага».';

  @override
  String get metric_bad_24_name => 'Патерни зневаги';

  @override
  String get metric_bad_24_description =>
      'Ідентифікує систематичне незадоволення емоційних, фізичних або стосункових потреб.';

  @override
  String get metric_bad_25_name => 'Руминація конфлікту';

  @override
  String get metric_bad_25_description =>
      'Відстежує нав\'язливе повторення конфліктів без руху до вирішення або завершення.';

  @override
  String get metric_bad_26_name => 'Знецінення чутливості';

  @override
  String get metric_bad_26_description =>
      'Визначає фрази на кшталт «ти надто чутливий» або «ти перебільшуєш» для знецінення почуттів.';

  @override
  String get metric_bad_27_name => 'Змагальна рамка';

  @override
  String get metric_bad_27_description =>
      'Виявляє представлення стосунків як змагання, де один партнер має перемогти або домінувати.';

  @override
  String get metric_bad_28_name => 'Подвійні стандарти';

  @override
  String get metric_bad_28_description =>
      'Визначає застосування різних правил до себе та партнера або довільну зміну очікувань.';

  @override
  String get metric_bad_29_name => 'Прихильність як покарання';

  @override
  String get metric_bad_29_description =>
      'Позначає позбавлення прихильності, уваги або спілкування як помсту за уявні образи.';

  @override
  String get metric_bad_30_name => 'Ротація провини';

  @override
  String get metric_bad_30_description =>
      'Відстежує перекладання провини між партнером, обставинами та зовнішніми факторами, щоб уникнути відповідальності.';

  @override
  String get metric_bad_31_name => 'Риторичне висміювання';

  @override
  String get metric_bad_31_description =>
      'Виявляє риторичні або саркастичні запитання, які використовуються для висміювання, а не розуміння.';

  @override
  String get metric_bad_32_name => 'Нагадування про жертви';

  @override
  String get metric_bad_32_description =>
      'Визначає нагадування партнеру про жертви, послуги чи підтримку для створення боргу та поступливості.';

  @override
  String get metric_bad_33_name => 'Навмисна ескалація';

  @override
  String get metric_bad_33_description =>
      'Позначає навмисне підвищення інтенсивності, щоб перевантажити здатність партнера реагувати раціонально.';

  @override
  String get metric_bad_34_name => 'Стратегічна вразливість';

  @override
  String get metric_bad_34_description =>
      'Виявляє вираження емоцій лише тоді, коли це служить маніпуляції або контролю.';

  @override
  String get metric_bad_35_name => 'Відволікання через контратаку';

  @override
  String get metric_bad_35_description =>
      'Визначає переведення уваги з проблем партнера шляхом підняття не пов\'язаних питань або зустрічних звинувачень.';

  @override
  String get metric_bad_36_name => 'Мова переваги';

  @override
  String get metric_bad_36_description =>
      'Позначає мову переваги, поблажливість або представлення партнера як нижчого.';

  @override
  String get metric_bad_37_name => 'Модель виходу з конфлікту';

  @override
  String get metric_bad_37_description =>
      'Виявляє модель ухилення від розмов, відмову від участі або створення дистанції під час конфлікту.';

  @override
  String get metric_bad_38_name => 'Негативне упередження';

  @override
  String get metric_bad_38_description =>
      'Відстежує постійне тлумачення нейтральних або позитивних дій як негативних чи підозрілих.';

  @override
  String get metric_bad_39_name => 'Заперечення агентності';

  @override
  String get metric_bad_39_description =>
      'Ідентифікує фрази «я повинен», «ти змушуєш мене» або мову, що позбавляє мовця особистої відповідальності.';

  @override
  String get metric_bad_40_name => 'Мовчання як контроль';

  @override
  String get metric_bad_40_description =>
      'Позначає використання мовчання або відсутності реакції як форми покарання чи контролю.';

  @override
  String get metric_bad_41_name => 'Лицемірство щодо приватності';

  @override
  String get metric_bad_41_description =>
      'Виявляє відмову ділитися інформацією при вимозі прозорості від партнера.';

  @override
  String get metric_bad_42_name => 'Небажана різка критика';

  @override
  String get metric_bad_42_description =>
      'Ідентифікує різку критику, подану як «конструктивну» або «корисну», без згоди.';

  @override
  String get metric_bad_43_name => 'Умовна турбота';

  @override
  String get metric_bad_43_description =>
      'Позначає підтримку, яку надають лише за умови, що партнер відповідає очікуванням мовця.';

  @override
  String get metric_bad_44_name => 'Заперечення впливу';

  @override
  String get metric_bad_44_description =>
      'Виявляє фрази «я не мав на увазі це так» або «ти надто багато читаєш» після заподіяння шкоди.';

  @override
  String get metric_bad_45_name => 'Ментальність боргу';

  @override
  String get metric_bad_45_description =>
      'Відстежує згадування минулої допомоги чи підтримки для створення боргу та контролю поточної поведінки.';

  @override
  String get metric_bad_46_name => 'Ухилення від відповідальності';

  @override
  String get metric_bad_46_description =>
      'Вказує на сталу модель уникнення відповідальності за наслідки своїх дій.';

  @override
  String get metric_bad_47_name => 'Знецінення потреб';

  @override
  String get metric_bad_47_description =>
      'Виявляє ставлення до потреб партнера як до незручних, необґрунтованих або неважливих.';

  @override
  String get metric_bad_48_name => 'Емоційна маніпуляція';

  @override
  String get metric_bad_48_description =>
      'Вказує на стратегічне використання емоцій для контролю результатів або уникнення відповідальності.';

  @override
  String get metric_bad_49_name => 'Уникнення близькості';

  @override
  String get metric_bad_49_description =>
      'Відстежує постійне відсторонення від емоційної або фізичної близькості без пояснень.';

  @override
  String get metric_bad_50_name => 'Прихована критика';

  @override
  String get metric_bad_50_description =>
      'Виявляє критику, замасковану під жарти, спостереження або випадкові коментарі.';

  @override
  String get metric_bad_51_name => 'Мінімізація проблем';

  @override
  String get metric_bad_51_description =>
      'Вказує на зведення проблем партнера до незначущості або перебільшення.';

  @override
  String get metric_bad_52_name => 'Примус через провину';

  @override
  String get metric_bad_52_description =>
      'Виявляє використання провини або сорому для забезпечення відповідності партнера очікуванням.';

  @override
  String get metric_bad_53_name => 'Опір вибаченням';

  @override
  String get metric_bad_53_description =>
      'Відстежує опір вибаченням, виправдання шкоди або відмову визнавати вплив.';

  @override
  String get metric_bad_54_name => 'Відмова від перспективи';

  @override
  String get metric_bad_54_description =>
      'Вказує на відмову розглядати або визнавати точку зору чи досвід партнера.';

  @override
  String get metric_bad_55_name => 'Емоційне нормування';

  @override
  String get metric_bad_55_description =>
      'Виявляє навмисне обмеження емоційного вираження або зв\'язку як форму контролю.';

  @override
  String get metric_bad_56_name => 'Маніпуляція обов\'язком';

  @override
  String get metric_bad_56_description =>
      'Позначає використання минулої підтримки або жертви для маніпулювання поточними рішеннями.';

  @override
  String get metric_bad_57_name => 'Опір зростанню';

  @override
  String get metric_bad_57_description =>
      'Відстежує опір зміні шкідливої поведінки, незважаючи на прохання або продемонстрований вплив.';

  @override
  String get metric_bad_58_name => 'Заперечення шкоди';

  @override
  String get metric_bad_58_description =>
      'Виявляє відмову визнавати або серйозно сприймати вплив власної поведінки.';

  @override
  String get metric_bad_59_name => 'Провокаційні запитання';

  @override
  String get metric_bad_59_description =>
      'Позначає критичний намір, замаскований під невинні запитання або вираження цікавості.';

  @override
  String get metric_bad_60_name => 'Зневажливий тон';

  @override
  String get metric_bad_60_description =>
      'Ідентифікує зневажливе ставлення або презирство, виражене через текстові патерни та вибір слів.';

  @override
  String get metric_bad_61_name => 'Циклічне відчуття провини';

  @override
  String get metric_bad_61_description =>
      'Виявляє повторне використання почуття провини за минулу підтримку або жертву для контролю поточної поведінки.';

  @override
  String get metric_bad_62_name => 'Емоційна закритість';

  @override
  String get metric_bad_62_description =>
      'Відстежує відмову ділитися емоціями, страхами або потребами з партнером як захисне утримання.';

  @override
  String get metric_bad_63_name => 'Переговори про кордони';

  @override
  String get metric_bad_63_description =>
      'Позначає ставлення до встановлених меж як до пропозицій або предмету переговорів, а не як до твердих зобов\'язань.';

  @override
  String get metric_bad_64_name => 'Емоційна відсутність';

  @override
  String get metric_bad_64_description =>
      'Виявляє постійну відмову надавати емоційну підтримку або бути присутнім у стосунках.';

  @override
  String get metric_bad_65_name => 'Облік послуг';

  @override
  String get metric_bad_65_description =>
      'Фіксує ведення ментального обліку послуг, підтримки чи жертв для подальшого використання.';

  @override
  String get metric_bad_66_name => 'Уникнення чесності';

  @override
  String get metric_bad_66_description =>
      'Виявляє звичку приховувати правду, опускати факти або навмисно бути невизначеним.';

  @override
  String get metric_bad_67_name => 'Заперечення значущості';

  @override
  String get metric_bad_67_description =>
      'Визначає ставлення до почуттів, потреб або турбот партнера як недійсних чи нелегітимних.';

  @override
  String get metric_bad_68_name => 'Критика під виглядом поради';

  @override
  String get metric_bad_68_description =>
      'Фіксує критику, замасковану під турботу, пораду або корисне спостереження.';

  @override
  String get metric_bad_69_name => 'Ознаки зверхності';

  @override
  String get metric_bad_69_description =>
      'Виявляє зверхність, глузування або зневагу в мові чи стилі спілкування.';

  @override
  String get metric_bad_70_name => 'Опір відновленню';

  @override
  String get metric_bad_70_description =>
      'Відстежує опір виправленню помилок, відновленню зв\'язку або відбудові після конфлікту.';

  @override
  String get metric_bad_71_name => 'Знецінення зусиль';

  @override
  String get metric_bad_71_description =>
      'Фіксує применшення або ігнорування спроб партнера покращити ситуацію чи вирішити проблеми.';

  @override
  String get metric_bad_72_name => 'Модель емоційної дистанції';

  @override
  String get metric_bad_72_description =>
      'Виявляє довготривалу модель емоційної дистанції або відмови від щирої взаємодії.';

  @override
  String get metric_bad_73_name => 'Фреймування неповноцінності';

  @override
  String get metric_bad_73_description =>
      'Визначає представлення партнера як неповноцінного, недосконалого або негідного повної поваги.';

  @override
  String get metric_bad_74_name => 'Опір зворотному зв\'язку';

  @override
  String get metric_bad_74_description =>
      'Виявляє опір до сприйняття критики, відмову слухати або припинення обговорення.';

  @override
  String get metric_bad_75_name => 'Відкидання хвилювань';

  @override
  String get metric_bad_75_description =>
      'Визначає ставлення до хвилювань або страхів партнера як безпідставних або ірраціональних.';

  @override
  String get metric_bad_76_name => 'Пошук недоліків';

  @override
  String get metric_bad_76_description =>
      'Фіксує хронічну модель пошуку недоліків, скарг або атак на характер партнера.';

  @override
  String get metric_bad_77_name => 'Цикл провини через жертву';

  @override
  String get metric_bad_77_description =>
      'Визначає неодноразове згадування минулої підтримки для створення почуття провини або контролю поведінки.';

  @override
  String get metric_bad_78_name => 'Невизначеність зобов\'язань';

  @override
  String get metric_bad_78_description =>
      'Відстежує нечітку або невизначену мову зобов\'язань, змішані сигнали або небажання брати на себе зобов\'язання.';

  @override
  String get metric_bad_79_name => 'Відхилення прохань';

  @override
  String get metric_bad_79_description =>
      'Фіксує ігнорування, відмову або затримку відповіді на розумні прохання партнера.';

  @override
  String get metric_bad_80_name => 'Тактики емоційного контролю';

  @override
  String get metric_bad_80_description =>
      'Виявляє стратегічне використання емоцій для контролю результатів або уникнення відповідальності.';

  @override
  String get metric_bad_81_name => 'Ментальність обміну';

  @override
  String get metric_bad_81_description =>
      'Фіксує сприйняття відносин через призму боргу, обов\'язку або транзакційного обміну.';

  @override
  String get metric_bad_82_name => 'Опір особистісному розвитку';

  @override
  String get metric_bad_82_description =>
      'Виявляє опір особистісному розвитку, навчанню або зміні шкідливих патернів.';

  @override
  String get metric_bad_83_name => 'Відхилення покращення';

  @override
  String get metric_bad_83_description =>
      'Ідентифікує применшення або відхилення зусиль партнера щодо покращення чи вирішення проблем.';

  @override
  String get metric_bad_84_name => 'Хронічна критика';

  @override
  String get metric_bad_84_description =>
      'Позначає хронічний патерн критики, замаскованої під турботу, корисність або дбайливість.';

  @override
  String get metric_bad_85_name => 'Уникнення рішень';

  @override
  String get metric_bad_85_description =>
      'Виявляє послідовний патерн уникнення завершення, руху вперед або пошуку прийнятних рішень.';

  @override
  String get metric_bad_86_name => 'Патерн звинувачення';

  @override
  String get metric_bad_86_description =>
      'Позначає звичний патерн перекладання відповідальності на зовнішні фактори або партнера.';

  @override
  String get metric_bad_87_name => 'Зневажливі відповіді';

  @override
  String get metric_bad_87_description =>
      'Ідентифікує патерн відкидання думок, ідей або пропозицій партнера без розгляду.';

  @override
  String get metric_bad_88_name => 'Вираження образи';

  @override
  String get metric_bad_88_description =>
      'Виявляє тон образи, гіркоти або давньої фрустрації у спілкуванні.';

  @override
  String get metric_bad_89_name => 'Амбівалентні повідомлення';

  @override
  String get metric_bad_89_description =>
      'Позначає суперечливі повідомлення про відданість, невизначене бажання продовжувати або динаміку «тягни-штовхай».';

  @override
  String get metric_bad_90_name => 'Зміна очікувань';

  @override
  String get metric_bad_90_description =>
      'Ідентифікує зміну очікувань без комунікації, а потім звинувачення партнера в їх невиконанні.';

  @override
  String get metric_bad_91_name => 'Звичка ухилятися';

  @override
  String get metric_bad_91_description =>
      'Виявляє звичне ухилення від прямих відповідей або перенаправлення розмов подалі від відповідальності.';

  @override
  String get metric_bad_92_name => 'Маніпуляція добротою';

  @override
  String get metric_bad_92_description =>
      'Позначає перебільшену щедрість, яка використовується стратегічно для створення зобов\'язань або зниження захисту.';

  @override
  String get metric_bad_93_name => 'Хронічні запізнення';

  @override
  String get metric_bad_93_description =>
      'Визначає постійне ігнорування часу партнера через запізнення або порушення домовленостей.';

  @override
  String get metric_bad_94_name => 'Мінімізація прогресу';

  @override
  String get metric_bad_94_description =>
      'Відстежує ігнорування або невизнання справжнього особистого зростання чи покращень партнера.';

  @override
  String get metric_bad_95_name => 'Емоційна зброя';

  @override
  String get metric_bad_95_description =>
      'Виявляє використання розкритих вразливостей або страхів партнера проти нього під час конфлікту.';

  @override
  String get metric_bad_96_name => 'Тактики, близькі до газлайтингу';

  @override
  String get metric_bad_96_description =>
      'Визначає тонкі тактики спотворення реальності, які викликають сумніви в собі без повного газлайтингу.';

  @override
  String get metric_bad_97_name => 'Пасивне ігнорування';

  @override
  String get metric_bad_97_description =>
      'Позначає тонке відсторонення, односкладові відповіді або відсутність уваги як уникнення.';

  @override
  String get metric_bad_98_name => 'Контроль наративу';

  @override
  String get metric_bad_98_description =>
      'Виявляє наполягання на тому, щоб бути єдиним авторитетом у тому, що сталося, як це відчувалося або що малося на увазі.';

  @override
  String get metric_bad_99_name => 'Ухилення від відповідальності';

  @override
  String get metric_bad_99_description =>
      'Відстежує постійне перенаправлення відповідальності на зовнішні фактори, третіх осіб або поведінку партнера.';

  @override
  String get metric_bad_100_name => 'Емоційна недоступність';

  @override
  String get metric_bad_100_description =>
      'Вказує на хронічне уникнення емоційної близькості, вразливості або значущого зв\'язку, коли партнер потребує близькості.';

  @override
  String get metric_ugly_1_name => 'Погрози фізичним насильством';

  @override
  String get metric_ugly_1_description =>
      'Виявляє прямі або завуальовані погрози вдарити, завдати шкоди або фізичного насильства щодо партнера.';

  @override
  String get metric_ugly_2_name => 'Згадки про володіння зброєю';

  @override
  String get metric_ugly_2_description =>
      'Позначає згадки про зброю, ножі чи інші знаряддя в контексті гніву, контролю або здатності завдати шкоди.';

  @override
  String get metric_ugly_3_name => 'Індикатори задушення';

  @override
  String get metric_ugly_3_description =>
      'Виявляє згадки або мову, пов\'язану з задушенням, захопленням горла, удушенням або асфіксією.';

  @override
  String get metric_ugly_4_name => 'Використання суїциду як зброї';

  @override
  String get metric_ugly_4_description =>
      'Виявляє погрози самопошкодженням для контролю, маніпуляції або покарання партнера.';

  @override
  String get metric_ugly_5_name => 'Мова суїцидальних намірів';

  @override
  String get metric_ugly_5_description =>
      'Позначає висловлювання, що виражають намір, планування або бажання вбити партнера.';

  @override
  String get metric_ugly_6_name => 'Патерни ризику летальності';

  @override
  String get metric_ugly_6_description =>
      'Ідентифікує ознаки високої летальності: доступ до зброї, одержимість, ескалація та погрози розлукою в поєднанні.';

  @override
  String get metric_ugly_7_name => 'Мова одержимості та стеження';

  @override
  String get metric_ugly_7_description =>
      'Виявляє нав\'язливе відстеження місцезнаходження, стеження, несподівані візити або наполегливе переслідування.';

  @override
  String get metric_ugly_8_name => 'Примусова ізоляція';

  @override
  String get metric_ugly_8_description =>
      'Позначає агресивні вимоги припинити всі контакти з родиною, друзями, роботою або зовнішнім світом.';

  @override
  String get metric_ugly_9_name => 'Економічний саботаж';

  @override
  String get metric_ugly_9_description =>
      'Навмисне знищення роботи, кредитної історії, фінансів або економічної стабільності.';

  @override
  String get metric_ugly_10_name => 'Репродуктивний примус';

  @override
  String get metric_ugly_10_description =>
      'Виявляє примус до вагітності, тиск щодо аборту, втручання в контрацепцію або репродуктивний контроль.';

  @override
  String get metric_ugly_11_name => 'Тиск сексуального примусу';

  @override
  String get metric_ugly_11_description =>
      'Позначає примус до сексу, примусові сексуальні дії, тиск після відмови або мову сексуального покарання.';

  @override
  String get metric_ugly_12_name => 'Неконсенсуальна сексуальна мова';

  @override
  String get metric_ugly_12_description =>
      'Ідентифікує явні або приховані погрози або описи неконсенсуального сексуального насильства.';

  @override
  String get metric_ugly_13_name => 'Погрози шкоди дітям';

  @override
  String get metric_ugly_13_description =>
      'Виявляє погрози завдати шкоди, знехтувати або знущатися над дітьми як засіб тиску або покарання партнера.';

  @override
  String get metric_ugly_14_name => 'Використання опіки як зброї';

  @override
  String get metric_ugly_14_description =>
      'Позначає погрози забрати дітей, обмежити доступ або використовувати опіку як механізм контролю.';

  @override
  String get metric_ugly_15_name => 'Погрози шкоди тваринам';

  @override
  String get metric_ugly_15_description =>
      'Ідентифікує погрози завдати шкоди, вбити або знущатися над домашніми тваринами як покарання або демонстрацію контролю.';

  @override
  String get metric_ugly_16_name => 'Тактики позбавлення сну';

  @override
  String get metric_ugly_16_description =>
      'Позначає навмисне позбавлення сну, постійні переривання або виснаження як метод контролю.';

  @override
  String get metric_ugly_17_name => 'Мова обмеження волі';

  @override
  String get metric_ugly_17_description =>
      'Позначає замикання, перешкоджання виходу або обмеження партнера в певному місці.';

  @override
  String get metric_ugly_18_name => 'Мова хижацького грумінгу';

  @override
  String get metric_ugly_18_description =>
      'Позначає систематичні маніпуляції для зниження захисту, створення хибної довіри, а потім експлуатацію партнера.';

  @override
  String get metric_ugly_19_name => 'Мова дегуманізації';

  @override
  String get metric_ugly_19_description =>
      'Виявляє опис партнера як тварини, об\'єкта, нелюдини або того, хто не заслуговує на основні права.';

  @override
  String get metric_ugly_20_name => 'Ескалація нарцисичної люті';

  @override
  String get metric_ugly_20_description =>
      'Виявляє вибуховий гнів, спричинений сприйнятими образами, критикою або будь-якою втратою контролю.';

  @override
  String get metric_ugly_21_name => 'Нав\'язливі заяви про володіння';

  @override
  String get metric_ugly_21_description =>
      'Позначає мову, що стверджує власність, майнові права або повний контроль над особистістю партнера.';

  @override
  String get metric_ugly_22_name => 'Патологічні моделі брехні';

  @override
  String get metric_ugly_22_description =>
      'Ідентифікує послідовну, деталізовану або непотрібну брехню про серйозні речі без видимої причини.';

  @override
  String get metric_ugly_23_name => 'Мова фантазій про помсту';

  @override
  String get metric_ugly_23_description =>
      'Ідентифікує детальні фантазії про заподіяння шкоди, приниження або знищення партнера.';

  @override
  String get metric_ugly_24_name => 'Фіксація на одержимості зрадою';

  @override
  String get metric_ugly_24_description =>
      'Виявляє нав\'язливі роздуми, звинувачення та покарання, зосереджені на сприйнятій невірності.';

  @override
  String get metric_ugly_25_name => 'Агресія через паніку покидання';

  @override
  String get metric_ugly_25_description =>
      'Позначає насильницькі або агресивні реакції на сприйняте покидання або будь-яку спробу розлуки.';

  @override
  String get metric_ugly_26_name => 'Ескалація погроз при розлуці';

  @override
  String get metric_ugly_26_description =>
      'Ідентифікує крайні погрози або небезпечну поведінку, спричинену спробами розриву або розлуки.';

  @override
  String get metric_ugly_27_name => 'Погрози переслідування після розлуки';

  @override
  String get metric_ugly_27_description =>
      'Позначає погрози переслідування, шкоди або примусового контакту після завершення стосунків.';

  @override
  String get metric_ugly_28_name => 'Погрози викраденням дітей';

  @override
  String get metric_ugly_28_description =>
      'Виявляє погрози забрати дітей і втекти або назавжди сховати їх від іншого з батьків.';

  @override
  String get metric_ugly_29_name => 'Програма батьківського відчуження';

  @override
  String get metric_ugly_29_description =>
      'Позначає систематичні спроби налаштувати дітей проти іншого з батьків через маніпуляції.';

  @override
  String get metric_ugly_30_name => 'Байдужість до свідків-дітей';

  @override
  String get metric_ugly_30_description =>
      'Виявляє байдужість до того, що діти стають свідками насильства, конфліктів або емоційної шкоди.';

  @override
  String get metric_ugly_31_name => 'Мова торгівлі людьми';

  @override
  String get metric_ugly_31_description =>
      'Виявляє мову, що передбачає продаж, обмін або сексуальну експлуатацію партнера.';

  @override
  String get metric_ugly_32_name => 'Мова рабства';

  @override
  String get metric_ugly_32_description =>
      'Виявляє мову, що трактує партнера як власність, раба або особу без прав, яка повністю належить іншому.';

  @override
  String get metric_ugly_33_name => 'Погрози борговою кабалою';

  @override
  String get metric_ugly_33_description =>
      'Виявляє погрози заманити партнера в пастку через штучні борги або фінансові зобов\'язання.';

  @override
  String get metric_ugly_34_name => 'Вимоги примусової праці';

  @override
  String get metric_ugly_34_description =>
      'Позначає вимоги неоплачуваної праці, прислуги або роботи під загрозою шкоди чи покарання.';

  @override
  String get metric_ugly_35_name => 'Нормалізація експлуатації';

  @override
  String get metric_ugly_35_description =>
      'Виявляє представлення жорстокої експлуатації як нормальної, заслуженої, добровільної або навіть корисної.';

  @override
  String get metric_ugly_36_name => 'Націлювання на вразливість';

  @override
  String get metric_ugly_36_description =>
      'Виявляє цілеспрямоване націлювання на ізольованих, економічно залежних або психологічно вразливих осіб.';

  @override
  String get metric_ugly_37_name => 'Інженерія травматичного зв\'язку';

  @override
  String get metric_ugly_37_description =>
      'Виявляє навмисне створення циклів страху-полегшення, спрямованих на формування глибокої емоційної залежності.';

  @override
  String get metric_ugly_38_name => 'Зловживання переривчастим підкріпленням';

  @override
  String get metric_ugly_38_description =>
      'Фіксує непередбачувані цикли винагороди та жорстокого покарання, що використовуються для створення психологічної залежності.';

  @override
  String get metric_ugly_39_name => 'Індукція вивченої безпорадності';

  @override
  String get metric_ugly_39_description =>
      'Визначає систематичне позбавлення волі, ресурсів та уявних шляхів до втечі.';

  @override
  String get metric_ugly_40_name => 'Мова стирання ідентичності';

  @override
  String get metric_ugly_40_description =>
      'Фіксує вимоги відмовитися від особистості, інтересів, зовнішності або основного відчуття ідентичності.';

  @override
  String get metric_ugly_41_name => 'Знищення автономії';

  @override
  String get metric_ugly_41_description =>
      'Виявляє систематичне усунення незалежного мислення, прийняття рішень або особистої волі.';

  @override
  String get metric_ugly_42_name => 'Тактики контролю думок';

  @override
  String get metric_ugly_42_description =>
      'Фіксує вимоги думати, вірити або відчувати лише так, як диктує контролюючий партнер.';

  @override
  String get metric_ugly_43_name => 'Примус до емоційного оніміння';

  @override
  String get metric_ugly_43_description =>
      'Виявляє покарання за прояв емоцій або прямі вимоги придушувати всі почуття.';

  @override
  String get metric_ugly_44_name => 'Створення комплексної травми';

  @override
  String get metric_ugly_44_description =>
      'Фіксує систематичні патерни, що створюють травму на рівні комплексного ПТСР через хронічне насильство.';

  @override
  String get metric_ugly_45_name => 'Завдання травми зради';

  @override
  String get metric_ugly_45_description =>
      'Виявляє навмисну зраду, спрямовану на руйнування базової довіри та психологічної безпеки.';

  @override
  String get metric_ugly_46_name => 'Мова моральної травми';

  @override
  String get metric_ugly_46_description =>
      'Виявляє примус партнера до порушення власних глибоких цінностей або вчинення шкідливих дій.';

  @override
  String get metric_ugly_47_name => 'Мова екзистенційної загрози';

  @override
  String get metric_ugly_47_description =>
      'Позначає загрози існуванню партнера, його основній ідентичності, здоровому глузду або волі до життя.';

  @override
  String get metric_ugly_48_name => 'Мова суїцидального примусу';

  @override
  String get metric_ugly_48_description =>
      'Виявляє підштовхування партнера до суїцидальних думок через тривале насильство та штучну безнадію.';

  @override
  String get metric_ugly_49_name => 'Міфологія виправдання';

  @override
  String get metric_ugly_49_description =>
      'Виявляє складні вигадані наративи, представлені для виправдання насильства як необхідного, заслуженого або праведного.';

  @override
  String get metric_ugly_50_name => 'Інверсія наративу жертви';

  @override
  String get metric_ugly_50_description =>
      'Виявляє повне перевертання, коли кривдник стверджує, що він є справжньою жертвою власного насильства.';

  @override
  String get metric_ugly_51_name => 'Проповідь нормалізації насильства';

  @override
  String get metric_ugly_51_description =>
      'Позначає навчання або наполягання на тому, що насильство є нормальним, здоровим або корисним для партнера.';

  @override
  String get metric_ugly_52_name => 'Хижацька ідеологія';

  @override
  String get metric_ugly_52_description =>
      'Виявляє ідеологічне виправдання експлуатації, домінування або шкоди партнеру.';

  @override
  String get metric_ugly_53_name => 'Повідомлення лідера культу';

  @override
  String get metric_ugly_53_description =>
      'Виявляє повідомлення, що стверджують особливі знання, божественне право або вищу владу над партнером.';

  @override
  String get metric_ugly_54_name => 'Мова часової лінії грумінгу';

  @override
  String get metric_ugly_54_description =>
      'Позначає посилання на довгостроковий план маніпуляції або опис прогресу грумінгу.';

  @override
  String get metric_ugly_55_name => 'Хронічна кампанія приниження';

  @override
  String get metric_ugly_55_description =>
      'Виявляє стійку модель публічного або приватного приниження, спрямовану на знищення самооцінки.';

  @override
  String get metric_ugly_56_name => 'Блокування шляхів безпеки';

  @override
  String get metric_ugly_56_description =>
      'Виявляє активне перешкоджання партнеру в доступі до шляхів втечі, систем підтримки або ресурсів безпеки.';

  @override
  String get metric_ugly_57_name => 'Погрози конфіскації документів';

  @override
  String get metric_ugly_57_description =>
      'Позначає погрози або дії щодо вилучення, приховування чи знищення документів, що посвідчують особу, для запобігання втечі.';

  @override
  String get metric_ugly_58_name => 'Моделі насильницької ревнощів';

  @override
  String get metric_ugly_58_description =>
      'Виявляє ревнощі, що переросли у явні погрози, стеження або насильницьку відплату.';

  @override
  String get metric_ugly_59_name => 'Моделі вибухів гніву';

  @override
  String get metric_ugly_59_description =>
      'Виявляє описи або моделі вибухових насильницьких спалахів, непропорційних будь-якому тригеру.';

  @override
  String get metric_ugly_60_name => 'Ескалація примусового контролю';

  @override
  String get metric_ugly_60_description =>
      'Відстежує зростання серйозності та широти тактик примусового контролю з часом.';

  @override
  String get metric_ugly_61_name => 'Мова підпорядкування на основі страху';

  @override
  String get metric_ugly_61_description =>
      'Виявляє підпорядкування, зумовлене виключно страхом насильства або суворого покарання, а не вибором.';

  @override
  String get metric_ugly_62_name => 'Мова ритуалів покарання';

  @override
  String get metric_ugly_62_description =>
      'Виявляє посилання на систематичні практики покарання, що використовуються для забезпечення підпорядкування та контролю.';

  @override
  String get metric_ugly_63_name => 'Індикатори ритуалів деградації';

  @override
  String get metric_ugly_63_description =>
      'Позначає систематичні ритуали приниження або деградації, спрямовані на знищення гідності.';

  @override
  String get metric_ugly_64_name => 'Погрози неконсенсуальним розголошенням';

  @override
  String get metric_ugly_64_description =>
      'Виявляє погрози оприлюднити інтимні зображення, приватну інформацію або таємниці без згоди.';

  @override
  String get metric_ugly_65_name => 'Погрози зловживанням зображеннями';

  @override
  String get metric_ugly_65_description =>
      'Виявляє погрози поширити інтимні зображення як помсту, покарання або шантаж.';

  @override
  String get metric_ugly_66_name => 'Тактики фінансової пастки';

  @override
  String get metric_ugly_66_description =>
      'Фіксує навмисне створення фінансової залежності, що унеможливлює самостійне виживання.';

  @override
  String get metric_ugly_67_name => 'Мова погроз щодо житла';

  @override
  String get metric_ugly_67_description =>
      'Виявляє погрози зробити партнера бездомним, позбавити доступу до житла або зруйнувати безпеку помешкання.';

  @override
  String get metric_ugly_68_name => 'Погрози імміграційним статусом';

  @override
  String get metric_ugly_68_description =>
      'Ідентифікує погрози повідомити про імміграційний статус або анулювати спонсорство візи як засіб контролю.';

  @override
  String get metric_ugly_69_name => 'Релігійне або духовне насильство';

  @override
  String get metric_ugly_69_description =>
      'Виявляє використання релігійного авторитету, доктрини або духовних погроз для контролю, покарання чи заподіяння шкоди.';

  @override
  String get metric_ugly_70_name => 'Використання культурного сорому';

  @override
  String get metric_ugly_70_description =>
      'Фіксує погрози розкрити поведінку культурній або сімейній спільноті як покарання.';

  @override
  String get metric_ugly_71_name => 'Погрози шкоди родині';

  @override
  String get metric_ugly_71_description =>
      'Ідентифікує погрози завдати шкоди членам сім\'ї партнера, дітям або близьким як важіль впливу.';

  @override
  String get metric_ugly_72_name => 'Скоординована кампанія переслідування';

  @override
  String get metric_ugly_72_description =>
      'Виявляє організацію інших осіб для колективного переслідування, стеження або залякування партнера.';

  @override
  String get metric_ugly_73_name => 'Погрози неправдивими заявами';

  @override
  String get metric_ugly_73_description =>
      'Погрози зробити неправдиві заяви в поліцію або висунути юридичні звинувачення проти партнера.';

  @override
  String get metric_ugly_74_name => 'Використання правової системи';

  @override
  String get metric_ugly_74_description =>
      'Виявляє використання судових процесів, судів або захисних приписів як зброї для переслідування.';

  @override
  String get metric_ugly_75_name => 'Порушення обмежувального припису';

  @override
  String get metric_ugly_75_description =>
      'Виявляє згадки про порушення або плани порушити захисні приписи чи заборони на контакт.';

  @override
  String get metric_ugly_76_name => 'Погрози саботажу на роботі';

  @override
  String get metric_ugly_76_description =>
      'Погрози зв\'язатися з роботодавцем, колегами або клієнтами, щоб зруйнувати засоби до існування партнера.';

  @override
  String get metric_ugly_77_name => 'Погрози соціального знищення';

  @override
  String get metric_ugly_77_description =>
      'Виявляє погрози знищити репутацію, стосунки та соціальний статус партнера.';

  @override
  String get metric_ugly_78_name => 'Систематична кампанія обману';

  @override
  String get metric_ugly_78_description =>
      'Виявляє довгостроковий складний обман, спрямований на фінансову або емоційну експлуатацію партнера.';

  @override
  String get metric_ugly_79_name => 'Знищення майна як терор';

  @override
  String get metric_ugly_79_description =>
      'Виявляє навмисне знищення майна партнера як тактику залякування.';

  @override
  String get metric_ugly_80_name => 'Жорстокість до тварин як залякування';

  @override
  String get metric_ugly_80_description =>
      'Виявляє заподіяння шкоди або погрози домашнім тваринам, щоб продемонструвати здатність до насильства щодо партнера.';

  @override
  String get metric_ugly_81_name => 'Мова загрози дітям';

  @override
  String get metric_ugly_81_description =>
      'Виявляє факти або погрози наражати дітей на небезпеку як засіб тиску.';

  @override
  String get metric_ugly_82_name => 'Контроль через інвалідність';

  @override
  String get metric_ugly_82_description =>
      'Виявляє використання інвалідності партнера шляхом контролю доступу до ліків, мобільності або догляду.';

  @override
  String get metric_ugly_83_name => 'Штучно створена криза';

  @override
  String get metric_ugly_83_description =>
      'Позначає навмисне створення надзвичайних ситуацій або криз для посилення залежності партнера або виправдання стеження.';

  @override
  String get metric_ugly_84_name => 'Ізоляція від екстрених служб';

  @override
  String get metric_ugly_84_description =>
      'Ідентифікує активне перешкоджання партнеру викликати поліцію, швидку або кризові служби.';

  @override
  String get metric_ugly_85_name => 'Траєкторія ескалації погроз';

  @override
  String get metric_ugly_85_description =>
      'Відстежує вимірюване зростання серйозності, конкретності або частоти погроз з часом.';

  @override
  String get metric_ugly_86_name => 'Показники оцінки летальності';

  @override
  String get metric_ugly_86_description =>
      'Позначає комбінації факторів, пов\'язаних з найвищим ризиком вбивства інтимного партнера.';

  @override
  String get metric_ugly_87_name => 'Тактики психологічних тортур';

  @override
  String get metric_ugly_87_description =>
      'Ідентифікує систематичне психологічне насильство, спрямоване на руйнування психічної стабільності партнера.';

  @override
  String get metric_ugly_88_name => 'Мова полону';

  @override
  String get metric_ugly_88_description =>
      'Виявляє згадки про утримання партнера в полоні, перешкоджання виходу або контроль усіх пересувань.';

  @override
  String get metric_ugly_89_name => 'Планування цілеспрямованого насильства';

  @override
  String get metric_ugly_89_description =>
      'Виявляє будь-яку мову, що вказує на планування, підготовку або відлік до насильства щодо партнера.';

  @override
  String get metric_ugly_90_name => 'Залучення третіх осіб до погроз';

  @override
  String get metric_ugly_90_description =>
      'Ідентифікує залучення друзів, родичів або інших осіб для погроз або заподіяння шкоди партнеру.';

  @override
  String get metric_ugly_91_name => 'Експлуатація суїцидальних думок';

  @override
  String get metric_ugly_91_description =>
      'Використання суїцидальної кризи партнера як важеля впливу або для перешкоджання зверненню по допомогу.';

  @override
  String get metric_ugly_92_name => 'Погрози отруєнням або наркотизацією';

  @override
  String get metric_ugly_92_description =>
      'Виявляє погрози або згадки про наркотизацію, отруєння чи підмішування речовин у їжу або напої партнера.';

  @override
  String get metric_ugly_93_name => 'Експлуатація несуїцидальних самоушкоджень';

  @override
  String get metric_ugly_93_description =>
      'Використання самоушкоджуючої поведінки партнера як важеля впливу, глузування або подальшого контролю.';

  @override
  String get metric_ugly_94_name => 'Мова індукції дисоціації';

  @override
  String get metric_ugly_94_description =>
      'Виявляє патерни, спрямовані на викликання дисоціації, відчуження або деперсоналізації у партнера.';

  @override
  String get metric_ugly_95_name => 'Імплантація когнітивних спотворень';

  @override
  String get metric_ugly_95_description =>
      'Виявляє навмисне насаджування хибних уявлень про себе, реальність або власний розум партнера.';

  @override
  String get metric_ugly_96_name => 'Перешкоджання медичній допомозі';

  @override
  String get metric_ugly_96_description =>
      'Виявляє перешкоджання доступу до ліків, лікарів, лікарень або медичного лікування.';

  @override
  String get metric_ugly_97_name => 'Екстремістська мова погроз';

  @override
  String get metric_ugly_97_description =>
      'Мова, запозичена з екстремістських або насильницьких ідеологічних рамок, застосована до партнера.';

  @override
  String get metric_ugly_98_name => 'Сигнали переслідування після розриву';

  @override
  String get metric_ugly_98_description =>
      'Виявляє погрози, мову стеження або тактику залякування після або в очікуванні розриву стосунків.';

  @override
  String get metric_ugly_99_name => 'Використання дітей як зброї';

  @override
  String get metric_ugly_99_description =>
      'Використання дітей як пішаків, погрози щодо опіки або використання батьківських зв\'язків як механізму контролю.';

  @override
  String get metric_ugly_100_name => 'Систематична дегуманізація';

  @override
  String get metric_ugly_100_description =>
      'Виявляє систематичне використання мови, яка позбавляє партнера особистості, гідності або права на базову людяність.';

  @override
  String get metric_narcissist_1_name => 'Грандіозна самоважливість';

  @override
  String get metric_narcissist_1_description =>
      'Перебільшені заяви про досягнення, таланти або статус, що не підтверджені реальними доказами, часто з відчуттям унікальності.';

  @override
  String get metric_narcissist_2_name => 'Вимоги привілеїв';

  @override
  String get metric_narcissist_2_description =>
      'Нерозумні очікування особливого ставлення або автоматичного виконання їхніх бажань без взаємності.';

  @override
  String get metric_narcissist_3_name => 'Дефіцит емпатії';

  @override
  String get metric_narcissist_3_description =>
      'Нездатність або небажання визнавати чи підтверджувати почуття інших, ігноруючи емоційні потреби як неважливі.';

  @override
  String get metric_narcissist_4_name => 'Пошук похвали';

  @override
  String get metric_narcissist_4_description =>
      'Надмірне випрошування захоплення, компліментів або підтвердження для підтримки крихкої самооцінки.';

  @override
  String get metric_narcissist_5_name => 'Тактика тріангуляції';

  @override
  String get metric_narcissist_5_description =>
      'Залучення третьої сторони в конфлікти для створення ревнощів, конкуренції або маніпуляції сприйняттям.';

  @override
  String get metric_narcissist_6_name =>
      'Інтенсивність любовного бомбардування';

  @override
  String get metric_narcissist_6_description =>
      'Надмірна лестощі, подарунки або увага на початку стосунків для отримання контролю та ідеалізації цілі.';

  @override
  String get metric_narcissist_7_name => 'Критика знецінення';

  @override
  String get metric_narcissist_7_description =>
      'Різкий перехід до жорсткої критики, приниження або презирства після ідеалізації, що підриває самооцінку цілі.';

  @override
  String get metric_narcissist_8_name => 'Покарання мовчанням';

  @override
  String get metric_narcissist_8_description =>
      'Утримання від спілкування або проявів прихильності як навмисне покарання для викликання тривоги та покори.';

  @override
  String get metric_narcissist_9_name => 'Зміщення провини DARVO';

  @override
  String get metric_narcissist_9_description =>
      'Заперечення відповідальності, напад на обвинувача та зміна ролей жертви та кривдника для уникнення відповідальності.';

  @override
  String get metric_narcissist_10_name => 'Спотворення реальності газлайтингом';

  @override
  String get metric_narcissist_10_description =>
      'Заперечення або перекручення фактів, подій чи почуттів, щоб змусити ціль сумніватися у власній пам\'яті або здоровому глузді.';

  @override
  String get metric_narcissist_11_name => 'Гнів на критику';

  @override
  String get metric_narcissist_11_description =>
      'Інтенсивний гнів, презирство або помста у відповідь на будь-яку сприйняту образу чи зворотний зв\'язок, навіть конструктивний.';

  @override
  String get metric_narcissist_12_name => 'Порушення кордонів';

  @override
  String get metric_narcissist_12_description =>
      'Ігнорування або порушення встановлених обмежень, приватності чи особистого простору без каяття або переговорів.';

  @override
  String get metric_narcissist_13_name => 'Вияв заздрості';

  @override
  String get metric_narcissist_13_description =>
      'Образа на успіхи або майно інших, часто супроводжується знеціненням або спробами підірвати їх.';

  @override
  String get metric_narcissist_14_name => 'Експлуатаційна поведінка';

  @override
  String get metric_narcissist_14_description =>
      'Використання інших для особистої вигоди, статусу або ресурсів без урахування їхнього благополуччя чи згоди.';

  @override
  String get metric_narcissist_15_name => 'Маніпуляція дзеркалом';

  @override
  String get metric_narcissist_15_description =>
      'Імітація інтересів, цінностей або рис цілі для створення хибного взаєморозуміння та завоювання довіри.';

  @override
  String get metric_narcissist_16_name => 'Твердження переваги';

  @override
  String get metric_narcissist_16_description =>
      'Заявлення про власну перевагу над іншими, часто з поблажливою або зневажливою мовою.';

  @override
  String get metric_narcissist_17_name => 'Фантазійна зайнятість';

  @override
  String get metric_narcissist_17_description =>
      'Нав\'язливі розмови про безмежний успіх, владу, блискучість або ідеальне кохання, які є нереалістичними.';

  @override
  String get metric_narcissist_18_name => 'Твердження особливого статусу';

  @override
  String get metric_narcissist_18_description =>
      'Віра в те, що їх можуть зрозуміти лише високостатусні люди або установи, або вони можуть асоціюватися лише з ними.';

  @override
  String get metric_narcissist_19_name => 'Міжособистісна експлуатація';

  @override
  String get metric_narcissist_19_description =>
      'Використання ресурсів, часу або емоцій інших без взаємності чи вдячності.';

  @override
  String get metric_narcissist_20_name => 'Відсутність каяття';

  @override
  String get metric_narcissist_20_description =>
      'Відсутність провини або вибачень після заподіяння шкоди, часто з виправданням дій як заслужених ціллю.';

  @override
  String get metric_narcissist_21_name => 'Конкурентне підривання';

  @override
  String get metric_narcissist_21_description =>
      'Саботування досягнень або стосунків інших для збереження вищої позиції.';

  @override
  String get metric_narcissist_22_name => 'Фаза ідеалізації';

  @override
  String get metric_narcissist_22_description =>
      'Надмірна похвала та обожнювання на початку стосунків, що створює нереалістичні очікування щодо цілі.';

  @override
  String get metric_narcissist_23_name => 'Фаза девальвації';

  @override
  String get metric_narcissist_23_description =>
      'Поступова або раптова критика та зневага після ідеалізації, що викликає плутанину та сумніви в собі.';

  @override
  String get metric_narcissist_24_name => 'Імпульс відкидання';

  @override
  String get metric_narcissist_24_description =>
      'Раптове припинення стосунків, коли ціль більше не забезпечує нарцисичне живлення або кидає виклик.';

  @override
  String get metric_narcissist_25_name => 'Спроби хуверингу';

  @override
  String get metric_narcissist_25_description =>
      'Повторне залучення відкинутої цілі за допомогою обіцянок, почуття провини або маніпуляцій для відновлення живлення.';

  @override
  String get metric_narcissist_26_name => 'Проекція недоліків';

  @override
  String get metric_narcissist_26_description =>
      'Звинувачення інших у власних негативних рисах або поведінці, щоб уникнути самоусвідомлення.';

  @override
  String get metric_narcissist_27_name => 'Контроль через провину';

  @override
  String get metric_narcissist_27_description =>
      'Використання висловлювань, що викликають почуття провини, для маніпулювання іншими з метою підпорядкування або догляду.';

  @override
  String get metric_narcissist_28_name => 'Емоційна нестабільність';

  @override
  String get metric_narcissist_28_description =>
      'Швидкі зміни настрою від чарівності до гніву, часто спричинені сприйнятою нарцисичною травмою.';

  @override
  String get metric_narcissist_29_name => 'Інвалідація почуттів';

  @override
  String get metric_narcissist_29_description =>
      'Відкидання або применшення емоцій інших як надмірних реакцій або ірраціональних.';

  @override
  String get metric_narcissist_30_name => 'Монополізація розмов';

  @override
  String get metric_narcissist_30_description =>
      'Домінування в діалозі темами, зосередженими на собі, перебивання або ігнорування внеску інших.';

  @override
  String get metric_narcissist_31_name => 'Приниження через обзивання';

  @override
  String get metric_narcissist_31_description =>
      'Використання образ, ярликів або принизливих термінів для знецінення та контролю над жертвою.';

  @override
  String get metric_narcissist_32_name => 'Погрози покинути';

  @override
  String get metric_narcissist_32_description =>
      'Використання страху втрати або відторгнення для примусу до слухняності чи отримання уваги.';

  @override
  String get metric_narcissist_33_name => 'Гра в жертву';

  @override
  String get metric_narcissist_33_description =>
      'Зображення себе несправедливо скривдженим, щоб викликати співчуття та уникнути відповідальності.';

  @override
  String get metric_narcissist_34_name => 'Комплекс мученика';

  @override
  String get metric_narcissist_34_description =>
      'Заяви про надмірні жертви або страждання, щоб викликати почуття провини та зобов\'язання в інших.';

  @override
  String get metric_narcissist_35_name => 'Вибіркова пам\'ять';

  @override
  String get metric_narcissist_35_description =>
      'Зручне забування обіцянок, домовленостей або шкідливих дій, щоб уникнути відповідальності.';

  @override
  String get metric_narcissist_36_name => 'Блокування спілкування';

  @override
  String get metric_narcissist_36_description =>
      'Відмова від діалогу, ігнорування запитань або припинення обговорень для збереження контролю.';

  @override
  String get metric_narcissist_37_name => 'Фальшиве майбутнє';

  @override
  String get metric_narcissist_37_description =>
      'Грандіозні обіцянки про спільні плани на майбутнє, щоб створити хибну надію та залежність.';

  @override
  String get metric_narcissist_38_name => 'Кампанія наклепу';

  @override
  String get metric_narcissist_38_description =>
      'Поширення зловмисних чуток або брехні про жертву, щоб ізолювати її та зіпсувати репутацію.';

  @override
  String get metric_narcissist_39_name => 'Тактика ізоляції';

  @override
  String get metric_narcissist_39_description =>
      'Перешкоджання або запобігання контактам з друзями, родиною чи системами підтримки для посилення залежності.';

  @override
  String get metric_narcissist_40_name => 'Фінансова експлуатація';

  @override
  String get metric_narcissist_40_description =>
      'Маніпулювання або контроль фінансових ресурсів для особистої вигоди чи створення залежності.';

  @override
  String get metric_narcissist_41_name => 'Сексуальний примус';

  @override
  String get metric_narcissist_41_description =>
      'Використання тиску, почуття провини або маніпуляцій для отримання сексуальної згоди без справжньої добровільності.';

  @override
  String get metric_narcissist_42_name => 'Тестування кордонів';

  @override
  String get metric_narcissist_42_description =>
      'Постійне порушення меж, щоб з\'ясувати, яка поведінка буде терпимою, а потім посилення порушень.';

  @override
  String get metric_narcissist_43_name => 'Заперечення газлайтингу';

  @override
  String get metric_narcissist_43_description =>
      'Категоричне заперечення подій або висловлювань, що мали місце, змушуючи жертву сумніватися в реальності.';

  @override
  String get metric_narcissist_44_name => 'Применшення проблем';

  @override
  String get metric_narcissist_44_description =>
      'Відкидання обґрунтованих скарг як неважливих або надмірно чутливих.';

  @override
  String get metric_narcissist_45_name => 'Зовнішнє звинувачення';

  @override
  String get metric_narcissist_45_description =>
      'Приписування всіх проблем і конфліктів іншим, ніколи не визнаючи власної провини.';

  @override
  String get metric_narcissist_46_name => 'Провокація ревнощів';

  @override
  String get metric_narcissist_46_description =>
      'Флірт або похвала інших, щоб викликати ревнощі та зберегти емоційний контроль.';

  @override
  String get metric_narcissist_47_name => 'Емоційний шантаж';

  @override
  String get metric_narcissist_47_description =>
      'Використання страху, обов\'язку або почуття провини для маніпулювання рішеннями та поведінкою.';

  @override
  String get metric_narcissist_48_name => 'Псевдо-інсайт';

  @override
  String get metric_narcissist_48_description =>
      'Прикидання самосвідомості або емпатії, щоб здаватися виправленим, а потім повернення до токсичних патернів.';

  @override
  String get metric_narcissist_49_name => 'Зневажливий тон';

  @override
  String get metric_narcissist_49_description =>
      'Використання сарказму, глузувань або презирливої мови для приниження та ігнорування інших.';

  @override
  String get metric_narcissist_50_name => 'Фантазії про помсту';

  @override
  String get metric_narcissist_50_description =>
      'Висловлення бажань помсти або покарання тих, хто їх образив.';

  @override
  String get metric_serial_killer_1_name => 'Хижацьке обрамлення';

  @override
  String get metric_serial_killer_1_description =>
      'Виявляє мову, яка позиціонує мовця як мисливця, а ціль як жертву, вказуючи на хижацький намір.';

  @override
  String get metric_serial_killer_2_name => 'Дефіцит емпатії';

  @override
  String get metric_serial_killer_2_description =>
      'Ідентифікує висловлювання, що не мають емоційного резонансу або турботи про страждання інших, що свідчить про черствість.';

  @override
  String get metric_serial_killer_3_name => 'Дегуманізуючі ярлики';

  @override
  String get metric_serial_killer_3_description =>
      'Позначає використання принизливих термінів або об\'єктивуючих ярликів, які позбавляють жертв людяності.';

  @override
  String get metric_serial_killer_4_name => 'Ознаки об\'єктивації';

  @override
  String get metric_serial_killer_4_description =>
      'Розпізнає мову, що трактує осіб як інструменти або об\'єкти для задоволення.';

  @override
  String get metric_serial_killer_5_name => 'Фіксація на контролі';

  @override
  String get metric_serial_killer_5_description =>
      'Виявляє нав\'язливі посилання на домінування, маніпуляцію або примус до підкорення.';

  @override
  String get metric_serial_killer_6_name => 'Тон пошуку гострих відчуттів';

  @override
  String get metric_serial_killer_6_description =>
      'Ідентифікує збудження або захоплення при описі ризикованих, насильницьких або хижацьких дій.';

  @override
  String get metric_serial_killer_7_name => 'Маркери компартменталізації';

  @override
  String get metric_serial_killer_7_description =>
      'Позначає різкі переходи між звичайними та насильницькими темами, що вказує на психологічне відокремлення.';

  @override
  String get metric_serial_killer_8_name => 'Сигнали вибору жертви';

  @override
  String get metric_serial_killer_8_description =>
      'Виявляє критерії або вподобання для націлювання на конкретні вразливі групи.';

  @override
  String get metric_serial_killer_9_name => 'Садистське задоволення';

  @override
  String get metric_serial_killer_9_description =>
      'Розпізнає насолоду, отриману від болю, страху або страждань інших.';

  @override
  String get metric_serial_killer_10_name => 'Маніпулятивна шкода';

  @override
  String get metric_serial_killer_10_description =>
      'Ідентифікує мову, що використовується для обману або примусу інших до шкідливих ситуацій.';

  @override
  String get metric_serial_killer_11_name => 'Індикатори стеження';

  @override
  String get metric_serial_killer_11_description =>
      'Виявляє детальне відстеження, спостереження або нав\'язливий моніторинг цілі.';

  @override
  String get metric_serial_killer_12_name => 'Мова грумінгу';

  @override
  String get metric_serial_killer_12_description =>
      'Виявляє поступові тактики встановлення довіри для експлуатації або зловживання жертвами.';

  @override
  String get metric_serial_killer_13_name => 'Насильницьке фантазування';

  @override
  String get metric_serial_killer_13_description =>
      'Ідентифікує яскраві описи заподіяння шкоди або вбивства інших як уявну репетицію.';

  @override
  String get metric_serial_killer_14_name => 'Затвердження влади';

  @override
  String get metric_serial_killer_14_description =>
      'Розпізнає висловлювання, що підкреслюють перевагу або контроль над іншими.';

  @override
  String get metric_serial_killer_15_name => 'Відсутність каяття';

  @override
  String get metric_serial_killer_15_description =>
      'Виявляє відсутність провини або жалю після обговорення шкідливих дій.';

  @override
  String get metric_serial_killer_16_name => 'Екстерналізація провини';

  @override
  String get metric_serial_killer_16_description =>
      'Виявляє перекладання відповідальності за насильницькі імпульси на жертв або суспільство.';

  @override
  String get metric_serial_killer_17_name => 'Сексуалізоване насильство';

  @override
  String get metric_serial_killer_17_description =>
      'Ідентифікує поєднання сексуальних і насильницьких тем у мові.';

  @override
  String get metric_serial_killer_18_name => 'Тактики ізоляції';

  @override
  String get metric_serial_killer_18_description =>
      'Розпізнає зусилля, спрямовані на відокремлення цілі від мереж підтримки.';

  @override
  String get metric_serial_killer_19_name => 'Патерни газлайтингу';

  @override
  String get metric_serial_killer_19_description =>
      'Виявляє мову, призначену для спотворення реальності та підриву психічного здоров\'я жертви.';

  @override
  String get metric_serial_killer_20_name => 'Маскування загроз';

  @override
  String get metric_serial_killer_20_description =>
      'Виявляє приховані погрози або попередження, замасковані під звичайні висловлювання.';

  @override
  String get metric_serial_killer_21_name => 'Власницька мова';

  @override
  String get metric_serial_killer_21_description =>
      'Виявляє твердження про власність або право на іншу людину.';

  @override
  String get metric_serial_killer_22_name => 'Теми помсти';

  @override
  String get metric_serial_killer_22_description =>
      'Розпізнає фіксацію на помсті або покаранні за уявні образи.';

  @override
  String get metric_serial_killer_23_name => 'Нарцисична велич';

  @override
  String get metric_serial_killer_23_description =>
      'Позначає перебільшену самоважливість та ігнорування цінності інших.';

  @override
  String get metric_serial_killer_24_name => 'Емоційна відстороненість';

  @override
  String get metric_serial_killer_24_description =>
      'Виявляє клінічний або відсторонений тон при обговоренні травми чи шкоди.';

  @override
  String get metric_serial_killer_25_name => 'Хижацьке терпіння';

  @override
  String get metric_serial_killer_25_description =>
      'Ідентифікує мову довгострокового планування для майбутньої віктимізації.';

  @override
  String get metric_serial_killer_26_name => 'Тестування меж';

  @override
  String get metric_serial_killer_26_description =>
      'Розпізнає зондування обмежень або опору у потенційних жертв.';

  @override
  String get metric_serial_killer_27_name => 'Мінімізація шкоди';

  @override
  String get metric_serial_killer_27_description =>
      'Позначає применшення серйозності насильницьких або образливих дій.';

  @override
  String get metric_serial_killer_28_name => 'Виправдання насильства';

  @override
  String get metric_serial_killer_28_description =>
      'Виявляє раціоналізацію заподіяння шкоди іншим як необхідного або заслуженого.';

  @override
  String get metric_serial_killer_29_name => 'Нав\'язлива увага';

  @override
  String get metric_serial_killer_29_description =>
      'Ідентифікує повторювані, фіксовані думки про конкретну особу або дію.';

  @override
  String get metric_serial_killer_30_name => 'Холодний розрахунок';

  @override
  String get metric_serial_killer_30_description =>
      'Розпізнає стратегічне, беземоційне планування шкідливих дій.';

  @override
  String get metric_serial_killer_31_name => 'Оманлива чарівність';

  @override
  String get metric_serial_killer_31_description =>
      'Виявляє надмірно втішну або підлесливу мову, що використовується для маніпуляції.';

  @override
  String get metric_serial_killer_32_name => 'Звинувачення жертви';

  @override
  String get metric_serial_killer_32_description =>
      'Виявляє приписування провини цілі за власну віктимізацію.';

  @override
  String get metric_serial_killer_33_name => 'Сигнали ескалації';

  @override
  String get metric_serial_killer_33_description =>
      'Ідентифікує перехід від фантазії до наміру в агресивній мові.';

  @override
  String get metric_serial_killer_34_name => 'Паразитична орієнтація';

  @override
  String get metric_serial_killer_34_description =>
      'Розпізнає мову, що трактує інших як ресурси для експлуатації.';

  @override
  String get metric_serial_killer_35_name => 'Ознаки збудження';

  @override
  String get metric_serial_killer_35_description =>
      'Виявляє фізіологічні індикатори збудження, пов\'язані з насильницькими темами.';

  @override
  String get metric_serial_killer_36_name => 'Перевірка лояльності';

  @override
  String get metric_serial_killer_36_description =>
      'Виявляє вимоги доказів вірності або секретності від спільників.';

  @override
  String get metric_serial_killer_37_name => 'Ритуальна мова';

  @override
  String get metric_serial_killer_37_description =>
      'Ідентифікує шаблонні, церемоніальні фрази навколо насильницьких дій.';

  @override
  String get metric_serial_killer_38_name => 'Твердження про перевагу';

  @override
  String get metric_serial_killer_38_description =>
      'Розпізнає заяви про перебування вище моральних або правових обмежень.';

  @override
  String get metric_serial_killer_39_name => 'Емоційний вакуум';

  @override
  String get metric_serial_killer_39_description =>
      'Виявляє відсутність емоційних слів у контекстах, що вимагають емпатії.';

  @override
  String get metric_serial_killer_40_name => 'Хижацька цікавість';

  @override
  String get metric_serial_killer_40_description =>
      'Виявляє зондувальні запитання про страхи або вразливості цілі.';

  @override
  String get metric_serial_killer_41_name => 'Заглушення загроз';

  @override
  String get metric_serial_killer_41_description =>
      'Виявляє попередження, спрямовані на запобігання розголошенню або повідомленню.';

  @override
  String get metric_serial_killer_42_name => 'Дегуманізуючі порівняння';

  @override
  String get metric_serial_killer_42_description =>
      'Розпізнає прирівнювання людей до тварин, об\'єктів або нелюдських істот.';

  @override
  String get metric_serial_killer_43_name => 'Мова контролю';

  @override
  String get metric_serial_killer_43_description =>
      'Визначає наказовий або командний тон, спрямований на домінування над іншими.';

  @override
  String get metric_serial_killer_44_name => 'Садистські деталі';

  @override
  String get metric_serial_killer_44_description =>
      'Виявляє надмірну увагу до графічного болю або страждань в оповідях.';

  @override
  String get metric_serial_killer_45_name => 'Маніпулятивна емпатія';

  @override
  String get metric_serial_killer_45_description =>
      'Ідентифікує удавану турботу для зниження захисту цілі.';

  @override
  String get metric_serial_killer_46_name => 'Хижий погляд';

  @override
  String get metric_serial_killer_46_description =>
      'Розпізнає мову, що описує інтенсивне, вторгливе спостереження за цілями.';

  @override
  String get metric_serial_killer_47_name => 'Насильницька ідентичність';

  @override
  String get metric_serial_killer_47_description =>
      'Визначає самоідентифікацію як хижака, вбивці або монстра.';

  @override
  String get metric_serial_killer_48_name => 'Трепет полювання';

  @override
  String get metric_serial_killer_48_description =>
      'Виявляє збудження в процесі стеження або переслідування жертв.';

  @override
  String get metric_serial_killer_49_name => 'Компульсивне зізнання';

  @override
  String get metric_serial_killer_49_description =>
      'Ідентифікує потяг до розкриття насильницьких дій для психологічного полегшення.';

  @override
  String get metric_serial_killer_50_name => 'Мова остаточності';

  @override
  String get metric_serial_killer_50_description =>
      'Розпізнає посилання на завершення, вбивство або постійне замовчування цілей.';

  @override
  String get packNarcissistLabel => 'Нарцис';

  @override
  String get packSerialKillerLabel => 'Серійний вбивця';

  @override
  String get expansionPacksPurchased => 'Придбані пакети розширення:';

  @override
  String get expansionPacksStillAvailable => 'Пакети розширення ще доступні';

  @override
  String get metricsOwned => 'Метрики у власності';

  @override
  String get metricsStillAvailable => 'Метрики ще доступні';

  @override
  String get getMore => 'Отримати більше!';

  @override
  String get standardPackTitle => 'Стандартний пакет';

  @override
  String get goodPackTitle => 'Добрий пакет';

  @override
  String get badPackTitle => 'Поганий пакет';

  @override
  String get uglyPackTitle => 'Жахливий пакет';

  @override
  String get narcissistPackTitle => 'Пакет Нарцис';

  @override
  String get serialKillerPackTitle => 'Пакет Маніяк';

  @override
  String get customMetricsTitle => 'Користувацькі метрики';

  @override
  String metricsCountSubtitle(Object count) {
    return '$count метрик';
  }

  @override
  String metricsAddonSubtitle(Object count) {
    return '$count метрик додаток';
  }

  @override
  String metricSingular(Object count) {
    return '$count метрика';
  }

  @override
  String metricPlural(Object count) {
    return '$count метрик';
  }

  @override
  String get viewMembershipOptions => 'View Membership Options';

  @override
  String get metricExpansionPacksTitle => 'Metric Expansion Packs';

  @override
  String get oneTimePurchasesSubtitle =>
      'One-time purchases — additional metrics forever';

  @override
  String get unlockGoodPackButton => 'Unlock The Good Pack';

  @override
  String get unlockBadPackButton => 'Unlock The Bad Pack';

  @override
  String get unlockUglyPackButton => 'Unlock The Ugly Pack';

  @override
  String get unlockNarcissistPackButton => 'Unlock Narcissist Pack';

  @override
  String get unlockSerialKillerPackButton => 'Unlock Serial Killer Pack';

  @override
  String get goodPackBenefit1 => '100 healthy relationship metrics';

  @override
  String get goodPackBenefit2 => 'Positive communication patterns';

  @override
  String get goodPackBenefit3 => 'Appreciation, empathy & trust signals';

  @override
  String get goodPackBenefit4 => 'One-time purchase — yours forever';

  @override
  String get goodPackBenefit5 => 'Unlocks instantly after purchase';

  @override
  String get badPackBenefit1 => '100 warning-sign relationship metrics';

  @override
  String get badPackBenefit2 => 'Spot manipulation & dismissal patterns';

  @override
  String get badPackBenefit3 => 'Guilt-tripping, stonewalling & more';

  @override
  String get badPackBenefit4 => 'One-time purchase — yours forever';

  @override
  String get badPackBenefit5 => 'Unlocks instantly after purchase';

  @override
  String get uglyPackBenefit1 => '100 severe red-flag abuse metrics';

  @override
  String get uglyPackBenefit2 => 'Identify coercion, threats & control';

  @override
  String get uglyPackBenefit3 => 'Trauma bonding & isolation indicators';

  @override
  String get uglyPackBenefit4 => 'One-time purchase — yours forever';

  @override
  String get uglyPackBenefit5 => 'Unlocks instantly after purchase';

  @override
  String get narcissistPackBenefit1 => '50 narcissistic behavior metrics';

  @override
  String get narcissistPackBenefit2 => 'Detect gaslighting & love-bombing';

  @override
  String get narcissistPackBenefit3 => 'Hoovering & devaluation patterns';

  @override
  String get narcissistPackBenefit4 => 'One-time purchase — yours forever';

  @override
  String get narcissistPackBenefit5 => 'Unlocks instantly after purchase';

  @override
  String get serialKillerPackBenefit1 => '50 extreme danger indicators';

  @override
  String get serialKillerPackBenefit2 => 'Detect predatory & violent language';

  @override
  String get serialKillerPackBenefit3 => 'Psychopathy & sadism markers';

  @override
  String get serialKillerPackBenefit4 => 'One-time purchase — yours forever';

  @override
  String get serialKillerPackBenefit5 => 'Unlocks instantly after purchase';

  @override
  String get allPacksOwned => 'Всі пакети розширення у власності!';

  @override
  String get restorePurchases => 'Відновити Покупки';

  @override
  String get restorePurchasesButton => 'Відновити Попередні Покупки';

  @override
  String get restorePurchasesSuccess => 'Покупки успішно відновлено!';

  @override
  String get restorePurchasesError =>
      'Не вдалося відновити покупки. Будь ласка, спробуйте ще раз.';

  @override
  String get restorePurchasesNoneFound => 'Попередні покупки не знайдено.';

  @override
  String get discordAddonPopupTitle => 'Функція Discord';

  @override
  String get discordAddonPopupMessage => 'Ця функція доступна як додаток.';

  @override
  String get discordAccordionTitle => 'Інтеграція Discord';

  @override
  String get discordAccordionSubtitle => 'Підключити сервери Discord';

  @override
  String get selectDiscord => 'Вибрати Discord';

  @override
  String get enableDiscord => 'Увімкнути Discord';

  @override
  String get aboutTitle => 'About';

  @override
  String get aboutDescription =>
      'AIRTA (AI Relationship Toxicity Analyzer) helps you identify unhealthy patterns in your relationships through AI-powered conversation analysis. Our mission is to provide insights that promote healthier, more balanced relationships.';

  @override
  String get contactUs => 'Contact Us';

  @override
  String get supportEmail => 'Support';

  @override
  String get supportEmailDesc => 'Get help with using the app';

  @override
  String get businessEmail => 'Business';

  @override
  String get businessEmailDesc => 'Partnerships and inquiries';

  @override
  String get privacyEmail => 'Privacy';

  @override
  String get privacyEmailDesc => 'Data and privacy questions';

  @override
  String get importantLinks => 'Links';

  @override
  String get website => 'Website';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get github => 'GitHub';

  @override
  String get allRightsReserved => 'All rights reserved.';

  @override
  String get packTheGood => 'Хороше';

  @override
  String get packTheBad => 'Погане';

  @override
  String get packTheUgly => 'Потворне';

  @override
  String get packTheNarcissist => 'Нарцисист';

  @override
  String get metricsExpansionPack => 'Розширений набір метрик';

  @override
  String purchaseTitle(String title) {
    return 'Придбати $title';
  }

  @override
  String buyForPrice(String price) {
    return 'Купити за $price';
  }

  @override
  String get processingPurchase => 'Обробка покупки...';

  @override
  String get waitingForStoreConfirmation =>
      'Очікування підтвердження магазину...';

  @override
  String get myMetricList => 'Мій список метрик';

  @override
  String get botTokenSaved => 'Токен бота успішно збережено';

  @override
  String failedToSaveError(String error) {
    return 'Не вдалося зберегти: $error';
  }

  @override
  String get connectionTestNotImplemented =>
      'Тест підключення ще не реалізовано';

  @override
  String get pasteDiscordBotTokenHint =>
      'Вставте сюди токен вашого Discord-бота';

  @override
  String get botTokenLabel => 'Токен бота';

  @override
  String get botConfigButton => 'Налаштування бота';

  @override
  String get customMetricPurchasePlaceholder =>
      'Тут розпочнеться покупка користувацької метрики';

  @override
  String get configureBotToken => 'Налаштувати токен бота';

  @override
  String get retryButton => 'Повторити';

  @override
  String get ownerLabel => 'Власник';

  @override
  String get noMessagesInChannel => 'У цьому каналі повідомлень не знайдено';

  @override
  String failedToImportError(String error) {
    return 'Не вдалося імпортувати: $error';
  }

  @override
  String get proMembershipUpsell => 'Підписка Pro — \$9.99/міс';

  @override
  String unlockForPrice(String price) {
    return 'Розблокувати за \$$price';
  }

  @override
  String get startCapture => 'Почати захоплення';

  @override
  String get finishAndProcess => 'Завершити та обробити';

  @override
  String get cancelButton => 'Скасувати';

  @override
  String get processScreenshots => 'Обробити знімки екрана';

  @override
  String get startOver => 'Почати знову';

  @override
  String get capturingStatus => 'Захоплення...';

  @override
  String get captureComplete => 'Захоплення завершено';

  @override
  String get errorDialogTitle => 'Помилка';

  @override
  String failedToLoadConversation(String error) {
    return 'Не вдалося завантажити розмову: $error';
  }

  @override
  String get selectConversationTitle => 'Вибрати розмову';

  @override
  String get platformCredentialsTitle => 'Облікові дані платформи';

  @override
  String get saveCredentialsTooltip => 'Зберегти облікові дані';

  @override
  String get upgradeToProPlusTitle => 'Перейти на Pro Plus';

  @override
  String get upgradeNowButton => 'Оновити зараз';

  @override
  String get selectLanguageTooltip => 'Вибрати мову';

  @override
  String get nextSizeButton => 'Наступний розмір';

  @override
  String get startSequenceButton => 'Почати послідовність';

  @override
  String get nextSizeInstruction =>
      'Натисніть «Наступний розмір» для наступного виміру';

  @override
  String get okButton => 'Гаразд';

  @override
  String get noMessagesInDateRangeBody =>
      'No messages were found in the selected date range. Try adjusting the date range.';

  @override
  String get credentialsSavedSuccess => 'Credentials saved successfully';

  @override
  String errorSavingCredentials(String error) {
    return 'Error saving credentials: $error';
  }

  @override
  String get credentialsSecurityInfo =>
      'Your credentials are stored securely on this device only and are never uploaded to our servers.';

  @override
  String get savingButton => 'Saving...';

  @override
  String get saveAllCredentials => 'Save Credentials';

  @override
  String get proPlusLabel => 'Pro+';

  @override
  String get upgradeButton => 'Upgrade';

  @override
  String get usernameLabel => 'Username';

  @override
  String get passwordLabel => 'Password';

  @override
  String get upgradeToProPlusBody =>
      'Upgrade to Pro Plus to access third-party platform integrations and advanced features.';

  @override
  String get noConversationsFoundBody =>
      'No conversations were found. Make sure your credentials are correct and try again.';

  @override
  String get tileMyAccountTitle => 'Мій Акаунт';

  @override
  String get tileMyAccountDesc =>
      'Членство, реферали, покупки, продажі та ліцензія розробника';

  @override
  String get tileReferFriendsTitle => 'Запросити Друзів\nБезкоштовний Місяць';

  @override
  String get tileReferFriendsDesc =>
      'Запросіть 5 друзів, які запустять звіт, і отримайте безкоштовний місяць Standard!';

  @override
  String get tileUserPacksTitle => 'Пакети Метрик\nвід Користувачів';

  @override
  String get tileUserPacksDesc =>
      'Переглядайте та купуйте пакети метрик, створені спільнотою. Заробляйте кредити, надсилаючи власні!';

  @override
  String get tileBrowseButton => 'Переглянути';

  @override
  String get purchaseDialogCancel => 'Скасувати';

  @override
  String installedPacksAccordionSubtitle(int count) {
    return '$count Метрик — Пакет Спільноти';
  }
}
