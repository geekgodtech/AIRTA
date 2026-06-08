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
  String get gotIt => 'Понятно';

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
}
