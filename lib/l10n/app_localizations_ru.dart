// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'ИИ-анализатор токсичности отношений';

  @override
  String get psychologicalMetrics => 'Психологические метрики';

  @override
  String get metricsDescription =>
      'Меньшее количество выбранных метрик дает более глубокий и сконцентрированный анализ этого поведения. Большее количество выбранных метрик дает более широкий отчет с меньшей детализацией по каждой метрике.';

  @override
  String get selectSMS => 'Выбрать SMS / RCS Чат';

  @override
  String get selectDiscordChannel => 'Выбрать канал Discord';

  @override
  String get lightMode => 'Светлая';

  @override
  String get darkMode => 'Тёмная';

  @override
  String get discordSetupTitle => 'Как Настроить Discord';

  @override
  String get discordSetupDescription =>
      'Следуйте этим шагам, чтобы включить анализ каналов Discord в приложении:';

  @override
  String get discordStep1Title => 'Создать Бот Discord';

  @override
  String get discordStep1Description =>
      'Перейдите на discord.com/developers, создайте новое приложение и добавьте бота. Скопируйте токен бота.';

  @override
  String get discordStep2Title => 'Включить Привилегии Бота';

  @override
  String get discordStep2Description =>
      'В настройках бота включите \'Message Content Intent\' и \'Server Members Intent\'.';

  @override
  String get discordStep3Title => 'Пригласить Бота на Сервер';

  @override
  String get discordStep3Description =>
      'Используйте генератор URL OAuth2, чтобы пригласить бота на свой сервер Discord с необходимыми разрешениями.';

  @override
  String get discordStep4Title => 'Настроить в Приложении';

  @override
  String get discordStep4Description =>
      'Введите свой токен бота в настройках приложения (обратитесь в поддержку, если нужна помощь).';

  @override
  String get discordStep5Title => 'Выбрать Канал';

  @override
  String get discordStep5Description =>
      'Нажмите \'Выбрать Канал Discord\', выберите свой сервер, затем выберите канал для анализа.';

  @override
  String get gotIt => 'Понятно';

  @override
  String get selectFile => 'Выбрать файл';

  @override
  String get analyzeSelectedMetrics => 'Анализировать выбранные метрики';

  @override
  String get analyze20RandomMetrics => 'Анализировать 20 случайных метрик';

  @override
  String get membershipOptions => 'Варианты подписки';

  @override
  String get free => 'Бесплатно';

  @override
  String get oneTimeUnlock => 'Разовая разблокировка отчета';

  @override
  String get standard => 'Стандарт';

  @override
  String get discordAddon => 'Дополнение Discord';

  @override
  String get analyze => 'Анализировать';

  @override
  String get report => 'Отчет';

  @override
  String get pdfReport => 'PDF-отчет';

  @override
  String get openPdf => 'Открыть PDF';

  @override
  String get sharePdf => 'Поделиться PDF';

  @override
  String get printPdf => 'Печать PDF';

  @override
  String get closePdfPreview => 'Закрыть окно предпросмотра PDF';

  @override
  String get openPdfPreview => 'Открыть окно предпросмотра PDF';

  @override
  String get pdfPreviewDescription =>
      'Встроенное окно PDF изначально закрыто, чтобы отчет оставался компактным.';

  @override
  String get notNow => 'Не сейчас';

  @override
  String get unlockThisReport => 'Разблокировать этот отчет - \$20';

  @override
  String get joinStandard => 'Подписаться на Стандарт - \$9.99/мес';

  @override
  String get instantUnlockTitle => 'Мгновенная разблокировка отчета - \$20';

  @override
  String get instantUnlockDescription =>
      'Это разовая покупка для разблокировки только текущего отчета. Подписка не требуется. Будущие отчеты потребуют отдельных разблокировок или подписки.\n\nПродолжить оплату?';

  @override
  String get purchaseFor20 => 'Купить за \$20';

  @override
  String get share => 'Поделиться';

  @override
  String get print => 'Печать';

  @override
  String get save => 'Сохранить';

  @override
  String get cancel => 'Отмена';

  @override
  String get ok => 'ОК';

  @override
  String get loading => 'Загрузка...';

  @override
  String get error => 'Ошибка';

  @override
  String get success => 'Успешно';

  @override
  String get conversations => 'Беседы';

  @override
  String get messages => 'Сообщения';

  @override
  String get selectConversation => 'Выбрать беседу';

  @override
  String get selectSmsConversation => 'Выбрать SMS / RCS беседу';

  @override
  String get searchConversations => 'Поиск бесед...';

  @override
  String get loadingConversations => 'Загрузка бесед...';

  @override
  String get errorLoadingConversations => 'Ошибка загрузки бесед';

  @override
  String get selectConversationToAnalyze => 'Выберите беседу для анализа';

  @override
  String get analyzeWithSelectedMetrics =>
      'Анализировать с выбранными метриками';

  @override
  String get loadConversationAndSelectMetric =>
      'Загрузите беседу и выберите хотя бы одну метрику';

  @override
  String get selectAtLeastOneMetric =>
      'Для запуска отчета необходимо выбрать хотя бы одну метрику.';

  @override
  String get spinningMetricWheel => 'Вращение колеса метрик...';

  @override
  String get loadConversationToAnalyze => 'Загрузите беседу для анализа';

  @override
  String get noConversationsFound => 'Беседы не найдены';

  @override
  String get permissionsRequired => 'Требуются разрешения';

  @override
  String get smsPermission => 'Текстовые сообщения';

  @override
  String get contactsPermission => 'Контакты';

  @override
  String get smsPermissionDescription =>
      'Для анализа ваших SMS-бесед на предмет шаблонов отношений';

  @override
  String get contactsPermissionDescription =>
      'Для отображения имен контактов вместо номеров телефонов';

  @override
  String get analyzingMessage =>
      'Подождите, пока ваш психологический анализ генерируется ИИ...';

  @override
  String get analyzingStatus => 'Анализ беседы...';

  @override
  String get analyzingSubMessage =>
      'Пожалуйста, будьте терпеливы, этот процесс может занять до минуты в зависимости от скорости вашего соединения и количества выбранных метрик';

  @override
  String get unlockFullReport => 'Разблокировать и показать весь этот отчет';

  @override
  String get fullReportLocked => 'Полный отчет заблокирован';

  @override
  String get upgradeToUnlock =>
      'Обновите свою подписку, чтобы разблокировать полный отчет психологического анализа со всеми метриками и подробными выводами.';

  @override
  String get language => 'Язык';

  @override
  String get english => 'Английский';

  @override
  String get spanish => 'Испанский';

  @override
  String get french => 'Французский';

  @override
  String get german => 'Немецкий';

  @override
  String get italian => 'Итальянский';

  @override
  String get portuguese => 'Португальский';

  @override
  String get dutch => 'Нидерландский';

  @override
  String get russian => 'Русский';

  @override
  String get chinese => 'Китайский';

  @override
  String get japanese => 'Японский';

  @override
  String get korean => 'Корейский';

  @override
  String get arabic => 'Арабский';

  @override
  String get hindi => 'Хинди';

  @override
  String get turkish => 'Турецкий';

  @override
  String get polish => 'Польский';

  @override
  String get ukrainian => 'Украинский';

  @override
  String get runAnotherAnalysis => 'Запустить ещё один анализ?';

  @override
  String get becomeMemberTitle =>
      'Станьте участником, чтобы получить полный отчёт анализа';

  @override
  String get becomeMemberSubtitle =>
      'Выберите уровень доступа, соответствующий беседам и отчётам, которые вам нужно проанализировать.';

  @override
  String get benefitAnalyzeSms => 'Анализ текстовых SMS-сообщений';

  @override
  String get benefitReportPreview => 'Запуск предпросмотра отчёта';

  @override
  String get benefitViewPartialReport => 'Просмотр около 25% отчёта';

  @override
  String get benefitLockedDetails => 'Полные сведения отчёта заблокированы';

  @override
  String get currentFreeAccess => 'Текущий бесплатный доступ';

  @override
  String get benefitUnlockCurrentReport => 'Разблокировать этот полный отчёт';

  @override
  String get benefitNoSubscription => 'Без подписки';

  @override
  String get benefitSavePrintShareThis =>
      'Сохранить, распечатать и поделиться этим отчётом';

  @override
  String get benefitBestSingleAnalysis =>
      'Идеально, если вам нужен только один анализ';

  @override
  String get unlockThisReportShort => 'Разблокировать этот отчёт';

  @override
  String get benefitFullSmsReport => 'Полный отчёт анализа SMS';

  @override
  String get benefitSavePrintSharePdf =>
      'Сохранять, печатать и делиться PDF-отчётами';

  @override
  String get benefitTenReports => '10 отчётов за 24-часовой период';

  @override
  String get benefitBestTextReview =>
      'Идеально для анализа отношений по текстовым сообщениям';

  @override
  String get benefitDateRangeFilter => 'Фильтровать анализ по диапазону дат';

  @override
  String get signUpStandard => 'Подписаться на Стандарт';

  @override
  String get benefitAddToStandard => 'Добавить к подписке Стандарт';

  @override
  String get benefitAnalyzeDiscord => 'Анализ чатов серверов Discord';

  @override
  String get benefitRequiresBot => 'Требуется установка бота';

  @override
  String get benefitBestGamers => 'Идеально для геймеров и сообществ Discord';

  @override
  String get addDiscordAnalysis => 'Добавить анализ Discord';

  @override
  String get requiresStandardMembership => 'Требуется подписка Стандарт';

  @override
  String get comingSoon => 'Скоро';

  @override
  String get comingSoonWithNextUpdate => 'Скоро в следующем обновлении:';

  @override
  String get proMembershipTier => 'Уровень подписки Pro - \$19.99';

  @override
  String get proPlusMembershipTier => 'Уровень подписки Pro-Plus - \$24.99';

  @override
  String get proGetsLabel => 'Pro включает:';

  @override
  String get proGetsDescription =>
      'Анализируйте переписки со всех остальных популярных платформ обмена сообщениями и социальных сетей, таких как:';

  @override
  String get proPlatformsList =>
      'LinkedIn, WhatsApp, Instagram, Facebook Messenger, Telegram, X (Twitter), электронная почта и календарь';

  @override
  String get proPlusGetsLabel => 'Pro-Plus включает:';

  @override
  String get proPlusGetsDescription =>
      'Всё, что есть в Pro, плюс дополнение Discord по сниженной цене.';

  @override
  String get purchaseSuccessfulUnlocked =>
      'Покупка успешна! Отчёт разблокирован.';

  @override
  String get purchaseFailed =>
      'Покупка не удалась. Пожалуйста, попробуйте снова.';

  @override
  String get membershipActivated => 'Подписка активирована!';

  @override
  String get dateRangeFilter => 'Фильтр Диапазона Дат';

  @override
  String get dateRangeOptional => '(необязательно)';

  @override
  String get startDate => 'Начальная Дата';

  @override
  String get endDate => 'Конечная Дата';

  @override
  String get clear => 'Очистить';

  @override
  String get dateRangeRequiresMembership =>
      'Требует Standard подписку или выше';

  @override
  String selectUpToCount(Object current, Object max) {
    return 'Выбрать до $max. Текущий: $current';
  }

  @override
  String get clearSelections => 'Очистить выбор';

  @override
  String analyzeRandomMetrics(Object count) {
    return 'Анализировать $count случайных метрик';
  }

  @override
  String get saveSelections => 'Сохранить Выбор';

  @override
  String get loadSelections => 'Загрузить Выборы';

  @override
  String get saveMetricListName => 'Сохранить Список Метрик';

  @override
  String get enterListName => 'Введите имя для этого списка метрик:';

  @override
  String get chooseSavedMetrics => 'Выберите сохраненный список метрик:';

  @override
  String get noSavedLists =>
      'Нет сохраненных списков метрик для загрузки в данный момент.';

  @override
  String get metricListSaved => 'Список метрик успешно сохранен.';

  @override
  String get metricListLoaded => 'Список метрик успешно загружен.';

  @override
  String get filters => 'Фильтры';

  @override
  String get sortBy => 'Сортировать по:';

  @override
  String get recent => 'Недавние';

  @override
  String get name => 'Имя';

  @override
  String get count => 'Количество';

  @override
  String get namedOnly => 'Только с именем';

  @override
  String get minMessages => 'Мин. сообщений:';

  @override
  String get minimumMessages => 'Минимум сообщений:';

  @override
  String get executiveSummary => 'Исполнительное резюме';

  @override
  String get metricScores => 'Оценки метрик';

  @override
  String get contextualEvidenceExamples => 'Контекстуальные примеры';

  @override
  String get neutralSynthesis => 'Нейтральный синтез';

  @override
  String analysisOfSender(Object sender) {
    return 'Анализ $sender (Отправитель)';
  }

  @override
  String analysisOfReceiver(Object receiver) {
    return 'Анализ $receiver (Получатель)';
  }

  @override
  String get finalConclusion => 'Окончательный вывод';

  @override
  String get metric_1_name => 'Презрение';

  @override
  String get metric_1_description =>
      'Ищет превосходство, отвращение, насмешки, язык закатывания глаз или оскорбления, которые ставят одного партнера ниже другого.';

  @override
  String get metric_2_name => 'Защитная реакция';

  @override
  String get metric_2_description =>
      'Отслеживает рефлексивную самозащиту, контратаки, оправдания и отказ учитывать жалобу другого человека.';

  @override
  String get metric_3_name => 'Блокирование';

  @override
  String get metric_3_description =>
      'Идентифицирует закрытие, отстранение, игнорирование, отказ отвечать или завершение разговоров, чтобы избежать вовлечения.';

  @override
  String get metric_4_name => 'Критика';

  @override
  String get metric_4_description =>
      'Обнаруживает атаки на характер или личность вместо конкретного поведения, потребностей или инцидентов.';

  @override
  String get metric_5_name => 'Индикаторы газлайтинга';

  @override
  String get metric_5_description =>
      'Отмечает попытки заставить кого-то сомневаться в памяти, восприятии, психическом здоровье или легитимности их опыта.';

  @override
  String get metric_6_name => 'Перекладывание вины';

  @override
  String get metric_6_description =>
      'Измеряет, перекладывается ли ответственность на другого партнера вместо прямого признания.';

  @override
  String get metric_7_name => 'Паттерн эскалации';

  @override
  String get metric_7_description =>
      'Оценивает, увеличиваются ли тон, обвинения, интенсивность или угрозы вместо движения к решению.';

  @override
  String get metric_8_name => 'Распознавание попыток исправления';

  @override
  String get metric_8_description =>
      'Проверяет, замечены и приняты ли извинения, юмор, паузы, успокоение или предложения мира.';

  @override
  String get metric_9_name => 'Язык ответственности';

  @override
  String get metric_9_description =>
      'Ищет четкое признание вреда, конкретную ответственность и готовность изменить поведение.';

  @override
  String get metric_10_name => 'Уважение границ';

  @override
  String get metric_10_description =>
      'Оценивает, соблюдаются ли установленные ограничения вокруг времени, конфиденциальности, тела, эмоций или контакта.';

  @override
  String get metric_11_name => 'Индикаторы принудительного контроля';

  @override
  String get metric_11_description =>
      'Отмечает паттерны запугивания, ограничения, мониторинга, зависимости или контроля над выбором и движениями.';

  @override
  String get metric_12_name => 'Язык угроз';

  @override
  String get metric_12_description =>
      'Идентифицирует явные или подразумеваемые угрозы, касающиеся безопасности, оставления, разоблачения, возмездия или наказания.';

  @override
  String get metric_13_name => 'Пренебрежение';

  @override
  String get metric_13_description =>
      'Обнаруживает отмахивание от проблем, отношение к потребностям как к неважным или отказ серьезно относиться к страданиям.';

  @override
  String get metric_14_name => 'Обесценивание';

  @override
  String get metric_14_description =>
      'Измеряет отрицание, насмешки или исправление эмоций другого человека вместо их признания.';

  @override
  String get metric_15_name => 'Выражение эмпатии';

  @override
  String get metric_15_description =>
      'Ищет принятие перспективы, заботу, эмоциональное признание и беспокойство об опыте другого человека.';

  @override
  String get metric_16_name => 'Взаимность';

  @override
  String get metric_16_description =>
      'Оценивает, текут ли внимание, усилия, извинения, компромисс и эмоциональная поддержка в обоих направлениях.';

  @override
  String get metric_17_name => 'Эмоциональная регуляция';

  @override
  String get metric_17_description =>
      'Оценивает способность оставаться заземленным, делать паузу, успокаивать себя и общаться без взрывной реактивности.';

  @override
  String get metric_18_name => 'Сарказм как вред';

  @override
  String get metric_18_description =>
      'Отмечает сарказм, используемый для унижения, наказания, унижения или маскировки враждебности как юмора.';

  @override
  String get metric_19_name => 'Оскорбления';

  @override
  String get metric_19_description =>
      'Идентифицирует пренебрежительные ярлыки, оскорбления, нецензурную лексику, направленную на человека, или атаки на основе идентичности.';

  @override
  String get metric_20_name => 'Паттерн молчания';

  @override
  String get metric_20_description =>
      'Отслеживает использование молчания как наказания, контроля, избегания или отстранения от связи.';

  @override
  String get metric_21_name => 'Рамка ревности';

  @override
  String get metric_21_description =>
      'Оценивает подозрение, собственничество, обвинения или ревность, представленные как доказательство заботы.';

  @override
  String get metric_22_name => 'Давление изоляции';

  @override
  String get metric_22_description =>
      'Отмечает усилия по отделению партнера от друзей, семьи, систем поддержки или внешних перспектив.';

  @override
  String get metric_23_name => 'Индикаторы финансового контроля';

  @override
  String get metric_23_description =>
      'Ищет контроль над деньгами, расходами, занятостью, доступом к счетам или финансовой независимостью.';

  @override
  String get metric_24_name => 'Индикаторы нарушения конфиденциальности';

  @override
  String get metric_24_description =>
      'Обнаруживает шпионаж, требования паролей, проверки устройств, отслеживание местоположения или нарушения конфиденциальности.';

  @override
  String get metric_25_name => 'Специфичность извинений';

  @override
  String get metric_25_description =>
      'Измеряет, называют ли извинения точный вред, влияние и будущую коррекцию вместо того, чтобы оставаться расплывчатыми.';

  @override
  String get metric_26_name => 'Давление прощения';

  @override
  String get metric_26_description =>
      'Отмечает требования двигаться дальше, быстро простить или перестать обсуждать вред до того, как произойдет исправление.';

  @override
  String get metric_27_name => 'Минимизация';

  @override
  String get metric_27_description =>
      'Обнаруживает преуменьшение вреда, называние серьезных проблем драматичными или уменьшение влияния, чтобы избежать ответственности.';

  @override
  String get metric_28_name => 'Проекция';

  @override
  String get metric_28_description =>
      'Ищет обвинения, которые отражают собственное поведение, мотивы или нерешенные чувства говорящего.';

  @override
  String get metric_29_name => 'Паттерн прерывания';

  @override
  String get metric_29_description =>
      'Отслеживает перебивание, разговор поверх других, отказ завершать или контроль над разговорными очередями.';

  @override
  String get metric_30_name => 'Отклонение темы';

  @override
  String get metric_30_description =>
      'Идентифицирует смену темы, подъем несвязанных проблем или избегание основной проблемы.';

  @override
  String get metric_31_name => 'Ориентация на решение';

  @override
  String get metric_31_description =>
      'Измеряет, направлены ли сообщения на решения, ясность, соглашения и следующие шаги.';

  @override
  String get metric_32_name => 'Взаимное решение проблем';

  @override
  String get metric_32_description =>
      'Оценивает совместный язык, общую ответственность, мозговой штурм и готовность найти работоспособные компромиссы.';

  @override
  String get metric_33_name => 'Эмоциональное наводнение';

  @override
  String get metric_33_description =>
      'Обнаруживает перегрузку, панику, закрытие, спираль или неспособность обрабатывать во время конфликта.';

  @override
  String get metric_34_name => 'Сигналы реакции страха';

  @override
  String get metric_34_description =>
      'Ищет успокоение, осторожный выбор слов, ужас, проблемы безопасности или страх реакции партнера.';

  @override
  String get metric_35_name => 'Согласованность утверждений';

  @override
  String get metric_35_description =>
      'Оценивает, остаются ли отчеты внутренне согласованными в сообщениях и во времени.';

  @override
  String get metric_36_name => 'Воспоминание на основе доказательств';

  @override
  String get metric_36_description =>
      'Проверяет, ссылаются ли утверждения на конкретные события, цитаты, временные шкалы или наблюдаемое поведение.';

  @override
  String get metric_37_name => 'Паттерн требования и отстранения';

  @override
  String get metric_37_description =>
      'Отслеживает одного партнера, ищущего ответы или изменения, пока другой избегает, закрывается или уходит.';

  @override
  String get metric_38_name => 'Индикаторы дисбаланса власти';

  @override
  String get metric_38_description =>
      'Отмечает неравную власть принятия решений, страх последствий, зависимость, запугивание или односторонний контроль.';

  @override
  String get metric_39_name => 'Уважительное несогласие';

  @override
  String get metric_39_description =>
      'Измеряет, сохраняет ли конфликт достоинство, любопытство и несогласие без деградации.';

  @override
  String get metric_40_name => 'Цикл разрыва и исправления';

  @override
  String get metric_40_description =>
      'Оценивает, следует ли за конфликтом признание, восстановление связи и фактическое исправление.';

  @override
  String get metric_41_name => 'Отстранение привязанности';

  @override
  String get metric_41_description =>
      'Обнаруживает, что любовь, тепло, секс, внимание или успокоение удерживаются как наказание или рычаг.';

  @override
  String get metric_42_name => 'Ссылки на публичное унижение';

  @override
  String get metric_42_description =>
      'Отмечает угрозы, шутки или действия, которые смущают партнера перед другими.';

  @override
  String get metric_43_name => 'Сигналы конфликта, связанного с веществами';

  @override
  String get metric_43_description =>
      'Ищет использование алкоголя или наркотиков, связанное с агрессией, ненадежностью, конфликтом или вредом.';

  @override
  String get metric_44_name => 'Давление родительского конфликта';

  @override
  String get metric_44_description =>
      'Идентифицирует детей, опеку, родительские роли или родительскую вину, используемые в конфликте или как рычаг.';

  @override
  String get metric_45_name => 'Уважение сексуальных границ';

  @override
  String get metric_45_description =>
      'Оценивает уважение к согласию, давлению, отказу, комфорту, времени и сексуальной автономии.';

  @override
  String get metric_46_name => 'Индикаторы цифрового преследования';

  @override
  String get metric_46_description =>
      'Отслеживает повторяющиеся нежелательные сообщения, спам-звонки, онлайн-давление, слежку или запугивание на основе платформ.';

  @override
  String get metric_47_name => 'Язык мониторинга или слежки';

  @override
  String get metric_47_description =>
      'Отмечает проверку местонахождения, требование доказательств, отслеживание поведения или постоянную проверку.';

  @override
  String get metric_48_name => 'Ориентация на будущее';

  @override
  String get metric_48_description =>
      'Измеряет, обсуждают ли партнеры будущее улучшение, обязательства, планы или конструктивное направление.';

  @override
  String get metric_49_name => 'Сигналы планирования безопасности';

  @override
  String get metric_49_description =>
      'Ищет попытки найти помощь, создать дистанцию, задокументировать вред или спланировать физическую/эмоциональную безопасность.';

  @override
  String get metric_50_name => 'Взаимные попытки деэскалации';

  @override
  String get metric_50_description =>
      'Отслеживает паузы, успокаивающий язык, более мягкий тон, тайм-ауты и попытки обоих партнеров снизить интенсивность.';

  @override
  String get metric_51_name => 'Сигналы надежной привязанности';

  @override
  String get metric_51_description =>
      'Идентифицирует доверие, прямое успокоение, эмоциональную доступность и комфорт с близостью и независимостью.';

  @override
  String get metric_52_name => 'Активация тревожной привязанности';

  @override
  String get metric_52_description =>
      'Отмечает протестное поведение, срочные потребности в успокоении, страх оставления и повышенную чувствительность к дистанции.';

  @override
  String get metric_53_name => 'Дистанцирование избегающей привязанности';

  @override
  String get metric_53_description =>
      'Обнаруживает эмоциональную минимизацию, защиты независимости, отстранение от уязвимости или дискомфорт с потребностями.';

  @override
  String get metric_54_name => 'Сигналы дезорганизованной привязанности';

  @override
  String get metric_54_description =>
      'Ищет циклы приближения-избегания, страх, смешанный с потребностью, хаотические реакции или сбивающие паттерны близости.';

  @override
  String get metric_55_name => 'Эмоциональные предложения и ответы';

  @override
  String get metric_55_description =>
      'Измеряет приглашения к вниманию, комфорту или связи и принимаются ли они или пропускаются.';

  @override
  String get metric_56_name => 'Отстранение от связи';

  @override
  String get metric_56_description =>
      'Отмечает игнорирование, отклонение или отказ отвечать на предложения близости или поддержки.';

  @override
  String get metric_57_name => 'Противостояние связи';

  @override
  String get metric_57_description =>
      'Обнаруживает враждебные или карательные реакции на попытки привязанности, уязвимости или исправления.';

  @override
  String get metric_58_name => 'Позитивное переопределение настроения';

  @override
  String get metric_58_description =>
      'Ищет щедрость, пользу сомнения, нежность и интерпретацию конфликта через заботу.';

  @override
  String get metric_59_name => 'Негативное переопределение настроения';

  @override
  String get metric_59_description =>
      'Отмечает предположение о плохих намерениях, негативную интерпретацию нейтральных сообщений и устойчивую враждебную рамку.';

  @override
  String get metric_60_name => 'Паттерн жесткого начала';

  @override
  String get metric_60_description =>
      'Идентифицирует разговоры, которые начинаются с обвинения, атаки, презрения или вины вместо просьбы.';

  @override
  String get metric_61_name => 'Паттерн мягкого начала';

  @override
  String get metric_61_description =>
      'Ищет мягкие открытия с использованием чувств, потребностей, конкретных запросов и не обвиняющего языка.';

  @override
  String get metric_62_name => 'Физиологическое самоуспокоение';

  @override
  String get metric_62_description =>
      'Оценивает попытки сделать паузу, дышать, взять пространство или регулировать тело перед продолжением конфликта.';

  @override
  String get metric_63_name => 'Паттерн избегания конфликта';

  @override
  String get metric_63_description =>
      'Отслеживает повторяющееся избегание необходимых тем, дискомфорт, несогласие или эмоциональную честность.';

  @override
  String get metric_64_name => 'Волатильный стиль конфликта';

  @override
  String get metric_64_description =>
      'Обнаруживает конфликт высокой интенсивности с прямым выражением, который может все еще включать вовлечение и исправление.';

  @override
  String get metric_65_name => 'Валидирующий стиль конфликта';

  @override
  String get metric_65_description =>
      'Измеряет, признают ли партнеры перспективу друг друга, будучи несогласными.';

  @override
  String get metric_66_name => 'Враждебный стиль конфликта';

  @override
  String get metric_66_description =>
      'Отмечает частую критику, презрение, защитность, атаки и противоречивую рамку.';

  @override
  String get metric_67_name => 'Паттерн враждебного отстранения';

  @override
  String get metric_67_description =>
      'Идентифицирует холодную враждебность, эмоциональное отстранение, презрение и низкую мотивацию исправления.';

  @override
  String get metric_68_name => 'Готовность к компромиссу';

  @override
  String get metric_68_description =>
      'Ищет гибкость, переговоры, предложения среднего пути и жертвы, которые уважают обе потребности.';

  @override
  String get metric_69_name => 'Принятие влияния';

  @override
  String get metric_69_description =>
      'Измеряет открытость к влиянию чувств, потребностей или перспективы партнера.';

  @override
  String get metric_70_name => 'Сигналы тупикового конфликта';

  @override
  String get metric_70_description =>
      'Отмечает повторяющиеся нерешенные проблемы, связанные с ценностями, мечтами, идентичностью или хронической несовместимостью.';

  @override
  String get metric_71_name => 'Рамка решаемой проблемы';

  @override
  String get metric_71_description =>
      'Обнаруживает практические, конкретные определения проблем, которые могут привести к конкретным соглашениям.';

  @override
  String get metric_72_name => 'Ссылки на общее значение';

  @override
  String get metric_72_description =>
      'Ищет ценности, ритуалы, цели, воспоминания или язык идентичности, который создает общую историю отношений.';

  @override
  String get metric_73_name => 'Осознанность карты любви';

  @override
  String get metric_73_description =>
      'Оценивает знание внутреннего мира партнера, стрессоров, предпочтений, страхов и повседневной жизни.';

  @override
  String get metric_74_name => 'Нежность и восхищение';

  @override
  String get metric_74_description =>
      'Идентифицирует признательность, уважение, тепло, комплименты, благодарность и позитивное отношение.';

  @override
  String get metric_75_name => 'Дисбаланс эмоционального труда';

  @override
  String get metric_75_description =>
      'Отмечает одного партнера, несущего непропорциональное планирование, успокоение, запоминание, объяснение или поддержание отношений.';

  @override
  String get metric_76_name => 'Отклонение ментальной нагрузки';

  @override
  String get metric_76_description =>
      'Обнаруживает минимизацию невидимой работы по планированию, домашнюю координацию, планирование или отслеживание ответственности.';

  @override
  String get metric_77_name => 'Сигналы вооруженной некомпетентности';

  @override
  String get metric_77_description =>
      'Ищет утверждение о неспособности, путанице или беспомощности, чтобы избежать справедливой ответственности.';

  @override
  String get metric_78_name => 'Чувствительность к триггерам травмы';

  @override
  String get metric_78_description =>
      'Измеряет осознанность триггеров, реакции на травму и осторожное обращение с уязвимыми темами.';

  @override
  String get metric_79_name => 'Сигналы гипербдительности';

  @override
  String get metric_79_description =>
      'Отмечает сканирование на опасность, чрезмерный мониторинг тона, страх ошибок или постоянную эмоциональную бдительность.';

  @override
  String get metric_80_name => 'Язык страха оставления';

  @override
  String get metric_80_description =>
      'Обнаруживает страх быть оставленным, замененным, проигнорированным, отброшенным или эмоционально покинутым.';

  @override
  String get metric_81_name => 'Паттерн поиска успокоения';

  @override
  String get metric_81_description =>
      'Отслеживает повторяющиеся запросы доказательства любви, обязательства, безопасности или продолжающегося интереса.';

  @override
  String get metric_82_name => 'Цикл преследователь-дистанцирующийся';

  @override
  String get metric_82_description =>
      'Идентифицирует одного партнера, эскалирующего преследование близости, пока другой увеличивает дистанцию.';

  @override
  String get metric_83_name => 'Накопление обиды';

  @override
  String get metric_83_description =>
      'Ищет хранящиеся обиды, повторяющиеся ссылки на прошлое, горечь и нерешенный эмоциональный долг.';

  @override
  String get metric_84_name => 'Поведение подсчета очков';

  @override
  String get metric_84_description =>
      'Отмечает транзакционный подсчет ошибок, услуг, жертв или ошибок для получения рычага.';

  @override
  String get metric_85_name => 'Условная привязанность';

  @override
  String get metric_85_description =>
      'Обнаруживает любовь, одобрение, доступ или тепло, предлагаемые только при достижении соответствия.';

  @override
  String get metric_86_name => 'Индикаторы любовной бомбардировки';

  @override
  String get metric_86_description =>
      'Отмечает интенсивную привязанность, обещания, давление или идеализацию, используемые для ускорения привязанности или контроля.';

  @override
  String get metric_87_name => 'Попытки хуверинга';

  @override
  String get metric_87_description =>
      'Идентифицирует попытки вернуть кого-то через вину, ностальгию, обещания, кризисы или внезапную привязанность.';

  @override
  String get metric_88_name => 'Паттерн DARVO';

  @override
  String get metric_88_description =>
      'Обнаруживает отрицание, атаку и инверсию жертва-обидчик при конфронтации с вредом.';

  @override
  String get metric_89_name => 'Паттерн позиции жертвы';

  @override
  String get metric_89_description =>
      'Отмечает повторяющуюся само-жертвенность, которая избегает ответственности или перенаправляет внимание от причиненного вреда.';

  @override
  String get metric_90_name => 'Рамка морального превосходства';

  @override
  String get metric_90_description =>
      'Ищет праведность, претензии на чистоту или этическое превосходство, используемое для доминирования в конфликте.';

  @override
  String get metric_91_name => 'Убийство характера';

  @override
  String get metric_91_description =>
      'Обнаруживает широкие атаки на идентичность, целостность, психическое здоровье или ценность вместо конкретного поведения.';

  @override
  String get metric_92_name => 'Индикаторы триангуляции';

  @override
  String get metric_92_description =>
      'Отмечает привлечение третьих сторон в конфликт для давления, сравнения, валидации или дестабилизации партнера.';

  @override
  String get metric_93_name => 'Давление социального сравнения';

  @override
  String get metric_93_description =>
      'Ищет сравнения с бывшими, друзьями, другими парами или идеалами, используемые для стыда или принуждения.';

  @override
  String get metric_94_name => 'Поддержка автономии';

  @override
  String get metric_94_description =>
      'Измеряет уважение к независимому выбору, дружбе, целям, границам и личному агентству.';

  @override
  String get metric_95_name => 'Уважение согласия и выбора';

  @override
  String get metric_95_description =>
      'Оценивает, принимаются ли решения свободно без давления, вины, угроз или манипуляции.';

  @override
  String get metric_96_name => 'Совместное планирование';

  @override
  String get metric_96_description =>
      'Ищет общее планирование, совместные решения, скоординированные обязанности и практическое выполнение.';

  @override
  String get metric_97_name => 'Выполнение исправления';

  @override
  String get metric_97_description =>
      'Измеряет, отражаются ли обещанные изменения позже в поведении, а не только в словах.';

  @override
  String get metric_98_name => 'Доказательство измененного поведения';

  @override
  String get metric_98_description =>
      'Проверяет наблюдаемые, повторяющиеся действия, показывающие обучение, корректировку или сниженное вредное поведение.';

  @override
  String get metric_99_name => 'Язык эмоциональной безопасности';

  @override
  String get metric_99_description =>
      'Идентифицирует язык, который приглашает к честности, снижает страх, защищает достоинство и успокаивает безопасное выражение.';

  @override
  String get metric_100_name => 'Реляционная амбивалентность';

  @override
  String get metric_100_description =>
      'Обнаруживает неопределенность, смешанное обязательство, сообщения толкай-тянай или неясное желание продолжать.';

  @override
  String get unableToOpenConversations => 'Не удается открыть беседы';

  @override
  String get unableToOpenConversationsBody =>
      'Произошла ошибка при загрузке ваших бесед. Пожалуйста, попробуйте снова.';

  @override
  String get unableToLoadConversationsBody =>
      'Не удается загрузить беседы. Проверьте разрешения и попробуйте снова.';

  @override
  String get errorLoadingConversationsBody =>
      'Ошибка при загрузке бесед. Пожалуйста, попробуйте снова.';

  @override
  String get smsPermissionRequired => 'Требуется разрешение SMS';

  @override
  String get smsPermissionRequiredBody =>
      'Для анализа SMS-бесед нам нужно разрешение на чтение ваших сообщений. Ваша конфиденциальность важна — сообщения анализируются только локально и никогда не сохраняются на наших серверах.';

  @override
  String get grantSmsPermission => 'Предоставить разрешение SMS';

  @override
  String get noSmsConversationsFound => 'SMS-беседы не найдены';

  @override
  String get noConversationsMatchSearch =>
      'Нет бесед, соответствующих вашему поиску';

  @override
  String get noSmsMessagesOnDevice =>
      'У вас нет SMS-сообщений на этом устройстве';

  @override
  String get tryDifferentSearch => 'Попробуйте другой поисковый запрос';

  @override
  String get clearSearch => 'Очистить поиск';

  @override
  String selectedFile(String filename) {
    return 'Выбрано: $filename';
  }

  @override
  String get invalidFile => 'Недопустимый файл';

  @override
  String get fileImport => 'Импорт файла';

  @override
  String get fileImportNotImplemented =>
      'Анализ файлов еще не реализован для этого типа файла.';

  @override
  String get errorPickingFile =>
      'Не удается открыть файл. Пожалуйста, попробуйте снова.';

  @override
  String get readyToCapture => 'Готов к захвату';

  @override
  String get readyToCaptureBody =>
      'Перейдите в приложение сообщений сейчас и начните делать скриншоты.\n\nВернитесь в это приложение, когда закончите, и нажмите \"Завершить и обработать\".';

  @override
  String get noScreenshotsToProcess => 'Нет скриншотов для обработки.';

  @override
  String processingScreenshot(int current, int total) {
    return 'Обработка скриншота $current из $total...';
  }

  @override
  String get noMessagesFound => 'Сообщения не найдены';

  @override
  String get noMessagesFoundBody =>
      'Не удалось извлечь сообщения из скриншотов.\n\nУбедитесь, что скриншоты четко показывают беседу.';

  @override
  String loadedMessages(int count) {
    return '$count сообщений загружено из скриншотов';
  }

  @override
  String get processingError => 'Ошибка обработки';

  @override
  String get processingErrorBody =>
      'Ошибка при обработке скриншотов. Пожалуйста, попробуйте снова.';

  @override
  String metricListSavedAs(String name) {
    return 'Ваши выборы сохранены как \"$name\".';
  }

  @override
  String metricListLoadedName(String name) {
    return 'Выборы \"$name\" были получены и применены.';
  }

  @override
  String conversationLoaded(int count, String name) {
    return '$count сообщений загружено из $name';
  }

  @override
  String get loadButton => 'Загрузить';

  @override
  String get photoPermissionRequired =>
      'Разрешение библиотеки фотографий требуется для обнаружения скриншотов.';

  @override
  String get initializingConnection =>
      'Инициализация безопасного соединения...';

  @override
  String get configurationRequired => 'Требуется конфигурация';

  @override
  String get goBack => 'Назад';

  @override
  String get enableDateRangeFiltering => 'Включить фильтрацию по диапазону дат';

  @override
  String get clearSelectedDateRange => 'Очистить выбранный диапазон дат';

  @override
  String get largeThreadNoticeTitle => 'УВЕДОМЛЕНИЕ ПОЛЬЗОВАТЕЛЮ';

  @override
  String get largeThreadNoticeBody =>
      'При работе с исключительно большими текстовыми потоками некоторые экраны загрузки в этом приложении могут превышать полторы минуты.\n\nПриложение не зависает. Если вы видите вращающийся индикатор состояния, приложение все еще загружается.\n\nПожалуйста, будьте терпеливы в этих случаях, так как время загрузки может быть дольше обычного по сравнению с другими приложениями, особенно при работе с большим набором данных, таким как поток с 50 000 сообщений.';

  @override
  String get neverShowThisAgain => 'Больше не показывать это сообщение';

  @override
  String loadingConversationWith(String name) {
    return 'Загрузка беседы\nс $name…';
  }

  @override
  String get iosCaptureInstructions =>
      '1. Откройте приложение Сообщения и выберите беседу\n2. Прокрутите до самого старого сообщения, которое хотите проанализировать\n3. Нажмите \"Начать захват\" ниже\n4. Делайте скриншоты, прокручивая беседу\n5. Когда закончите, нажмите \"Завершить и обработать\"';

  @override
  String get howToCaptureIosMessages => 'Как захватывать сообщения iOS';

  @override
  String get deepSeekApiKey => 'Ключ API DeepSeek';

  @override
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis =>
      'Введите ваш ключ API DeepSeek для включения ИИ-анализа.';

  @override
  String get getYourApiKeyFrom =>
      'Получите ваш ключ API на: https://platform.deepseek.com';

  @override
  String get apiKey => 'Ключ API';

  @override
  String get skPlaceholder => 'sk-...';

  @override
  String get yourApiKeyIsStoredSecurely =>
      'Ваш ключ API безопасно хранится на вашем устройстве и никогда не передается.';

  @override
  String get pleaseEnterApiKey => 'Пожалуйста, введите ключ API';

  @override
  String get apiKeySavedSuccessfully => 'Ключ API успешно сохранен!';

  @override
  String get pleaseBePatientLongerTextThreads =>
      'Пожалуйста, будьте терпеливы, наборы данных более длинных текстовых потоков загружаются довольно долго';

  @override
  String get almostThereBigOne =>
      'Почти готово, Wow, это должно было быть большим';

  @override
  String get pleaseBePatientLargeDatasets =>
      'Пожалуйста, будьте терпеливы, большие наборы данных могут привести к времени загрузки более полутора минут';

  @override
  String continuingToLoadMassiveThread(String name) {
    return 'Продолжаю загружать массивный поток с $name…';
  }

  @override
  String get noMessagesInDateRange =>
      'Сообщения не найдены в выбранном диапазоне дат. Выберите другие даты или очистите фильтр даты.';

  @override
  String get purchaseCustomMetricTileTitle => 'Купить Пользовательскую Метрику';

  @override
  String get purchaseCustomMetricTileDescription =>
      'За единовременную плату \$4.99 введите имя и определение пользовательской метрики, которые будут навсегда сохранены рядом с вашими другими метриками для использования в любом будущем анализе. Покупайте неограниченное количество пользовательских метрик.';

  @override
  String get purchaseCustomMetricConfirmTitle =>
      'Купить Пользовательскую Метрику';

  @override
  String get purchaseCustomMetricConfirmBody =>
      'С вас будет снята плата \$4.99 (единовременно) для разблокировки одного слота пользовательской метрики.\n\nИмя и определение вашей пользовательской метрики являются постоянными и никогда не могут быть изменены после сохранения, поэтому выбирайте тщательно.';

  @override
  String get purchaseCustomMetricConfirmButton => 'Купить — \$4.99';

  @override
  String get purchaseCustomMetricEnterNameTitle =>
      'Название Пользовательской Метрики';

  @override
  String get purchaseCustomMetricEnterNamePrompt =>
      'Введите название вашей пользовательской метрики:';

  @override
  String get purchaseCustomMetricNameHint => 'Название Метрики';

  @override
  String get purchaseCustomMetricConfirmNameTitle =>
      'Подтвердите Название Метрики';

  @override
  String get purchaseCustomMetricConfirmNameYouEntered => 'Вы ввели:\n\n';

  @override
  String get purchaseCustomMetricConfirmNameWarning =>
      '\n\n⚠️  Это ОКОНЧАТЕЛЬНО и НИКОГДА не может быть изменено.';

  @override
  String get purchaseCustomMetricReenterName => 'Упс — Введите Название Заново';

  @override
  String get purchaseCustomMetricSaveName => 'OK — Сохранить Название Метрики';

  @override
  String purchaseCustomMetricDefineTitleWithName(String name) {
    return 'Определить: $name';
  }

  @override
  String purchaseCustomMetricDefinePromptWithName(String name) {
    return 'Введите значение вашей Пользовательской Метрики: $name';
  }

  @override
  String get purchaseCustomMetricMeaningHint =>
      'Опишите, что означает эта метрика, какие поведения она отслеживает и как применяется к динамике отношений...';

  @override
  String get purchaseCustomMetricReenter => 'Упс — Ввести Заново';

  @override
  String get purchaseCustomMetricSaveMeaning => 'OK — Сохранить Значение';

  @override
  String get purchaseCustomMetricPreviewTitle =>
      'Предпросмотр Вашей Пользовательской Метрики';

  @override
  String get purchaseCustomMetricPreviewSubtitle =>
      'Вот как будет выглядеть ваш блок:';

  @override
  String get purchaseCustomMetricLastChanceWarning =>
      '⚠️  Это ваш ПОСЛЕДНИЙ ШАНС передумать.\nПосле подтверждения название и определение становятся постоянными.';

  @override
  String get purchaseCustomMetricCancelEverything => 'Отменить Всё';

  @override
  String get purchaseCustomMetricCommit =>
      'Подтвердить Пользовательскую Метрику';

  @override
  String purchaseCustomMetricSuccess(String name) {
    return '✓ \"$name\" добавлено в ваши метрики! Теперь вы можете выбрать её для анализа.';
  }

  @override
  String get purchaseCustomMetricProcessingTitle => 'Обработка Покупки...';

  @override
  String get purchaseCustomMetricProcessingBody =>
      'Ожидание подтверждения от магазина.\nПожалуйста, не закрывайте приложение.';

  @override
  String get next => 'Далее';

  @override
  String get cancelNotReady => 'Отмена — Я не был(а) готов(а)';

  @override
  String get packGoodLabel => 'Хороший';

  @override
  String get packBadLabel => 'Плохой';

  @override
  String get packUglyLabel => 'Злой';

  @override
  String get metric_good_1_name => 'Признаки активного слушания';

  @override
  String get metric_good_1_description =>
      'Обнаруживает перефразирование, уточняющие вопросы и демонстрацию понимания точки зрения партнера в тексте.';

  @override
  String get metric_good_2_name => 'Выражение признательности';

  @override
  String get metric_good_2_description =>
      'Определяет конкретную благодарность, признание усилий и положительных качеств или действий партнера.';

  @override
  String get metric_good_3_name => 'Язык одобрения';

  @override
  String get metric_good_3_description =>
      'Ищет утверждения, подтверждающие чувства, опыт, ценность или право партнера на потребности.';

  @override
  String get metric_good_4_name => 'Совместный тон';

  @override
  String get metric_good_4_description =>
      'Оценивает использование «мы», совместного языка решения проблем и представление вопросов как общих задач.';

  @override
  String get metric_good_5_name => 'Интерес к партнёру';

  @override
  String get metric_good_5_description =>
      'Отслеживает вопросы о мыслях, чувствах, дне, предпочтениях или внутреннем мире партнёра.';

  @override
  String get metric_good_6_name => 'Выражение уязвимости';

  @override
  String get metric_good_6_description =>
      'Определяет обмен страхами, неуверенностью, потребностями или эмоциональными истинами без защиты или обвинений.';

  @override
  String get metric_good_7_name => 'Юмор как связь';

  @override
  String get metric_good_7_description =>
      'Выявляет игривый совместный смех, объединяющий партнеров, а не высмеивающий или унижающий.';

  @override
  String get metric_good_8_name => 'Предложение поддержки';

  @override
  String get metric_good_8_description =>
      'Ищет проактивные высказывания, обеспечивающие комфорт, безопасность или уверенность тревожному партнеру.';

  @override
  String get metric_good_9_name => 'Частота комплиментов';

  @override
  String get metric_good_9_description =>
      'Измеряет искренние конкретные комплименты внешности, характеру, способностям или положительным поступкам.';

  @override
  String get metric_good_10_name => 'Эмоциональная доступность';

  @override
  String get metric_good_10_description =>
      'Оценивает отзывчивость на эмоциональные потребности партнера, присутствие в моменты стресса и готовность к взаимодействию.';

  @override
  String get metric_good_11_name => 'Привычка благодарить';

  @override
  String get metric_good_11_description =>
      'Выявляет регулярные выражения благодарности за мелочи, усилия, присутствие или поддержку.';

  @override
  String get metric_good_12_name => 'Поддерживающий язык';

  @override
  String get metric_good_12_description =>
      'Отслеживает высказывания, предлагающие помощь, ободрение, веру в способности партнера или поддержку рядом.';

  @override
  String get metric_good_13_name => 'Мягкое несогласие';

  @override
  String get metric_good_13_description =>
      'Измеряет способность выражать разные мнения, сохраняя уважение, любопытство и отношения.';

  @override
  String get metric_good_14_name => 'Искренность извинений';

  @override
  String get metric_good_14_description =>
      'Обнаруживает искреннее раскаяние, понимание последствий и стремление измениться без оправданий.';

  @override
  String get metric_good_15_name => 'Принятие прощения';

  @override
  String get metric_good_15_description =>
      'Ищет готовность отпустить прошлые обиды, двигаться вперед и восстанавливать доверие после восстановления.';

  @override
  String get metric_good_16_name => 'Инициация качественного времени';

  @override
  String get metric_good_16_description =>
      'Выявляет предложения провести время вместе, спланировать активности или создать моменты связи.';

  @override
  String get metric_good_17_name => 'Сигналы физической привязанности';

  @override
  String get metric_good_17_description =>
      'Отслеживает упоминания прикосновений, объятий, поцелуев или физической близости как проявлений заботы и интимности.';

  @override
  String get metric_good_18_name => 'Распознавание общей радости';

  @override
  String get metric_good_18_description =>
      'Измеряет празднование успехов, достижений, счастья или хороших новостей партнера с искренним энтузиазмом.';

  @override
  String get metric_good_19_name => 'Усилия по разрешению конфликта';

  @override
  String get metric_good_19_description =>
      'Определяет попытки найти решения, пойти на компромисс или восстановить мир после разногласий.';

  @override
  String get metric_good_20_name => 'Проявление терпения';

  @override
  String get metric_good_20_description =>
      'Определяет терпимость к темпу, трудностям, процессу обучения или эмоциональным потребностям партнера.';

  @override
  String get metric_good_21_name => 'Язык принятия перспективы';

  @override
  String get metric_good_21_description =>
      'Ищет высказывания, показывающие понимание точки зрения партнера, его контекста или эмоционального состояния.';

  @override
  String get metric_good_22_name => 'Сигналы надежности';

  @override
  String get metric_good_22_description =>
      'Отслеживает выполнение обещаний, последовательность и надежность.';

  @override
  String get metric_good_23_name => 'Уважение к различиям';

  @override
  String get metric_good_23_description =>
      'Измеряет принятие уникальных черт, предпочтений, мнений и образа жизни партнера.';

  @override
  String get metric_good_24_name => 'Открытость к обратной связи';

  @override
  String get metric_good_24_description =>
      'Определяет восприимчивость к заботам партнера, готовность выслушать критику и желание улучшиться.';

  @override
  String get metric_good_25_name => 'Подтверждение эмоций';

  @override
  String get metric_good_25_description =>
      'Обнаруживает признание того, что чувства партнера реальны, понятны и заслуживают внимания.';

  @override
  String get metric_good_26_name => 'Язык поддержки';

  @override
  String get metric_good_26_description =>
      'Ищет высказывания, которые вселяют уверенность, мотивируют к действию или поддерживают цели партнера.';

  @override
  String get metric_good_27_name => 'Интимное раскрытие';

  @override
  String get metric_good_27_description =>
      'Определяет обмен личными мыслями, мечтами, страхами или секретами, углубляющими эмоциональную связь.';

  @override
  String get metric_good_28_name => 'Сигналы настройки';

  @override
  String get metric_good_28_description =>
      'Измеряет замечание настроения, потребностей или беспокойства партнера без явного указания.';

  @override
  String get metric_good_29_name => 'Позитивное переосмысление';

  @override
  String get metric_good_29_description =>
      'Обнаруживает поиск положительных сторон, возможностей для роста или конструктивных углов в сложных ситуациях.';

  @override
  String get metric_good_30_name => 'Язык обязательств';

  @override
  String get metric_good_30_description =>
      'Отслеживает выражения преданности, долгосрочного мышления и вложений в будущее отношений.';

  @override
  String get metric_good_31_name => 'Демонстрация гибкости';

  @override
  String get metric_good_31_description =>
      'Определяет готовность адаптировать планы, корректировать ожидания или идти на компромисс.';

  @override
  String get metric_good_32_name => 'Защитный язык';

  @override
  String get metric_good_32_description =>
      'Ищет утверждения, показывающие, что безопасность, благополучие и интересы партнера имеют большое значение.';

  @override
  String get metric_good_33_name => 'Празднование вех';

  @override
  String get metric_good_33_description =>
      'Измеряет признание годовщин, достижений или значимых моментов вместе.';

  @override
  String get metric_good_34_name => 'Конструктивная обратная связь';

  @override
  String get metric_good_34_description =>
      'Обнаруживает предложения по улучшению, которые являются добрыми, конкретными и ориентированными на рост.';

  @override
  String get metric_good_35_name => 'Присутствие в трудные времена';

  @override
  String get metric_good_35_description =>
      'Определяет вовлеченность, когда партнер испытывает трудности, горе или сталкивается с проблемами.';

  @override
  String get metric_good_36_name => 'Выражение восхищения';

  @override
  String get metric_good_36_description =>
      'Отслеживает искреннее уважение к характеру, силе, интеллекту или стойкости партнера.';

  @override
  String get metric_good_37_name => 'Признаки игривости';

  @override
  String get metric_good_37_description =>
      'Ищет легкие подшучивания, внутренние шутки или веселые взаимодействия, укрепляющие связь.';

  @override
  String get metric_good_38_name => 'Эмпатическое зеркалирование';

  @override
  String get metric_good_38_description =>
      'Измеряет отражение эмоций партнера для проявления понимания и подтверждения.';

  @override
  String get metric_good_39_name => 'Язык принятия';

  @override
  String get metric_good_39_description =>
      'Определяет принятие партнера таким, какой он есть, включая недостатки, без требований измениться.';

  @override
  String get metric_good_40_name => 'Поддерживающее присутствие';

  @override
  String get metric_good_40_description =>
      'Определяет присутствие без попыток исправить, предлагая утешение через слушание и поддержку.';

  @override
  String get metric_good_41_name => 'Искренний интерес';

  @override
  String get metric_good_41_description =>
      'Отслеживает задавание уточняющих вопросов и запоминание деталей о жизни и заботах партнера.';

  @override
  String get metric_good_42_name => 'Взаимные усилия';

  @override
  String get metric_good_42_description =>
      'Измеряет равный вклад обоих партнеров в эмоциональную работу, планирование и поддержание отношений.';

  @override
  String get metric_good_43_name => 'Язык прощения';

  @override
  String get metric_good_43_description =>
      'Ищет отказ от обид, предоставление второго шанса и выбор двигаться дальше после боли.';

  @override
  String get metric_good_44_name => 'Признаки взаимного уважения';

  @override
  String get metric_good_44_description =>
      'Определяет отношение к партнеру как к равному, уважение его мнения и ценности его вклада.';

  @override
  String get metric_good_45_name => 'Эмоциональная честность';

  @override
  String get metric_good_45_description =>
      'Определяет честное выражение чувств без манипуляций, преувеличений или стратегического утаивания.';

  @override
  String get metric_good_46_name => 'Поддерживающее слушание';

  @override
  String get metric_good_46_description =>
      'Оценивает способность позволить партнеру полностью высказаться, не перебивая, не осуждая и не предлагая немедленных решений.';

  @override
  String get metric_good_47_name => 'Ласковые прозвища';

  @override
  String get metric_good_47_description =>
      'Отслеживает использование ласковых обращений, передающих теплоту и близость.';

  @override
  String get metric_good_48_name => 'Совместный смех';

  @override
  String get metric_good_48_description =>
      'Выявляет моменты взаимного юмора и радости, создающие положительные связи.';

  @override
  String get metric_good_49_name => 'Внимательные жесты';

  @override
  String get metric_good_49_description =>
      'Ищет небольшие проявления заботы, запоминание предпочтений или действия, направленные на счастье партнера.';

  @override
  String get metric_good_50_name => 'Уверенность в партнере';

  @override
  String get metric_good_50_description =>
      'Определяет веру в способности, потенциал и умение партнера справляться с трудностями.';

  @override
  String get metric_good_51_name => 'Здоровая взаимозависимость';

  @override
  String get metric_good_51_description =>
      'Измеряет баланс между близостью и независимостью, поддержку автономии друг друга.';

  @override
  String get metric_good_52_name => 'Снижение конфликта';

  @override
  String get metric_good_52_description =>
      'Выявляет мягкий язык, паузы или предложения решений для успокоения горячих споров.';

  @override
  String get metric_good_53_name => 'Искренние извинения';

  @override
  String get metric_good_53_description =>
      'Отслеживает полное признание ошибки без преуменьшения, защиты или перекладывания вины.';

  @override
  String get metric_good_54_name => 'Предложение эмоциональной поддержки';

  @override
  String get metric_good_54_description =>
      'Ищет проактивные проверки, вопросы о состоянии партнера и предложения помощи.';

  @override
  String get metric_good_55_name => 'Уважение границ';

  @override
  String get metric_good_55_description =>
      'Измеряет уважение к заявленным границам партнёра при сохранении собственных здоровых границ.';

  @override
  String get metric_good_56_name => 'Позитивное ожидание';

  @override
  String get metric_good_56_description =>
      'Выявляет волнение по поводу совместного будущего, планирование и ожидание общих событий.';

  @override
  String get metric_good_57_name => 'Сигналы внимания';

  @override
  String get metric_good_57_description =>
      'Определяет запоминание важных дат, предпочтений и деталей, показывающих, что партнёр важен.';

  @override
  String get metric_good_58_name => 'Поощрение роста';

  @override
  String get metric_good_58_description =>
      'Отслеживает поддержку личностного развития, обучения и достижения целей партнёра.';

  @override
  String get metric_good_59_name => 'Нежный язык';

  @override
  String get metric_good_59_description =>
      'Ищет мягкие, заботливые слова, передающие нежность и эмоциональное тепло.';

  @override
  String get metric_good_60_name => 'Взаимная ответственность';

  @override
  String get metric_good_60_description =>
      'Измеряет принятие обоими партнёрами ответственности за свои действия и их последствия.';

  @override
  String get metric_good_61_name => 'Прославление партнёра';

  @override
  String get metric_good_61_description =>
      'Выявляет публичное или личное выражение гордости, радости или восхищения партнёром.';

  @override
  String get metric_good_62_name => 'Постоянная привязанность';

  @override
  String get metric_good_62_description =>
      'Определяет регулярные проявления любви, не зависящие от поведения или соответствия ожиданиям.';

  @override
  String get metric_good_63_name => 'Эмоциональная настройка';

  @override
  String get metric_good_63_description =>
      'Отслеживает ощущение и реакцию на тонкие изменения эмоционального состояния партнёра.';

  @override
  String get metric_good_64_name => 'Совместное принятие решений';

  @override
  String get metric_good_64_description =>
      'Измеряет совместное обсуждение вариантов и принятие решений, учитывающих потребности обоих партнёров.';

  @override
  String get metric_good_65_name => 'Уверенность без требований';

  @override
  String get metric_good_65_description =>
      'Определяет проявление комфорта и безопасности без необходимости заслуживать их со стороны партнёра.';

  @override
  String get metric_good_66_name => 'Аутентичная связь';

  @override
  String get metric_good_66_description =>
      'Выявляет искреннее присутствие, реальное разделение и отказ от притворства во взаимодействии.';

  @override
  String get metric_good_67_name => 'Взаимное поощрение';

  @override
  String get metric_good_67_description =>
      'Определяет, как оба партнёра поддерживают друг друга и ценят усилия, а не только результаты.';

  @override
  String get metric_good_68_name => 'Уважительные вопросы';

  @override
  String get metric_good_68_description =>
      'Отслеживает вопросы о точке зрения партнёра с искренним любопытством, а не допросом.';

  @override
  String get metric_good_69_name => 'Любящая последовательность';

  @override
  String get metric_good_69_description =>
      'Измеряет одинаковое поведение в хорошие и трудные времена, надёжность в проявлении привязанности.';

  @override
  String get metric_good_70_name => 'Эмоциональная взаимность';

  @override
  String get metric_good_70_description =>
      'Определяет, как оба партнёра делятся чувствами, потребностями и уязвимостями сбалансированным образом.';

  @override
  String get metric_good_71_name => 'Радостное присутствие';

  @override
  String get metric_good_71_description =>
      'Выявляет искреннюю радость от компании партнёра и энтузиазм по поводу совместного времени.';

  @override
  String get metric_good_72_name => 'Конструктивный диалог';

  @override
  String get metric_good_72_description =>
      'Определяет разговоры, направленные на понимание, а не на победу или доказательство правоты.';

  @override
  String get metric_good_73_name => 'Защитная поддержка';

  @override
  String get metric_good_73_description =>
      'Отслеживает защиту партнера, отстаивание его интересов и приоритет его благополучия.';

  @override
  String get metric_good_74_name => 'Осознанное общение';

  @override
  String get metric_good_74_description =>
      'Измеряет продуманный выбор слов, учет последствий перед речью и осознанное общение.';

  @override
  String get metric_good_75_name => 'Вклад в отношения';

  @override
  String get metric_good_75_description =>
      'Оценивает время, энергию и ресурсы, вложенные в развитие отношений.';

  @override
  String get metric_good_76_name => 'Язык надежной базы';

  @override
  String get metric_good_76_description =>
      'Выявляет предложение стабильности, безопасности и основы для исследования партнером.';

  @override
  String get metric_good_77_name => 'Взаимное восхищение';

  @override
  String get metric_good_77_description =>
      'Определяет взаимное уважение и признание качеств друг друга.';

  @override
  String get metric_good_78_name => 'Нежные моменты';

  @override
  String get metric_good_78_description =>
      'Отслеживает создание или распознавание интимных тихих моментов связи и близости.';

  @override
  String get metric_good_79_name => 'Искреннее любопытство';

  @override
  String get metric_good_79_description =>
      'Оценивает искренний интерес к пониманию мыслей, чувств и опыта партнера.';

  @override
  String get metric_good_80_name => 'Любящее принятие';

  @override
  String get metric_good_80_description =>
      'Выявляет принятие партнера целиком, включая недостатки и прошлое.';

  @override
  String get metric_good_81_name => 'Взаимная поддержка роста';

  @override
  String get metric_good_81_description =>
      'Определяет взаимное поощрение развития и празднование успехов друг друга.';

  @override
  String get metric_good_82_name => 'Индикаторы теплого тона';

  @override
  String get metric_good_82_description =>
      'Отслеживает использование ласкового языка, добрых формулировок и мягкого стиля общения.';

  @override
  String get metric_good_83_name => 'Отзывчивое взаимодействие';

  @override
  String get metric_good_83_description =>
      'Измеряет быстрые, вовлеченные ответы на сообщения партнера и эмоциональные сигналы.';

  @override
  String get metric_good_84_name => 'Согласованность ценностей';

  @override
  String get metric_good_84_description =>
      'Ищет упоминания общих убеждений, целей или жизненных философий, объединяющих пару.';

  @override
  String get metric_good_85_name => 'Безусловная поддержка';

  @override
  String get metric_good_85_description =>
      'Выявляет поддержку партнера в трудностях без условий.';

  @override
  String get metric_good_86_name => 'Интимная уязвимость';

  @override
  String get metric_good_86_description =>
      'Определяет обмен глубокими страхами, мечтами или неуверенностью, укрепляющий эмоциональные связи.';

  @override
  String get metric_good_87_name => 'Язык взаимного уважения';

  @override
  String get metric_good_87_description =>
      'Отслеживает уважение к точкам зрения, выборам и автономии партнера в общении.';

  @override
  String get metric_good_88_name => 'Позитивное обрамление';

  @override
  String get metric_good_88_description =>
      'Измеряет видение лучшего в ситуациях и партнере, фокус на сильных сторонах.';

  @override
  String get metric_good_89_name => 'Совместное решение проблем';

  @override
  String get metric_good_89_description =>
      'Ищет совместную работу над решениями, приносящими пользу обоим партнерам в равной степени.';

  @override
  String get metric_good_90_name => 'Эмоциональное подтверждение';

  @override
  String get metric_good_90_description =>
      'Выявляет подтверждение того, что чувства партнера имеют смысл и приемлемы.';

  @override
  String get metric_good_91_name => 'Постоянная доброта';

  @override
  String get metric_good_91_description =>
      'Определяет регулярные мелкие проявления заботы, показывающие, что о партнере думают и ценят его.';

  @override
  String get metric_good_92_name => 'Взаимное празднование';

  @override
  String get metric_good_92_description =>
      'Отслеживает искреннюю радость обоих партнеров от успехов и счастья друг друга.';

  @override
  String get metric_good_93_name => 'Язык надежной привязанности';

  @override
  String get metric_good_93_description =>
      'Измеряет выражение доверия, комфорта в близости и уверенности в отношениях.';

  @override
  String get metric_good_94_name => 'Вдумчивое внимание';

  @override
  String get metric_good_94_description =>
      'Выявляет принятие решений с учетом потребностей и чувств партнера.';

  @override
  String get metric_good_95_name => 'Любящее присутствие';

  @override
  String get metric_good_95_description =>
      'Определяет полное присутствие и вовлеченность, показывающие, что партнер важнее всего.';

  @override
  String get metric_good_96_name => 'Язык искренней заботы';

  @override
  String get metric_good_96_description =>
      'Отслеживает искренние проявления заботы, внимания и вложений в благополучие партнера.';

  @override
  String get metric_good_97_name => 'Приверженность отношениям';

  @override
  String get metric_good_97_description =>
      'Измеряет выражение преданности отношениям и готовности преодолевать трудности.';

  @override
  String get metric_good_98_name => 'Выражение подлинной любви';

  @override
  String get metric_good_98_description =>
      'Выявляет искренние последовательные проявления любви, которые ощущаются реальными и безусловными.';

  @override
  String get metric_good_99_name => 'Совместное целеполагание';

  @override
  String get metric_good_99_description =>
      'Определяет совместное определение общих мечт, приоритетов и направления будущего.';

  @override
  String get metric_good_100_name => 'Распознавание попыток восстановления';

  @override
  String get metric_good_100_description =>
      'Обнаруживает замечание и позитивную реакцию на попытки партнера снизить конфликт и восстановить связь.';

  @override
  String get metric_bad_1_name => 'Пассивная агрессия';

  @override
  String get metric_bad_1_description =>
      'Выявляет косвенную враждебность через прокрастинацию, забывчивость, сарказм или скрытый саботаж вместо прямого выражения.';

  @override
  String get metric_bad_2_name => 'Оружие вины';

  @override
  String get metric_bad_2_description =>
      'Выявляет использование чувства вины, стыда или языка обязательств для манипуляции решениями или препятствования установлению границ.';

  @override
  String get metric_bad_3_name => 'Эмоциональный шантаж';

  @override
  String get metric_bad_3_description =>
      'Фиксирует угрозы самоповреждения, разрыва отношений или лишения любви для контроля поведения или предотвращения обсуждения.';

  @override
  String get metric_bad_4_name => 'Хронические жалобы';

  @override
  String get metric_bad_4_description =>
      'Отслеживает устойчивую негативность, руминацию или жалобы без поиска решений или совместных изменений.';

  @override
  String get metric_bad_5_name => 'Стыд через сравнение';

  @override
  String get metric_bad_5_description =>
      'Выявляет неблагоприятные сравнения с бывшими, друзьями или семьёй для пристыжения или принуждения к изменению поведения.';

  @override
  String get metric_bad_6_name => 'Условное слушание';

  @override
  String get metric_bad_6_description =>
      'Обнаруживает слушание только тогда, когда это выгодно слушателю или служит его целям, а не для искреннего понимания.';

  @override
  String get metric_bad_7_name => 'Избирательная память';

  @override
  String get metric_bad_7_description =>
      'Отслеживает удобное забывание обещаний, соглашений или прошлого вредного поведения для избегания ответственности.';

  @override
  String get metric_bad_8_name => 'Привлечение внимания через кризис';

  @override
  String get metric_bad_8_description =>
      'Определяет драматическую эскалацию, создание кризиса или преувеличение для привлечения внимания или сочувствия.';

  @override
  String get metric_bad_9_name => 'Тестирование границ';

  @override
  String get metric_bad_9_description =>
      'Выявляет повторяющиеся попытки прощупать или нарушить установленные границы, чтобы проверить, будут ли они соблюдаться.';

  @override
  String get metric_bad_10_name => 'Сокрытие информации';

  @override
  String get metric_bad_10_description =>
      'Выявляет намеренное утаивание релевантных фактов, контекста или прозрачности для сохранения контроля.';

  @override
  String get metric_bad_11_name => 'Непропорциональный гнев';

  @override
  String get metric_bad_11_description =>
      'Отслеживает реакции гнева, значительно превышающие адекватный уровень для вызвавшего их инцидента.';

  @override
  String get metric_bad_12_name => 'Зависимость от заверений';

  @override
  String get metric_bad_12_description =>
      'Отмечает постоянную потребность в подтверждении, повторяющиеся вопросы о приверженности или бесконечные доказательства любви.';

  @override
  String get metric_bad_13_name => 'Избегание разговоров';

  @override
  String get metric_bad_13_description =>
      'Выявляет отказ обсуждать проблемы, фразы-избегания или прекращение важных разговоров.';

  @override
  String get metric_bad_14_name => 'Склонность к противоречиям';

  @override
  String get metric_bad_14_description =>
      'Определяет противоречивые заявления, обещания или позиции, создающие путаницу или дестабилизацию.';

  @override
  String get metric_bad_15_name => 'Обесценивание через ярлыки';

  @override
  String get metric_bad_15_description =>
      'Отмечает навешивание ярлыков («сумасшедшая», «драматичная», «параноидальная», «преувеличиваешь») для обесценивания переживаний.';

  @override
  String get metric_bad_16_name => 'Избирательная эмпатия';

  @override
  String get metric_bad_16_description =>
      'Выявляет эмпатию, проявляемую только когда это удобно или служит интересам говорящего.';

  @override
  String get metric_bad_17_name => 'Транзакционное мышление';

  @override
  String get metric_bad_17_description =>
      'Определяет фразы «ты мне должен», «после всего, что я сделал» или восприятие отношений как создание долга.';

  @override
  String get metric_bad_18_name => 'Переработка обид';

  @override
  String get metric_bad_18_description =>
      'Отслеживает повторное поднятие старых обид или использование прошлых ошибок как оружия в текущих конфликтах.';

  @override
  String get metric_bad_19_name => 'Язык требований';

  @override
  String get metric_bad_19_description =>
      'Отмечает приказы, команды или ультиматумы вместо просьб или совместного решения проблем.';

  @override
  String get metric_bad_20_name => 'Эмоциональная недоступность';

  @override
  String get metric_bad_20_description =>
      'Определяет последовательный отказ от эмоционального вовлечения, обмена чувствами или оказания поддержки.';

  @override
  String get metric_bad_21_name => 'Враждебная интерпретация';

  @override
  String get metric_bad_21_description =>
      'Выявляет восприятие нейтральных утверждений как нападок или интерпретацию двусмысленных сообщений как враждебных.';

  @override
  String get metric_bad_22_name => 'Рамка привилегированности';

  @override
  String get metric_bad_22_description =>
      'Отмечает язык, предполагающий, что говорящий заслуживает особого отношения, исключений или приоритета.';

  @override
  String get metric_bad_23_name => 'Критика под видом помощи';

  @override
  String get metric_bad_23_description =>
      'Выявляет критику, замаскированную под «я просто хочу помочь» или «для твоего же блага».';

  @override
  String get metric_bad_24_name => 'Паттерны пренебрежения';

  @override
  String get metric_bad_24_description =>
      'Определяет систематическое неудовлетворение эмоциональных, физических или relational потребностей.';

  @override
  String get metric_bad_25_name => 'Руминация конфликта';

  @override
  String get metric_bad_25_description =>
      'Отслеживает навязчивое пережевывание конфликтов без движения к разрешению или завершению.';

  @override
  String get metric_bad_26_name => 'Обесценивание чувствительности';

  @override
  String get metric_bad_26_description =>
      'Отмечает фразы вроде «ты слишком чувствителен» или «ты преувеличиваешь» для обесценивания чувств.';

  @override
  String get metric_bad_27_name => 'Соревновательная рамка';

  @override
  String get metric_bad_27_description =>
      'Выявляет представление отношений как соревнования, где один партнер должен победить или доминировать.';

  @override
  String get metric_bad_28_name => 'Двойные стандарты';

  @override
  String get metric_bad_28_description =>
      'Выявляет применение разных правил к себе и партнеру или произвольное изменение ожиданий.';

  @override
  String get metric_bad_29_name => 'Любовь как наказание';

  @override
  String get metric_bad_29_description =>
      'Отмечает лишение привязанности, внимания или общения в качестве возмездия за предполагаемые проступки.';

  @override
  String get metric_bad_30_name => 'Круговорот вины';

  @override
  String get metric_bad_30_description =>
      'Отслеживает перекладывание вины между партнером, обстоятельствами и внешними факторами во избежание ответственности.';

  @override
  String get metric_bad_31_name => 'Риторическая насмешка';

  @override
  String get metric_bad_31_description =>
      'Обнаруживает риторические или саркастические вопросы, используемые для насмешки, а не для понимания.';

  @override
  String get metric_bad_32_name => 'Напоминания о жертвах';

  @override
  String get metric_bad_32_description =>
      'Выявляет напоминания партнеру о жертвах, услугах или поддержке для создания долга и послушания.';

  @override
  String get metric_bad_33_name => 'Преднамеренная эскалация';

  @override
  String get metric_bad_33_description =>
      'Отмечает намеренное усиление интенсивности, чтобы подавить способность партнера реагировать рационально.';

  @override
  String get metric_bad_34_name => 'Стратегическая уязвимость';

  @override
  String get metric_bad_34_description =>
      'Обнаруживает проявление эмоций только в целях манипуляции или контроля.';

  @override
  String get metric_bad_35_name => 'Уклонение через контратаку';

  @override
  String get metric_bad_35_description =>
      'Выявляет переключение внимания с проблем партнера на не связанные вопросы или встречные обвинения.';

  @override
  String get metric_bad_36_name => 'Язык превосходства';

  @override
  String get metric_bad_36_description =>
      'Отмечает язык превосходства, снисходительность или представление партнера как низшего.';

  @override
  String get metric_bad_37_name => 'Модель ухода из конфликта';

  @override
  String get metric_bad_37_description =>
      'Выявляет модель поведения, при которой человек прерывает разговор, отказывается от взаимодействия или создает дистанцию во время конфликта.';

  @override
  String get metric_bad_38_name => 'Негативное искажение';

  @override
  String get metric_bad_38_description =>
      'Отслеживает последовательную интерпретацию нейтральных или позитивных действий как негативных или подозрительных.';

  @override
  String get metric_bad_39_name => 'Отрицание субъектности';

  @override
  String get metric_bad_39_description =>
      'Определяет фразы «я должен», «ты заставляешь меня» или язык, лишающий говорящего личной ответственности.';

  @override
  String get metric_bad_40_name => 'Молчание как контроль';

  @override
  String get metric_bad_40_description =>
      'Фиксирует использование молчания или отсутствия ответа как формы наказания или контроля.';

  @override
  String get metric_bad_41_name => 'Лицемерие в приватности';

  @override
  String get metric_bad_41_description =>
      'Выявляет отказ делиться информацией при требовании прозрачности от партнера.';

  @override
  String get metric_bad_42_name => 'Нежелательная резкая обратная связь';

  @override
  String get metric_bad_42_description =>
      'Определяет резкую критику, представленную как «конструктивную» или «полезную», без согласия.';

  @override
  String get metric_bad_43_name => 'Условная забота';

  @override
  String get metric_bad_43_description =>
      'Фиксирует поддержку, предлагаемую только при условии, что партнер соответствует ожиданиям говорящего.';

  @override
  String get metric_bad_44_name => 'Отрицание последствий';

  @override
  String get metric_bad_44_description =>
      'Выявляет фразы «я не имел это в виду» или «ты слишком много придумываешь» после причинения вреда.';

  @override
  String get metric_bad_45_name => 'Менталитет долга';

  @override
  String get metric_bad_45_description =>
      'Отслеживает упоминание прошлой помощи или поддержки для создания долга и контроля текущего поведения.';

  @override
  String get metric_bad_46_name => 'Уклонение от ответственности';

  @override
  String get metric_bad_46_description =>
      'Отмечает устойчивый паттерн отказа от ответственности за последствия своих действий.';

  @override
  String get metric_bad_47_name => 'Обесценивание потребностей';

  @override
  String get metric_bad_47_description =>
      'Определяет отношение к потребностям партнера как к неудобным, необоснованным или неважным.';

  @override
  String get metric_bad_48_name => 'Эмоциональная манипуляция';

  @override
  String get metric_bad_48_description =>
      'Отмечает стратегическое использование эмоций для контроля результатов или избегания подотчетности.';

  @override
  String get metric_bad_49_name => 'Избегание близости';

  @override
  String get metric_bad_49_description =>
      'Отслеживает последовательное отстранение от эмоциональной или физической близости без объяснений.';

  @override
  String get metric_bad_50_name => 'Завуалированная критика';

  @override
  String get metric_bad_50_description =>
      'Определяет критику, замаскированную под шутки, наблюдения или случайные комментарии.';

  @override
  String get metric_bad_51_name => 'Минимизация проблем';

  @override
  String get metric_bad_51_description =>
      'Отмечает сведение проблем партнера к незначительности или преувеличению.';

  @override
  String get metric_bad_52_name => 'Принуждение через вину';

  @override
  String get metric_bad_52_description =>
      'Определяет использование чувства вины или стыда для обеспечения соблюдения партнером ожиданий.';

  @override
  String get metric_bad_53_name => 'Сопротивление извинениям';

  @override
  String get metric_bad_53_description =>
      'Отслеживает сопротивление извинениям, оправдание причиненного вреда или отказ признавать последствия.';

  @override
  String get metric_bad_54_name => 'Отказ от перспективы';

  @override
  String get metric_bad_54_description =>
      'Отмечает отказ рассматривать или признавать точку зрения или опыт партнера.';

  @override
  String get metric_bad_55_name => 'Эмоциональное нормирование';

  @override
  String get metric_bad_55_description =>
      'Обнаруживает намеренное ограничение эмоционального выражения или связи как форму контроля.';

  @override
  String get metric_bad_56_name => 'Манипуляция обязательствами';

  @override
  String get metric_bad_56_description =>
      'Отмечает использование прошлой поддержки или жертв для манипуляции текущими решениями.';

  @override
  String get metric_bad_57_name => 'Сопротивление росту';

  @override
  String get metric_bad_57_description =>
      'Отслеживает сопротивление изменению вредного поведения, несмотря на просьбы или продемонстрированные последствия.';

  @override
  String get metric_bad_58_name => 'Отрицание вреда';

  @override
  String get metric_bad_58_description =>
      'Обнаруживает отказ признавать или воспринимать всерьёз влияние собственного поведения.';

  @override
  String get metric_bad_59_name => 'Нагруженные вопросы';

  @override
  String get metric_bad_59_description =>
      'Отмечает критический умысел, замаскированный под невинные вопросы или проявления любопытства.';

  @override
  String get metric_bad_60_name => 'Презрительный тон';

  @override
  String get metric_bad_60_description =>
      'Определяет пренебрежительное отношение или презрение, передаваемое через текстовые шаблоны и выбор слов.';

  @override
  String get metric_bad_61_name => 'Цикл чувства вины';

  @override
  String get metric_bad_61_description =>
      'Обнаруживает повторное использование чувства вины за прошлую поддержку или жертвы для контроля текущего поведения.';

  @override
  String get metric_bad_62_name => 'Эмоциональная закрытость';

  @override
  String get metric_bad_62_description =>
      'Отслеживает отказ делиться эмоциями, страхами или потребностями с партнёром как защитное утаивание.';

  @override
  String get metric_bad_63_name => 'Переговоры о границах';

  @override
  String get metric_bad_63_description =>
      'Отмечает отношение к установленным границам как к предложениям или предмету переговоров, а не как к твёрдым обязательствам.';

  @override
  String get metric_bad_64_name => 'Эмоциональное отсутствие';

  @override
  String get metric_bad_64_description =>
      'Обнаруживает последовательный отказ в предоставлении эмоциональной поддержки или вовлеченного присутствия.';

  @override
  String get metric_bad_65_name => 'Учет услуг';

  @override
  String get metric_bad_65_description =>
      'Отмечает ведение мысленного счета услуг, поддержки или жертв для последующего использования.';

  @override
  String get metric_bad_66_name => 'Избегание честности';

  @override
  String get metric_bad_66_description =>
      'Обнаруживает модель утаивания правды, сокрытия фактов или намеренной неопределенности.';

  @override
  String get metric_bad_67_name => 'Отрицание значимости';

  @override
  String get metric_bad_67_description =>
      'Определяет отношение к чувствам, потребностям или проблемам партнера как к недействительным или незаконным.';

  @override
  String get metric_bad_68_name => 'Критика под видом совета';

  @override
  String get metric_bad_68_description =>
      'Отмечает критику, представленную как забота, совет или полезное наблюдение.';

  @override
  String get metric_bad_69_name => 'Индикаторы превосходства';

  @override
  String get metric_bad_69_description =>
      'Обнаруживает превосходство, насмешку или пренебрежение в языке или стиле общения.';

  @override
  String get metric_bad_70_name => 'Сопротивление восстановлению';

  @override
  String get metric_bad_70_description =>
      'Отслеживает сопротивление примирению, восстановлению связи или восстановлению после конфликта.';

  @override
  String get metric_bad_71_name => 'Обесценивание усилий';

  @override
  String get metric_bad_71_description =>
      'Отмечает преуменьшение или игнорирование попыток партнера улучшить ситуацию или решить проблемы.';

  @override
  String get metric_bad_72_name => 'Модель эмоциональной дистанции';

  @override
  String get metric_bad_72_description =>
      'Обнаруживает долгосрочную модель эмоциональной дистанции или отказа от подлинного взаимодействия.';

  @override
  String get metric_bad_73_name => 'Рамка неполноценности';

  @override
  String get metric_bad_73_description =>
      'Определяет представление партнера как неполноценного, ущербного или недостойного полного уважения.';

  @override
  String get metric_bad_74_name => 'Сопротивление обратной связи';

  @override
  String get metric_bad_74_description =>
      'Выявляет сопротивление критике, отказ слушать или прекращение обсуждения.';

  @override
  String get metric_bad_75_name => 'Обесценивание тревог';

  @override
  String get metric_bad_75_description =>
      'Определяет отношение к тревогам или страхам партнера как необоснованным или иррациональным.';

  @override
  String get metric_bad_76_name => 'Поиск недостатков';

  @override
  String get metric_bad_76_description =>
      'Отмечает хроническую привычку искать недостатки, жаловаться или атаковать характер партнера.';

  @override
  String get metric_bad_77_name => 'Цикл вины за жертву';

  @override
  String get metric_bad_77_description =>
      'Определяет повторное упоминание прошлой поддержки для создания чувства вины или контроля поведения.';

  @override
  String get metric_bad_78_name => 'Неопределенность обязательств';

  @override
  String get metric_bad_78_description =>
      'Отслеживает неясный или колеблющийся язык обязательств, смешанные сигналы или нежелание брать на себя обязательства.';

  @override
  String get metric_bad_79_name => 'Отказ в просьбе';

  @override
  String get metric_bad_79_description =>
      'Отмечает игнорирование, отказ или задержку ответа на разумные просьбы партнера.';

  @override
  String get metric_bad_80_name => 'Тактики эмоционального контроля';

  @override
  String get metric_bad_80_description =>
      'Выявляет стратегическое использование эмоций для контроля результатов или предотвращения ответственности.';

  @override
  String get metric_bad_81_name => 'Менталитет обмена';

  @override
  String get metric_bad_81_description =>
      'Отмечает восприятие отношений через призму долга, обязательств или транзакционного обмена.';

  @override
  String get metric_bad_82_name => 'Сопротивление развитию';

  @override
  String get metric_bad_82_description =>
      'Выявляет сопротивление личностному развитию, обучению или изменению вредных моделей поведения.';

  @override
  String get metric_bad_83_name => 'Отвержение улучшений';

  @override
  String get metric_bad_83_description =>
      'Определяет преуменьшение или отвержение попыток партнера улучшить ситуацию или решить проблемы.';

  @override
  String get metric_bad_84_name => 'Хроническая критика';

  @override
  String get metric_bad_84_description =>
      'Отмечает хроническую модель критики, замаскированной под заботу, помощь или участие.';

  @override
  String get metric_bad_85_name => 'Избегание решений';

  @override
  String get metric_bad_85_description =>
      'Выявляет последовательное избегание завершения, движения вперед или поиска рабочих решений.';

  @override
  String get metric_bad_86_name => 'Перекладывание вины';

  @override
  String get metric_bad_86_description =>
      'Отмечает привычную модель перекладывания ответственности на внешние факторы или партнера.';

  @override
  String get metric_bad_87_name => 'Пренебрежительные ответы';

  @override
  String get metric_bad_87_description =>
      'Определяет модель игнорирования мнения, идей или предложений партнера без рассмотрения.';

  @override
  String get metric_bad_88_name => 'Выражение обиды';

  @override
  String get metric_bad_88_description =>
      'Выявляет тон обиды, горечи или давнего недовольства в общении.';

  @override
  String get metric_bad_89_name => 'Двусмысленные сообщения';

  @override
  String get metric_bad_89_description =>
      'Отмечает противоречивые сигналы о приверженности, неясное желание продолжать или динамику «тяни-толкай».';

  @override
  String get metric_bad_90_name => 'Смена ожиданий';

  @override
  String get metric_bad_90_description =>
      'Выявляет изменение ожиданий без обсуждения, с последующим обвинением партнера в их невыполнении.';

  @override
  String get metric_bad_91_name => 'Привычка уклоняться';

  @override
  String get metric_bad_91_description =>
      'Выявляет привычное избегание прямых ответов или увод разговора от ответственности.';

  @override
  String get metric_bad_92_name => 'Манипуляция добротой';

  @override
  String get metric_bad_92_description =>
      'Отмечает преувеличенную щедрость, используемую стратегически для создания обязательств или снижения защиты.';

  @override
  String get metric_bad_93_name => 'Хронические опоздания';

  @override
  String get metric_bad_93_description =>
      'Определяет систематическое пренебрежение временем партнёра через опоздания или нарушение договорённостей.';

  @override
  String get metric_bad_94_name => 'Минимизация прогресса';

  @override
  String get metric_bad_94_description =>
      'Отслеживает игнорирование или непризнание реального личностного роста или улучшений партнёра.';

  @override
  String get metric_bad_95_name => 'Эмоциональное оружие';

  @override
  String get metric_bad_95_description =>
      'Выявляет использование раскрытых уязвимостей или страхов партнёра против него в конфликте.';

  @override
  String get metric_bad_96_name => 'Тактики, близкие к газлайтингу';

  @override
  String get metric_bad_96_description =>
      'Определяет тонкие тактики искажения реальности, вызывающие сомнения в себе без полного газлайтинга.';

  @override
  String get metric_bad_97_name => 'Пассивное молчание';

  @override
  String get metric_bad_97_description =>
      'Отмечает тонкое отстранение, односложные ответы или отсутствие вовлечённости как форму избегания.';

  @override
  String get metric_bad_98_name => 'Контроль нарратива';

  @override
  String get metric_bad_98_description =>
      'Выявляет настаивание на единоличной трактовке того, что произошло, как это ощущалось или что имелось в виду.';

  @override
  String get metric_bad_99_name => 'Уклонение от ответственности';

  @override
  String get metric_bad_99_description =>
      'Отслеживает систематическое перекладывание ответственности на внешние факторы, третьих лиц или поведение партнёра.';

  @override
  String get metric_bad_100_name => 'Эмоциональная недоступность';

  @override
  String get metric_bad_100_description =>
      'Отмечает хроническое избегание эмоциональной близости, уязвимости или значимой связи, когда партнер нуждается в сближении.';

  @override
  String get metric_ugly_1_name => 'Угрозы физического насилия';

  @override
  String get metric_ugly_1_description =>
      'Обнаруживает явные или завуалированные угрозы ударить, причинить вред или физическое насилие в отношении партнера.';

  @override
  String get metric_ugly_2_name => 'Упоминания о владении оружием';

  @override
  String get metric_ugly_2_description =>
      'Отмечает упоминания оружия в контексте гнева, контроля или возможности причинить вред.';

  @override
  String get metric_ugly_3_name => 'Признаки удушения';

  @override
  String get metric_ugly_3_description =>
      'Выявляет упоминания или язык, связанные с удушением, захватом горла, удушьем или асфиксией.';

  @override
  String get metric_ugly_4_name => 'Использование суицида как оружия';

  @override
  String get metric_ugly_4_description =>
      'Обнаруживает угрозы самоповреждения, используемые для контроля, манипуляции или наказания партнёра.';

  @override
  String get metric_ugly_5_name => 'Язык суицидальных намерений';

  @override
  String get metric_ugly_5_description =>
      'Отмечает высказывания, выражающие намерение, планирование или желание убить партнера.';

  @override
  String get metric_ugly_6_name => 'Паттерны риска летальности';

  @override
  String get metric_ugly_6_description =>
      'Выявляет признаки высокого риска летальности: доступ к оружию, одержимость, эскалация и угрозы разрыва в сочетании.';

  @override
  String get metric_ugly_7_name => 'Язык одержимости преследованием';

  @override
  String get metric_ugly_7_description =>
      'Обнаруживает навязчивое отслеживание местоположения, преследование, неожиданные визиты или настойчивое нежелательное преследование.';

  @override
  String get metric_ugly_8_name => 'Принудительная изоляция';

  @override
  String get metric_ugly_8_description =>
      'Отмечает агрессивные требования полностью прекратить контакты с семьей, друзьями, работой или внешним миром.';

  @override
  String get metric_ugly_9_name => 'Экономический саботаж';

  @override
  String get metric_ugly_9_description =>
      'Определяет намеренное разрушение занятости, кредитной истории, финансов или экономической стабильности.';

  @override
  String get metric_ugly_10_name => 'Репродуктивное принуждение';

  @override
  String get metric_ugly_10_description =>
      'Обнаруживает принуждение к беременности, давление в пользу аборта, вмешательство в контрацепцию или репродуктивный контроль.';

  @override
  String get metric_ugly_11_name => 'Давление сексуального принуждения';

  @override
  String get metric_ugly_11_description =>
      'Отмечает принуждение к сексу, вынужденные сексуальные действия, давление после отказа или язык сексуального наказания.';

  @override
  String get metric_ugly_12_name => 'Язык недобровольного секса';

  @override
  String get metric_ugly_12_description =>
      'Определяет явные или неявные угрозы или описания недобровольного сексуального насилия.';

  @override
  String get metric_ugly_13_name => 'Угрозы вреда детям';

  @override
  String get metric_ugly_13_description =>
      'Обнаруживает угрозы причинить вред, пренебрегать или жестоко обращаться с детьми как рычаг давления или наказание партнера.';

  @override
  String get metric_ugly_14_name => 'Использование опеки как оружия';

  @override
  String get metric_ugly_14_description =>
      'Отмечает угрозы забрать детей, лишить доступа или использовать опеку как механизм контроля.';

  @override
  String get metric_ugly_15_name => 'Угрозы вреда питомцам';

  @override
  String get metric_ugly_15_description =>
      'Определяет угрозы причинить вред, убить или жестоко обращаться с домашними животными как наказание или демонстрацию контроля.';

  @override
  String get metric_ugly_16_name => 'Тактики лишения сна';

  @override
  String get metric_ugly_16_description =>
      'Отмечает намеренное лишение сна, постоянные прерывания или истощение как метод контроля.';

  @override
  String get metric_ugly_17_name => 'Язык ограничения свободы';

  @override
  String get metric_ugly_17_description =>
      'Отмечает запирание, предотвращение ухода или ограничение передвижения партнера.';

  @override
  String get metric_ugly_18_name => 'Язык хищнической обработки';

  @override
  String get metric_ugly_18_description =>
      'Отмечает систематическую манипуляцию для снижения защиты, создания ложного доверия и последующей эксплуатации партнера.';

  @override
  String get metric_ugly_19_name => 'Язык дегуманизации';

  @override
  String get metric_ugly_19_description =>
      'Обнаруживает описание партнера как животного, объекта, недочеловека или недостойного основных прав.';

  @override
  String get metric_ugly_20_name => 'Эскалация нарциссической ярости';

  @override
  String get metric_ugly_20_description =>
      'Обнаруживает взрывной гнев, вызванный воспринимаемыми оскорблениями, критикой или любой потерей контроля.';

  @override
  String get metric_ugly_21_name => 'Заявления об одержимой собственности';

  @override
  String get metric_ugly_21_description =>
      'Отмечает язык, утверждающий собственность, имущественные права или полный контроль над личностью партнера.';

  @override
  String get metric_ugly_22_name => 'Патологические паттерны лжи';

  @override
  String get metric_ugly_22_description =>
      'Выявляет последовательную, развернутую или ненужную ложь о серьезных вопросах без видимой причины.';

  @override
  String get metric_ugly_23_name => 'Язык фантазий о мести';

  @override
  String get metric_ugly_23_description =>
      'Выявляет подробные фантазии о причинении вреда, унижении или уничтожении партнера.';

  @override
  String get metric_ugly_24_name => 'Фиксация на одержимости предательством';

  @override
  String get metric_ugly_24_description =>
      'Обнаруживает навязчивые размышления, обвинения и наказания, сосредоточенные на предполагаемой неверности.';

  @override
  String get metric_ugly_25_name => 'Агрессия паники оставления';

  @override
  String get metric_ugly_25_description =>
      'Отмечает жестокие или агрессивные реакции на воспринимаемое оставление или любую попытку разлуки.';

  @override
  String get metric_ugly_26_name => 'Эскалация угроз при разлуке';

  @override
  String get metric_ugly_26_description =>
      'Выявляет крайние угрозы или опасное поведение, вызванное попытками разрыва или разлуки.';

  @override
  String get metric_ugly_27_name => 'Угрозы преследования после разрыва';

  @override
  String get metric_ugly_27_description =>
      'Отмечает угрозы преследования, причинения вреда или принудительного контакта после окончания отношений.';

  @override
  String get metric_ugly_28_name => 'Угрозы похищения детей';

  @override
  String get metric_ugly_28_description =>
      'Выявляет угрозы забрать детей и скрыться с ними навсегда от другого родителя.';

  @override
  String get metric_ugly_29_name => 'Программа отчуждения родителей';

  @override
  String get metric_ugly_29_description =>
      'Отмечает систематические попытки настроить детей против другого родителя через манипуляции.';

  @override
  String get metric_ugly_30_name => 'Безразличие к детям-свидетелям';

  @override
  String get metric_ugly_30_description =>
      'Выявляет безразличие к тому, что дети становятся свидетелями насилия, конфликтов или эмоционального вреда.';

  @override
  String get metric_ugly_31_name => 'Язык торговли людьми';

  @override
  String get metric_ugly_31_description =>
      'Выявляет язык, предполагающий продажу, обмен или сексуальную эксплуатацию партнера.';

  @override
  String get metric_ugly_32_name => 'Язык рабства';

  @override
  String get metric_ugly_32_description =>
      'Выявляет язык, представляющий партнера как собственность, раба или полностью подконтрольное лицо без прав.';

  @override
  String get metric_ugly_33_name => 'Угрозы долговой кабалы';

  @override
  String get metric_ugly_33_description =>
      'Обнаруживает угрозы заманить партнера в долговую кабалу через искусственные долги или финансовые обязательства.';

  @override
  String get metric_ugly_34_name => 'Требования принудительного труда';

  @override
  String get metric_ugly_34_description =>
      'Отмечает требования неоплачиваемого труда, подневольной работы или работы под угрозой наказания.';

  @override
  String get metric_ugly_35_name => 'Нормализация эксплуатации';

  @override
  String get metric_ugly_35_description =>
      'Выявляет представление жестокой эксплуатации как нормальной, заслуженной, добровольной или даже полезной.';

  @override
  String get metric_ugly_36_name => 'Нацеливание на уязвимых';

  @override
  String get metric_ugly_36_description =>
      'Выявляет целенаправленное воздействие на изолированных, экономически зависимых или психологически уязвимых людей.';

  @override
  String get metric_ugly_37_name => 'Формирование травматической связи';

  @override
  String get metric_ugly_37_description =>
      'Выявляет преднамеренное создание циклов страха и облегчения, предназначенных для формирования глубокой эмоциональной зависимости.';

  @override
  String get metric_ugly_38_name => 'Жестокое перемежающееся подкрепление';

  @override
  String get metric_ugly_38_description =>
      'Отмечает непредсказуемые циклы вознаграждения и сурового наказания, используемые для создания психологической зависимости.';

  @override
  String get metric_ugly_39_name => 'Индукция выученной беспомощности';

  @override
  String get metric_ugly_39_description =>
      'Определяет систематическое лишение самостоятельности, ресурсов и воспринимаемых возможностей для побега.';

  @override
  String get metric_ugly_40_name => 'Язык стирания идентичности';

  @override
  String get metric_ugly_40_description =>
      'Отмечает требования отказаться от личности, интересов, внешности или основного чувства идентичности.';

  @override
  String get metric_ugly_41_name => 'Уничтожение автономии';

  @override
  String get metric_ugly_41_description =>
      'Выявляет систематическое устранение независимого мышления, принятия решений или личной самостоятельности.';

  @override
  String get metric_ugly_42_name => 'Тактики контроля мыслей';

  @override
  String get metric_ugly_42_description =>
      'Отмечает требования думать, верить или чувствовать только так, как диктует контролирующий партнер.';

  @override
  String get metric_ugly_43_name => 'Принуждение к эмоциональному онемению';

  @override
  String get metric_ugly_43_description =>
      'Определяет наказание за проявление эмоций или прямые требования подавлять все чувства.';

  @override
  String get metric_ugly_44_name => 'Создание комплексной травмы';

  @override
  String get metric_ugly_44_description =>
      'Отмечает систематические паттерны, создающие травму уровня комплексного ПТСР через хроническое насилие.';

  @override
  String get metric_ugly_45_name => 'Нанесение травмы предательства';

  @override
  String get metric_ugly_45_description =>
      'Определяет преднамеренное предательство, направленное на разрушение базового доверия и психологической безопасности.';

  @override
  String get metric_ugly_46_name => 'Язык морального вреда';

  @override
  String get metric_ugly_46_description =>
      'Выявляет принуждение партнёра к нарушению его глубоких моральных принципов или совершению вредоносных действий.';

  @override
  String get metric_ugly_47_name => 'Язык экзистенциальной угрозы';

  @override
  String get metric_ugly_47_description =>
      'Отмечает угрозы существованию партнёра, его идентичности, рассудку или желанию жить.';

  @override
  String get metric_ugly_48_name => 'Язык суицидального принуждения';

  @override
  String get metric_ugly_48_description =>
      'Определяет подталкивание партнёра к суицидальным мыслям через систематическое насилие и искусственную безнадёжность.';

  @override
  String get metric_ugly_49_name => 'Мифология оправдания';

  @override
  String get metric_ugly_49_description =>
      'Выявляет сложные вымышленные нарративы, представляющие насилие как необходимое, заслуженное или праведное.';

  @override
  String get metric_ugly_50_name => 'Инверсия нарратива жертвы';

  @override
  String get metric_ugly_50_description =>
      'Выявляет полную инверсию, когда абьюзер утверждает, что является настоящей жертвой собственного насилия.';

  @override
  String get metric_ugly_51_name => 'Пропаганда нормализации насилия';

  @override
  String get metric_ugly_51_description =>
      'Отмечает обучение или утверждение, что насилие является нормальным, здоровым или полезным для партнёра.';

  @override
  String get metric_ugly_52_name => 'Хищническая идеология';

  @override
  String get metric_ugly_52_description =>
      'Определяет идеологическое оправдание эксплуатации, доминирования или вреда по отношению к партнёру.';

  @override
  String get metric_ugly_53_name => 'Язык лидера культа';

  @override
  String get metric_ugly_53_description =>
      'Обнаруживает сообщения, утверждающие особое знание, божественное право или превосходство над партнёром.';

  @override
  String get metric_ugly_54_name => 'Язык временной линии груминга';

  @override
  String get metric_ugly_54_description =>
      'Отмечает упоминания долгосрочного плана манипуляции или описание этапов груминга.';

  @override
  String get metric_ugly_55_name => 'Хроническая кампания унижения';

  @override
  String get metric_ugly_55_description =>
      'Выявляет устойчивую модель публичного или частного унижения, направленную на разрушение самооценки.';

  @override
  String get metric_ugly_56_name => 'Блокировка путей к спасению';

  @override
  String get metric_ugly_56_description =>
      'Обнаруживает активное блокирование доступа партнера к путям отступления, системам поддержки или ресурсам безопасности.';

  @override
  String get metric_ugly_57_name => 'Угрозы изъятия документов';

  @override
  String get metric_ugly_57_description =>
      'Отмечает угрозы или действия по изъятию, сокрытию или уничтожению документов, удостоверяющих личность, для предотвращения побега.';

  @override
  String get metric_ugly_58_name => 'Модели насильственной ревности';

  @override
  String get metric_ugly_58_description =>
      'Выявляет ревность, переросшую в явные угрозы, слежку или насильственное возмездие.';

  @override
  String get metric_ugly_59_name => 'Модели взрывного гнева';

  @override
  String get metric_ugly_59_description =>
      'Обнаруживает описания или модели взрывных вспышек гнева, несоразмерных любому триггеру.';

  @override
  String get metric_ugly_60_name => 'Эскалация принудительного контроля';

  @override
  String get metric_ugly_60_description =>
      'Отслеживает возрастающую тяжесть и широту тактик принудительного контроля с течением времени.';

  @override
  String get metric_ugly_61_name => 'Язык подчинения из страха';

  @override
  String get metric_ugly_61_description =>
      'Выявляет подчинение, вызванное исключительно страхом перед насилием или суровым наказанием, а не выбором.';

  @override
  String get metric_ugly_62_name => 'Язык ритуалов наказания';

  @override
  String get metric_ugly_62_description =>
      'Обнаруживает упоминания о систематических наказаниях, используемых для обеспечения подчинения и контроля.';

  @override
  String get metric_ugly_63_name => 'Индикаторы ритуалов деградации';

  @override
  String get metric_ugly_63_description =>
      'Отмечает систематические ритуалы унижения или деградации, направленные на разрушение достоинства.';

  @override
  String get metric_ugly_64_name => 'Угрозы неконсенсуального разглашения';

  @override
  String get metric_ugly_64_description =>
      'Выявляет угрозы раскрытия интимных изображений, личной информации или секретов без согласия.';

  @override
  String get metric_ugly_65_name => 'Угрозы на основе изображений';

  @override
  String get metric_ugly_65_description =>
      'Обнаруживает угрозы распространения интимных изображений в качестве мести, наказания или шантажа.';

  @override
  String get metric_ugly_66_name => 'Тактики финансовой ловушки';

  @override
  String get metric_ugly_66_description =>
      'Отмечает намеренное создание финансовой зависимости, делающее самостоятельное выживание невозможным.';

  @override
  String get metric_ugly_67_name => 'Угрозы лишения жилья';

  @override
  String get metric_ugly_67_description =>
      'Обнаруживает угрозы оставить партнера без жилья, лишить доступа к жилью или разрушить безопасность убежища.';

  @override
  String get metric_ugly_68_name => 'Угрозы иммиграционным статусом';

  @override
  String get metric_ugly_68_description =>
      'Выявляет угрозы сообщить об иммиграционном статусе или отозвать спонсорство визы как средство контроля.';

  @override
  String get metric_ugly_69_name => 'Религиозное или духовное насилие';

  @override
  String get metric_ugly_69_description =>
      'Обнаруживает использование религиозного авторитета, доктрины или духовной угрозы для контроля, наказания или причинения вреда.';

  @override
  String get metric_ugly_70_name => 'Использование культурного стыда';

  @override
  String get metric_ugly_70_description =>
      'Отмечает угрозы раскрыть поведение культурному или семейному сообществу в качестве наказания.';

  @override
  String get metric_ugly_71_name => 'Угрозы вреда семье';

  @override
  String get metric_ugly_71_description =>
      'Выявляет угрозы причинить вред членам семьи партнера, детям или близким как рычаг давления.';

  @override
  String get metric_ugly_72_name => 'Скоординированная кампания преследования';

  @override
  String get metric_ugly_72_description =>
      'Обнаруживает организацию других для коллективного преследования, сталкинга или запугивания партнера.';

  @override
  String get metric_ugly_73_name => 'Угрозы ложными заявлениями';

  @override
  String get metric_ugly_73_description =>
      'Угрозы ложного заявления в полицию или выдвижения ложных юридических обвинений против партнера.';

  @override
  String get metric_ugly_74_name => 'Использование правовой системы';

  @override
  String get metric_ugly_74_description =>
      'Выявляет использование судебных процессов, судов или охранных ордеров в качестве оружия для преследования.';

  @override
  String get metric_ugly_75_name => 'Нарушение охранного ордера';

  @override
  String get metric_ugly_75_description =>
      'Обнаруживает упоминания о нарушении или планировании нарушения охранных или запретительных ордеров.';

  @override
  String get metric_ugly_76_name => 'Угрозы саботажа на работе';

  @override
  String get metric_ugly_76_description =>
      'Отмечает угрозы связаться с работодателем, коллегами или клиентами для разрушения средств к существованию партнера.';

  @override
  String get metric_ugly_77_name => 'Угрозы социального уничтожения';

  @override
  String get metric_ugly_77_description =>
      'Обнаруживает угрозы разрушить репутацию, отношения и социальное положение партнера.';

  @override
  String get metric_ugly_78_name => 'Систематическая кампания обмана';

  @override
  String get metric_ugly_78_description =>
      'Выявляет долгосрочный сложный обман, направленный на финансовую или эмоциональную эксплуатацию партнера.';

  @override
  String get metric_ugly_79_name => 'Уничтожение имущества как террор';

  @override
  String get metric_ugly_79_description =>
      'Выявляет преднамеренное уничтожение имущества партнера как тактику запугивания.';

  @override
  String get metric_ugly_80_name =>
      'Жестокость к животным как косвенный террор';

  @override
  String get metric_ugly_80_description =>
      'Обнаруживает причинение вреда или угрозы домашним животным для демонстрации способности к насилию в отношении партнера.';

  @override
  String get metric_ugly_81_name => 'Язык угроз детям';

  @override
  String get metric_ugly_81_description =>
      'Отмечает помещение детей в опасные ситуации или угрозы сделать это в качестве рычага давления.';

  @override
  String get metric_ugly_82_name => 'Контроль через инвалидность';

  @override
  String get metric_ugly_82_description =>
      'Выявляет случаи, когда партнер использует инвалидность жертвы, контролируя доступ к лекарствам, средствам передвижения или уходу.';

  @override
  String get metric_ugly_83_name => 'Искусственно созданный кризис';

  @override
  String get metric_ugly_83_description =>
      'Отмечает намеренное создание чрезвычайных ситуаций или кризисов для усиления зависимости партнера или оправдания слежки.';

  @override
  String get metric_ugly_84_name => 'Изоляция от экстренных служб';

  @override
  String get metric_ugly_84_description =>
      'Определяет активное препятствование вызову полиции, скорой помощи или кризисных служб.';

  @override
  String get metric_ugly_85_name => 'Траектория эскалации угроз';

  @override
  String get metric_ugly_85_description =>
      'Отслеживает измеримое увеличение серьезности, конкретности или частоты угроз с течением времени.';

  @override
  String get metric_ugly_86_name => 'Индикаторы летальной опасности';

  @override
  String get metric_ugly_86_description =>
      'Отмечает сочетание факторов, связанных с наивысшим риском убийства интимного партнера.';

  @override
  String get metric_ugly_87_name => 'Тактики психологических пыток';

  @override
  String get metric_ugly_87_description =>
      'Выявляет систематическое психологическое насилие, направленное на разрушение психической стабильности партнера.';

  @override
  String get metric_ugly_88_name => 'Язык пленения';

  @override
  String get metric_ugly_88_description =>
      'Обнаруживает упоминания о содержании партнера в плену, запрете на уход или полном контроле передвижений.';

  @override
  String get metric_ugly_89_name => 'Планирование целенаправленного насилия';

  @override
  String get metric_ugly_89_description =>
      'Выявляет любые высказывания, указывающие на планирование, подготовку или отсчет времени до насилия в отношении партнера.';

  @override
  String get metric_ugly_90_name => 'Вербовка третьих лиц для угроз';

  @override
  String get metric_ugly_90_description =>
      'Определяет привлечение друзей, родственников или других лиц для угроз или причинения вреда партнеру.';

  @override
  String get metric_ugly_91_name => 'Эксплуатация суицидальных мыслей';

  @override
  String get metric_ugly_91_description =>
      'Выявляет использование суицидального кризиса партнера в качестве рычага давления или для предотвращения обращения за помощью.';

  @override
  String get metric_ugly_92_name => 'Угрозы отравления или подмешивания';

  @override
  String get metric_ugly_92_description =>
      'Обнаруживает угрозы или упоминания о подмешивании наркотиков, отравлении или порче еды или напитков партнера.';

  @override
  String get metric_ugly_93_name =>
      'Эксплуатация несуицидального самоповреждения';

  @override
  String get metric_ugly_93_description =>
      'Выявляет использование самоповреждающего поведения партнера в качестве рычага давления, насмешки или дальнейшего контроля.';

  @override
  String get metric_ugly_94_name => 'Язык индукции диссоциации';

  @override
  String get metric_ugly_94_description =>
      'Обнаруживает паттерны, направленные на вызывание диссоциации, отстраненности или деперсонализации у партнера.';

  @override
  String get metric_ugly_95_name => 'Внедрение когнитивных искажений';

  @override
  String get metric_ugly_95_description =>
      'Обнаруживает намеренное внедрение ложных убеждений о себе, реальности или собственном рассудке партнера.';

  @override
  String get metric_ugly_96_name => 'Препятствование медицинской помощи';

  @override
  String get metric_ugly_96_description =>
      'Обнаруживает препятствование доступу к лекарствам, врачам, больницам или медицинскому лечению.';

  @override
  String get metric_ugly_97_name => 'Экстремистская угрожающая лексика';

  @override
  String get metric_ugly_97_description =>
      'Выявляет язык, заимствованный из экстремистских или насильственных идеологических рамок, применяемый к партнеру.';

  @override
  String get metric_ugly_98_name => 'Признаки преследования после расставания';

  @override
  String get metric_ugly_98_description =>
      'Обнаруживает угрозы, язык слежки или тактику запугивания после или в преддверии разрыва отношений.';

  @override
  String get metric_ugly_99_name => 'Использование детей как оружия';

  @override
  String get metric_ugly_99_description =>
      'Определяет использование детей как пешек, угрозы относительно опеки или использование родительских уз как механизмов контроля.';

  @override
  String get metric_ugly_100_name => 'Систематическая дегуманизация';

  @override
  String get metric_ugly_100_description =>
      'Обнаруживает устойчивый язык, лишающий партнера личности, достоинства или права на базовое человеческое отношение.';

  @override
  String get metric_narcissist_1_name => 'Грандиозная самооценка';

  @override
  String get metric_narcissist_1_description =>
      'Преувеличенные заявления о достижениях, талантах или статусе, не соответствующие реальным доказательствам, часто с ощущением уникальности.';

  @override
  String get metric_narcissist_2_name => 'Требования привилегий';

  @override
  String get metric_narcissist_2_description =>
      'Необоснованные ожидания особого обращения или автоматического выполнения их желаний без взаимности.';

  @override
  String get metric_narcissist_3_name => 'Дефицит эмпатии';

  @override
  String get metric_narcissist_3_description =>
      'Неспособность или нежелание признавать или подтверждать чувства других, игнорирование эмоциональных потребностей как несущественных.';

  @override
  String get metric_narcissist_4_name => 'Поиск похвалы';

  @override
  String get metric_narcissist_4_description =>
      'Чрезмерное выпрашивание восхищения, комплиментов или подтверждения для поддержки хрупкой самооценки.';

  @override
  String get metric_narcissist_5_name => 'Тактика триангуляции';

  @override
  String get metric_narcissist_5_description =>
      'Введение третьей стороны в конфликты для создания ревности, конкуренции или манипуляции восприятием.';

  @override
  String get metric_narcissist_6_name => 'Интенсивность любовной бомбардировки';

  @override
  String get metric_narcissist_6_description =>
      'Чрезмерная лесть, подарки или внимание на ранних этапах отношений для установления контроля и идеализации цели.';

  @override
  String get metric_narcissist_7_name => 'Критика обесценивания';

  @override
  String get metric_narcissist_7_description =>
      'Внезапный переход к резкой критике, унижению или презрению после идеализации, подрывающий самооценку цели.';

  @override
  String get metric_narcissist_8_name => 'Наказание молчанием';

  @override
  String get metric_narcissist_8_description =>
      'Умышленное прекращение общения или проявления привязанности как наказание для вызывания тревоги и подчинения.';

  @override
  String get metric_narcissist_9_name => 'Сдвиг вины DARVO';

  @override
  String get metric_narcissist_9_description =>
      'Отрицание ответственности, нападение на обвинителя и переворот ролей жертвы и обидчика для уклонения от ответственности.';

  @override
  String get metric_narcissist_10_name => 'Искажение реальности газлайтингом';

  @override
  String get metric_narcissist_10_description =>
      'Отрицание или искажение фактов, событий или чувств, чтобы заставить цель сомневаться в своей памяти или рассудке.';

  @override
  String get metric_narcissist_11_name => 'Гнев на критику';

  @override
  String get metric_narcissist_11_description =>
      'Интенсивный гнев, презрение или ответные действия в ответ на любое воспринимаемое оскорбление или обратную связь, даже конструктивную.';

  @override
  String get metric_narcissist_12_name => 'Нарушение границ';

  @override
  String get metric_narcissist_12_description =>
      'Игнорирование или нарушение установленных пределов, конфиденциальности или личного пространства без сожаления или переговоров.';

  @override
  String get metric_narcissist_13_name => 'Выражение зависти';

  @override
  String get metric_narcissist_13_description =>
      'Обида на успехи или имущество других, часто сопровождаемая обесцениванием или попытками подорвать их.';

  @override
  String get metric_narcissist_14_name => 'Эксплуататорское поведение';

  @override
  String get metric_narcissist_14_description =>
      'Использование других для личной выгоды, статуса или ресурсов без учета их благополучия или согласия.';

  @override
  String get metric_narcissist_15_name => 'Манипуляция отражением';

  @override
  String get metric_narcissist_15_description =>
      'Имитация интересов, ценностей или черт цели для создания ложного взаимопонимания и завоевания доверия.';

  @override
  String get metric_narcissist_16_name => 'Заявления о превосходстве';

  @override
  String get metric_narcissist_16_description =>
      'Утверждение о врожденном превосходстве над другими, часто с покровительственным или пренебрежительным языком.';

  @override
  String get metric_narcissist_17_name => 'Фантазийная поглощенность';

  @override
  String get metric_narcissist_17_description =>
      'Навязчивые разговоры о неограниченном успехе, власти, блеске или идеальной любви, которые нереалистичны.';

  @override
  String get metric_narcissist_18_name => 'Утверждение особого статуса';

  @override
  String get metric_narcissist_18_description =>
      'Убеждение, что их могут понять только высокостатусные люди или учреждения, или что они должны ассоциироваться только с ними.';

  @override
  String get metric_narcissist_19_name => 'Межличностная эксплуатация';

  @override
  String get metric_narcissist_19_description =>
      'Использование ресурсов, времени или эмоций других без взаимности или благодарности.';

  @override
  String get metric_narcissist_20_name => 'Отсутствие раскаяния';

  @override
  String get metric_narcissist_20_description =>
      'Отсутствие вины или извинений после причинения вреда, часто с оправданием действий как заслуженных целью.';

  @override
  String get metric_narcissist_21_name => 'Конкурентное подрывание';

  @override
  String get metric_narcissist_21_description =>
      'Саботаж достижений или отношений других для сохранения превосходящей позиции.';

  @override
  String get metric_narcissist_22_name => 'Фаза идеализации';

  @override
  String get metric_narcissist_22_description =>
      'Чрезмерная похвала и обожание на ранних этапах отношений, создающие нереалистичные ожидания у цели.';

  @override
  String get metric_narcissist_23_name => 'Фаза обесценивания';

  @override
  String get metric_narcissist_23_description =>
      'Постепенная или внезапная критика и презрение после идеализации, вызывающие замешательство и неуверенность в себе.';

  @override
  String get metric_narcissist_24_name => 'Импульс к отбрасыванию';

  @override
  String get metric_narcissist_24_description =>
      'Внезапное прекращение отношений, когда цель перестает обеспечивать нарциссическое снабжение или бросает вызов.';

  @override
  String get metric_narcissist_25_name => 'Попытки хуверинга';

  @override
  String get metric_narcissist_25_description =>
      'Повторное вовлечение отброшенной цели с помощью обещаний, чувства вины или манипуляций для восстановления снабжения.';

  @override
  String get metric_narcissist_26_name => 'Проекция недостатков';

  @override
  String get metric_narcissist_26_description =>
      'Обвинение других в собственных негативных чертах или поведении для избегания самоосознания.';

  @override
  String get metric_narcissist_27_name => 'Контроль через чувство вины';

  @override
  String get metric_narcissist_27_description =>
      'Использование вызывающих чувство вины заявлений для манипуляции другими с целью подчинения или заботы.';

  @override
  String get metric_narcissist_28_name => 'Эмоциональная нестабильность';

  @override
  String get metric_narcissist_28_description =>
      'Быстрые перепады настроения от обаяния до гнева, часто вызванные воспринимаемой нарциссической травмой.';

  @override
  String get metric_narcissist_29_name => 'Обесценивание чувств';

  @override
  String get metric_narcissist_29_description =>
      'Отбрасывание или минимизация эмоций других как чрезмерных реакций или иррациональных.';

  @override
  String get metric_narcissist_30_name => 'Монополизация разговоров';

  @override
  String get metric_narcissist_30_description =>
      'Доминирование в диалоге темами, сосредоточенными на себе, перебивание или игнорирование вклада других.';

  @override
  String get metric_narcissist_31_name => 'Оскорбительное унижение';

  @override
  String get metric_narcissist_31_description =>
      'Использование оскорблений, ярлыков или унизительных выражений для обесценивания и контроля над жертвой.';

  @override
  String get metric_narcissist_32_name => 'Угрозы покинуть';

  @override
  String get metric_narcissist_32_description =>
      'Использование страха потери или отвержения для принуждения к уступкам или привлечения внимания.';

  @override
  String get metric_narcissist_33_name => 'Игра в жертву';

  @override
  String get metric_narcissist_33_description =>
      'Изображение себя несправедливо обиженным для вызова сочувствия и уклонения от ответственности.';

  @override
  String get metric_narcissist_34_name => 'Комплекс мученика';

  @override
  String get metric_narcissist_34_description =>
      'Утверждение о чрезмерных жертвах или страданиях для вызывания чувства вины и обязательств у других.';

  @override
  String get metric_narcissist_35_name => 'Избирательная память';

  @override
  String get metric_narcissist_35_description =>
      'Удобное забывание обещаний, соглашений или вредных действий для избежания ответственности.';

  @override
  String get metric_narcissist_36_name => 'Коммуникационная блокада';

  @override
  String get metric_narcissist_36_description =>
      'Отказ от диалога, игнорирование вопросов или прекращение обсуждений для сохранения контроля.';

  @override
  String get metric_narcissist_37_name => 'Ложные обещания будущего';

  @override
  String get metric_narcissist_37_description =>
      'Грандиозные обещания о совместных планах на будущее для создания ложной надежды и зависимости.';

  @override
  String get metric_narcissist_38_name => 'Клеветническая кампания';

  @override
  String get metric_narcissist_38_description =>
      'Распространение злонамеренных слухов или лжи о жертве для её изоляции и подрыва репутации.';

  @override
  String get metric_narcissist_39_name => 'Тактики изоляции';

  @override
  String get metric_narcissist_39_description =>
      'Препятствование или предотвращение контактов с друзьями, семьёй или системами поддержки для усиления зависимости.';

  @override
  String get metric_narcissist_40_name => 'Финансовая эксплуатация';

  @override
  String get metric_narcissist_40_description =>
      'Манипулирование или контроль финансовых ресурсов для личной выгоды или создания зависимости.';

  @override
  String get metric_narcissist_41_name => 'Сексуальное принуждение';

  @override
  String get metric_narcissist_41_description =>
      'Использование давления, чувства вины или манипуляций для получения сексуального согласия без искреннего добровольного согласия.';

  @override
  String get metric_narcissist_42_name => 'Проверка границ';

  @override
  String get metric_narcissist_42_description =>
      'Многократное нарушение установленных пределов, чтобы выяснить, какое поведение будет терпимо, а затем усиление нарушений.';

  @override
  String get metric_narcissist_43_name => 'Отрицание газлайтинга';

  @override
  String get metric_narcissist_43_description =>
      'Категорическое отрицание произошедших событий или сказанных слов, заставляющее жертву сомневаться в реальности.';

  @override
  String get metric_narcissist_44_name => 'Принижение проблем';

  @override
  String get metric_narcissist_44_description =>
      'Отмахивание от обоснованных жалоб как от неважных или чрезмерно чувствительных.';

  @override
  String get metric_narcissist_45_name => 'Внешняя атрибуция вины';

  @override
  String get metric_narcissist_45_description =>
      'Приписывание всех проблем и конфликтов другим, полное неприятие личной ответственности.';

  @override
  String get metric_narcissist_46_name => 'Провокация ревности';

  @override
  String get metric_narcissist_46_description =>
      'Флирт или похвала других с целью вызвать ревность и сохранить эмоциональный контроль.';

  @override
  String get metric_narcissist_47_name => 'Эмоциональный шантаж';

  @override
  String get metric_narcissist_47_description =>
      'Использование страха, чувства долга или вины для манипуляции решениями и поведением.';

  @override
  String get metric_narcissist_48_name => 'Ложное прозрение';

  @override
  String get metric_narcissist_48_description =>
      'Притворная самоосознанность или эмпатия с целью казаться исправившимся, затем возвращение к токсичным паттернам.';

  @override
  String get metric_narcissist_49_name => 'Презрительный тон';

  @override
  String get metric_narcissist_49_description =>
      'Использование сарказма, насмешек или пренебрежительного языка для унижения и игнорирования других.';

  @override
  String get metric_narcissist_50_name => 'Фантазии о мести';

  @override
  String get metric_narcissist_50_description =>
      'Выражение желания отомстить или наказать тех, кто нанес обиду.';

  @override
  String get metric_serial_killer_1_name => 'Хищническое обрамление';

  @override
  String get metric_serial_killer_1_description =>
      'Обнаруживает язык, который представляет говорящего как охотника, а цель как добычу, указывая на хищнические намерения.';

  @override
  String get metric_serial_killer_2_name => 'Дефицит эмпатии';

  @override
  String get metric_serial_killer_2_description =>
      'Выявляет высказывания, лишенные эмоционального отклика или заботы о страданиях других, что указывает на черствость.';

  @override
  String get metric_serial_killer_3_name => 'Дегуманизирующие ярлыки';

  @override
  String get metric_serial_killer_3_description =>
      'Отмечает использование уничижительных терминов или объективирующих ярлыков, лишающих жертв человечности.';

  @override
  String get metric_serial_killer_4_name => 'Признаки объективации';

  @override
  String get metric_serial_killer_4_description =>
      'Распознает язык, который рассматривает людей как инструменты или объекты для удовлетворения.';

  @override
  String get metric_serial_killer_5_name => 'Фиксация на контроле';

  @override
  String get metric_serial_killer_5_description =>
      'Обнаруживает навязчивые упоминания о доминировании, манипуляции или принуждении к подчинению.';

  @override
  String get metric_serial_killer_6_name => 'Тон поиска острых ощущений';

  @override
  String get metric_serial_killer_6_description =>
      'Выявляет возбуждение или волнение при описании рискованных, жестоких или хищнических действий.';

  @override
  String get metric_serial_killer_7_name => 'Маркеры расщепления';

  @override
  String get metric_serial_killer_7_description =>
      'Отмечает резкие переходы между нормальными и жестокими темами, указывая на психологическое разделение.';

  @override
  String get metric_serial_killer_8_name => 'Сигналы выбора жертвы';

  @override
  String get metric_serial_killer_8_description =>
      'Обнаруживает критерии или предпочтения для нацеливания на конкретные уязвимые группы.';

  @override
  String get metric_serial_killer_9_name => 'Садистское удовольствие';

  @override
  String get metric_serial_killer_9_description =>
      'Распознает удовольствие, получаемое от боли, страха или страданий других.';

  @override
  String get metric_serial_killer_10_name => 'Манипулятивный вред';

  @override
  String get metric_serial_killer_10_description =>
      'Выявляет язык, используемый для обмана или принуждения других к вредным ситуациям.';

  @override
  String get metric_serial_killer_11_name => 'Индикаторы преследования';

  @override
  String get metric_serial_killer_11_description =>
      'Отмечает детальное отслеживание, наблюдение или навязчивый мониторинг цели.';

  @override
  String get metric_serial_killer_12_name => 'Язык манипуляции';

  @override
  String get metric_serial_killer_12_description =>
      'Обнаруживает тактику постепенного построения доверия для эксплуатации или насилия над жертвами.';

  @override
  String get metric_serial_killer_13_name => 'Насильственные фантазии';

  @override
  String get metric_serial_killer_13_description =>
      'Выявляет яркие описания причинения вреда или убийства других как мысленную репетицию.';

  @override
  String get metric_serial_killer_14_name => 'Утверждение власти';

  @override
  String get metric_serial_killer_14_description =>
      'Распознает высказывания, подчеркивающие превосходство или контроль над другими.';

  @override
  String get metric_serial_killer_15_name => 'Отсутствие раскаяния';

  @override
  String get metric_serial_killer_15_description =>
      'Отмечает отсутствие чувства вины или сожаления после обсуждения вредоносных действий.';

  @override
  String get metric_serial_killer_16_name => 'Экстернализация вины';

  @override
  String get metric_serial_killer_16_description =>
      'Обнаруживает перенос ответственности за насильственные побуждения на жертв или общество.';

  @override
  String get metric_serial_killer_17_name => 'Сексуализированное насилие';

  @override
  String get metric_serial_killer_17_description =>
      'Выявляет слияние сексуальных и насильственных тем в языке.';

  @override
  String get metric_serial_killer_18_name => 'Тактики изоляции';

  @override
  String get metric_serial_killer_18_description =>
      'Распознает усилия по отделению цели от сетей поддержки.';

  @override
  String get metric_serial_killer_19_name => 'Паттерны газлайтинга';

  @override
  String get metric_serial_killer_19_description =>
      'Отмечает язык, предназначенный для искажения реальности и подрыва психического здоровья жертвы.';

  @override
  String get metric_serial_killer_20_name => 'Маскировка угроз';

  @override
  String get metric_serial_killer_20_description =>
      'Обнаруживает скрытые угрозы или предупреждения, замаскированные под обыденные высказывания.';

  @override
  String get metric_serial_killer_21_name => 'Притяжательный язык';

  @override
  String get metric_serial_killer_21_description =>
      'Выявляет утверждения о собственности или праве на другого человека.';

  @override
  String get metric_serial_killer_22_name => 'Темы мести';

  @override
  String get metric_serial_killer_22_description =>
      'Распознает фиксацию на возмездии или наказании за предполагаемые обиды.';

  @override
  String get metric_serial_killer_23_name => 'Нарциссическое величие';

  @override
  String get metric_serial_killer_23_description =>
      'Отмечает преувеличенное чувство собственной важности и пренебрежение к ценности других.';

  @override
  String get metric_serial_killer_24_name => 'Эмоциональная отстраненность';

  @override
  String get metric_serial_killer_24_description =>
      'Обнаруживает клинический или отстраненный тон при обсуждении травмы или вреда.';

  @override
  String get metric_serial_killer_25_name => 'Хищническое терпение';

  @override
  String get metric_serial_killer_25_description =>
      'Выявляет язык долгосрочного планирования для будущей виктимизации.';

  @override
  String get metric_serial_killer_26_name => 'Проверка границ';

  @override
  String get metric_serial_killer_26_description =>
      'Распознает зондирование пределов или сопротивления у потенциальных жертв.';

  @override
  String get metric_serial_killer_27_name => 'Минимизация вреда';

  @override
  String get metric_serial_killer_27_description =>
      'Отмечает преуменьшение серьезности насильственных или жестоких действий.';

  @override
  String get metric_serial_killer_28_name => 'Оправдание насилия';

  @override
  String get metric_serial_killer_28_description =>
      'Обнаруживает рационализацию причинения вреда другим как необходимого или заслуженного.';

  @override
  String get metric_serial_killer_29_name => 'Навязчивая сосредоточенность';

  @override
  String get metric_serial_killer_29_description =>
      'Выявляет повторяющиеся, фиксированные мысли о конкретном человеке или действии.';

  @override
  String get metric_serial_killer_30_name => 'Холодный расчет';

  @override
  String get metric_serial_killer_30_description =>
      'Распознает стратегическое, бесстрастное планирование вредоносных действий.';

  @override
  String get metric_serial_killer_31_name => 'Обманчивое обаяние';

  @override
  String get metric_serial_killer_31_description =>
      'Отмечает чрезмерно льстивый или заискивающий язык, используемый для манипуляции.';

  @override
  String get metric_serial_killer_32_name => 'Обвинение жертвы';

  @override
  String get metric_serial_killer_32_description =>
      'Обнаруживает приписывание вины цели за собственную виктимизацию.';

  @override
  String get metric_serial_killer_33_name => 'Сигналы эскалации';

  @override
  String get metric_serial_killer_33_description =>
      'Определяет переход от фантазии к намерению в агрессивном языке.';

  @override
  String get metric_serial_killer_34_name => 'Паразитическая ориентация';

  @override
  String get metric_serial_killer_34_description =>
      'Распознает язык, рассматривающий других как ресурсы для эксплуатации.';

  @override
  String get metric_serial_killer_35_name => 'Признаки возбуждения';

  @override
  String get metric_serial_killer_35_description =>
      'Отмечает физиологические индикаторы возбуждения, связанные с темами насилия.';

  @override
  String get metric_serial_killer_36_name => 'Проверка лояльности';

  @override
  String get metric_serial_killer_36_description =>
      'Обнаруживает требования доказательств верности или секретности от сообщников.';

  @override
  String get metric_serial_killer_37_name => 'Ритуализированный язык';

  @override
  String get metric_serial_killer_37_description =>
      'Определяет шаблонные, церемониальные фразы вокруг актов насилия.';

  @override
  String get metric_serial_killer_38_name => 'Заявления о превосходстве';

  @override
  String get metric_serial_killer_38_description =>
      'Распознает утверждения о нахождении выше моральных или правовых ограничений.';

  @override
  String get metric_serial_killer_39_name => 'Эмоциональный вакуум';

  @override
  String get metric_serial_killer_39_description =>
      'Отмечает отсутствие эмоциональных слов в контекстах, требующих эмпатии.';

  @override
  String get metric_serial_killer_40_name => 'Хищническое любопытство';

  @override
  String get metric_serial_killer_40_description =>
      'Обнаруживает зондирующие вопросы о страхах или уязвимостях цели.';

  @override
  String get metric_serial_killer_41_name => 'Заглушение угроз';

  @override
  String get metric_serial_killer_41_description =>
      'Определяет предупреждения, направленные на предотвращение разоблачения или сообщения.';

  @override
  String get metric_serial_killer_42_name => 'Дегуманизирующие сравнения';

  @override
  String get metric_serial_killer_42_description =>
      'Распознает приравнивание людей к животным, объектам или нечеловеческим существам.';

  @override
  String get metric_serial_killer_43_name => 'Язык контроля';

  @override
  String get metric_serial_killer_43_description =>
      'Отмечает повелительный или командный тон, направленный на доминирование над другими.';

  @override
  String get metric_serial_killer_44_name => 'Садистские детали';

  @override
  String get metric_serial_killer_44_description =>
      'Выявляет чрезмерное внимание к графическому описанию боли или страданий в повествованиях.';

  @override
  String get metric_serial_killer_45_name => 'Манипулятивная эмпатия';

  @override
  String get metric_serial_killer_45_description =>
      'Определяет притворную заботу, направленную на снижение защиты цели.';

  @override
  String get metric_serial_killer_46_name => 'Хищный взгляд';

  @override
  String get metric_serial_killer_46_description =>
      'Распознает язык, описывающий интенсивное, вторгающееся наблюдение за целями.';

  @override
  String get metric_serial_killer_47_name => 'Насильственная идентичность';

  @override
  String get metric_serial_killer_47_description =>
      'Отмечает самоидентификацию как хищника, убийцы или монстра.';

  @override
  String get metric_serial_killer_48_name => 'Азарт охоты';

  @override
  String get metric_serial_killer_48_description =>
      'Выявляет возбуждение в процессе выслеживания или преследования жертв.';

  @override
  String get metric_serial_killer_49_name => 'Компульсивное признание';

  @override
  String get metric_serial_killer_49_description =>
      'Определяет позывы к раскрытию насильственных действий для психологического облегчения.';

  @override
  String get metric_serial_killer_50_name => 'Язык окончательности';

  @override
  String get metric_serial_killer_50_description =>
      'Распознает ссылки на завершение, убийство или постоянное замалчивание целей.';

  @override
  String get packNarcissistLabel => 'Нарцисс';

  @override
  String get packSerialKillerLabel => 'Серийный убийца';
}
