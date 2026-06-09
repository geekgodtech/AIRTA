// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'محلل سمية العلاقات بالذكاء الاصطناعي';

  @override
  String get psychologicalMetrics => 'المقاييس النفسية';

  @override
  String get metricsDescription =>
      'يؤدي اختيار عدد أقل من المقاييس إلى تحليل أعمق وأكثر تركيزًا لتلك السلوكيات. يؤدي اختيار عدد أكبر من المقاييس إلى تقرير أوسع مع تفاصيل أقل لكل مقياس.';

  @override
  String get selectSMS => 'اختر الرسائل القصيرة / RCS Chat';

  @override
  String get selectDiscordChannel => 'اختر قناة Discord';

  @override
  String get lightMode => 'فاتح';

  @override
  String get darkMode => 'داكن';

  @override
  String get discordSetupTitle => 'كيفية إعداد Discord';

  @override
  String get discordSetupDescription =>
      'اتبع هذه الخطوات لتمكين تحليل قنوات Discord في التطبيق:';

  @override
  String get discordStep1Title => 'إنشاء بوت Discord';

  @override
  String get discordStep1Description =>
      'اذهب إلى discord.com/developers، أنشئ تطبيقًا جديدًا وأضف بوتًا إليه. انسخ رمز البوت.';

  @override
  String get discordStep2Title => 'تمكين امتيازات البوت';

  @override
  String get discordStep2Description =>
      'في إعدادات البوت، قم بتمكين \'Message Content Intent\' و \'Server Members Intent\'.';

  @override
  String get discordStep3Title => 'دعوة البوت إلى الخادم';

  @override
  String get discordStep3Description =>
      'استخدم مولد عنوان URL OAuth2 لدعوة البوت إلى خادم Discord الخاص بك بالأذونات المطلوبة.';

  @override
  String get discordStep4Title => 'التكوين في التطبيق';

  @override
  String get discordStep4Description =>
      'أدخل رمز البوت الخاص بك في إعدادات التطبيق (اتصل بالدعم إذا كنت بحاجة إلى مساعدة).';

  @override
  String get discordStep5Title => 'اختيار القناة';

  @override
  String get discordStep5Description =>
      'اضغط على \'اختيار قناة Discord\'، اختر الخادم الخاص بك، ثم حدد القناة للتحليل.';

  @override
  String get gotIt => 'فهمت';

  @override
  String get selectFile => 'اختر ملفًا';

  @override
  String get analyzeSelectedMetrics => 'تحليل المقاييس المحددة';

  @override
  String get analyze20RandomMetrics => 'تحليل 20 مقياسًا عشوائيًا';

  @override
  String get membershipOptions => 'خيارات العضوية';

  @override
  String get free => 'مجاني';

  @override
  String get oneTimeUnlock => 'فتح التقرير لمرة واحدة';

  @override
  String get standard => 'قياسي';

  @override
  String get discordAddon => 'إضافة Discord';

  @override
  String get analyze => 'تحليل';

  @override
  String get report => 'تقرير';

  @override
  String get pdfReport => 'تقرير PDF';

  @override
  String get openPdf => 'فتح PDF';

  @override
  String get sharePdf => 'مشاركة PDF';

  @override
  String get printPdf => 'طباعة PDF';

  @override
  String get closePdfPreview => 'إغلاق نافذة معاينة PDF';

  @override
  String get openPdfPreview => 'فتح نافذة معاينة PDF';

  @override
  String get pdfPreviewDescription =>
      'تبدأ نافذة PDF المضمنة مغلقة للحفاظ على التقرير مضغوطًا.';

  @override
  String get notNow => 'ليس الآن';

  @override
  String get unlockThisReport => 'فتح هذا التقرير - \$20';

  @override
  String get joinStandard => 'الاشتراك في القياسي - \$9.99/شهر';

  @override
  String get instantUnlockTitle => 'فتح فوري للتقرير - \$20';

  @override
  String get instantUnlockDescription =>
      'هذه عملية شراء لمرة واحدة لفتح التقرير الحالي فقط. لا يلزم اشتراك. ستتطلب التقارير المستقبلية عمليات فتح منفصلة أو عضوية.\n\nالمتابعة بالدفع؟';

  @override
  String get purchaseFor20 => 'شراء مقابل \$20';

  @override
  String get share => 'مشاركة';

  @override
  String get print => 'طباعة';

  @override
  String get save => 'حفظ';

  @override
  String get cancel => 'إلغاء';

  @override
  String get ok => 'موافق';

  @override
  String get loading => 'جارٍ التحميل...';

  @override
  String get error => 'خطأ';

  @override
  String get success => 'نجاح';

  @override
  String get conversations => 'المحادثات';

  @override
  String get messages => 'الرسائل';

  @override
  String get selectConversation => 'اختر محادثة';

  @override
  String get selectSmsConversation => 'اختر الرسائل القصيرة / RCS Chat';

  @override
  String get searchConversations => 'البحث في المحادثات...';

  @override
  String get loadingConversations => 'جارٍ تحميل المحادثات...';

  @override
  String get errorLoadingConversations => 'خطأ في تحميل المحادثات';

  @override
  String get selectConversationToAnalyze => 'اختر المحادثة للتحليل';

  @override
  String get analyzeWithSelectedMetrics => 'التحليل بالمقاييس المحددة';

  @override
  String get loadConversationAndSelectMetric =>
      'حمّل محادثة واختر مقياسًا واحدًا على الأقل';

  @override
  String get selectAtLeastOneMetric =>
      'يجب تحديد مقياس واحد على الأقل لتشغيل التقرير.';

  @override
  String get spinningMetricWheel => 'تدوير عجلة المقاييس...';

  @override
  String get loadConversationToAnalyze => 'حمّل محادثة لتحليلها';

  @override
  String get noConversationsFound => 'لم يتم العثور على محادثات';

  @override
  String get permissionsRequired => 'الأذونات مطلوبة';

  @override
  String get smsPermission => 'الرسائل النصية';

  @override
  String get contactsPermission => 'جهات الاتصال';

  @override
  String get smsPermissionDescription =>
      'لتحليل محادثات الرسائل القصيرة الخاصة بك بحثًا عن أنماط العلاقات';

  @override
  String get contactsPermissionDescription =>
      'لعرض أسماء جهات الاتصال بدلاً من أرقام الهواتف';

  @override
  String get analyzingMessage =>
      'يرجى الانتظار بينما يتم إنشاء تحليلك النفسي بواسطة الذكاء الاصطناعي...';

  @override
  String get analyzingStatus => 'جارٍ تحليل المحادثة...';

  @override
  String get analyzingSubMessage =>
      'يرجى التحلي بالصبر، قد تستغرق هذه العملية ما يصل إلى دقيقة حسب سرعة اتصالك وكمية المقاييس المحددة';

  @override
  String get unlockFullReport => 'فتح وعرض هذا التقرير بالكامل';

  @override
  String get fullReportLocked => 'التقرير الكامل مقفل';

  @override
  String get upgradeToUnlock =>
      'قم بترقية عضويتك لفتح تقرير التحليل النفسي الكامل مع جميع المقاييس والرؤى التفصيلية.';

  @override
  String get language => 'اللغة';

  @override
  String get english => 'الإنجليزية';

  @override
  String get spanish => 'الإسبانية';

  @override
  String get french => 'الفرنسية';

  @override
  String get german => 'الألمانية';

  @override
  String get italian => 'الإيطالية';

  @override
  String get portuguese => 'البرتغالية';

  @override
  String get dutch => 'الهولندية';

  @override
  String get russian => 'الروسية';

  @override
  String get chinese => 'الصينية';

  @override
  String get japanese => 'اليابانية';

  @override
  String get korean => 'الكورية';

  @override
  String get arabic => 'العربية';

  @override
  String get hindi => 'الهندية';

  @override
  String get turkish => 'التركية';

  @override
  String get polish => 'البولندية';

  @override
  String get ukrainian => 'الأوكرانية';

  @override
  String get runAnotherAnalysis => 'تشغيل تحليل آخر؟';

  @override
  String get becomeMemberTitle => 'كن عضوًا للحصول على تقرير التحليل الكامل';

  @override
  String get becomeMemberSubtitle =>
      'اختر مستوى الوصول الذي يناسب المحادثات والتقارير التي تحتاج إلى تحليلها.';

  @override
  String get benefitAnalyzeSms => 'تحليل الرسائل النصية القصيرة';

  @override
  String get benefitReportPreview => 'تشغيل معاينة التقرير';

  @override
  String get benefitViewPartialReport => 'عرض حوالي 25% من التقرير';

  @override
  String get benefitLockedDetails => 'تفاصيل التقرير الكامل مقفلة';

  @override
  String get currentFreeAccess => 'الوصول المجاني الحالي';

  @override
  String get benefitUnlockCurrentReport => 'فتح هذا التقرير الكامل الحالي';

  @override
  String get benefitNoSubscription => 'بدون اشتراك';

  @override
  String get benefitSavePrintShareThis => 'حفظ وطباعة ومشاركة هذا التقرير';

  @override
  String get benefitBestSingleAnalysis =>
      'الأفضل إذا كنت تحتاج إلى تحليل واحد فقط';

  @override
  String get unlockThisReportShort => 'فتح هذا التقرير';

  @override
  String get benefitFullSmsReport => 'تقرير تحليل الرسائل القصيرة الكامل';

  @override
  String get benefitSavePrintSharePdf => 'حفظ وطباعة ومشاركة تقارير PDF';

  @override
  String get benefitTenReports => '10 تقارير لكل فترة 24 ساعة';

  @override
  String get benefitBestTextReview =>
      'الأفضل لمراجعة العلاقات عبر الرسائل النصية';

  @override
  String get benefitDateRangeFilter => 'تصفية التحليل حسب نطاق التاريخ';

  @override
  String get signUpStandard => 'الاشتراك في العضوية القياسية';

  @override
  String get benefitAddToStandard => 'الإضافة إلى العضوية القياسية';

  @override
  String get benefitAnalyzeDiscord => 'تحليل محادثات خوادم Discord';

  @override
  String get benefitRequiresBot => 'يتطلب تثبيت البوت';

  @override
  String get benefitBestGamers => 'الأفضل للاعبين ومجتمعات Discord';

  @override
  String get addDiscordAnalysis => 'إضافة تحليل Discord';

  @override
  String get requiresStandardMembership => 'يتطلب العضوية القياسية';

  @override
  String get comingSoon => 'قريبًا';

  @override
  String get comingSoonWithNextUpdate => 'قريبًا مع التحديث القادم:';

  @override
  String get proMembershipTier => 'مستوى عضوية Pro - \$19.99';

  @override
  String get proPlusMembershipTier => 'مستوى عضوية Pro-Plus - \$24.99';

  @override
  String get proGetsLabel => 'يشمل Pro:';

  @override
  String get proGetsDescription =>
      'حلل سلاسل المحادثات من جميع منصات المراسلة ووسائل التواصل الاجتماعي الشائعة الأخرى مثل:';

  @override
  String get proPlatformsList =>
      'LinkedIn وWhatsApp وInstagram وFacebook Messenger وTelegram وX (Twitter) والبريد الإلكتروني والتقويم';

  @override
  String get proPlusGetsLabel => 'يشمل Pro-Plus:';

  @override
  String get proPlusGetsDescription =>
      'كل ما في Pro، بالإضافة إلى إضافة Discord بسعر مخفض.';

  @override
  String get purchaseSuccessfulUnlocked =>
      'تمت عملية الشراء بنجاح! تم فتح التقرير.';

  @override
  String get purchaseFailed => 'فشلت عملية الشراء. يرجى المحاولة مرة أخرى.';

  @override
  String get membershipActivated => 'تم تفعيل العضوية!';

  @override
  String get dateRangeFilter => 'فلتر نطاق التاريخ';

  @override
  String get dateRangeOptional => '(اختياري)';

  @override
  String get startDate => 'تاريخ البدء';

  @override
  String get endDate => 'تاريخ الانتهاء';

  @override
  String get clear => 'مسح';

  @override
  String get dateRangeRequiresMembership => 'يتطلب عضوية Standard أو أعلى';

  @override
  String selectUpToCount(Object current, Object max) {
    return 'حدد حتى $max. الحالي: $current';
  }

  @override
  String get clearSelections => 'مسح التحديدات';

  @override
  String analyzeRandomMetrics(Object count) {
    return 'تحليل $count مؤشرات عشوائية';
  }

  @override
  String get saveSelections => 'حفظ التحديدات';

  @override
  String get loadSelections => 'تحميل الاختيارات';

  @override
  String get saveMetricListName => 'حفظ قائمة المؤشرات';

  @override
  String get enterListName => 'أدخل اسمًا لهذه القائمة:';

  @override
  String get chooseSavedMetrics => 'اختر قائمة المؤشرات المحفوظة:';

  @override
  String get noSavedLists =>
      'لا توجد قوائم مؤشرات محفوظة للتحميل في الوقت الحالي.';

  @override
  String get metricListSaved => 'تم حفظ قائمة المؤشرات بنجاح.';

  @override
  String get metricListLoaded => 'تم تحميل قائمة المؤشرات بنجاح.';

  @override
  String get filters => 'المرشحات';

  @override
  String get sortBy => 'ترتيب حسب:';

  @override
  String get recent => 'الأحدث';

  @override
  String get name => 'الاسم';

  @override
  String get count => 'العدد';

  @override
  String get namedOnly => 'المسمى فقط';

  @override
  String get minMessages => 'أقل رسائل:';

  @override
  String get minimumMessages => 'الحد الأدنى للرسائل:';

  @override
  String get executiveSummary => 'الملخص التنفيذي';

  @override
  String get metricScores => 'درجات المؤشرات';

  @override
  String get contextualEvidenceExamples => 'أمثلة الأدلة السياقية';

  @override
  String get neutralSynthesis => 'التركيب المحايد';

  @override
  String analysisOfSender(Object sender) {
    return 'تحليل $sender (المرسل)';
  }

  @override
  String analysisOfReceiver(Object receiver) {
    return 'تحليل $receiver (المستلم)';
  }

  @override
  String get finalConclusion => 'الخاتمة النهائية';

  @override
  String get metric_1_name => 'الازدراء';

  @override
  String get metric_1_description =>
      'يبحث عن التفوق، الاشمئزاز، السخرية، لغة تدوير العينين، أو الإهانات التي تضع شريكًا واحدًا تحت الآخر.';

  @override
  String get metric_2_name => 'الدفاعية';

  @override
  String get metric_2_description =>
      'يتتبع الحماية الذاتية الانعكاسية، الهجمات المضادة، الأعذار، والرفض النظر في شكوى الشخص الآخر.';

  @override
  String get metric_3_name => 'الإغلاق';

  @override
  String get metric_3_description =>
      'يحدد الإغلاق، الانسحاب، التجاهل، رفض الإجابة، أو إنهاء المحادثات لتجنب المشاركة.';

  @override
  String get metric_4_name => 'النقد';

  @override
  String get metric_4_description =>
      'يكتشف الهجمات على الشخصية أو الشخص بدلاً من السلوكيات المحددة، الاحتياجات، أو الحوادث.';

  @override
  String get metric_5_name => 'مؤشرات التلاعب النفسي';

  @override
  String get metric_5_description =>
      'يحدد محاولات جعل شخص يشك في الذاكرة، الإدراك، العقل، أو شرعية تجربته.';

  @override
  String get metric_6_name => 'تحويل اللوم';

  @override
  String get metric_6_description =>
      'يقيس ما إذا كان يتم إعادة توجيه المسؤولية إلى الشريك الآخر بدلاً من الاعتراف بها مباشرة.';

  @override
  String get metric_7_name => 'نمط التصعيد';

  @override
  String get metric_7_description =>
      'يقيم ما إذا كان النبرة، الاتهامات، الشدة، أو التهديدات تزيد بدلاً من التحرك نحو الحل.';

  @override
  String get metric_8_name => 'التعرف على محاولات الإصلاح';

  @override
  String get metric_8_description =>
      'يتحقق ما إذا كانت الاعتذارات، الفكاهة، التوقفات، الطمأنة، أو عروض السلام يتم ملاحظتها وقبولها.';

  @override
  String get metric_9_name => 'لغة المسؤولية';

  @override
  String get metric_9_description =>
      'يبحث عن ملكية واضحة للضرر، مسؤولية محددة، والرغبة في تغيير السلوك.';

  @override
  String get metric_10_name => 'احترام الحدود';

  @override
  String get metric_10_description =>
      'يقيم ما إذا كانت الحدود المحددة حول الوقت، الخصوصية، الجسم، العواطف، أو الاتصال محترمة.';

  @override
  String get metric_11_name => 'مؤشرات السيطرة القسرية';

  @override
  String get metric_11_description =>
      'يحدد أنماط التخويد، التقييد، المراقبة، الاعتماد، أو السيطرة على الخيارات والحركة.';

  @override
  String get metric_12_name => 'لغة التهديد';

  @override
  String get metric_12_description =>
      'يحدد التهديدات الصريحة أو الضمنية التي تتضمن السلامة، التخلي، الكشف، الانتقام، أو العقاب.';

  @override
  String get metric_13_name => 'الإهمال';

  @override
  String get metric_13_description =>
      'يكتشف تجاهل المخاوف، معاملة الاحتياجات على أنها غير مهمة، أو رفض أخذ الضيق بجدية.';

  @override
  String get metric_14_name => 'الإبطال';

  @override
  String get metric_14_description =>
      'يقيس الإنكار، السخرية، أو تصحيح عواطف شخص آخر بدلاً من الاعتراف بها.';

  @override
  String get metric_15_name => 'تعبير التعاطف';

  @override
  String get metric_15_description =>
      'يبحث عن تبني المنظور، الرعاية، الاعتراف العاطفي، والقلق تجاه تجربة الشخص الآخر.';

  @override
  String get metric_16_name => 'التبادلية';

  @override
  String get metric_16_description =>
      'يقيم ما إذا كان الانتباه، الجهد، الاعتذار، التنازل، والدعم العاطفي يتدفق في كلا الاتجاهين.';

  @override
  String get metric_17_name => 'التنظيم العاطفي';

  @override
  String get metric_17_description =>
      'يقيم القدرة على البقاء متجذرًا، التوقف، تهدئة الذات، والتواصل دون تفاعل انفجاري.';

  @override
  String get metric_18_name => 'السخرية المستخدمة كضرر';

  @override
  String get metric_18_description =>
      'يحدد السخرية المستخدمة للتقليل، العقاب، الإهانة، أو إخفاء العدائية كفكاهة.';

  @override
  String get metric_19_name => 'الشتائم';

  @override
  String get metric_19_description =>
      'يحدد التسميات المهينة، الإهانات، الشتائم الموجهة للشخص، أو الهجمات القائمة على الهوية.';

  @override
  String get metric_20_name => 'نمط المعاملة الصامتة';

  @override
  String get metric_20_description =>
      'يتتبع الصمت المستخدم كعقاب، سيطرة، تجنب، أو سحب الاتصال.';

  @override
  String get metric_21_name => 'إطار الغيرة';

  @override
  String get metric_21_description =>
      'يقيم الشك، التملك، الاتهامات، أو الغيرة المقدمة كدليل على الاهتمام.';

  @override
  String get metric_22_name => 'ضغط العزلة';

  @override
  String get metric_22_description =>
      'يحدد الجهود لفصل الشريك عن الأصدقاء، العائلة، أنظمة الدعم، أو وجهات النظر الخارجية.';

  @override
  String get metric_23_name => 'مؤشرات السيطرة المالية';

  @override
  String get metric_23_description =>
      'يبحث عن السيطرة على المال، الإنفاق، التوظيف، الوصول إلى الحسابات، أو الاستقلال المالي.';

  @override
  String get metric_24_name => 'مؤشرات انتهاك الخصوصية';

  @override
  String get metric_24_description =>
      'يكتشف التجسس، مطالبات كلمة المرور، فحص الأجهزة، تتبع الموقع، أو انتهاكات الخصوصية.';

  @override
  String get metric_25_name => 'تحديد الاعتذار';

  @override
  String get metric_25_description =>
      'يقيس ما إذا كانت الاعتذارات تسمي الضرر الدقيق، التأثير، والتصحيح المستقبلي بدلاً من البقاء غامضة.';

  @override
  String get metric_26_name => 'ضغط المسامحة';

  @override
  String get metric_26_description =>
      'يحدد مطالبات بالمضي قدمًا، المسامحة بسرعة، أو التوقف عن مناقشة الضرر قبل حدوث الإصلاح.';

  @override
  String get metric_27_name => 'التقليل';

  @override
  String get metric_27_description =>
      'يكتشف التقليل من الضرر، تسمية المخاوف الجدية درامية، أو تقليل التأثير لتجنب المسؤولية.';

  @override
  String get metric_28_name => 'الإسقاط';

  @override
  String get metric_28_description =>
      'يبحث عن الاتهامات التي تعكس سلوك المتحدث، دوافعه، أو مشاعره غير المحلولة.';

  @override
  String get metric_29_name => 'نمط المقاطعة';

  @override
  String get metric_29_description =>
      'يتتبع قطع، التحدث فوق، رفض الإكمال، أو التحكم في أدوار المحادثة.';

  @override
  String get metric_30_name => 'تحويل الموضوع';

  @override
  String get metric_30_description =>
      'يحدد تغيير الموضوع، إثارة قضايا غير ذات صلة، أو تجنب القلق المركزي.';

  @override
  String get metric_31_name => 'التوجه نحو الحل';

  @override
  String get metric_31_description =>
      'يقيس ما إذا كانت الرسائل تهدف إلى الحلول، الوضوح، الاتفاقات، والخطوات التالية.';

  @override
  String get metric_32_name => 'حل المشكلات المشترك';

  @override
  String get metric_32_description =>
      'يقيم اللغة التعاونية، المسؤولية المشتركة، العصف الذهني، والرغبة في إيجاد تنازلات قابلة للعمل.';

  @override
  String get metric_33_name => 'الفيضان العاطفي';

  @override
  String get metric_33_description =>
      'يكتسب الإرهاق، الذعر، الإغلاق، الدوران، أو عدم القدرة على المعالجة أثناء النزاع.';

  @override
  String get metric_34_name => 'إشارات استجابة الخوف';

  @override
  String get metric_34_description =>
      'يبحث عن التهدئة، الصياغة الحذرة، الرعب، مخاوف السلامة، أو الخوف من رد فعل الشريك.';

  @override
  String get metric_35_name => 'اتساق المطالبات';

  @override
  String get metric_35_description =>
      'يقيم ما إذا كانت الروايات تظل متسقة داخليًا عبر الرسائل والوقت.';

  @override
  String get metric_36_name => 'التذكر القائم على الأدلة';

  @override
  String get metric_36_description =>
      'يتحقق ما إذا كانت المطالبات تشير إلى أحداث ملموسة، اقتباسات، جداول زمنية، أو سلوك قابل للملاحظة.';

  @override
  String get metric_37_name => 'نمط طلب الانسحاب';

  @override
  String get metric_37_description =>
      'يتتبع شريكًا واحدًا يسعى للحصول على إجابات أو تغيير بينما يتجنب الآخر، يغلق، أو يخرج.';

  @override
  String get metric_38_name => 'مؤشرات عدم توازن القوة';

  @override
  String get metric_38_description =>
      'يحدد قوة قرار غير متكافئة، الخوف من العواقب، الاعتماد، التخويد، أو السيطرة الأحادية.';

  @override
  String get metric_39_name => 'الاختلاف المحترم';

  @override
  String get metric_39_description =>
      'يقيس ما إذا كان النزاع يحافظ على الكرامة، الفضول، والاختلاف دون تدهور.';

  @override
  String get metric_40_name => 'دورة الانقطاع والإصلاح';

  @override
  String get metric_40_description =>
      'يقيم ما إذا كان النزاع يتبعه الاعتراف، إعادة الاتصال، والإصلاح الفعلي.';

  @override
  String get metric_41_name => 'سحب المودة';

  @override
  String get metric_41_description =>
      'يكتشف حبس الحب، الدفء، الجنس، الانتباه، أو الطمأنة كعقاب أو رافعة.';

  @override
  String get metric_42_name => 'مراجع الإهانة العامة';

  @override
  String get metric_42_description =>
      'يحدد التهديدات، النكات، أو الإجراءات التي تخجل الشريك أمام الآخرين.';

  @override
  String get metric_43_name => 'إشارات النزاع المرتبط بالمادة';

  @override
  String get metric_43_description =>
      'يبحث عن استخدام الكحول أو المخدرات المرتبط بالعدوان، عدم الموثوقية، النزاع، أو الضرر.';

  @override
  String get metric_44_name => 'ضغط نزاع الأبوة';

  @override
  String get metric_44_description =>
      'يحدد الأطفال، الحضانة، أدوار الأبوة، أو ذنب الوالدين المستخدم في النزاع أو كرافعة.';

  @override
  String get metric_45_name => 'احترام الحدود الجنسية';

  @override
  String get metric_45_description =>
      'يقيم احترام الموافقة، الضغط، الرفض، الراحة، التوقيت، والاستقلال الجنسي.';

  @override
  String get metric_46_name => 'مؤشرات المضايقة الرقمية';

  @override
  String get metric_46_description =>
      'يتتبع الرسائل غير المرغوب فيها المتكررة، مكالمات البريد العشوائي، الضغط عبر الإنترنت، المراقبة، أو التخويد القائم على المنصة.';

  @override
  String get metric_47_name => 'لغة المراقبة أو التجسس';

  @override
  String get metric_47_description =>
      'يحدد التحقق من المكان، طلب الإثبات، تتبع السلوك، أو التحقق المستمر.';

  @override
  String get metric_48_name => 'التوجه المستقبلي';

  @override
  String get metric_48_description =>
      'يقيس ما إذا كان الشركاء يناقشون التحسين المستقبلي، الالتزامات، الخطط، أو الاتجاه البناء.';

  @override
  String get metric_49_name => 'إشارات تخطيط السلامة';

  @override
  String get metric_49_description =>
      'يبحث عن محاولات طلب المساعدة، إنشاء مسافة، توثيق الضرر، أو التخطيط للسلامة الجسدية/العاطفية.';

  @override
  String get metric_50_name => 'محاولات التصعيد المشترك';

  @override
  String get metric_50_description =>
      'يتتبع التوقفات، اللغة المهدئة، نبرة أكثر نعومة، المهلات، ومحاولات كلا الشريكين لتقليل الشدة.';

  @override
  String get metric_51_name => 'إشارات التعلق الآمن';

  @override
  String get metric_51_description =>
      'يحدد الثقة، الطمأنة المباشرة، التوافر العاطفي، والراحة مع القرب والاستقلال.';

  @override
  String get metric_52_name => 'تنشيط التعلق القلق';

  @override
  String get metric_52_description =>
      'يحدد سلوك الاحتجاج، احتياجات الطمأنة العاجلة، الخوف من التخلي، والحساسية المتزايدة للمسافة.';

  @override
  String get metric_53_name => 'تباعد التعلق التجنبي';

  @override
  String get metric_53_description =>
      'يكتشف التقليل العاطفي، دفاعات الاستقلال، الانسحاب من الضعف، أو الانزعاج مع الاحتياجات.';

  @override
  String get metric_54_name => 'إشارات التعلق غير المنظم';

  @override
  String get metric_54_description =>
      'يبحث عن دورات الاقتراب-الابتعاد، الخوف المختلط بالحاجة، ردود الفعل الفوضوية، أو أنماط العلاقة المربكة.';

  @override
  String get metric_55_name => 'العروض العاطفية والردود';

  @override
  String get metric_55_description =>
      'يقيس دعوات الانتباه، الراحة، أو الاتصال وما إذا كانت مقبولة أو فائتة.';

  @override
  String get metric_56_name => 'الابتعاد عن الاتصال';

  @override
  String get metric_56_description =>
      'يحدد تجاهل، رفض، أو الفشل في الرد على العروض للقرب أو الدعم.';

  @override
  String get metric_57_name => 'التحول ضد الاتصال';

  @override
  String get metric_57_description =>
      'يكتشف ردود الفعل العدائية أو العقابية على محاولات المودة، الضعف، أو الإصلاح.';

  @override
  String get metric_58_name => 'تجاوز المشاعر الإيجابية';

  @override
  String get metric_58_description =>
      'يبحث عن الكرم، الشك المعقول، المودة، وتفسير النزاع من خلال الرعاية.';

  @override
  String get metric_59_name => 'تجاوز المشاعر السلبية';

  @override
  String get metric_59_description =>
      'يحدد افتراض النية السيئة، تفسير الرسائل المحايدة بشكل سلبي، والإطار العدائي المستمر.';

  @override
  String get metric_60_name => 'نمط البداية القاسية';

  @override
  String get metric_60_description =>
      'يحدد المحادثات التي تبدأ بالاتهام، الهجوم، الازدراء، أو اللوم بدلاً من الطلب.';

  @override
  String get metric_61_name => 'نمط البداية الناعمة';

  @override
  String get metric_61_description =>
      'يبحث عن افتتاحات لطيفة باستخدام المشاعر، الاحتياجات، الطلبات المحددة، واللغة غير الاتهامية.';

  @override
  String get metric_62_name => 'التهئة الذاتية الفسيولوجية';

  @override
  String get metric_62_description =>
      'يقيم محاولات التوقف، التنفس، أخذ مساحة، أو تنظيم الجسم قبل متابعة النزاع.';

  @override
  String get metric_63_name => 'نمط تجنب النزاع';

  @override
  String get metric_63_description =>
      'يتتبع التجنب المتكرر للمواضيع الضرورية، الانزعاج، الاختلاف، أو الصدق العاطفي.';

  @override
  String get metric_64_name => 'أسلوب النزاع المتقلب';

  @override
  String get metric_64_description =>
      'يكتشف نزاعًا عالي الشدة مع تعبير مباشر قد لا يزال يشمل المشاركة والإصلاح.';

  @override
  String get metric_65_name => 'أسلوب النزاع المصدق';

  @override
  String get metric_65_description =>
      'يقيس ما إذا كان الشركاء يعترفون بمنظور بعضهم البعض أثناء الاختلاف.';

  @override
  String get metric_66_name => 'أسلوب النزاع العدائي';

  @override
  String get metric_66_description =>
      'يحدد النقد المتكرر، الازدراء، الدفاعية، الهجمات، والإطار العدائي.';

  @override
  String get metric_67_name => 'نمط العداء المنفصل';

  @override
  String get metric_67_description =>
      'يحدد العداء البارد، الانفصال العاطفي، الازدراء، ودافع الإصلاح المنخفض.';

  @override
  String get metric_68_name => 'الرغبة في التنازل';

  @override
  String get metric_68_description =>
      'يبحث عن المرونة، التفاوض، المقترحات الوسطية، والتضحيات التي تحترم كلا الاحتياجين.';

  @override
  String get metric_69_name => 'قبول التأثير';

  @override
  String get metric_69_description =>
      'يقيس الانفتاح على التأثر بمشاعر الشريك، الاحتياجات، أو المنظور.';

  @override
  String get metric_70_name => 'إشارات النزاع المحصور';

  @override
  String get metric_70_description =>
      'يحدد القضايا غير المحلولة المتكررة المرتبطة بالقيم، الأحلام، الهوية، أو عدم التوافق المزمن.';

  @override
  String get metric_71_name => 'إطار المشكلة القابلة للحل';

  @override
  String get metric_71_description =>
      'يكتشف تعريفات المشاكل العملية والمحددة التي يمكن أن تؤدي إلى اتفاقيات محددة.';

  @override
  String get metric_72_name => 'مراجع المعنى المشترك';

  @override
  String get metric_72_description =>
      'يبحث عن القيم، الطقوس، الأهداف، الذكريات، أو لغة الهوية التي تخلق قصة علاقة مشتركة.';

  @override
  String get metric_73_name => 'وعي خريطة الحب';

  @override
  String get metric_73_description =>
      'يقيم معرفة العالم الداخلي للشريك، الضغوط، التفضيلات، المخاوف، والحياة اليومية.';

  @override
  String get metric_74_name => 'المودة والإعجاب';

  @override
  String get metric_74_description =>
      'يحدد التقدير، الاحترام، الدفء، المجاملات، الامتنان، والنظرة الإيجابية.';

  @override
  String get metric_75_name => 'عدم التوازن في العمل العاطفي';

  @override
  String get metric_75_description =>
      'يحدد شريكًا واحدًا يحمل تخطيطًا غير متناسب، تهدئة، تذكرًا، شرحًا، أو صيانة العلاقة.';

  @override
  String get metric_76_name => 'رفض الحمل الذهني';

  @override
  String get metric_76_description =>
      'يكتشف تقليل عمل التخطيط غير المرئي، التنسيق المنزلي، الجدولة، أو تتبع المسؤولية.';

  @override
  String get metric_77_name => 'إشارات العجز المسلح';

  @override
  String get metric_77_description =>
      'يبحث عن ادعاء العجز، الارتباك، أو العجز لتجنب المسؤولية العادلة.';

  @override
  String get metric_78_name => 'حساسية محفزات الصدمة';

  @override
  String get metric_78_description =>
      'يقيس الوعي بالمحفزات، استجابات الصدمة، والمعالجة الحذرة للمواضيع الضعيفة.';

  @override
  String get metric_79_name => 'إشارات اليقظة المفرطة';

  @override
  String get metric_79_description =>
      'يحدد المسح بحثًا عن الخطر، المراقبة المفرطة للنبرة، الخوف من الأخطاء، أو اليقظة العاطفية المستمرة.';

  @override
  String get metric_80_name => 'لغة الخوف من التخلي';

  @override
  String get metric_80_description =>
      'يكتشف الخوف من الترك، الاستبدال، التجاهل، التخلص، أو التخلي العاطفي.';

  @override
  String get metric_81_name => 'نمط طلب الطمأنة';

  @override
  String get metric_81_description =>
      'يتتبع الطلبات المتكررة لإثبات الحب، الالتزام، السلامة، أو الاهتمام المستمر.';

  @override
  String get metric_82_name => 'دورة المطارد-المتباعد';

  @override
  String get metric_82_description =>
      'يحدد شريكًا واحدًا يتصاعد في السعي للقرب بينما يزيد الآخر المسافة.';

  @override
  String get metric_83_name => 'تراكم الاستياء';

  @override
  String get metric_83_description =>
      'يبحث عن الشكاوى المخزنة، المراجع الماضية المتكررة، المرارة، والدين العاطفي غير المحلول.';

  @override
  String get metric_84_name => 'سلوك احتساب النقاط';

  @override
  String get metric_84_description =>
      'يحدد العد المعاملاتي للأخطاء، الأفضال، التضحيات، أو الأخطاء للحصول على رافعة.';

  @override
  String get metric_85_name => 'المودة المشروطة';

  @override
  String get metric_85_description =>
      'يكتشف الحب، الموافقة، الوصول، أو الدفء المقدم فقط عند تحقيق الامتثال.';

  @override
  String get metric_86_name => 'مؤشرات قصف الحب';

  @override
  String get metric_86_description =>
      'يحدد المودة المكثفة، الوعود، الضغط، أو المثالية المستخدمة لتسريع التعلق أو السيطرة.';

  @override
  String get metric_87_name => 'محاولات السحب';

  @override
  String get metric_87_description =>
      'يحدد محاولات سحب شخص ما من خلال الذنب، الحنين، الوعود، الأزمات، أو المودة المفاجئة.';

  @override
  String get metric_88_name => 'نمط DARVO';

  @override
  String get metric_88_description =>
      'يكتشف ردود فعل الإنكار، الهجوم، وعكس الضحية-المعتدي عند مواجهة الضرر.';

  @override
  String get metric_89_name => 'نمط موقف الضحية';

  @override
  String get metric_89_description =>
      'يحدد التضحية الذاتية المتكررة التي تتجنب المسؤولية أو تعيد توجيه الانتباه عن الضرر المسبب.';

  @override
  String get metric_90_name => 'إطار التفوق الأخلاقي';

  @override
  String get metric_90_description =>
      'يبحث عن الاستقامة، مطالب النقاء، أو التفوق الأخلاقي المستخدم للسيطرة على النزاع.';

  @override
  String get metric_91_name => 'اغتيال الشخصية';

  @override
  String get metric_91_description =>
      'يكتشف الهجمات الواسعة على الهوية، النزاهة، الصحة العقلية، أو القيمة بدلاً من السلوك المحدد.';

  @override
  String get metric_92_name => 'مؤشرات التثليث';

  @override
  String get metric_92_description =>
      'يحدد إدخال أطراف ثالثة في النزاع للضغط، المقارنة، التحقق، أو زعزعة استقرار الشريك.';

  @override
  String get metric_93_name => 'ضغط المقارنة الاجتماعية';

  @override
  String get metric_93_description =>
      'يبحث عن المقارنات مع السابقين، الأصدقاء، الأزواج الآخرين، أو المثل المستخدمة للإخزال أو الإكراه.';

  @override
  String get metric_94_name => 'دعم الاستقلال';

  @override
  String get metric_94_description =>
      'يقيس احترام الاختيارات المستقلة، الصداقات، الأهداف، الحدود، والوكالة الشخصية.';

  @override
  String get metric_95_name => 'احترام الموافقة والاختيار';

  @override
  String get metric_95_description =>
      'يقيم ما إذا كانت القرارات تتخذ بحرية دون ضغط، ذنب، تهديدات، أو تلاعب.';

  @override
  String get metric_96_name => 'التخطيط التعاوني';

  @override
  String get metric_96_description =>
      'يبحث عن الجدولة المشتركة، القرارات المشتركة، المسؤوليات المنسقة، والمتابعة العملية.';

  @override
  String get metric_97_name => 'متابعة الإصلاح';

  @override
  String get metric_97_description =>
      'يقيس ما إذا كانت التغييرات الموعودة تنعكس لاحقًا في السلوك، وليس فقط الكلمات.';

  @override
  String get metric_98_name => 'دليل السلوك المتغير';

  @override
  String get metric_98_description =>
      'يتحقق من الإجراءات القابلة للملاحظة والمتكررة التي تظهر التعلم، التعديل، أو تقليل السلوك الضار.';

  @override
  String get metric_99_name => 'لغة السلامة العاطفية';

  @override
  String get metric_99_description =>
      'يحدد اللغة التي تدعو إلى الصدق، تقلل الخوف، تحمي الكرامة، وتطمئن التعبير الآمن.';

  @override
  String get metric_100_name => 'تردد العلاقة';

  @override
  String get metric_100_description =>
      'يكتشف عدم اليقين، الالتزام المختلط، رسائل الدفع والسحب، أو الرغبة غير الواضحة في الاستمرار.';

  @override
  String get unableToOpenConversations => 'لا يمكن فتح المحادثات';

  @override
  String get unableToOpenConversationsBody =>
      'حدث خطأ أثناء تحميل محادثاتك. يرجى المحاولة مرة أخرى.';

  @override
  String get unableToLoadConversationsBody =>
      'لا يمكن تحميل المحادثات. يرجى التحقق من الأذونات والمحاولة مرة أخرى.';

  @override
  String get errorLoadingConversationsBody =>
      'خطأ في تحميل المحادثات. يرجى المحاولة مرة أخرى.';

  @override
  String get smsPermissionRequired => 'إذن SMS مطلوب';

  @override
  String get smsPermissionRequiredBody =>
      'لتحليل محادثات SMS، نحتاج إلى إذن لقراءة رسائلك. خصوصيتك مهمة — يتم تحليل الرسائل محليًا فقط ولا يتم تخزينها أبدًا على خوادمنا.';

  @override
  String get grantSmsPermission => 'منح إذن SMS';

  @override
  String get noSmsConversationsFound => 'لم يتم العثور على محادثات SMS';

  @override
  String get noConversationsMatchSearch => 'لا توجد محادثات تطابق بحثك';

  @override
  String get noSmsMessagesOnDevice => 'ليس لديك رسائل SMS على هذا الجهاز';

  @override
  String get tryDifferentSearch => 'جرب مصطلح بحث مختلف';

  @override
  String get clearSearch => 'مسح البحث';

  @override
  String selectedFile(String filename) {
    return 'محدد: $filename';
  }

  @override
  String get invalidFile => 'ملف غير صالح';

  @override
  String get fileImport => 'استيراد ملف';

  @override
  String get fileImportNotImplemented =>
      'تحليل الملفات غير مطبق بعد لنوع الملف هذا.';

  @override
  String get errorPickingFile => 'لا يمكن فتح الملف. يرجى المحاولة مرة أخرى.';

  @override
  String get readyToCapture => 'جاهز لالتقاط';

  @override
  String get readyToCaptureBody =>
      'انتقل الآن إلى تطبيق الرسائل وابدأ في أخذ لقطات الشاشة.\n\nعد إلى هذا التطبيق عند الانتهاء واضغط على \"إنهاء ومعالجة\".';

  @override
  String get noScreenshotsToProcess => 'لا توجد لقطات شاشة للمعالجة.';

  @override
  String processingScreenshot(int current, int total) {
    return 'معالجة لقطة الشاشة $current من $total...';
  }

  @override
  String get noMessagesFound => 'لم يتم العثور على رسائل';

  @override
  String get noMessagesFoundBody =>
      'لا يمكن استخراج رسائل من لقطات الشاشة.\n\nتأكد من أن لقطات الشاشة تظهر المحادثة بوضوح.';

  @override
  String loadedMessages(int count) {
    return '$count رسائل محملة من لقطات الشاشة';
  }

  @override
  String get processingError => 'خطأ في المعالجة';

  @override
  String get processingErrorBody =>
      'خطأ في معالجة لقطات الشاشة. يرجى المحاولة مرة أخرى.';

  @override
  String metricListSavedAs(String name) {
    return 'تم حفظ اختياراتك باسم \"$name\".';
  }

  @override
  String metricListLoadedName(String name) {
    return 'تم استرجاع الاختيارات \"$name\" وتطبيقها.';
  }

  @override
  String conversationLoaded(int count, String name) {
    return '$count رسائل محملة من $name';
  }

  @override
  String get loadButton => 'تحميل';

  @override
  String get photoPermissionRequired =>
      'إذن مكتبة الصور مطلوب للكشف عن لقطات الشاشة.';

  @override
  String get initializingConnection => 'تهيئة الاتصال الآمن...';

  @override
  String get configurationRequired => 'تكوين مطلوب';

  @override
  String get goBack => 'رجوع';

  @override
  String get enableDateRangeFiltering => 'تمكين التصفية حسب نطاق التاريخ';

  @override
  String get clearSelectedDateRange => 'مسح نطاق التاريخ المحدد';

  @override
  String get largeThreadNoticeTitle => 'إشعار للمستخدم';

  @override
  String get largeThreadNoticeBody =>
      'عند التعامل مع سلاسل نصية كبيرة بشكل استثنائي، قد تتجاوز بعض شاشات التحميل في هذا التطبيق دقيقة ونصف أحيانًا.\n\nالتطبيق لا يتوقف. إذا رأيت مؤشر حالة يدور، التطبيق لا يزال قيد التحميل.\n\nيرجى الصبر في هذه الحالات، حيث قد يكون وقت التحميل أطول من المعتاد مقارنة بالتطبيقات الأخرى، خاصة عند التعامل مع مجموعة بيانات كبيرة مثل سلسلة مع 50000 رسالة.';

  @override
  String get neverShowThisAgain => 'عدم عرض هذه الرسالة مرة أخرى';

  @override
  String loadingConversationWith(String name) {
    return 'تحميل المحادثة\nمع $name…';
  }

  @override
  String get iosCaptureInstructions =>
      '1. افتح تطبيق الرسائل وحدد المحادثة\n2. انتقل إلى أقدم رسالة تريد تحليلها\n3. اضغط على \"بدء الالتقاط\" أدناه\n4. التقط لقطات الشاشة أثناء التمرير عبر المحادثة\n5. عند الانتهاء، اضغط على \"إنهاء ومعالجة\"';

  @override
  String get howToCaptureIosMessages => 'كيفية التقاط رسائل iOS';

  @override
  String get deepSeekApiKey => 'مفتاح API DeepSeek';

  @override
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis =>
      'أدخل مفتاح API DeepSeek الخاص بك لتمكين تحليل الذكاء الاصطناعي.';

  @override
  String get getYourApiKeyFrom =>
      'احصل على مفتاح API من: https://platform.deepseek.com';

  @override
  String get apiKey => 'مفتاح API';

  @override
  String get skPlaceholder => 'sk-...';

  @override
  String get yourApiKeyIsStoredSecurely =>
      'يتم تخزين مفتاح API الخاص بك بشكل آمن على جهازك ولا يتم مشاركته أبدًا.';

  @override
  String get pleaseEnterApiKey => 'الرجاء إدخال مفتاح API';

  @override
  String get apiKeySavedSuccessfully => 'تم حفظ مفتاح API بنجاح!';

  @override
  String get pleaseBePatientLongerTextThreads =>
      'يرجى الصبر، مجموعات البيانات لمسارات النصوص الأطول تستغرق وقتًا طويلاً للتحميل';

  @override
  String get almostThereBigOne => 'قريبًا، واو، يجب أن يكون هذا كبيرًا';

  @override
  String get pleaseBePatientLargeDatasets =>
      'يرجى الصبر، مجموعات البيانات الكبيرة قد تؤدي إلى أوقات تحميل تزيد عن دقيقة ونصف';

  @override
  String continuingToLoadMassiveThread(String name) {
    return 'متابعة تحميل المسار الضخم مع $name…';
  }

  @override
  String get noMessagesInDateRange =>
      'لم يتم العثور على رسائل في نطاق التاريخ المحدد. يرجى تحديد تواريخ مختلفة أو مسح مرشح التاريخ.';

  @override
  String get purchaseCustomMetricTileTitle => 'شراء مقياس مخصص';

  @override
  String get purchaseCustomMetricTileDescription =>
      'مقابل رسوم لمرة واحدة قدرها 4.99 دولار، أدخل اسم مقياس مخصص وتعريف يتم حفظه بشكل دائم إلى جانب مقاييسك الأخرى للاستخدام في أي تحليل مستقبلي. اشترِ مقاييس مخصصة غير محدودة.';

  @override
  String get purchaseCustomMetricConfirmTitle => 'شراء مقياس مخصص';

  @override
  String get purchaseCustomMetricConfirmBody =>
      'سيتم خصم 4.99 دولار من حسابك (لمرة واحدة) لفتح خانة مقياس مخصص واحدة.\n\nاسم المقياس المخصص وتعريفه دائمان ولا يمكن تغييرهما أبدًا بمجرد الحفظ، لذا يرجى الاختيار بعناية.';

  @override
  String get purchaseCustomMetricConfirmButton => 'شراء — 4.99 دولار';

  @override
  String get purchaseCustomMetricEnterNameTitle => 'اسم المقياس المخصص';

  @override
  String get purchaseCustomMetricEnterNamePrompt => 'أدخل اسم المقياس المخصص:';

  @override
  String get purchaseCustomMetricNameHint => 'اسم المقياس';

  @override
  String get purchaseCustomMetricConfirmNameTitle => 'تأكيد اسم المقياس';

  @override
  String get purchaseCustomMetricConfirmNameYouEntered => 'لقد أدخلت:\n\n';

  @override
  String get purchaseCustomMetricConfirmNameWarning =>
      '\n\n⚠️  هذا نهائي ولا يمكن تغييره أبدًا.';

  @override
  String get purchaseCustomMetricReenterName => 'عذرًا — إعادة إدخال الاسم';

  @override
  String get purchaseCustomMetricSaveName => 'موافق — حفظ اسم المقياس';

  @override
  String purchaseCustomMetricDefineTitleWithName(String name) {
    return 'تعريف: $name';
  }

  @override
  String purchaseCustomMetricDefinePromptWithName(String name) {
    return 'أدخل معنى المقياس المخصص: $name';
  }

  @override
  String get purchaseCustomMetricMeaningHint =>
      'صف ما يعنيه هذا المقياس، والسلوكيات التي يبحث عنها، وكيفية تطبيقه على ديناميكيات العلاقة...';

  @override
  String get purchaseCustomMetricReenter => 'عذرًا — إعادة الإدخال';

  @override
  String get purchaseCustomMetricSaveMeaning => 'موافق — حفظ المعنى';

  @override
  String get purchaseCustomMetricPreviewTitle => 'معاينة المقياس المخصص';

  @override
  String get purchaseCustomMetricPreviewSubtitle => 'هكذا ستبدو لوحتك:';

  @override
  String get purchaseCustomMetricLastChanceWarning =>
      '⚠️  هذه فرصتك الأخيرة للتراجع.\nبمجرد الالتزام، يصبح الاسم والتعريف دائمين.';

  @override
  String get purchaseCustomMetricCancelEverything => 'إلغاء كل شيء';

  @override
  String get purchaseCustomMetricCommit => 'الالتزام بالمقياس المخصص';

  @override
  String purchaseCustomMetricSuccess(String name) {
    return '✓ تمت إضافة \"$name\" إلى مقاييسك! يمكنك الآن اختياره للتحليل.';
  }

  @override
  String get purchaseCustomMetricProcessingTitle => 'جاري معالجة الشراء...';

  @override
  String get purchaseCustomMetricProcessingBody =>
      'في انتظار تأكيد المتجر.\nيرجى عدم إغلاق التطبيق.';

  @override
  String get next => 'التالي';

  @override
  String get cancelNotReady => 'إلغاء — لم أكن مستعدًا';

  @override
  String get packGoodLabel => 'الجيد';

  @override
  String get packBadLabel => 'السيء';

  @override
  String get packUglyLabel => 'القبيح';

  @override
  String get metric_good_1_name => 'مؤشرات الاستماع النشط';

  @override
  String get metric_good_1_description =>
      'يكشف إعادة الصياغة، الأسئلة التوضيحية، وإظهار فهم وجهة نظر الشريك في النص.';

  @override
  String get metric_good_2_name => 'التعبير عن التقدير';

  @override
  String get metric_good_2_description =>
      'يحدد الامتنان المحدد، والاعتراف بالجهد، والتقدير لصفات الشريك أو أفعاله الإيجابية.';

  @override
  String get metric_good_3_name => 'لغة التأكيد';

  @override
  String get metric_good_3_description =>
      'يبحث عن العبارات التي تؤكد مشاعر الشريك، تجاربه، قيمته، أو حقه في الاحتياجات.';

  @override
  String get metric_good_4_name => 'النغمة التعاونية';

  @override
  String get metric_good_4_description =>
      'يقيس استخدام \"نحن\"، ولغة حل المشكلات المشتركة، وتأطير القضايا كتحديات مشتركة لمعالجتها معًا.';

  @override
  String get metric_good_5_name => 'فضول تجاه الشريك';

  @override
  String get metric_good_5_description =>
      'يتتبع طرح أسئلة حول أفكار الشريك، مشاعره، يومه، تفضيلاته، أو تجربته الداخلية.';

  @override
  String get metric_good_6_name => 'التعبير عن الضعف';

  @override
  String get metric_good_6_description =>
      'يحدد مشاركة المخاوف وانعدام الأمان والاحتياجات أو الحقائق العاطفية دون دفاعية أو لوم.';

  @override
  String get metric_good_7_name => 'الفكاهة كتواصل';

  @override
  String get metric_good_7_description =>
      'يكشف عن ضحك مشترك مرح يجمع الشركاء بدلاً من السخرية أو التقليل من الشأن.';

  @override
  String get metric_good_8_name => 'تقديم الطمأنة';

  @override
  String get metric_good_8_description =>
      'يبحث عن العبارات الاستباقية التي توفر الراحة أو الأمان أو الثقة للشريك القلق.';

  @override
  String get metric_good_9_name => 'تكرار الإطراء';

  @override
  String get metric_good_9_description =>
      'يقيس الثناء المحدد والحقيقي حول المظهر أو الشخصية أو القدرات أو الأفعال الإيجابية.';

  @override
  String get metric_good_10_name => 'التوفر العاطفي';

  @override
  String get metric_good_10_description =>
      'يقيس الاستجابة للاحتياجات العاطفية للشريك، والتواجد أثناء الضيق، والاستعداد للمشاركة.';

  @override
  String get metric_good_11_name => 'عادة الامتنان';

  @override
  String get metric_good_11_description =>
      'يحدد التعبيرات المنتظمة عن الشكر للأشياء الصغيرة، والجهد، والتواجد، أو الدعم.';

  @override
  String get metric_good_12_name => 'لغة داعمة';

  @override
  String get metric_good_12_description =>
      'يتتبع العبارات التي تقدم المساعدة، والتشجيع، والإيمان بقدرات الشريك، أو الوقوف إلى جانبه.';

  @override
  String get metric_good_13_name => 'الخلاف اللطيف';

  @override
  String get metric_good_13_description =>
      'يقيس القدرة على التعبير عن آراء مختلفة مع الحفاظ على الاحترام والفضول والعلاقة.';

  @override
  String get metric_good_14_name => 'صدق الاعتذار';

  @override
  String get metric_good_14_description =>
      'يكشف الندم الحقيقي، وفهم الأثر، والالتزام بالتغيير دون أعذار.';

  @override
  String get metric_good_15_name => 'قبول التسامح';

  @override
  String get metric_good_15_description =>
      'يبحث عن الاستعداد للتخلي عن الأذى الماضي، والمضي قدمًا، وإعادة بناء الثقة بعد الإصلاح.';

  @override
  String get metric_good_16_name => 'مبادرة الوقت النوعي';

  @override
  String get metric_good_16_description =>
      'يحدد عروض قضاء وقت مركز معًا، أو تخطيط الأنشطة، أو خلق لحظات تواصل.';

  @override
  String get metric_good_17_name => 'إشارات المودة الجسدية';

  @override
  String get metric_good_17_description =>
      'يتتبع ذكر اللمس، والعناق، والقبلات، أو القرب الجسدي كتعبير عن الاهتمام والحميمية.';

  @override
  String get metric_good_18_name => 'الاعتراف بالفرح المشترك';

  @override
  String get metric_good_18_description =>
      'يقيس الاحتفال بانتصارات الشريك، وإنجازاته، وسعادته، أو أخباره الجيدة بحماس حقيقي.';

  @override
  String get metric_good_19_name => 'جهد حل النزاع';

  @override
  String get metric_good_19_description =>
      'يحدد محاولات إيجاد حلول، أو حل وسط، أو استعادة السلام بعد الخلاف.';

  @override
  String get metric_good_20_name => 'إظهار الصبر';

  @override
  String get metric_good_20_description =>
      'يكشف التسامح مع وتيرة الشريك، صعوباته، منحنى التعلم، أو احتياجاته العاطفية.';

  @override
  String get metric_good_21_name => 'لغة تبنّي المنظور';

  @override
  String get metric_good_21_description =>
      'يبحث عن عبارات تظهر فهم وجهة نظر الشريك، سياقه، أو واقعه العاطفي.';

  @override
  String get metric_good_22_name => 'إشارات الموثوقية';

  @override
  String get metric_good_22_description =>
      'يتابع الالتزام بالوعود، الظهور باستمرار، والاعتمادية.';

  @override
  String get metric_good_23_name => 'احترام الاختلافات';

  @override
  String get metric_good_23_description =>
      'يقيس قبول الصفات الفريدة للشريك، تفضيلاته، آرائه، وطرق وجوده.';

  @override
  String get metric_good_24_name => 'الانفتاح على التغذية الراجعة';

  @override
  String get metric_good_24_description =>
      'يحدد التقبل لاهتمامات الشريك، الرغبة في سماع النقد، والرغبة في التحسن.';

  @override
  String get metric_good_25_name => 'التحقق من المشاعر';

  @override
  String get metric_good_25_description =>
      'يكشف الاعتراف بأن مشاعر الشريك حقيقية، مفهومة، وتستحق الاهتمام.';

  @override
  String get metric_good_26_name => 'لغة التشجيع';

  @override
  String get metric_good_26_description =>
      'يبحث عن عبارات تلهم الثقة، تحفز العمل، أو تدعم أهداف الشريك.';

  @override
  String get metric_good_27_name => 'الإفصاح الحميم';

  @override
  String get metric_good_27_description =>
      'يحدد مشاركة الأفكار الشخصية، الأحلام، المخاوف، أو الأسرار التي تعمق الاتصال العاطفي.';

  @override
  String get metric_good_28_name => 'إشارات التناغم';

  @override
  String get metric_good_28_description =>
      'يقيس ملاحظة مزاج الشريك أو احتياجاته أو ضيقه دون أن يُطلب منه ذلك صراحةً.';

  @override
  String get metric_good_29_name => 'إعادة الصياغة الإيجابية';

  @override
  String get metric_good_29_description =>
      'يكشف عن إيجاد الجوانب المشرقة أو فرص النمو أو الزوايا البناءة في المواقف الصعبة.';

  @override
  String get metric_good_30_name => 'لغة الالتزام';

  @override
  String get metric_good_30_description =>
      'يتتبع عبارات التفاني والتفكير طويل المدى والاستثمار في مستقبل العلاقة.';

  @override
  String get metric_good_31_name => 'إظهار المرونة';

  @override
  String get metric_good_31_description =>
      'يحدد الاستعداد لتعديل الخطط أو تعديل التوقعات أو مقابلة الشريك في منتصف الطريق.';

  @override
  String get metric_good_32_name => 'لغة الحماية';

  @override
  String get metric_good_32_description =>
      'يبحث عن عبارات تظهر أن سلامة الشريك ورفاهيته واهتماماته مهمة بعمق.';

  @override
  String get metric_good_33_name => 'الاحتفال بالمحطات';

  @override
  String get metric_good_33_description =>
      'يقيس الاعتراف بالذكرى السنوية أو الإنجازات أو اللحظات المهمة معًا.';

  @override
  String get metric_good_34_name => 'التغذية الراجعة البناءة';

  @override
  String get metric_good_34_description =>
      'يكشف عن تقديم اقتراحات للتحسين تكون لطيفة ومحددة وتركز على النمو.';

  @override
  String get metric_good_35_name => 'الحضور أثناء الشدة';

  @override
  String get metric_good_35_description =>
      'يحدد البقاء منخرطًا عندما يعاني الشريك أو يحزن أو يواجه تحديات.';

  @override
  String get metric_good_36_name => 'التعبير عن الإعجاب';

  @override
  String get metric_good_36_description =>
      'يتتبع الاحترام الحقيقي لشخصية الشريك أو قوته أو ذكائه أو مرونته.';

  @override
  String get metric_good_37_name => 'مؤشرات المرح';

  @override
  String get metric_good_37_description =>
      'يبحث عن المزاح الخفيف، النكات الداخلية، أو التفاعلات الممتعة التي تعزز الترابط.';

  @override
  String get metric_good_38_name => 'المرآة التعاطفية';

  @override
  String get metric_good_38_description =>
      'يقيس عكس مشاعر الشريك لإظهار الفهم والتقدير.';

  @override
  String get metric_good_39_name => 'لغة القبول';

  @override
  String get metric_good_39_description =>
      'يكشف عن تقبل الشريك كما هو، بما في ذلك عيوبه، دون طلب التغيير.';

  @override
  String get metric_good_40_name => 'الحضور الداعم';

  @override
  String get metric_good_40_description =>
      'يحدد التواجد دون محاولة الإصلاح، وتقديم الراحة من خلال الاستماع والرفقة.';

  @override
  String get metric_good_41_name => 'الاهتمام الحقيقي';

  @override
  String get metric_good_41_description =>
      'يتابع طرح أسئلة متابعة وتذكر تفاصيل عن حياة الشريك واهتماماته.';

  @override
  String get metric_good_42_name => 'الجهد المتبادل';

  @override
  String get metric_good_42_description =>
      'يقيس مساهمة كلا الشريكين بالتساوي في العمل العاطفي، التخطيط، وصيانة العلاقة.';

  @override
  String get metric_good_43_name => 'لغة التسامح';

  @override
  String get metric_good_43_description =>
      'يبحث عن التخلي عن الضغائن، منح فرص ثانية، واختيار تجاوز الألم.';

  @override
  String get metric_good_44_name => 'إشارات الاحترام المتبادل';

  @override
  String get metric_good_44_description =>
      'يكشف عن معاملة الشريك كند، واحترام آرائه، وتقدير مساهمته.';

  @override
  String get metric_good_45_name => 'الصدق العاطفي';

  @override
  String get metric_good_45_description =>
      'يحدد التعبير الصادق عن المشاعر دون تلاعب، مبالغة، أو حجب استراتيجي.';

  @override
  String get metric_good_46_name => 'الاستماع الداعم';

  @override
  String get metric_good_46_description =>
      'يقيس السماح للشريك بالتعبير الكامل دون مقاطعة أو حكم أو حل فوري للمشكلات.';

  @override
  String get metric_good_47_name => 'الألقاب الحنونة';

  @override
  String get metric_good_47_description =>
      'يتتبع استخدام كلمات الحب الحنونة التي تنقل الدفء والارتباط العاطفي.';

  @override
  String get metric_good_48_name => 'الضحك المشترك';

  @override
  String get metric_good_48_description =>
      'يحدد لحظات الفكاهة والفرح المشترك التي تخلق تجارب ترابط إيجابية.';

  @override
  String get metric_good_49_name => 'الإيماءات المدروسة';

  @override
  String get metric_good_49_description =>
      'يبحث عن أفعال اللطف الصغيرة، وتذكر التفضيلات، أو فعل الأشياء لإسعاد الشريك.';

  @override
  String get metric_good_50_name => 'الثقة في الشريك';

  @override
  String get metric_good_50_description =>
      'يكشف عن الإيمان بقدرات الشريك وإمكاناته وقدرته على التعامل مع التحديات.';

  @override
  String get metric_good_51_name => 'الاعتماد المتبادل الصحي';

  @override
  String get metric_good_51_description =>
      'يقيس التوازن بين الترابط والاستقلالية، ودعم استقلالية كل منهما للآخر.';

  @override
  String get metric_good_52_name => 'تهدئة النزاع';

  @override
  String get metric_good_52_description =>
      'يحدد اللغة اللينة، أو فترات الراحة، أو تقديم الحلول لتهدئة النقاشات الحادة.';

  @override
  String get metric_good_53_name => 'الاعتذار الصادق';

  @override
  String get metric_good_53_description =>
      'يتتبع الاعتراف الكامل بالخطأ دون تقليل أو دفاع أو إلقاء اللوم.';

  @override
  String get metric_good_54_name => 'عروض الدعم العاطفي';

  @override
  String get metric_good_54_description =>
      'يبحث عن التواصل الاستباقي، والسؤال عن حال الشريك، وعرض المساعدة.';

  @override
  String get metric_good_55_name => 'حدود محترمة';

  @override
  String get metric_good_55_description =>
      'يقيس احترام الحدود المعلنة للشريك مع الحفاظ على الحدود الصحية الخاصة.';

  @override
  String get metric_good_56_name => 'ترقب إيجابي';

  @override
  String get metric_good_56_description =>
      'يكشف عن الحماس تجاه المستقبل معًا، والتخطيط المسبق، والتطلع إلى التجارب المشتركة.';

  @override
  String get metric_good_57_name => 'إشارات الانتباه';

  @override
  String get metric_good_57_description =>
      'يحدد تذكر التواريخ المهمة والتفضيلات والتفاصيل التي تظهر أن الشريك مهم.';

  @override
  String get metric_good_58_name => 'تشجيع النمو';

  @override
  String get metric_good_58_description =>
      'يتابع دعم التطور الشخصي للشريك، والتعلم، والسعي لتحقيق الأهداف.';

  @override
  String get metric_good_59_name => 'لغة حنونة';

  @override
  String get metric_good_59_description =>
      'يبحث عن اختيارات الكلمات اللطيفة والحنونة التي تنقل الرقة والدفء العاطفي.';

  @override
  String get metric_good_60_name => 'مساءلة متبادلة';

  @override
  String get metric_good_60_description =>
      'يقيس تحمل كلا الشريكين للمسؤولية عن أفعالهما وتأثيرها.';

  @override
  String get metric_good_61_name => 'الاحتفاء بالشريك';

  @override
  String get metric_good_61_description =>
      'يكشف عن التعبير عن الفخر أو الفرح أو الإعجاب بالشريك علنًا أو سرًا.';

  @override
  String get metric_good_62_name => 'عاطفة ثابتة';

  @override
  String get metric_good_62_description =>
      'يحدد التعبيرات المنتظمة عن الحب التي لا تتقلب بناءً على الأداء أو الامتثال.';

  @override
  String get metric_good_63_name => 'تناغم عاطفي';

  @override
  String get metric_good_63_description =>
      'يتتبع استشعار التغيرات الطفيفة في الحالة العاطفية للشريك والاستجابة لها.';

  @override
  String get metric_good_64_name => 'اتخاذ القرارات التعاوني';

  @override
  String get metric_good_64_description =>
      'يقيس مناقشة الخيارات معًا واتخاذ قرارات تراعي احتياجات كلا الشريكين.';

  @override
  String get metric_good_65_name => 'طمأنة بلا اشتراط';

  @override
  String get metric_good_65_description =>
      'يبحث عن تقديم الراحة والأمان دون اشتراط كسب الشريك له.';

  @override
  String get metric_good_66_name => 'اتصال أصيل';

  @override
  String get metric_good_66_description =>
      'يكشف عن الحضور الحقيقي والمشاركة الصادقة والتخلي عن التصنع في التفاعلات.';

  @override
  String get metric_good_67_name => 'تشجيع متبادل';

  @override
  String get metric_good_67_description =>
      'يحدد تشجيع الشريكين لبعضهما البعض والاحتفاء بالجهود وليس فقط النتائج.';

  @override
  String get metric_good_68_name => 'استفسار محترم';

  @override
  String get metric_good_68_description =>
      'يتتبع السؤال عن وجهة نظر الشريك بفضول حقيقي وليس استجوابًا.';

  @override
  String get metric_good_69_name => 'ثبات محب';

  @override
  String get metric_good_69_description =>
      'يقيس الظهور بنفس الطريقة في الأوقات الجيدة والصعبة، والثبات في المودة.';

  @override
  String get metric_good_70_name => 'تبادل عاطفي';

  @override
  String get metric_good_70_description =>
      'يبحث عن مشاركة كلا الشريكين للمشاعر والاحتياجات ونقاط الضعف بطريقة متوازنة.';

  @override
  String get metric_good_71_name => 'حضور بهيج';

  @override
  String get metric_good_71_description =>
      'يكشف عن السعادة الحقيقية في صحبة الشريك والحماس لقضاء الوقت معًا.';

  @override
  String get metric_good_72_name => 'حوار بناء';

  @override
  String get metric_good_72_description =>
      'يحدد المحادثات التي تتجه نحو الفهم بدلاً من الفوز أو إثبات الصواب.';

  @override
  String get metric_good_73_name => 'الدفاع الحامي';

  @override
  String get metric_good_73_description =>
      'يتتبع الدفاع عن الشريك، وحمايته، وإعطاء الأولوية لرفاهيته.';

  @override
  String get metric_good_74_name => 'التواصل الواعي';

  @override
  String get metric_good_74_description =>
      'يقيس اختيار الكلمات بعناية، والتفكير في الأثر قبل التحدث، والرسائل المتعمدة.';

  @override
  String get metric_good_75_name => 'الاستثمار في العلاقة';

  @override
  String get metric_good_75_description =>
      'يبحث عن الوقت والطاقة والموارد المكرسة لرعاية العلاقة.';

  @override
  String get metric_good_76_name => 'لغة القاعدة الآمنة';

  @override
  String get metric_good_76_description =>
      'يكشف عن تقديم الاستقرار والأمان وأساس يمكن للشريك من خلاله الاستكشاف.';

  @override
  String get metric_good_77_name => 'الإعجاب المتبادل';

  @override
  String get metric_good_77_description =>
      'يحدد تعبير كلا الشريكين عن الاحترام والتقدير لصفات بعضهما البعض.';

  @override
  String get metric_good_78_name => 'لحظات الحنان';

  @override
  String get metric_good_78_description =>
      'يتتبع خلق أو التعرف على لحظات حميمية هادئة من التواصل والقرب.';

  @override
  String get metric_good_79_name => 'الفضول الحقيقي';

  @override
  String get metric_good_79_description =>
      'يبحث عن اهتمام حقيقي بفهم أفكار الشريك ومشاعره وتجاربه.';

  @override
  String get metric_good_80_name => 'القبول المحب';

  @override
  String get metric_good_80_description =>
      'يكشف عن تقبل الشريك بكامله، بما في ذلك عيوبه وماضيه.';

  @override
  String get metric_good_81_name => 'دعم النمو المتبادل';

  @override
  String get metric_good_81_description =>
      'يحدد تشجيع كلا الشريكين لتطور بعضهما البعض والاحتفال بالتقدم.';

  @override
  String get metric_good_82_name => 'مؤشرات النبرة الدافئة';

  @override
  String get metric_good_82_description =>
      'يتتبع استخدام اللغة العاطفية والعبارات اللطيفة وأسلوب التواصل اللين.';

  @override
  String get metric_good_83_name => 'التفاعل المستجيب';

  @override
  String get metric_good_83_description =>
      'يقيس الردود السريعة والمتفاعلة على رسائل الشريك وإشاراته العاطفية.';

  @override
  String get metric_good_84_name => 'توافق القيم المشتركة';

  @override
  String get metric_good_84_description =>
      'يبحث عن إشارات إلى المعتقدات أو الأهداف أو فلسفات الحياة المشتركة التي توحد الزوجين.';

  @override
  String get metric_good_85_name => 'الدعم غير المشروط';

  @override
  String get metric_good_85_description =>
      'يكشف عن الوقوف إلى جانب الشريك في الصعوبات دون جعل الدعم مشروطًا.';

  @override
  String get metric_good_86_name => 'الضعف الحميمي';

  @override
  String get metric_good_86_description =>
      'يحدد مشاركة المخاوف العميقة أو الأحلام أو انعدام الأمان التي تعمق الروابط العاطفية.';

  @override
  String get metric_good_87_name => 'لغة الاحترام المتبادل';

  @override
  String get metric_good_87_description =>
      'يتتبع احترام وجهات نظر الشريك وخياراته واستقلاليته في التواصل.';

  @override
  String get metric_good_88_name => 'التأطير الإيجابي';

  @override
  String get metric_good_88_description =>
      'يقيس رؤية الجانب الإيجابي في المواقف والشريك، والتركيز على نقاط القوة.';

  @override
  String get metric_good_89_name => 'حل المشكلات التعاوني';

  @override
  String get metric_good_89_description =>
      'يبحث عن العمل معًا نحو حلول تفيد كلا الشريكين بالتساوي.';

  @override
  String get metric_good_90_name => 'التحقق العاطفي';

  @override
  String get metric_good_90_description =>
      'يكشف عن تأكيد أن مشاعر الشريك منطقية ومقبولة.';

  @override
  String get metric_good_91_name => 'اللطف المستمر';

  @override
  String get metric_good_91_description =>
      'يحدد الأفعال الصغيرة المنتظمة من الاهتمام التي تُظهر أن الشريك محل تفكير وتقدير.';

  @override
  String get metric_good_92_name => 'الاحتفال المتبادل';

  @override
  String get metric_good_92_description =>
      'يتتبع مدى سعادة كلا الشريكين بصدق بنجاحات وأفراح الآخر.';

  @override
  String get metric_good_93_name => 'لغة التعلق الآمن';

  @override
  String get metric_good_93_description =>
      'يقيس التعبير عن الثقة والراحة في العلاقة الحميمة والثقة في العلاقة.';

  @override
  String get metric_good_94_name => 'الاعتبار المدروس';

  @override
  String get metric_good_94_description =>
      'يبحث عن اتخاذ القرارات مع مراعاة احتياجات ومشاعر الشريك.';

  @override
  String get metric_good_95_name => 'الحضور المحب';

  @override
  String get metric_good_95_description =>
      'يكشف عن التواجد الكامل والانخراط، مما يُظهر للشريك أنه الأهم.';

  @override
  String get metric_good_96_name => 'لغة الاهتمام الحقيقي';

  @override
  String get metric_good_96_description =>
      'يتتبع التعبيرات الصادقة عن الاهتمام والرعاية والاستثمار في رفاهية الشريك.';

  @override
  String get metric_good_97_name => 'الالتزام بالعلاقة';

  @override
  String get metric_good_97_description =>
      'يقيس التعبير عن التفاني في الشراكة والاستعداد لمواجهة التحديات.';

  @override
  String get metric_good_98_name => 'التعبير عن الحب الأصيل';

  @override
  String get metric_good_98_description =>
      'يبحث عن تعبيرات حب حقيقية ومتسقة تشعر بأنها حقيقية وغير مشروطة.';

  @override
  String get metric_good_99_name => 'تحديد الأهداف المشتركة';

  @override
  String get metric_good_99_description =>
      'يحدد الشركاء الذين يحددون بشكل تعاوني الأحلام والأولويات والاتجاه المشترك لمستقبلهم معًا.';

  @override
  String get metric_good_100_name => 'التعرف على محاولات الإصلاح';

  @override
  String get metric_good_100_description =>
      'يكشف ملاحظة المحاولات الإيجابية للشريك والاستجابة لها لتهدئة النزاع واستعادة التواصل.';

  @override
  String get metric_bad_1_name => 'العدوان السلبي';

  @override
  String get metric_bad_1_description =>
      'يكشف العداء غير المباشر من خلال المماطلة، النسيان، السخرية، أو التخريب الخفي بدلاً من التعبير المباشر.';

  @override
  String get metric_bad_2_name => 'تسليح الذنب';

  @override
  String get metric_bad_2_description =>
      'تحديد استخدام لغة الذنب أو العار أو الالتزام للتلاعب بالقرارات أو منع وضع الحدود.';

  @override
  String get metric_bad_3_name => 'الابتزاز العاطفي';

  @override
  String get metric_bad_3_description =>
      'يشير إلى تهديدات بإيذاء النفس، أو الهجر، أو سحب الحب للسيطرة على السلوك أو منع النقاش.';

  @override
  String get metric_bad_4_name => 'الشكوى المزمنة';

  @override
  String get metric_bad_4_description =>
      'يتتبع السلبية المستمرة، أو اجترار الأفكار، أو الشكوى دون البحث عن حلول أو تغيير تعاوني.';

  @override
  String get metric_bad_5_name => 'العار بالمقارنة';

  @override
  String get metric_bad_5_description =>
      'يحدد مقارنات غير مواتية مع الشركاء السابقين أو الأصدقاء أو العائلة لإحراج أو إجبار تغيير السلوك.';

  @override
  String get metric_bad_6_name => 'الاستماع المشروط';

  @override
  String get metric_bad_6_description =>
      'يكشف عن الاستماع فقط عندما يعود بالنفع على المستمع أو يخدم أجندته بدلاً من الفهم الحقيقي.';

  @override
  String get metric_bad_7_name => 'الذاكرة الانتقائية';

  @override
  String get metric_bad_7_description =>
      'يتتبع النسيان الانتقائي للوعود أو الاتفاقيات أو السلوك الضار السابق لتجنب المساءلة.';

  @override
  String get metric_bad_8_name => 'طلب الاهتمام عبر الأزمات';

  @override
  String get metric_bad_8_description =>
      'يحدد التصعيد الدرامي أو خلق الأزمات أو المبالغة لجذب الانتباه أو التعاطف.';

  @override
  String get metric_bad_9_name => 'اختبار الحدود';

  @override
  String get metric_bad_9_description =>
      'يكشف عن الاستفسار المتكرر أو دفع الحدود المعلنة لتحديد ما إذا كان سيتم فرضها.';

  @override
  String get metric_bad_10_name => 'حجب المعلومات';

  @override
  String get metric_bad_10_description =>
      'يكشف عن حذف متعمد للحقائق أو السياق أو الشفافية للحفاظ على السيطرة.';

  @override
  String get metric_bad_11_name => 'غضب غير متناسب';

  @override
  String get metric_bad_11_description =>
      'يتتبع ردود فعل الغضب التي تكون أكبر بكثير مما يستدعيه الموقف المحفز.';

  @override
  String get metric_bad_12_name => 'إدمان الطمأنة';

  @override
  String get metric_bad_12_description =>
      'يشير إلى حاجة مستمرة للتحقق، أو أسئلة متكررة عن الالتزام، أو طلب لا ينتهي لإثبات الحب.';

  @override
  String get metric_bad_13_name => 'تجنب المحادثة';

  @override
  String get metric_bad_13_description =>
      'يكشف عن رفض التعامل مع المخاوف، أو عبارات التجنب، أو إغلاق النقاشات المهمة.';

  @override
  String get metric_bad_14_name => 'نمط التناقض';

  @override
  String get metric_bad_14_description =>
      'يحدد التصريحات أو الوعود أو المواقف المتناقضة التي تخلق الارتباك أو زعزعة الاستقرار.';

  @override
  String get metric_bad_15_name => 'الإبطال عبر التصنيف';

  @override
  String get metric_bad_15_description =>
      'يشير إلى وصف المخاوف بأنها \"جنون\" أو \"دراما\" أو \"ارتياب\" أو \"مبالغة\" لإبطالها.';

  @override
  String get metric_bad_16_name => 'تعاطف انتقائي';

  @override
  String get metric_bad_16_description =>
      'يكشف عن التعاطف المقدم فقط عندما يكون مناسبًا أو عندما يخدم مصالح المتحدث.';

  @override
  String get metric_bad_17_name => 'تأطير تعاملي';

  @override
  String get metric_bad_17_description =>
      'يحدد عبارات مثل \"أنت مدين لي\" أو \"بعد كل ما فعلته\" أو النظر إلى أفعال العلاقة على أنها تخلق دينًا.';

  @override
  String get metric_bad_18_name => 'إعادة تدوير المظالم';

  @override
  String get metric_bad_18_description =>
      'يتتبع إثارة المظالم القديمة مرارًا أو استخدام الأذى الماضي كذخيرة في النزاعات الحالية.';

  @override
  String get metric_bad_19_name => 'لغة الأمر';

  @override
  String get metric_bad_19_description =>
      'يشير إلى الأوامر أو الإنذارات بدلاً من الطلبات أو حل المشكلات التعاوني.';

  @override
  String get metric_bad_20_name => 'الانغلاق العاطفي';

  @override
  String get metric_bad_20_description =>
      'يكشف الرفض المستمر للانخراط العاطفي، مشاركة المشاعر، أو تقديم الدعم.';

  @override
  String get metric_bad_21_name => 'التفسير العدائي';

  @override
  String get metric_bad_21_description =>
      'يحدد تفسير العبارات المحايدة كهجمات أو فهم الرسائل الغامضة على أنها عدائية.';

  @override
  String get metric_bad_22_name => 'تأطير الاستحقاق';

  @override
  String get metric_bad_22_description =>
      'يشير إلى لغة توحي بأن المتحدث يستحق معاملة خاصة أو استثناءات أو أولوية.';

  @override
  String get metric_bad_23_name => 'نقد مقنع كمساعدة';

  @override
  String get metric_bad_23_description =>
      'يكشف النقد المقنع بعبارات مثل \'أحاول المساعدة فقط\' أو \'لمصلحتك\'.';

  @override
  String get metric_bad_24_name => 'أنماط الإهمال';

  @override
  String get metric_bad_24_description =>
      'يحدد الفشل المستمر في تلبية الاحتياجات العاطفية أو الجسدية أو العلائقية.';

  @override
  String get metric_bad_25_name => 'اجترار النزاع';

  @override
  String get metric_bad_25_description =>
      'يتتبع إعادة صياغة النزاعات بشكل قهري دون التقدم نحو الحل أو الإغلاق.';

  @override
  String get metric_bad_26_name => 'تقليل الحساسية';

  @override
  String get metric_bad_26_description =>
      'يشير إلى عبارات مثل \'أنت حساس جدًا\' أو \'تتفاعل بشكل مفرط\' لتجاهل المشاعر.';

  @override
  String get metric_bad_27_name => 'تأطير تنافسي';

  @override
  String get metric_bad_27_description =>
      'يكشف تأطير العلاقة كمنافسة يجب أن يفوز أو يسيطر فيها أحد الشريكين.';

  @override
  String get metric_bad_28_name => 'ازدواجية المعايير';

  @override
  String get metric_bad_28_description =>
      'تحديد تطبيق قواعد مختلفة على النفس مقابل الشريك أو تغيير التوقعات بشكل تعسفي.';

  @override
  String get metric_bad_29_name => 'العقاب بالمودة';

  @override
  String get metric_bad_29_description =>
      'الإبلاغ عن سحب المودة أو الاهتمام أو التواصل كرد فعل انتقامي لأخطاء متصورة.';

  @override
  String get metric_bad_30_name => 'تناوب اللوم';

  @override
  String get metric_bad_30_description =>
      'تتبع تناوب اللوم بين الشريك والظروف والعوامل الخارجية لتجنب المساءلة.';

  @override
  String get metric_bad_31_name => 'السخرية البلاغية';

  @override
  String get metric_bad_31_description =>
      'كشف الأسئلة البلاغية أو الساخرة المستخدمة للسخرية بدلاً من الفهم.';

  @override
  String get metric_bad_32_name => 'تذكير بالتضحيات';

  @override
  String get metric_bad_32_description =>
      'تحديد تذكير الشريك بالتضحيات أو الخدمات أو الدعم لخلق دين وامتثال.';

  @override
  String get metric_bad_33_name => 'التصعيد المتعمد';

  @override
  String get metric_bad_33_description =>
      'الإبلاغ عن التصعيد المتعمد للشدة لإرباك قدرة الشريك على الرد بعقلانية.';

  @override
  String get metric_bad_34_name => 'الضعف الاستراتيجي';

  @override
  String get metric_bad_34_description =>
      'كشف مشاركة المشاعر فقط عندما تخدم أغراض التلاعب أو السيطرة.';

  @override
  String get metric_bad_35_name => 'التحويل بالهجوم المضاد';

  @override
  String get metric_bad_35_description =>
      'تحديد تحويل الانتباه عن مخاوف الشريك بإثارة قضايا غير ذات صلة أو اتهامات مضادة.';

  @override
  String get metric_bad_36_name => 'لغة التفوق';

  @override
  String get metric_bad_36_description =>
      'الإبلاغ عن لغة التفوق أو الاستعلاء أو تصوير الشريك على أنه أقل شأناً.';

  @override
  String get metric_bad_37_name => 'نمط الخروج من النزاع';

  @override
  String get metric_bad_37_description =>
      'يكشف نمط الانسحاب من المحادثات، ورفض المشاركة، أو خلق مسافة أثناء النزاع.';

  @override
  String get metric_bad_38_name => 'التحيز السلبي';

  @override
  String get metric_bad_38_description =>
      'يتتبع التفسير المستمر للأفعال المحايدة أو الإيجابية على أنها سلبية أو مشبوهة.';

  @override
  String get metric_bad_39_name => 'إنكار الفاعلية';

  @override
  String get metric_bad_39_description =>
      'يحدد عبارات مثل \'يجب عليّ\'، \'أنت تجعلني\'، أو لغة تزيل الفاعلية الشخصية عن المتحدث.';

  @override
  String get metric_bad_40_name => 'الصمت كأداة سيطرة';

  @override
  String get metric_bad_40_description =>
      'يشير إلى استخدام الصمت أو عدم الرد كشكل من أشكال العقاب أو السيطرة.';

  @override
  String get metric_bad_41_name => 'نفاق الخصوصية';

  @override
  String get metric_bad_41_description =>
      'يكشف رفض مشاركة المعلومات مع المطالبة بالشفافية من الشريك.';

  @override
  String get metric_bad_42_name => 'نقد قاس غير مرغوب';

  @override
  String get metric_bad_42_description =>
      'يحدد النقد القاسي المقدم على أنه \'بناء\' أو \'مفيد\' دون موافقة.';

  @override
  String get metric_bad_43_name => 'رعاية مشروطة';

  @override
  String get metric_bad_43_description =>
      'يشير إلى الدعم المقدم فقط عندما يمتثل الشريك لتوقعات المتحدث.';

  @override
  String get metric_bad_44_name => 'إنكار الأثر';

  @override
  String get metric_bad_44_description =>
      'يكشف عبارات مثل \'لم أقصد ذلك بهذه الطريقة\' أو \'أنت تبالغ في التفسير\' بعد التسبب في الأذى.';

  @override
  String get metric_bad_45_name => 'عقلية الدين';

  @override
  String get metric_bad_45_description =>
      'يتتبع ذكر المساعدة أو الدعم السابق لخلق دين والتحكم في السلوك الحالي.';

  @override
  String get metric_bad_46_name => 'تجنب المسؤولية';

  @override
  String get metric_bad_46_description =>
      'يشير إلى نمط ثابت من عدم تحمل مسؤولية تأثير الأفعال.';

  @override
  String get metric_bad_47_name => 'رفض الاحتياجات';

  @override
  String get metric_bad_47_description =>
      'يحدد معاملة احتياجات الشريك على أنها غير مريحة أو غير معقولة أو غير مهمة.';

  @override
  String get metric_bad_48_name => 'التلاعب العاطفي';

  @override
  String get metric_bad_48_description =>
      'يشير إلى استخدام المشاعر بشكل استراتيجي للتحكم في النتائج أو منع المساءلة.';

  @override
  String get metric_bad_49_name => 'تجنب الحميمية';

  @override
  String get metric_bad_49_description =>
      'يتتبع الانسحاب المستمر من القرب العاطفي أو الجسدي دون تفسير.';

  @override
  String get metric_bad_50_name => 'النقد المقنع';

  @override
  String get metric_bad_50_description =>
      'يحدد النقد المقنع على شكل نكات أو ملاحظات أو تعليقات عابرة.';

  @override
  String get metric_bad_51_name => 'تصغير الاهتمامات';

  @override
  String get metric_bad_51_description =>
      'يشير إلى تقليل أهمية مخاوف الشريك أو المبالغة فيها.';

  @override
  String get metric_bad_52_name => 'فرض الذنب';

  @override
  String get metric_bad_52_description =>
      'يحدد استخدام الذنب أو الخزي لضمان امتثال الشريك للتوقعات.';

  @override
  String get metric_bad_53_name => 'مقاومة الاعتذار';

  @override
  String get metric_bad_53_description =>
      'يتتبع مقاومة الاعتذار، أو تبرير الضرر، أو رفض الاعتراف بالتأثير.';

  @override
  String get metric_bad_54_name => 'رفض المنظور';

  @override
  String get metric_bad_54_description =>
      'يشير إلى رفض النظر في وجهة نظر الشريك أو تجربته أو التحقق منها.';

  @override
  String get metric_bad_55_name => 'التقنين العاطفي';

  @override
  String get metric_bad_55_description =>
      'يكشف عن تقييد التعبير العاطفي أو التواصل عمدًا كوسيلة للسيطرة.';

  @override
  String get metric_bad_56_name => 'التلاعب بالالتزام';

  @override
  String get metric_bad_56_description =>
      'يشير إلى استخدام الدعم أو التضحية السابقة للتلاعب بالقرارات الحالية.';

  @override
  String get metric_bad_57_name => 'مقاومة النمو';

  @override
  String get metric_bad_57_description =>
      'يتتبع مقاومة تعديل السلوك الضار رغم الطلبات أو التأثير الموضح.';

  @override
  String get metric_bad_58_name => 'إنكار الضرر';

  @override
  String get metric_bad_58_description =>
      'يكشف عن رفض الاعتراف أو أخذ تأثير سلوك الفرد على محمل الجد.';

  @override
  String get metric_bad_59_name => 'أسئلة محملة';

  @override
  String get metric_bad_59_description =>
      'يشير إلى نية انتقادية مقنعة كأسئلة بريئة أو تعبيرات عن الفضول.';

  @override
  String get metric_bad_60_name => 'نبرة ازدرائية';

  @override
  String get metric_bad_60_description =>
      'يحدد موقفًا رافضًا أو ازدراءً يُنقل عبر أنماط النص واختيار الكلمات.';

  @override
  String get metric_bad_61_name => 'دورة الشعور بالذنب';

  @override
  String get metric_bad_61_description =>
      'يكشف عن الاستخدام المتكرر للشعور بالذنب بشأن الدعم أو التضحية السابقة للسيطرة على السلوك الحالي.';

  @override
  String get metric_bad_62_name => 'التحفظ العاطفي';

  @override
  String get metric_bad_62_description =>
      'يتتبع رفض مشاركة المشاعر أو المخاوف أو الاحتياجات مع الشريك كحجب وقائي.';

  @override
  String get metric_bad_63_name => 'تفاوض الحدود';

  @override
  String get metric_bad_63_description =>
      'يشير إلى معاملة الحدود المعلنة كاقتراحات أو قابلة للتفاوض بدلاً من التزامات ثابتة.';

  @override
  String get metric_bad_64_name => 'الغياب العاطفي';

  @override
  String get metric_bad_64_description =>
      'يكشف عن رفض مستمر لتقديم الدعم العاطفي أو الحضور المنخرط.';

  @override
  String get metric_bad_65_name => 'تتبع الخدمات';

  @override
  String get metric_bad_65_description =>
      'يشير إلى الاحتفاظ بحساب ذهني للخدمات أو الدعم أو التضحيات لاستخدامها لاحقًا كوسيلة ضغط.';

  @override
  String get metric_bad_66_name => 'تجنب الصدق';

  @override
  String get metric_bad_66_description =>
      'يكشف عن نمط من إخفاء الحقيقة أو حذف الحقائق أو التعمد في الغموض.';

  @override
  String get metric_bad_67_name => 'إنكار الصلاحية';

  @override
  String get metric_bad_67_description =>
      'يحدد معاملة مشاعر الشريك أو احتياجاته أو مخاوفه على أنها غير صحيحة أو غير مشروعة.';

  @override
  String get metric_bad_68_name => 'نقد مقنع بنصيحة';

  @override
  String get metric_bad_68_description =>
      'يشير إلى النقد المقدم كاهتمام أو نصيحة أو ملاحظة مفيدة.';

  @override
  String get metric_bad_69_name => 'مؤشرات التفوق';

  @override
  String get metric_bad_69_description =>
      'يكشف عن التفوق أو السخرية أو الازدراء في اللغة أو أسلوب التواصل.';

  @override
  String get metric_bad_70_name => 'مقاومة الإصلاح';

  @override
  String get metric_bad_70_description =>
      'يتتبع مقاومة التعويض أو إعادة الاتصال أو إعادة البناء بعد النزاع.';

  @override
  String get metric_bad_71_name => 'رفض الجهد';

  @override
  String get metric_bad_71_description =>
      'يشير إلى التقليل من شأن محاولات الشريك للتحسين أو معالجة المشكلات أو تجاهلها.';

  @override
  String get metric_bad_72_name => 'نمط المسافة العاطفية';

  @override
  String get metric_bad_72_description =>
      'يكشف عن نمط طويل الأمد من المسافة العاطفية أو رفض الانخراط بشكل أصيل.';

  @override
  String get metric_bad_73_name => 'تأطير الدونية';

  @override
  String get metric_bad_73_description =>
      'يحدد تصوير الشريك على أنه أدنى أو معيب أو غير جدير بالاحترام الكامل.';

  @override
  String get metric_bad_74_name => 'مقاومة التغذية الراجعة';

  @override
  String get metric_bad_74_description =>
      'يكشف مقاومة سماع النقد، أو رفض الاستماع، أو إغلاق النقاش.';

  @override
  String get metric_bad_75_name => 'رفض القلق';

  @override
  String get metric_bad_75_description =>
      'يحدد معاملة مخاوف الشريك أو قلقه على أنها غير مبررة أو غير عقلانية.';

  @override
  String get metric_bad_76_name => 'إيجاد العيوب';

  @override
  String get metric_bad_76_description =>
      'يشير إلى نمط مزمن من إيجاد العيوب، أو الشكوى، أو مهاجمة شخصية الشريك.';

  @override
  String get metric_bad_77_name => 'دورة الذنب بالتضحية';

  @override
  String get metric_bad_77_description =>
      'يحدد التذكير المتكرر بالدعم السابق لخلق الشعور بالذنب أو التحكم في السلوك.';

  @override
  String get metric_bad_78_name => 'غموض الالتزام';

  @override
  String get metric_bad_78_description =>
      'يتتبع لغة الالتزام غير الواضحة أو المتذبذبة، أو الإشارات المختلطة، أو التردد في الالتزام.';

  @override
  String get metric_bad_79_name => 'رفض الطلبات';

  @override
  String get metric_bad_79_description =>
      'يشير إلى تجاهل أو رفض أو تأخير الاستجابة لطلبات الشريك المعقولة.';

  @override
  String get metric_bad_80_name => 'تكتيكات التحكم العاطفي';

  @override
  String get metric_bad_80_description =>
      'يكشف الاستخدام الاستراتيجي للعواطف للتحكم في النتائج أو منع المساءلة.';

  @override
  String get metric_bad_81_name => 'عقلية التبادل';

  @override
  String get metric_bad_81_description =>
      'يشير إلى النظر إلى العلاقة من خلال عدسة الدين أو الالتزام أو التبادل التجاري.';

  @override
  String get metric_bad_82_name => 'مقاومة التطور الشخصي';

  @override
  String get metric_bad_82_description =>
      'يكشف مقاومة التطور الشخصي أو التعلم أو تغيير الأنماط الضارة.';

  @override
  String get metric_bad_83_name => 'رفض التحسين';

  @override
  String get metric_bad_83_description =>
      'يحدد التقليل من جهود الشريك أو رفضها للتحسين أو معالجة المشكلات.';

  @override
  String get metric_bad_84_name => 'النقد المزمن';

  @override
  String get metric_bad_84_description =>
      'يشير إلى نمط مزمن من النقد المغلف بلغة الاهتمام أو المساعدة أو الرعاية.';

  @override
  String get metric_bad_85_name => 'تجنب الحلول';

  @override
  String get metric_bad_85_description =>
      'يكشف نمطًا ثابتًا من تجنب الإغلاق أو التقدم أو إيجاد حلول عملية.';

  @override
  String get metric_bad_86_name => 'نمط تحويل اللوم';

  @override
  String get metric_bad_86_description =>
      'يشير إلى نمط معتاد من تحويل المسؤولية إلى عوامل خارجية أو الشريك.';

  @override
  String get metric_bad_87_name => 'الاستجابات الرافضة';

  @override
  String get metric_bad_87_description =>
      'يحدد نمط رفض مدخلات الشريك أو أفكاره أو اقتراحاته دون اعتبار.';

  @override
  String get metric_bad_88_name => 'التعبير عن الاستياء';

  @override
  String get metric_bad_88_description =>
      'يكشف نبرة الاستياء أو المرارة أو الإحباط المتراكم في التواصل.';

  @override
  String get metric_bad_89_name => 'الرسائل المتناقضة';

  @override
  String get metric_bad_89_description =>
      'يشير إلى رسائل مختلطة حول الالتزام أو رغبة غير واضحة في الاستمرار أو ديناميكيات الدفع والجذب.';

  @override
  String get metric_bad_90_name => 'تحول التوقعات';

  @override
  String get metric_bad_90_description =>
      'يحدد تغيير التوقعات دون تواصل ثم لوم الشريك لعدم تلبيتها.';

  @override
  String get metric_bad_91_name => 'عادة التهرب';

  @override
  String get metric_bad_91_description =>
      'يكشف عن التجنب المعتاد للإجابات المباشرة أو تحويل المحادثات بعيدًا عن المساءلة.';

  @override
  String get metric_bad_92_name => 'التلاعب من خلال اللطف';

  @override
  String get metric_bad_92_description =>
      'يشير إلى الكرم المبالغ فيه المستخدم بشكل استراتيجي لخلق التزام أو خفض الدفاعات.';

  @override
  String get metric_bad_93_name => 'نمط التأخير المزمن';

  @override
  String get metric_bad_93_description =>
      'يحدد التجاهل المستمر لوقت الشريك من خلال التأخير أو عدم الالتزام بالمواعيد.';

  @override
  String get metric_bad_94_name => 'تقليل التقدم';

  @override
  String get metric_bad_94_description =>
      'يتتبع تجاهل أو عدم الاعتراف بالنمو الشخصي الحقيقي أو التحسينات التي يحققها الشريك.';

  @override
  String get metric_bad_95_name => 'التسليح العاطفي';

  @override
  String get metric_bad_95_description =>
      'يكشف عن استخدام نقاط ضعف الشريك أو مخاوفه التي تم الكشف عنها ضده في النزاعات.';

  @override
  String get metric_bad_96_name => 'تكتيكات مشابهة للتلاعب';

  @override
  String get metric_bad_96_description =>
      'يحدد تكتيكات تشويه الواقع الخفية التي تخلق شكًا ذاتيًا دون تلاعب كامل.';

  @override
  String get metric_bad_97_name => 'الجدار السلبي';

  @override
  String get metric_bad_97_description =>
      'يشير إلى الانسحاب الخفي، الردود المقتضبة، أو الحضور المنفصل كشكل من أشكال التجنب.';

  @override
  String get metric_bad_98_name => 'السيطرة على السرد';

  @override
  String get metric_bad_98_description =>
      'يكشف عن الإصرار على أن يكون الشخص السلطة الوحيدة فيما حدث، كيف شعر، أو ما قصد.';

  @override
  String get metric_bad_99_name => 'تحويل المسؤولية';

  @override
  String get metric_bad_99_description =>
      'يتتبع تحويل المساءلة باستمرار إلى عوامل خارجية، أطراف ثالثة، أو سلوك الشريك.';

  @override
  String get metric_bad_100_name => 'عدم التوفر العاطفي';

  @override
  String get metric_bad_100_description =>
      'يشير إلى الانسحاب المزمن من العلاقة الحميمة العاطفية أو الضعف أو الاتصال الهادف عندما يحتاج الشريك إلى القرب.';

  @override
  String get metric_ugly_1_name => 'تهديدات العنف الجسدي';

  @override
  String get metric_ugly_1_description =>
      'يكشف عن تهديدات صريحة أو ضمنية بالضرب أو الإيذاء أو الاعتداء الجسدي ضد الشريك.';

  @override
  String get metric_ugly_2_name => 'إشارات حيازة أسلحة';

  @override
  String get metric_ugly_2_description =>
      'يكشف الإشارات إلى المسدسات أو السكاكين أو الأسلحة في سياق الغضب أو السيطرة أو القدرة على إلحاق الأذى.';

  @override
  String get metric_ugly_3_name => 'مؤشرات الخنق';

  @override
  String get metric_ugly_3_description =>
      'يحدد لغة أو إشارات الخنق أو الإمساك بالحلق أو الاختناق أو انقطاع التنفس.';

  @override
  String get metric_ugly_4_name => 'تسليح تهديد الانتحار';

  @override
  String get metric_ugly_4_description =>
      'يكشف عن تهديدات بإيذاء النفس للسيطرة أو التلاعب أو معاقبة الشريك.';

  @override
  String get metric_ugly_5_name => 'لغة التفكير في القتل';

  @override
  String get metric_ugly_5_description =>
      'يشير إلى عبارات تعبر عن نية أو تخطيط أو رغبة في قتل الشريك.';

  @override
  String get metric_ugly_6_name => 'أنماط خطر القتل';

  @override
  String get metric_ugly_6_description =>
      'يحدد علامات التحذير عالية القتل: الوصول للأسلحة، الهوس، التصعيد، وتهديدات الانفصال مجتمعة.';

  @override
  String get metric_ugly_7_name => 'لغة هوس المطاردة';

  @override
  String get metric_ugly_7_description =>
      'يكشف عن مراقبة مهووسة للموقع، والتتبع، والزيارات المفاجئة، أو المطاردة المستمرة غير المرغوب فيها.';

  @override
  String get metric_ugly_8_name => 'فرض العزلة القسري';

  @override
  String get metric_ugly_8_description =>
      'يشير إلى مطالب عدوانية بقطع كل اتصال بالعائلة أو الأصدقاء أو العمل أو الخارج.';

  @override
  String get metric_ugly_9_name => 'تخريب اقتصادي';

  @override
  String get metric_ugly_9_description =>
      'يحدد التدمير المتعمد للوظيفة أو الائتمان أو المالية أو الاستقرار الاقتصادي.';

  @override
  String get metric_ugly_10_name => 'الإكراه الإنجابي';

  @override
  String get metric_ugly_10_description =>
      'يكشف عن الحمل القسري، الضغط للإجهاض، العبث بوسائل منع الحمل، أو السيطرة الإنجابية.';

  @override
  String get metric_ugly_11_name => 'ضغط الإكراه الجنسي';

  @override
  String get metric_ugly_11_description =>
      'يشير إلى الجنس القسري، الأفعال الجنسية المُجبر عليها، الضغط بعد الرفض، أو لغة العقاب الجنسي.';

  @override
  String get metric_ugly_12_name => 'لغة جنسية غير توافقية';

  @override
  String get metric_ugly_12_description =>
      'يحدد تهديدات أو أوصاف الاعتداء الجنسي غير التوافقي صراحةً أو ضمنيًا.';

  @override
  String get metric_ugly_13_name => 'تهديدات إيذاء الأطفال';

  @override
  String get metric_ugly_13_description =>
      'يكشف عن تهديدات بإيذاء أو إهمال أو إساءة معاملة الأطفال كوسيلة ضغط أو عقاب ضد الشريك.';

  @override
  String get metric_ugly_14_name => 'تسليح حضانة الأطفال';

  @override
  String get metric_ugly_14_description =>
      'يشير إلى تهديدات بأخذ الأطفال، منع الوصول إليهم، أو استخدام الحضانة كآلية سيطرة.';

  @override
  String get metric_ugly_15_name => 'تهديدات إيذاء الحيوانات الأليفة';

  @override
  String get metric_ugly_15_description =>
      'يحدد تهديدات بإيذاء أو قتل أو إساءة معاملة الحيوانات الأليفة كعقاب أو لإظهار السيطرة.';

  @override
  String get metric_ugly_16_name => 'تكتيكات الحرمان من النوم';

  @override
  String get metric_ugly_16_description =>
      'يشير إلى منع النوم المتعمد، المقاطعة المستمرة، أو الإرهاق كأسلوب سيطرة.';

  @override
  String get metric_ugly_17_name => 'لغة الحبس';

  @override
  String get metric_ugly_17_description =>
      'يشير إلى الحبس، منع المغادرة، أو حبس الشريك في مكان ما.';

  @override
  String get metric_ugly_18_name => 'لغة الاستمالة المفترسة';

  @override
  String get metric_ugly_18_description =>
      'يشير إلى التلاعب المنهجي لخفض الدفاعات، بناء ثقة زائفة، ثم استغلال الشريك.';

  @override
  String get metric_ugly_19_name => 'لغة التجريد من الإنسانية';

  @override
  String get metric_ugly_19_description =>
      'يكشف عن وصف الشريك كحيوان أو شيء أو دون إنساني أو غير مستحق للحقوق الأساسية.';

  @override
  String get metric_ugly_20_name => 'تصعيد الغضب النرجسي';

  @override
  String get metric_ugly_20_description =>
      'يكشف عن غضب انفجاري ناتج عن إهانات متصورة أو نقد أو أي فقدان للسيطرة.';

  @override
  String get metric_ugly_21_name => 'ادعاءات التملك الوسواسية';

  @override
  String get metric_ugly_21_description =>
      'يشير إلى لغة تدّعي الملكية أو حقوق الملكية أو السيطرة الكاملة على شخص الشريك.';

  @override
  String get metric_ugly_22_name => 'أنماط الكذب المرضي';

  @override
  String get metric_ugly_22_description =>
      'يحدد الأكاذيب المتسقة والمفصلة أو غير الضرورية حول أمور خطيرة دون سبب واضح.';

  @override
  String get metric_ugly_23_name => 'لغة خيال الانتقام';

  @override
  String get metric_ugly_23_description =>
      'يحدد تخيلات مفصلة حول إيذاء الشريك أو إذلاله أو تدميره.';

  @override
  String get metric_ugly_24_name => 'تثبيت هوس الخيانة';

  @override
  String get metric_ugly_24_description =>
      'يكشف عن اجترار وسواسي واتهام وعقاب يركز على الخيانة المتصورة.';

  @override
  String get metric_ugly_25_name => 'عدوان ذعر الهجر';

  @override
  String get metric_ugly_25_description =>
      'يشير إلى ردود فعل عنيفة أو عدوانية تجاه الهجر المتصور أو أي محاولة انفصال.';

  @override
  String get metric_ugly_26_name => 'تصعيد تهديد الانفصال';

  @override
  String get metric_ugly_26_description =>
      'يحدد تهديدات شديدة أو سلوكيات خطيرة ناتجة عن محاولات الانفصال أو الفراق.';

  @override
  String get metric_ugly_27_name => 'تهديدات التحرش بعد الانفصال';

  @override
  String get metric_ugly_27_description =>
      'يشير إلى تهديدات بالمطاردة أو الإيذاء أو الاتصال القسري بعد انتهاء العلاقة.';

  @override
  String get metric_ugly_28_name => 'تهديدات اختطاف الحضانة';

  @override
  String get metric_ugly_28_description =>
      'يحدد التهديدات بأخذ الأطفال والهروب بهم أو إخفائهم بشكل دائم عن الوالد الآخر.';

  @override
  String get metric_ugly_29_name => 'أجندة الاغتراب الوالدي';

  @override
  String get metric_ugly_29_description =>
      'يكشف المحاولات المنهجية لتوجيه الأطفال ضد الوالد الآخر من خلال التلاعب.';

  @override
  String get metric_ugly_30_name => 'لامبالاة بشهود الأطفال';

  @override
  String get metric_ugly_30_description =>
      'يحدد اللامبالاة تجاه مشاهدة الأطفال للإساءة أو النزاع أو الأذى العاطفي.';

  @override
  String get metric_ugly_31_name => 'لغة الاتجار بالبشر';

  @override
  String get metric_ugly_31_description =>
      'يحدد اللغة التي توحي ببيع أو مقايضة أو استغلال الشريك جنسياً.';

  @override
  String get metric_ugly_32_name => 'لغة العبودية';

  @override
  String get metric_ugly_32_description =>
      'يحدد اللغة التي تعامل الشريك كممتلكات أو عبد أو شخص مملوك بالكامل دون حقوق.';

  @override
  String get metric_ugly_33_name => 'تهديدات عبودية الديون';

  @override
  String get metric_ugly_33_description =>
      'يكشف التهديدات بحبس الشريك من خلال ديون مصطنعة أو التزامات مالية.';

  @override
  String get metric_ugly_34_name => 'مطالب العمل القسري';

  @override
  String get metric_ugly_34_description =>
      'يكشف المطالب بالعمل غير المأجور أو الخدمة تحت تهديد الأذى أو العقاب.';

  @override
  String get metric_ugly_35_name => 'تطبيع الاستغلال';

  @override
  String get metric_ugly_35_description =>
      'يحدد تأطير الاستغلال الشديد كأمر طبيعي أو مستحق أو بالتراضي أو حتى مفيد.';

  @override
  String get metric_ugly_36_name => 'استهداف الضعفاء';

  @override
  String get metric_ugly_36_description =>
      'يحدد الاستهداف المتعمد للأفراد المعزولين أو المعتمدين اقتصادياً أو الضعفاء نفسياً.';

  @override
  String get metric_ugly_37_name => 'هندسة الارتباط بالصدمة';

  @override
  String get metric_ugly_37_description =>
      'يكشف عن خلق متعمد لدورات الخوف والراحة المصممة لخلق اعتماد عاطفي عميق.';

  @override
  String get metric_ugly_38_name => 'إساءة التعزيز المتقطع';

  @override
  String get metric_ugly_38_description =>
      'يشير إلى دورات غير متوقعة من المكافأة والعقاب الشديد المستخدمة لخلق إدمان نفسي.';

  @override
  String get metric_ugly_39_name => 'تحريض العجز المكتسب';

  @override
  String get metric_ugly_39_description =>
      'يحدد الإزالة المنهجية للوكالة والموارد وخيارات الهروب المتصورة.';

  @override
  String get metric_ugly_40_name => 'لغة محو الهوية';

  @override
  String get metric_ugly_40_description =>
      'يشير إلى مطالب بالتخلي عن الشخصية أو الاهتمامات أو المظهر أو الإحساس الأساسي بالهوية.';

  @override
  String get metric_ugly_41_name => 'إبادة الاستقلالية';

  @override
  String get metric_ugly_41_description =>
      'يكشف عن القضاء المنهجي على التفكير المستقل أو اتخاذ القرار أو الوكالة الشخصية.';

  @override
  String get metric_ugly_42_name => 'تكتيكات التحكم في الفكر';

  @override
  String get metric_ugly_42_description =>
      'يشير إلى مطالب بالتفكير أو الاعتقاد أو الشعور فقط كما يملي الشريك المسيطر.';

  @override
  String get metric_ugly_43_name => 'فرض الخدر العاطفي';

  @override
  String get metric_ugly_43_description =>
      'يحدد العقاب على إظهار المشاعر أو المطالب الصريحة بقمع جميع المشاعر.';

  @override
  String get metric_ugly_44_name => 'خلق الصدمة المعقدة';

  @override
  String get metric_ugly_44_description =>
      'يشير إلى أنماط منهجية تخلق صدمة من مستوى اضطراب ما بعد الصدمة المعقد من خلال الإساءة المزمنة.';

  @override
  String get metric_ugly_45_name => 'إلحاق صدمة الخيانة';

  @override
  String get metric_ugly_45_description =>
      'يحدد الخيانة المتعمدة المصممة لتحطيم الثقة الأساسية والسلامة النفسية.';

  @override
  String get metric_ugly_46_name => 'لغة الأذى الأخلاقي';

  @override
  String get metric_ugly_46_description =>
      'يكشف عن إجبار الشريك على انتهاك قيمه العميقة أو ارتكاب أفعال ضارة.';

  @override
  String get metric_ugly_47_name => 'لغة التهديد الوجودي';

  @override
  String get metric_ugly_47_description =>
      'يشير إلى تهديدات لوجود الشريك، هويته الأساسية، سلامته العقلية، أو رغبته في الحياة.';

  @override
  String get metric_ugly_48_name => 'لغة الإكراه على الانتحار';

  @override
  String get metric_ugly_48_description =>
      'يحدد دفع الشريك نحو التفكير في الانتحار من خلال الإساءة المستمرة واليأس المصطنع.';

  @override
  String get metric_ugly_49_name => 'أسطورة التبرير';

  @override
  String get metric_ugly_49_description =>
      'يحدد روايات مختلقة معقدة تُقدم لتبرير الإساءة باعتبارها ضرورية أو مستحقة أو صائبة.';

  @override
  String get metric_ugly_50_name => 'انعكاس سردية الضحية';

  @override
  String get metric_ugly_50_description =>
      'يكشف عن انعكاس كامل حيث يدعي المسيء أنه الضحية الحقيقية لإساءته.';

  @override
  String get metric_ugly_51_name => 'وعظ تطبيع الإساءة';

  @override
  String get metric_ugly_51_description =>
      'يشير إلى تعليم أو الإصرار على أن الإساءة طبيعية أو صحية أو مفيدة للشريك.';

  @override
  String get metric_ugly_52_name => 'أيديولوجية مفترسة';

  @override
  String get metric_ugly_52_description =>
      'يحدد تبريرًا أيديولوجيًا للاستغلال أو السيطرة أو الأذى تجاه الشريك.';

  @override
  String get metric_ugly_53_name => 'رسائل زعيم طائفي';

  @override
  String get metric_ugly_53_description =>
      'يكشف عن رسائل تدّعي معرفة خاصة أو حق إلهي أو سلطة متفوقة على الشريك.';

  @override
  String get metric_ugly_54_name => 'لغة جدول التغرير';

  @override
  String get metric_ugly_54_description =>
      'يشير إلى إشارات لخطة تلاعب طويلة الأمد أو وصف لتقدم عملية التغرير.';

  @override
  String get metric_ugly_55_name => 'حملة إذلال مزمنة';

  @override
  String get metric_ugly_55_description =>
      'يحدد نمطًا مستمرًا من الإذلال العلني أو الخاص المصمم لتدمير تقدير الذات.';

  @override
  String get metric_ugly_56_name => 'إعاقة مخارج السلامة';

  @override
  String get metric_ugly_56_description =>
      'يكشف عن منع الشريك بنشاط من الوصول إلى طرق الهروب أو أنظمة الدعم أو موارد السلامة.';

  @override
  String get metric_ugly_57_name => 'تهديدات مصادرة الوثائق';

  @override
  String get metric_ugly_57_description =>
      'يشير إلى تهديدات أو أفعال لأخذ أو إخفاء أو تدمير وثائق الهوية لمنع الهروب.';

  @override
  String get metric_ugly_58_name => 'أنماط الغيرة العنيفة';

  @override
  String get metric_ugly_58_description =>
      'يحدد الغيرة التي تصاعدت إلى تهديدات صريحة أو مراقبة أو انتقام عنيف.';

  @override
  String get metric_ugly_59_name => 'أنماط انفجارات الغضب';

  @override
  String get metric_ugly_59_description =>
      'يكشف عن أوصاف أو أنماط من نوبات الغضب الانفجارية العنيفة غير المتناسبة مع أي محفز.';

  @override
  String get metric_ugly_60_name => 'تصاعد السيطرة القسرية';

  @override
  String get metric_ugly_60_description =>
      'يتتبع تزايد شدة واتساع تكتيكات السيطرة القسرية بمرور الوقت.';

  @override
  String get metric_ugly_61_name => 'لغة الامتثال القائم على الخوف';

  @override
  String get metric_ugly_61_description =>
      'يحدد الامتثال المدفوع بالكامل بالخوف من العنف أو العقاب الشديد بدلاً من الاختيار.';

  @override
  String get metric_ugly_62_name => 'لغة طقوس العقاب';

  @override
  String get metric_ugly_62_description =>
      'يكشف عن إشارات إلى ممارسات عقابية منهجية تستخدم لفرض الامتثال والسيطرة.';

  @override
  String get metric_ugly_63_name => 'مؤشرات طقوس الإذلال';

  @override
  String get metric_ugly_63_description =>
      'يشير إلى طقوس الإذلال أو التدهور المنهجية المصممة لتدمير الكرامة.';

  @override
  String get metric_ugly_64_name => 'تهديدات الكشف غير الموافق عليه';

  @override
  String get metric_ugly_64_description =>
      'يحدد التهديدات بكشف الصور الحميمة أو المعلومات الخاصة أو الأسرار دون موافقة.';

  @override
  String get metric_ugly_65_name => 'تهديدات الإساءة القائمة على الصور';

  @override
  String get metric_ugly_65_description =>
      'يكشف التهديدات بتوزيع صور حميمة كإنتقام أو عقاب أو ابتزاز.';

  @override
  String get metric_ugly_66_name => 'تكتيكات الفخ المالي';

  @override
  String get metric_ugly_66_description =>
      'يحدد خلق التبعية المالية المتعمدة لجعل البقاء مستقلاً مستحيلاً.';

  @override
  String get metric_ugly_67_name => 'لغة تهديد السكن';

  @override
  String get metric_ugly_67_description =>
      'يكشف التهديدات بجعل الشريك بلا مأوى أو إزالة الوصول للسكن أو تدمير أمن المأوى.';

  @override
  String get metric_ugly_68_name => 'تهديدات وضع الهجرة';

  @override
  String get metric_ugly_68_description =>
      'يحدد التهديدات بالإبلاغ عن وضع الهجرة أو إلغاء رعاية التأشيرة كوسيلة للسيطرة.';

  @override
  String get metric_ugly_69_name => 'الإساءة الدينية أو الروحية';

  @override
  String get metric_ugly_69_description =>
      'يكشف استخدام السلطة الدينية أو العقيدة أو التهديد الروحي للسيطرة أو العقاب أو الإيذاء.';

  @override
  String get metric_ugly_70_name => 'استغلال العار الثقافي';

  @override
  String get metric_ugly_70_description =>
      'يحدد التهديد بكشف السلوكيات للمجتمع الثقافي أو العائلي كعقاب.';

  @override
  String get metric_ugly_71_name => 'تهديدات إيذاء الأسرة';

  @override
  String get metric_ugly_71_description =>
      'يحدد التهديدات بإيذاء أفراد عائلة الشريك أو أطفاله أو أحبائه كوسيلة ضغط.';

  @override
  String get metric_ugly_72_name => 'حملة مضايقة منسقة';

  @override
  String get metric_ugly_72_description =>
      'يكشف تنظيم الآخرين لمضايقة أو ملاحقة أو ترهيب الشريك بشكل جماعي.';

  @override
  String get metric_ugly_73_name => 'تهديدات ببلاغات كاذبة للشرطة';

  @override
  String get metric_ugly_73_description =>
      'يهدد بتقديم بلاغات كاذبة للشرطة أو اتهامات قانونية ضد الشريك.';

  @override
  String get metric_ugly_74_name => 'تسليح النظام القانوني';

  @override
  String get metric_ugly_74_description =>
      'يحدد استخدام الإجراءات القانونية والمحاكم وأوامر الحماية كأسلحة للمضايقة.';

  @override
  String get metric_ugly_75_name => 'انتهاك أمر الحماية';

  @override
  String get metric_ugly_75_description =>
      'يكشف عن إشارات لانتهاك أو التخطيط لانتهاك أوامر الحماية أو أوامر عدم الاتصال.';

  @override
  String get metric_ugly_76_name => 'تهديدات بالتخريب في مكان العمل';

  @override
  String get metric_ugly_76_description =>
      'يرصد تهديدات بالاتصال بصاحب العمل أو الزملاء أو العملاء لتدمير مصدر رزق الشريك.';

  @override
  String get metric_ugly_77_name => 'تهديدات بالإبادة الاجتماعية';

  @override
  String get metric_ugly_77_description =>
      'يكشف عن تهديدات بتدمير سمعة الشريك وعلاقاته ومكانته الاجتماعية.';

  @override
  String get metric_ugly_78_name => 'حملة خداع منهجية';

  @override
  String get metric_ugly_78_description =>
      'يحدد عمليات خداع طويلة الأمد ومعقدة تهدف لاستغلال الشريك ماليًا أو عاطفيًا.';

  @override
  String get metric_ugly_79_name => 'تدمير الممتلكات كإرهاب';

  @override
  String get metric_ugly_79_description =>
      'يحدد التدمير المتعمد لممتلكات الشريك كأسلوب ترهيب.';

  @override
  String get metric_ugly_80_name => 'القسوة على الحيوانات كإرهاب بالوكالة';

  @override
  String get metric_ugly_80_description =>
      'يكشف عن إيذاء أو تهديد الحيوانات الأليفة لإظهار القدرة على العنف تجاه الشريك.';

  @override
  String get metric_ugly_81_name => 'لغة تعريض الأطفال للخطر';

  @override
  String get metric_ugly_81_description =>
      'يرصد وضع الأطفال في مواقف خطيرة أو التهديد بذلك كوسيلة ضغط.';

  @override
  String get metric_ugly_82_name => 'السيطرة القائمة على الإعاقة';

  @override
  String get metric_ugly_82_description =>
      'يكشف عن استغلال إعاقة الشريك من خلال التحكم في الوصول إلى الأدوية أو التنقل أو الرعاية.';

  @override
  String get metric_ugly_83_name => 'السيطرة المصنعة للأزمات';

  @override
  String get metric_ugly_83_description =>
      'يشير إلى خلق حالات طوارئ أو أزمات متعمدة لزيادة اعتماد الشريك أو تبرير المراقبة.';

  @override
  String get metric_ugly_84_name => 'العزلة عن خدمات الطوارئ';

  @override
  String get metric_ugly_84_description =>
      'يحدد منع الشريك بنشاط من الاتصال بالشرطة أو الإسعاف أو خدمات الأزمات.';

  @override
  String get metric_ugly_85_name => 'مسار تصعيد التهديد';

  @override
  String get metric_ugly_85_description =>
      'يتتبع الزيادة القابلة للقياس في شدة التهديدات أو خصوصيتها أو تكرارها بمرور الوقت.';

  @override
  String get metric_ugly_86_name => 'مؤشرات تقييم القتل';

  @override
  String get metric_ugly_86_description =>
      'يشير إلى مجموعات العوامل المرتبطة بأعلى خطر لقتل الشريك الحميم.';

  @override
  String get metric_ugly_87_name => 'تكتيكات التعذيب النفسي';

  @override
  String get metric_ugly_87_description =>
      'يحدد الإساءة النفسية المستمرة المصممة لكسر الاستقرار العقلي للشريك.';

  @override
  String get metric_ugly_88_name => 'لغة الاحتجاز';

  @override
  String get metric_ugly_88_description =>
      'يكشف عن إشارات إلى احتجاز الشريك كرهينة أو منع المغادرة أو التحكم في كل حركة.';

  @override
  String get metric_ugly_89_name => 'تخطيط العنف المستهدف';

  @override
  String get metric_ugly_89_description =>
      'يكشف عن أي لغة تشير إلى التخطيط أو الإعداد أو العد التنازلي للعنف ضد الشريك.';

  @override
  String get metric_ugly_90_name => 'تجنيد طرف ثالث للتهديد';

  @override
  String get metric_ugly_90_description =>
      'يحدد تجنيد الأصدقاء أو العائلة أو غيرهم لتهديد الشريك أو إيذائه.';

  @override
  String get metric_ugly_91_name => 'استغلال الأفكار الانتحارية';

  @override
  String get metric_ugly_91_description =>
      'استغلال أزمة الشريك الانتحارية كورقة ضغط أو لمنعه من طلب المساعدة.';

  @override
  String get metric_ugly_92_name => 'تهديدات بالتسميم أو التخدير';

  @override
  String get metric_ugly_92_description =>
      'يكشف التهديدات أو الإشارات إلى تخدير أو تسميم أو العبث بطعام أو شراب الشريك.';

  @override
  String get metric_ugly_93_name => 'استغلال إيذاء الذات غير الانتحاري';

  @override
  String get metric_ugly_93_description =>
      'استغلال سلوك إيذاء الذات لدى الشريك كوسيلة ضغط أو سخرية أو سيطرة إضافية.';

  @override
  String get metric_ugly_94_name => 'لغة تحفيز الانفصال';

  @override
  String get metric_ugly_94_description =>
      'يكشف أنماطًا مصممة لإحداث انفصال أو انعزال أو تبدد الشخصية لدى الشريك.';

  @override
  String get metric_ugly_95_name => 'زرع التشوهات المعرفية';

  @override
  String get metric_ugly_95_description =>
      'يكشف زرع معتقدات خاطئة عن الذات أو الواقع أو سلامة عقل الشريك عن عمد.';

  @override
  String get metric_ugly_96_name => 'عرقلة الرعاية الطبية';

  @override
  String get metric_ugly_96_description =>
      'يكشف منع الوصول إلى الأدوية أو الأطباء أو المستشفيات أو العلاج الصحي.';

  @override
  String get metric_ugly_97_name => 'لغة تهديد متطرفة';

  @override
  String get metric_ugly_97_description =>
      'يكشف لغة مستعارة من أطر أيديولوجية متطرفة أو عنيفة موجهة ضد الشريك.';

  @override
  String get metric_ugly_98_name => 'إشارات ملاحقة بعد الانفصال';

  @override
  String get metric_ugly_98_description =>
      'يكشف تهديدات أو لغة مراقبة أو تكتيكات ترهيب بعد أو توقعًا للانفصال.';

  @override
  String get metric_ugly_99_name => 'تسليح الأطفال';

  @override
  String get metric_ugly_99_description =>
      'يحدد استخدام الأطفال كأدوات أو تهديدات بشأن الحضانة أو استغلال الروابط الأبوية كآليات سيطرة.';

  @override
  String get metric_ugly_100_name => 'نزع الإنسانية المنهجي';

  @override
  String get metric_ugly_100_description =>
      'يكشف عن لغة مستدامة تجرد الشريك من الشخصية أو الكرامة أو حقه في الإنسانية الأساسية.';

  @override
  String get metric_narcissist_1_name => 'أهمية ذاتية مبالغ فيها';

  @override
  String get metric_narcissist_1_description =>
      'ادعاءات مبالغ فيها حول الإنجازات أو المواهب أو المكانة تتجاوز الأدلة الواقعية، وغالبًا ما تكون مصحوبة بشعور بالتفرد.';

  @override
  String get metric_narcissist_2_name => 'مطالب الاستحقاق';

  @override
  String get metric_narcissist_2_description =>
      'توقعات غير معقولة بمعاملة خاصة أو امتثال تلقائي لرغباتهم دون مقابل.';

  @override
  String get metric_narcissist_3_name => 'عجز التعاطف';

  @override
  String get metric_narcissist_3_description =>
      'عدم القدرة أو الرغبة في التعرف على مشاعر الآخرين أو التحقق من صحتها، ورفض الاحتياجات العاطفية باعتبارها غير ذات صلة.';

  @override
  String get metric_narcissist_4_name => 'البحث عن الإعجاب';

  @override
  String get metric_narcissist_4_description =>
      'السعي المفرط للإعجاب أو المجاملات أو التحقق لتعزيز تقدير الذات الهش.';

  @override
  String get metric_narcissist_5_name => 'تكتيكات التثليث';

  @override
  String get metric_narcissist_5_description =>
      'إدخال طرف ثالث في النزاعات لإثارة الغيرة أو المنافسة أو التلاعب بالتصورات.';

  @override
  String get metric_narcissist_6_name => 'شدة القصف بالحب';

  @override
  String get metric_narcissist_6_description =>
      'إغراق بالإطراء أو الهدايا أو الاهتمام في بداية العلاقة لكسب السيطرة وإضفاء المثالية على الهدف.';

  @override
  String get metric_narcissist_7_name => 'انتقادات التقليل';

  @override
  String get metric_narcissist_7_description =>
      'تحول مفاجئ إلى انتقادات قاسية أو تحقير أو ازدراء بعد المثالية، مما يؤدي إلى تآكل قيمة الذات لدى الهدف.';

  @override
  String get metric_narcissist_8_name => 'عقاب الصمت';

  @override
  String get metric_narcissist_8_description =>
      'حبس التواصل أو المودة كعقاب متعمد لإثارة القلق والامتثال.';

  @override
  String get metric_narcissist_9_name => 'تحويل اللوم (دارفو)';

  @override
  String get metric_narcissist_9_description =>
      'إنكار المسؤولية، مهاجمة المتهم، وعكس أدوار الضحية والجاني لتجنب المساءلة.';

  @override
  String get metric_narcissist_10_name => 'تشويه الواقع بالغاز';

  @override
  String get metric_narcissist_10_description =>
      'إنكار أو تحريف الحقائق أو الأحداث أو المشاعر لجعل الهدف يشك في ذاكرته أو سلامته العقلية.';

  @override
  String get metric_narcissist_11_name => 'غضب من النقد';

  @override
  String get metric_narcissist_11_description =>
      'غضب شديد أو ازدراء أو انتقام ردًا على أي إهانة أو ملاحظة متصورة، حتى لو كانت بناءة.';

  @override
  String get metric_narcissist_12_name => 'انتهاك الحدود';

  @override
  String get metric_narcissist_12_description =>
      'تجاهل أو تجاوز الحدود المعلنة أو الخصوصية أو المساحة الشخصية دون ندم أو تفاوض.';

  @override
  String get metric_narcissist_13_name => 'التعبير عن الحسد';

  @override
  String get metric_narcissist_13_description =>
      'استياء من نجاحات الآخرين أو ممتلكاتهم، غالبًا ما يصاحبه التقليل من شأنهم أو محاولات تقويضهم.';

  @override
  String get metric_narcissist_14_name => 'سلوك استغلالي';

  @override
  String get metric_narcissist_14_description =>
      'استخدام الآخرين لتحقيق مكاسب شخصية أو مكانة أو موارد دون مراعاة لرفاهيتهم أو موافقتهم.';

  @override
  String get metric_narcissist_15_name => 'التلاعب بالمرآة';

  @override
  String get metric_narcissist_15_description =>
      'تقليد اهتمامات الهدف أو قيمه أو صفاته لخلق علاقة زائفة وكسب الثقة.';

  @override
  String get metric_narcissist_16_name => 'ادعاءات التفوق';

  @override
  String get metric_narcissist_16_description =>
      'التأكيد على التفوق الجوهري على الآخرين، غالبًا بلغة متعالية أو متجاهلة.';

  @override
  String get metric_narcissist_17_name => 'الانشغال بالخيال';

  @override
  String get metric_narcissist_17_description =>
      'حديث هوسي عن النجاح اللامحدود أو القوة أو العبقرية أو الحب المثالي غير الواقعي.';

  @override
  String get metric_narcissist_18_name => 'تأكيد المكانة الخاصة';

  @override
  String get metric_narcissist_18_description =>
      'الاعتقاد بأنه لا يمكن فهمهم إلا من قبل أشخاص أو مؤسسات ذات مكانة عالية.';

  @override
  String get metric_narcissist_19_name => 'الاستغلال الشخصي';

  @override
  String get metric_narcissist_19_description =>
      'الاستفادة من موارد الآخرين أو وقتهم أو عواطفهم دون مقابل أو امتنان.';

  @override
  String get metric_narcissist_20_name => 'غياب الندم';

  @override
  String get metric_narcissist_20_description =>
      'غياب الشعور بالذنب أو الاعتذار بعد التسبب في الأذى، وغالبًا ما يبررون أفعالهم بأنها مستحقة للهدف.';

  @override
  String get metric_narcissist_21_name => 'تقويض تنافسي';

  @override
  String get metric_narcissist_21_description =>
      'تخريب إنجازات الآخرين أو علاقاتهم للحفاظ على موقع متفوق.';

  @override
  String get metric_narcissist_22_name => 'مرحلة المثالية';

  @override
  String get metric_narcissist_22_description =>
      'إطراء وتمجيد مفرطان في بداية العلاقة، مما يضع توقعات غير واقعية للهدف.';

  @override
  String get metric_narcissist_23_name => 'مرحلة التقليل';

  @override
  String get metric_narcissist_23_description =>
      'انتقاد واحتقار تدريجي أو مفاجئ بعد المثالية، مما يخلق ارتباكًا وشكًا في الذات.';

  @override
  String get metric_narcissist_24_name => 'اندفاع التخلص';

  @override
  String get metric_narcissist_24_description =>
      'إنهاء العلاقات فجأة عندما لا يعود الهدف يوفر الإمداد النرجسي أو يتحداهم.';

  @override
  String get metric_narcissist_25_name => 'محاولات الشفط';

  @override
  String get metric_narcissist_25_description =>
      'إعادة إشراك هدف تم التخلص منه بالوعود أو الشعور بالذنب أو التلاعب لاستعادة الإمداد.';

  @override
  String get metric_narcissist_26_name => 'إسقاط العيوب';

  @override
  String get metric_narcissist_26_description =>
      'اتهام الآخرين بصفاتهم أو سلوكياتهم السلبية لتجنب الوعي الذاتي.';

  @override
  String get metric_narcissist_27_name => 'السيطرة بالذنب';

  @override
  String get metric_narcissist_27_description =>
      'استخدام عبارات محفزة للذنب للتلاعب بالآخرين للامتثال أو الرعاية.';

  @override
  String get metric_narcissist_28_name => 'التقلب العاطفي';

  @override
  String get metric_narcissist_28_description =>
      'تقلبات مزاجية سريعة من السحر إلى الغضب، غالبًا ما تثيرها إصابة نرجسية متصورة.';

  @override
  String get metric_narcissist_29_name => 'إبطال المشاعر';

  @override
  String get metric_narcissist_29_description =>
      'رفض أو تقليل مشاعر الآخرين باعتبارها ردود فعل مفرطة أو غير عقلانية.';

  @override
  String get metric_narcissist_30_name => 'السيطرة على المحادثات';

  @override
  String get metric_narcissist_30_description =>
      'الهيمنة على الحوار بموضوعات تركز على الذات، أو المقاطعة، أو تجاهل مدخلات الآخرين.';

  @override
  String get metric_narcissist_31_name => 'إهانة بالتسمية';

  @override
  String get metric_narcissist_31_description =>
      'استخدام الإهانات أو التصنيفات أو العبارات المهينة لتقليل قيمة الهدف والسيطرة عليه.';

  @override
  String get metric_narcissist_32_name => 'تهديدات بالهجر';

  @override
  String get metric_narcissist_32_description =>
      'استخدام الخوف من الفقدان أو الرفض لإجبار الامتثال أو جذب الانتباه.';

  @override
  String get metric_narcissist_33_name => 'لعب دور الضحية';

  @override
  String get metric_narcissist_33_description =>
      'تصوير أنفسهم كمعاملين بشكل غير عادل لجذب التعاطف وتجنب المساءلة.';

  @override
  String get metric_narcissist_34_name => 'عقدة الشهيد';

  @override
  String get metric_narcissist_34_description =>
      'ادعاء تضحية أو معاناة مفرطة لإثارة الشعور بالذنب والالتزام لدى الآخرين.';

  @override
  String get metric_narcissist_35_name => 'ذاكرة انتقائية';

  @override
  String get metric_narcissist_35_description =>
      'نسيان الوعود أو الاتفاقيات أو الأفعال الضارة بشكل ملائم لتجنب المسؤولية.';

  @override
  String get metric_narcissist_36_name => 'عرقلة التواصل';

  @override
  String get metric_narcissist_36_description =>
      'رفض المشاركة في الحوار أو تجاهل الأسئلة أو إغلاق النقاشات للحفاظ على السيطرة.';

  @override
  String get metric_narcissist_37_name => 'تزييف المستقبل';

  @override
  String get metric_narcissist_37_description =>
      'تقديم وعود مبالغ فيها حول خطط مستقبلية مشتركة لخلق أمل زائف وتبعية.';

  @override
  String get metric_narcissist_38_name => 'حملة تشويه';

  @override
  String get metric_narcissist_38_description =>
      'نشر شائعات خبيثة أو أكاذيب عن الهدف لعزله وتدمير سمعته.';

  @override
  String get metric_narcissist_39_name => 'تكتيكات العزل';

  @override
  String get metric_narcissist_39_description =>
      'ثني أو منع الاتصال بالأصدقاء أو العائلة أو أنظمة الدعم لزيادة التبعية.';

  @override
  String get metric_narcissist_40_name => 'استغلال مالي';

  @override
  String get metric_narcissist_40_description =>
      'التلاعب أو السيطرة على الموارد المالية لتحقيق مكاسب شخصية أو خلق تبعية.';

  @override
  String get metric_narcissist_41_name => 'الإكراه الجنسي';

  @override
  String get metric_narcissist_41_description =>
      'استخدام الضغط أو الشعور بالذنب أو التلاعب للحصول على الامتثال الجنسي دون موافقة حقيقية.';

  @override
  String get metric_narcissist_42_name => 'اختبار الحدود';

  @override
  String get metric_narcissist_42_description =>
      'دفع الحدود باستمرار لمعرفة السلوك الذي يتم التسامح معه، ثم تصعيد الانتهاكات.';

  @override
  String get metric_narcissist_43_name => 'إنكار التلاعب بالواقع';

  @override
  String get metric_narcissist_43_description =>
      'إنكار الأحداث أو التصريحات التي حدثت بشكل قاطع، مما يجعل الهدف يشكك في الواقع.';

  @override
  String get metric_narcissist_44_name => 'التقليل من المخاوف';

  @override
  String get metric_narcissist_44_description =>
      'رفض الشكاوى المشروعة باعتبارها غير مهمة أو مفرطة في الحساسية.';

  @override
  String get metric_narcissist_45_name => 'إلقاء اللوم على الآخرين';

  @override
  String get metric_narcissist_45_description =>
      'إرجاع جميع المشاكل والصراعات إلى الآخرين، وعدم قبول الخطأ الشخصي أبدًا.';

  @override
  String get metric_narcissist_46_name => 'استفزاز الغيرة';

  @override
  String get metric_narcissist_46_description =>
      'مغازلة الآخرين أو مدحهم لإثارة الغيرة والحفاظ على السيطرة العاطفية.';

  @override
  String get metric_narcissist_47_name => 'الابتزاز العاطفي';

  @override
  String get metric_narcissist_47_description =>
      'استخدام الخوف أو الالتزام أو الشعور بالذنب للتلاعب بالقرارات والسلوك.';

  @override
  String get metric_narcissist_48_name => 'البصيرة الزائفة';

  @override
  String get metric_narcissist_48_description =>
      'التظاهر بالوعي الذاتي أو التعاطف ليبدو مصلحًا، ثم العودة إلى الأنماط السامة.';

  @override
  String get metric_narcissist_49_name => 'نبرة الازدراء';

  @override
  String get metric_narcissist_49_description =>
      'استخدام السخرية أو الاستهزاء أو اللغة المهينة لإذلال الآخرين ورفضهم.';

  @override
  String get metric_narcissist_50_name => 'أوهام الانتقام';

  @override
  String get metric_narcissist_50_description =>
      'التعبير عن رغبات في الانتقام أو العقاب ضد من أساء إليهم.';

  @override
  String get metric_serial_killer_1_name => 'التأطير الافتراسي';

  @override
  String get metric_serial_killer_1_description =>
      'يكشف اللغة التي تضع المتحدث في دور الصياد والهدف في دور الفريسة، مما يشير إلى نية افتراسية.';

  @override
  String get metric_serial_killer_2_name => 'عجز التعاطف';

  @override
  String get metric_serial_killer_2_description =>
      'يحدد العبارات التي تفتقر إلى الرنين العاطفي أو الاهتمام بمعاناة الآخرين، مما يشير إلى القسوة.';

  @override
  String get metric_serial_killer_3_name => 'ملصقات التجريد من الإنسانية';

  @override
  String get metric_serial_killer_3_description =>
      'يشير إلى استخدام مصطلحات مهينة أو ملصقات موضوعية تجرد الضحايا من إنسانيتهم.';

  @override
  String get metric_serial_killer_4_name => 'إشارات التشييء';

  @override
  String get metric_serial_killer_4_description =>
      'يتعرف على اللغة التي تعامل الأفراد كأدوات أو أشياء للإشباع.';

  @override
  String get metric_serial_killer_5_name => 'هوس السيطرة';

  @override
  String get metric_serial_killer_5_description =>
      'يكشف الإشارات الوسواسية إلى الهيمنة أو التلاعب أو فرض الامتثال.';

  @override
  String get metric_serial_killer_6_name => 'نبرة البحث عن الإثارة';

  @override
  String get metric_serial_killer_6_description =>
      'يحدد الإثارة أو الانفعال في وصف الأفعال الخطرة أو العنيفة أو الافتراسية.';

  @override
  String get metric_serial_killer_7_name => 'علامات التقسيم النفسي';

  @override
  String get metric_serial_killer_7_description =>
      'يشير إلى التحولات المفاجئة بين المواضيع العادية والعنيفة، مما يدل على الفصل النفسي.';

  @override
  String get metric_serial_killer_8_name => 'إشارات اختيار الضحية';

  @override
  String get metric_serial_killer_8_description =>
      'يكشف المعايير أو التفضيلات لاستهداف مجموعات ضعيفة محددة.';

  @override
  String get metric_serial_killer_9_name => 'الاستمتاع السادي';

  @override
  String get metric_serial_killer_9_description =>
      'يتعرف على المتعة المستمدة من ألم الآخرين أو خوفهم أو معاناتهم.';

  @override
  String get metric_serial_killer_10_name => 'الأذى التلاعبي';

  @override
  String get metric_serial_killer_10_description =>
      'يحدد اللغة المستخدمة لخداع الآخرين أو إكراههم إلى مواقف ضارة.';

  @override
  String get metric_serial_killer_11_name => 'مؤشرات المطاردة';

  @override
  String get metric_serial_killer_11_description =>
      'يكشف عن تتبع دقيق أو مراقبة أو مراقبة قهرية للهدف.';

  @override
  String get metric_serial_killer_12_name => 'لغة التمهيد';

  @override
  String get metric_serial_killer_12_description =>
      'يكتشف تكتيكات بناء الثقة التدريجية لاستغلال أو إساءة معاملة الضحايا.';

  @override
  String get metric_serial_killer_13_name => 'التخيل العنيف';

  @override
  String get metric_serial_killer_13_description =>
      'يحدد أوصافًا حية لإيذاء أو قتل الآخرين كتمرين عقلي.';

  @override
  String get metric_serial_killer_14_name => 'تأكيد القوة';

  @override
  String get metric_serial_killer_14_description =>
      'يتعرف على العبارات التي تؤكد التفوق أو السيطرة على الآخرين.';

  @override
  String get metric_serial_killer_15_name => 'غياب الندم';

  @override
  String get metric_serial_killer_15_description =>
      'يكشف عن غياب الذنب أو الندم بعد مناقشة الأفعال الضارة.';

  @override
  String get metric_serial_killer_16_name => 'إلقاء اللوم خارجيًا';

  @override
  String get metric_serial_killer_16_description =>
      'يكتشف تحويل مسؤولية النزعات العنيفة إلى الضحايا أو المجتمع.';

  @override
  String get metric_serial_killer_17_name => 'العنف الجنسي';

  @override
  String get metric_serial_killer_17_description =>
      'يحدد دمج الموضوعات الجنسية والعنيفة في اللغة.';

  @override
  String get metric_serial_killer_18_name => 'تكتيكات العزلة';

  @override
  String get metric_serial_killer_18_description =>
      'يتعرف على الجهود لفصل الهدف عن شبكات الدعم.';

  @override
  String get metric_serial_killer_19_name => 'أنماط التلاعب النفسي';

  @override
  String get metric_serial_killer_19_description =>
      'يكشف عن لغة مصممة لتشويه الواقع وتقويض سلامة الضحية العقلية.';

  @override
  String get metric_serial_killer_20_name => 'إخفاء التهديد';

  @override
  String get metric_serial_killer_20_description =>
      'يكتشف تهديدات أو تحذيرات ضمنية مقنعة كتصريحات عادية.';

  @override
  String get metric_serial_killer_21_name => 'لغة تملكية';

  @override
  String get metric_serial_killer_21_description =>
      'تحدد ادعاءات الملكية أو الحق على شخص آخر.';

  @override
  String get metric_serial_killer_22_name => 'موضوعات الانتقام';

  @override
  String get metric_serial_killer_22_description =>
      'تتعرف على التثبيت على الانتقام أو معاقبة الأخطاء المتصورة.';

  @override
  String get metric_serial_killer_23_name => 'عظمة نرجسية';

  @override
  String get metric_serial_killer_23_description =>
      'تشير إلى تضخيم الذات وتجاهل قيمة الآخرين.';

  @override
  String get metric_serial_killer_24_name => 'انفصال عاطفي';

  @override
  String get metric_serial_killer_24_description =>
      'تكتشف نبرة سريرية أو بعيدة عند مناقشة الصدمة أو الضرر.';

  @override
  String get metric_serial_killer_25_name => 'صبر مفترس';

  @override
  String get metric_serial_killer_25_description =>
      'تحدد لغة التخطيط طويل المدى للإيذاء المستقبلي.';

  @override
  String get metric_serial_killer_26_name => 'اختبار الحدود';

  @override
  String get metric_serial_killer_26_description =>
      'تتعرف على استكشاف الحدود أو المقاومة لدى الضحايا المحتملين.';

  @override
  String get metric_serial_killer_27_name => 'تقليل الضرر';

  @override
  String get metric_serial_killer_27_description =>
      'تشير إلى التقليل من شدة الأفعال العنيفة أو المسيئة.';

  @override
  String get metric_serial_killer_28_name => 'تبرير العنف';

  @override
  String get metric_serial_killer_28_description =>
      'تكتشف تبريرات لإيذاء الآخرين باعتباره ضرورياً أو مستحقاً.';

  @override
  String get metric_serial_killer_29_name => 'تركيز هوسي';

  @override
  String get metric_serial_killer_29_description =>
      'تحدد أفكاراً متكررة ومثبتة على شخص أو فعل معين.';

  @override
  String get metric_serial_killer_30_name => 'حساب بارد';

  @override
  String get metric_serial_killer_30_description =>
      'تتعرف على تخطيط استراتيجي خالٍ من العواطف للأفعال الضارة.';

  @override
  String get metric_serial_killer_31_name => 'سحر خادع';

  @override
  String get metric_serial_killer_31_description =>
      'يشير إلى لغة مفرطة في التملق أو التودد بهدف التلاعب.';

  @override
  String get metric_serial_killer_32_name => 'إلقاء اللوم على الضحية';

  @override
  String get metric_serial_killer_32_description =>
      'يكشف عن إسناد الخطأ للهدف بسبب تعرضه للإيذاء.';

  @override
  String get metric_serial_killer_33_name => 'إشارات التصعيد';

  @override
  String get metric_serial_killer_33_description =>
      'يحدد التقدم من التخيل إلى النية في اللغة العنيفة.';

  @override
  String get metric_serial_killer_34_name => 'التوجه الطفيلي';

  @override
  String get metric_serial_killer_34_description =>
      'يتعرف على اللغة التي تعامل الآخرين كموارد للاستغلال.';

  @override
  String get metric_serial_killer_35_name => 'مؤشرات الإثارة';

  @override
  String get metric_serial_killer_35_description =>
      'يشير إلى مؤشرات الإثارة الفسيولوجية المرتبطة بموضوعات عنيفة.';

  @override
  String get metric_serial_killer_36_name => 'اختبار الولاء';

  @override
  String get metric_serial_killer_36_description =>
      'يكشف عن طلبات لإثبات الإخلاص أو السرية من الشركاء.';

  @override
  String get metric_serial_killer_37_name => 'لغة طقسية';

  @override
  String get metric_serial_killer_37_description =>
      'يحدد الصياغة المنمقة والاحتفالية حول الأفعال العنيفة.';

  @override
  String get metric_serial_killer_38_name => 'ادعاءات التفوق';

  @override
  String get metric_serial_killer_38_description =>
      'يتعرف على التأكيدات بأن الشخص فوق القيود الأخلاقية أو القانونية.';

  @override
  String get metric_serial_killer_39_name => 'فراغ عاطفي';

  @override
  String get metric_serial_killer_39_description =>
      'يشير إلى غياب الكلمات العاطفية في سياقات تتطلب التعاطف.';

  @override
  String get metric_serial_killer_40_name => 'فضول مفترس';

  @override
  String get metric_serial_killer_40_description =>
      'يكشف عن أسئلة استقصائية حول مخاوف الهدف أو نقاط ضعفه.';

  @override
  String get metric_serial_killer_41_name => 'تهديدات الإسكات';

  @override
  String get metric_serial_killer_41_description =>
      'يحدد التحذيرات لمنع الإفصاح أو الإبلاغ.';

  @override
  String get metric_serial_killer_42_name => 'مقارنات تجريدية';

  @override
  String get metric_serial_killer_42_description =>
      'يتعرف على مساواة الأشخاص بالحيوانات أو الأشياء أو الكيانات دون البشر.';

  @override
  String get metric_serial_killer_43_name => 'لغة السيطرة';

  @override
  String get metric_serial_killer_43_description =>
      'يشير إلى النبرات الأمرية أو القيادية التي تهدف إلى السيطرة على الآخرين.';

  @override
  String get metric_serial_killer_44_name => 'تفاصيل سادية';

  @override
  String get metric_serial_killer_44_description =>
      'يكشف عن التركيز المفرط على الألم أو المعاناة الرسومية في الروايات.';

  @override
  String get metric_serial_killer_45_name => 'تعاطف متلاعب';

  @override
  String get metric_serial_killer_45_description =>
      'يحدد الاهتمام المزيف لخفض دفاعات الهدف.';

  @override
  String get metric_serial_killer_46_name => 'نظرة مفترسة';

  @override
  String get metric_serial_killer_46_description =>
      'يتعرف على اللغة التي تصف المراقبة المكثفة والغزوية للأهداف.';

  @override
  String get metric_serial_killer_47_name => 'هوية عنيفة';

  @override
  String get metric_serial_killer_47_description =>
      'يشير إلى التعريف الذاتي كمفترس أو قاتل أو وحش.';

  @override
  String get metric_serial_killer_48_name => 'إثارة الصيد';

  @override
  String get metric_serial_killer_48_description =>
      'يكشف عن الإثارة في عملية مطاردة أو ملاحقة الضحايا.';

  @override
  String get metric_serial_killer_49_name => 'اعتراف قهري';

  @override
  String get metric_serial_killer_49_description =>
      'يحدد الرغبات في الإفصاح عن الأفعال العنيفة من أجل الراحة النفسية.';

  @override
  String get metric_serial_killer_50_name => 'لغة النهاية';

  @override
  String get metric_serial_killer_50_description =>
      'يتعرف على الإشارات إلى إنهاء أو قتل أو إسكات دائم للأهداف.';

  @override
  String get packNarcissistLabel => 'النرجسي';

  @override
  String get packSerialKillerLabel => 'القاتل المتسلسل';
}
