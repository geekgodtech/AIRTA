// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'AI å…³ç³»æ¯’æ€§åˆ†æžå™¨';

  @override
  String get psychologicalMetrics => 'å¿ƒç†æŒ‡æ ‡';

  @override
  String get metricsDescription =>
      'é€‰æ‹©è¾ƒå°‘çš„æŒ‡æ ‡ä¼šå¯¹è¿™äº›è¡Œä¸ºäº§ç”Ÿæ›´æ·±å…¥ã€æ›´é›†ä¸­çš„åˆ†æžã€‚é€‰æ‹©è¾ƒå¤šçš„æŒ‡æ ‡ä¼šç”Ÿæˆæ›´å¹¿æ³›çš„æŠ¥å‘Šï¼Œä½†æ¯ä¸ªæŒ‡æ ‡çš„ç»†èŠ‚è¾ƒå°‘ã€‚';

  @override
  String get selectSMS => 'é€‰æ‹©çŸ­ä¿¡ / RCS èŠå¤©';

  @override
  String get selectDiscordChannel => 'é€‰æ‹©é¢‘é“';

  @override
  String get lightMode => 'æµ…è‰²';

  @override
  String get darkMode => 'æ·±è‰²';

  @override
  String get discordSetupTitle => 'å¦‚ä½•è®¾ç½® Discord';

  @override
  String get discordSetupDescription =>
      'æŒ‰ç…§ä»¥ä¸‹æ­¥éª¤åœ¨åº”ç”¨ä¸­å¯ç”¨ Discord é¢‘é“åˆ†æž:';

  @override
  String get discordStep1Title => 'åˆ›å»º Discord æœºå™¨äºº';

  @override
  String get discordStep1Description =>
      'å‰å¾€ discord.com/developersï¼Œåˆ›å»ºæ–°åº”ç”¨ç¨‹åºå¹¶æ·»åŠ æœºå™¨äººã€‚å¤åˆ¶æœºå™¨äººä»¤ç‰Œã€‚';

  @override
  String get discordStep2Title => 'å¯ç”¨æœºå™¨äººæƒé™';

  @override
  String get discordStep2Description =>
      'åœ¨æœºå™¨äººè®¾ç½®ä¸­ï¼Œå¯ç”¨ \'Message Content Intent\' å’Œ \'Server Members Intent\'ã€‚';

  @override
  String get discordStep3Title => 'å°†æœºå™¨äººé‚€è¯·åˆ°æœåŠ¡å™¨';

  @override
  String get discordStep3Description =>
      'ä½¿ç”¨ OAuth2 URL ç”Ÿæˆå™¨å°†æœºå™¨äººé‚€è¯·åˆ°æ‚¨çš„ Discord æœåŠ¡å™¨ï¼Œå¹¶æŽˆäºˆæ‰€éœ€æƒé™ã€‚';

  @override
  String get discordStep4Title => 'åœ¨åº”ç”¨ä¸­é…ç½®';

  @override
  String get discordStep4Description =>
      'åœ¨åº”ç”¨è®¾ç½®ä¸­è¾“å…¥æ‚¨çš„æœºå™¨äººä»¤ç‰Œï¼ˆå¦‚éœ€å¸®åŠ©è¯·è”ç³»æ”¯æŒï¼‰ã€‚';

  @override
  String get discordStep5Title => 'é€‰æ‹©é¢‘é“';

  @override
  String get discordStep5Description =>
      'ç‚¹å‡» \'é€‰æ‹© Discord é¢‘é“\'ï¼Œé€‰æ‹©æ‚¨çš„æœåŠ¡å™¨ï¼Œç„¶åŽé€‰æ‹©è¦åˆ†æžçš„é¢‘é“ã€‚';

  @override
  String get discordBotConfiguration => 'æœºå™¨äººé…ç½®';

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
  String get discordNeverShareToken =>
      'âš ï¸ Never share this token with anyone!';

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
  String get gotIt => 'æ˜Žç™½äº†';

  @override
  String get selectFile => 'é€‰æ‹©æ–‡ä»¶';

  @override
  String get analyzeSelectedMetrics => 'åˆ†æžæ‰€é€‰æŒ‡æ ‡';

  @override
  String get analyze20RandomMetrics => 'åˆ†æž 20 ä¸ªéšæœºæŒ‡æ ‡';

  @override
  String get membershipOptions => 'ä¼šå‘˜é€‰é¡¹';

  @override
  String get free => 'å…è´¹';

  @override
  String get oneTimeUnlock => 'ä¸€æ¬¡æ€§æŠ¥å‘Šè§£é”';

  @override
  String get standard => 'æ ‡å‡†';

  @override
  String get discordAddon => 'Discord é™„åŠ ç»„ä»¶';

  @override
  String get analyze => 'åˆ†æž';

  @override
  String get report => 'æŠ¥å‘Š';

  @override
  String get pdfReport => 'PDF æŠ¥å‘Š';

  @override
  String get openPdf => 'æ‰“å¼€ PDF';

  @override
  String get sharePdf => 'åˆ†äº« PDF';

  @override
  String get printPdf => 'æ‰“å° PDF';

  @override
  String get closePdfPreview => 'å…³é—­ PDF é¢„è§ˆçª—å£';

  @override
  String get openPdfPreview => 'æ‰“å¼€ PDF é¢„è§ˆçª—å£';

  @override
  String get pdfPreviewDescription =>
      'åµŒå…¥å¼ PDF çª—å£åˆå§‹ä¸ºå…³é—­çŠ¶æ€ï¼Œä»¥ä¿æŒæŠ¥å‘Šç´§å‡‘ã€‚';

  @override
  String get notNow => 'æš‚ä¸';

  @override
  String get unlockThisReport => 'è§£é”æ­¤æŠ¥å‘Š - \$20';

  @override
  String get joinStandard => 'åŠ å…¥æ ‡å‡†ä¼šå‘˜ - \$9.99/æœˆ';

  @override
  String get instantUnlockTitle => 'å³æ—¶æŠ¥å‘Šè§£é” - \$20';

  @override
  String get instantUnlockDescription =>
      'è¿™æ˜¯ä¸€æ¬¡æ€§è´­ä¹°ï¼Œä»…è§£é”å½“å‰æŠ¥å‘Šã€‚æ— éœ€è®¢é˜…ã€‚æœªæ¥çš„æŠ¥å‘Šå°†éœ€è¦å•ç‹¬è§£é”æˆ–ä¼šå‘˜èµ„æ ¼ã€‚\n\nç»§ç»­ä»˜æ¬¾ï¼Ÿ';

  @override
  String get purchaseFor20 => 'ä»¥ \$20 è´­ä¹°';

  @override
  String get share => 'åˆ†äº«';

  @override
  String get print => 'æ‰“å°';

  @override
  String get save => 'ä¿å­˜';

  @override
  String get cancel => 'å–æ¶ˆ';

  @override
  String get ok => 'ç¡®å®š';

  @override
  String get loading => 'åŠ è½½ä¸­...';

  @override
  String get error => 'é”™è¯¯';

  @override
  String get success => 'æˆåŠŸ';

  @override
  String get conversations => 'å¯¹è¯';

  @override
  String get messages => 'æ¶ˆæ¯';

  @override
  String get selectConversation => 'é€‰æ‹©å¯¹è¯';

  @override
  String get selectSmsConversation => 'é€‰æ‹©çŸ­ä¿¡ / RCS å¯¹è¯';

  @override
  String get searchConversations => 'æœç´¢å¯¹è¯...';

  @override
  String get loadingConversations => 'æ­£åœ¨åŠ è½½å¯¹è¯...';

  @override
  String get errorLoadingConversations => 'åŠ è½½å¯¹è¯å‡ºé”™';

  @override
  String get selectConversationToAnalyze => 'é€‰æ‹©è¦åˆ†æžçš„å¯¹è¯';

  @override
  String get analyzeWithSelectedMetrics => 'ä½¿ç”¨æ‰€é€‰æŒ‡æ ‡è¿›è¡Œåˆ†æž';

  @override
  String get loadConversationAndSelectMetric =>
      'åŠ è½½å¯¹è¯å¹¶è‡³å°‘é€‰æ‹©ä¸€ä¸ªæŒ‡æ ‡';

  @override
  String get selectAtLeastOneMetric =>
      'è¿è¡ŒæŠ¥å‘Šè‡³å°‘éœ€è¦é€‰æ‹©ä¸€ä¸ªæŒ‡æ ‡ã€‚';

  @override
  String get spinningMetricWheel => 'æ­£åœ¨è½¬åŠ¨æŒ‡æ ‡è½®ç›˜...';

  @override
  String get loadConversationToAnalyze => 'åŠ è½½è¦åˆ†æžçš„å¯¹è¯';

  @override
  String get noConversationsFound => 'æœªæ‰¾åˆ°å¯¹è¯';

  @override
  String get permissionsRequired => 'éœ€è¦æƒé™';

  @override
  String get smsPermission => 'çŸ­ä¿¡';

  @override
  String get contactsPermission => 'è”ç³»äºº';

  @override
  String get smsPermissionDescription =>
      'ç”¨äºŽåˆ†æžæ‚¨çš„çŸ­ä¿¡å¯¹è¯ä¸­çš„å…³ç³»æ¨¡å¼';

  @override
  String get contactsPermissionDescription =>
      'ç”¨äºŽæ˜¾ç¤ºè”ç³»äººå§“åè€Œéžç”µè¯å·ç ';

  @override
  String get analyzingMessage =>
      'è¯·ç¨å€™ï¼Œæ‚¨çš„å¿ƒç†åˆ†æžæ­£ç”± AI ç”Ÿæˆ...';

  @override
  String get analyzingStatus => 'æ­£åœ¨åˆ†æžå¯¹è¯...';

  @override
  String get analyzingSubMessage =>
      'è¯·è€å¿ƒç­‰å¾…ï¼Œæ­¤è¿‡ç¨‹å¯èƒ½éœ€è¦é•¿è¾¾ä¸€åˆ†é’Ÿï¼Œå…·ä½“å–å†³äºŽæ‚¨çš„è¿žæŽ¥é€Ÿåº¦å’Œæ‰€é€‰æŒ‡æ ‡çš„æ•°é‡';

  @override
  String get unlockFullReport => 'è§£é”å¹¶æ˜¾ç¤ºæ•´ä¸ªæŠ¥å‘Š';

  @override
  String get fullReportLocked => 'å®Œæ•´æŠ¥å‘Šå·²é”å®š';

  @override
  String get upgradeToUnlock =>
      'å‡çº§æ‚¨çš„ä¼šå‘˜èµ„æ ¼ä»¥è§£é”åŒ…å«æ‰€æœ‰æŒ‡æ ‡å’Œè¯¦ç»†è§è§£çš„å®Œæ•´å¿ƒç†åˆ†æžæŠ¥å‘Šã€‚';

  @override
  String get language => 'è¯­è¨€';

  @override
  String get english => 'è‹±è¯­';

  @override
  String get spanish => 'è¥¿ç­ç‰™è¯­';

  @override
  String get french => 'æ³•è¯­';

  @override
  String get german => 'å¾·è¯­';

  @override
  String get italian => 'æ„å¤§åˆ©è¯­';

  @override
  String get portuguese => 'è‘¡è„ç‰™è¯­';

  @override
  String get dutch => 'è·å…°è¯­';

  @override
  String get russian => 'ä¿„è¯­';

  @override
  String get chinese => 'ä¸­æ–‡';

  @override
  String get japanese => 'æ—¥è¯­';

  @override
  String get korean => 'éŸ©è¯­';

  @override
  String get arabic => 'é˜¿æ‹‰ä¼¯è¯­';

  @override
  String get hindi => 'å°åœ°è¯­';

  @override
  String get turkish => 'åœŸè€³å…¶è¯­';

  @override
  String get polish => 'æ³¢å…°è¯­';

  @override
  String get ukrainian => 'ä¹Œå…‹å…°è¯­';

  @override
  String get runAnotherAnalysis => 'å†è¿›è¡Œä¸€æ¬¡åˆ†æžï¼Ÿ';

  @override
  String get becomeMemberTitle => 'æˆä¸ºä¼šå‘˜ä»¥èŽ·å–å®Œæ•´åˆ†æžæŠ¥å‘Š';

  @override
  String get becomeMemberSubtitle =>
      'é€‰æ‹©é€‚åˆæ‚¨éœ€è¦åˆ†æžçš„å¯¹è¯å’ŒæŠ¥å‘Šçš„è®¿é—®çº§åˆ«ã€‚';

  @override
  String get benefitAnalyzeSms => 'åˆ†æž SMS çŸ­ä¿¡';

  @override
  String get benefitReportPreview => 'è¿è¡ŒæŠ¥å‘Šé¢„è§ˆ';

  @override
  String get benefitViewPartialReport => 'æŸ¥çœ‹çº¦ 25% çš„æŠ¥å‘Š';

  @override
  String get benefitLockedDetails => 'å®Œæ•´æŠ¥å‘Šè¯¦æƒ…å·²é”å®š';

  @override
  String get currentFreeAccess => 'å½“å‰å…è´¹è®¿é—®';

  @override
  String get benefitUnlockCurrentReport => 'è§£é”å½“å‰å®Œæ•´æŠ¥å‘Š';

  @override
  String get benefitNoSubscription => 'æ— éœ€è®¢é˜…';

  @override
  String get benefitSavePrintShareThis => 'ä¿å­˜ã€æ‰“å°å’Œåˆ†äº«æ­¤æŠ¥å‘Š';

  @override
  String get benefitBestSingleAnalysis =>
      'å¦‚æžœæ‚¨åªéœ€è¦ä¸€æ¬¡åˆ†æžï¼Œåˆ™æœ€é€‚åˆ';

  @override
  String get unlockThisReportShort => 'è§£é”æ­¤æŠ¥å‘Š';

  @override
  String get benefitFullSmsReport => 'å®Œæ•´ SMS åˆ†æžæŠ¥å‘Š';

  @override
  String get benefitSavePrintSharePdf => 'ä¿å­˜ã€æ‰“å°å’Œåˆ†äº« PDF æŠ¥å‘Š';

  @override
  String get benefitTenReports => 'æ¯ 24 å°æ—¶ 10 ä»½æŠ¥å‘Š';

  @override
  String get benefitBestTextReview => 'æœ€é€‚åˆçŸ­ä¿¡å…³ç³»å®¡æŸ¥';

  @override
  String get benefitDateRangeFilter => 'æŒ‰æ—¥æœŸèŒƒå›´è¿‡æ»¤åˆ†æž';

  @override
  String get signUpStandard => 'æ³¨å†Œæ ‡å‡†ä¼šå‘˜';

  @override
  String get benefitAddToStandard => 'æ·»åŠ åˆ°æ ‡å‡†ä¼šå‘˜';

  @override
  String get benefitAnalyzeDiscord => 'åˆ†æž Discord æœåŠ¡å™¨èŠå¤©';

  @override
  String get benefitRequiresBot => 'éœ€è¦å®‰è£…æœºå™¨äºº';

  @override
  String get benefitBestGamers => 'æœ€é€‚åˆçŽ©å®¶å’Œ Discord ç¤¾åŒº';

  @override
  String get addDiscordAnalysis => 'æ·»åŠ  Discord åˆ†æž';

  @override
  String get requiresStandardMembership => 'éœ€è¦æ ‡å‡†ä¼šå‘˜';

  @override
  String get comingSoon => 'å³å°†æŽ¨å‡º';

  @override
  String get comingSoonWithNextUpdate => 'ä¸‹æ¬¡æ›´æ–°å³å°†æŽ¨å‡ºï¼š';

  @override
  String get proMembershipTier => 'Pro ä¼šå‘˜ç­‰çº§ - \$19.99';

  @override
  String get proPlusMembershipTier => 'Pro-Plus ä¼šå‘˜ç­‰çº§ - \$24.99';

  @override
  String get proGetsLabel => 'Pro åŒ…å«ï¼š';

  @override
  String get proGetsDescription =>
      'åˆ†æžæ‰€æœ‰å…¶ä»–çƒ­é—¨çŸ­ä¿¡å’Œç¤¾äº¤åª’ä½“å¹³å°çš„èŠå¤©ä¼šè¯ï¼Œä¾‹å¦‚ï¼š';

  @override
  String get proPlatformsList =>
      'LinkedInã€WhatsAppã€Instagramã€Facebook Messengerã€Telegramã€X (Twitter)ã€ç”µå­é‚®ä»¶å’Œæ—¥åŽ†';

  @override
  String get proPlusGetsLabel => 'Pro-Plus åŒ…å«ï¼š';

  @override
  String get proPlusGetsDescription =>
      'Pro çš„æ‰€æœ‰åŠŸèƒ½ï¼Œå¤–åŠ ä»¥ä¼˜æƒ ä»·æ ¼æä¾›çš„ Discord é™„åŠ ç»„ä»¶ã€‚';

  @override
  String get purchaseSuccessfulUnlocked => 'è´­ä¹°æˆåŠŸï¼æŠ¥å‘Šå·²è§£é”ã€‚';

  @override
  String get purchaseFailed => 'è´­ä¹°å¤±è´¥ã€‚è¯·é‡è¯•ã€‚';

  @override
  String get membershipActivated => 'ä¼šå‘˜å·²æ¿€æ´»ï¼';

  @override
  String get dateRangeFilter => 'æ—¥æœŸèŒƒå›´è¿‡æ»¤å™¨';

  @override
  String get dateRangeOptional => '(å¯é€‰)';

  @override
  String get startDate => 'å¼€å§‹æ—¥æœŸ';

  @override
  String get endDate => 'ç»“æŸæ—¥æœŸ';

  @override
  String get clear => 'æ¸…é™¤';

  @override
  String get dateRangeRequiresMembership => 'éœ€è¦æ ‡å‡†ä¼šå‘˜æˆ–æ›´é«˜';

  @override
  String selectUpToCount(Object current, Object max) {
    return 'æœ€å¤šé€‰æ‹© $maxã€‚å½“å‰ï¼š$current';
  }

  @override
  String get clearSelections => 'æ¸…é™¤é€‰æ‹©';

  @override
  String analyzeRandomMetrics(Object count) {
    return 'åˆ†æž $count ä¸ªéšæœºæŒ‡æ ‡';
  }

  @override
  String get saveSelections => 'ä¿å­˜é€‰æ‹©';

  @override
  String get loadSelections => 'åŠ è½½é€‰æ‹©';

  @override
  String get saveMetricListName => 'ä¿å­˜æŒ‡æ ‡åˆ—è¡¨';

  @override
  String get enterListName => 'ä¸ºæ­¤æŒ‡æ ‡åˆ—è¡¨è¾“å…¥åç§°:';

  @override
  String get chooseSavedMetrics => 'é€‰æ‹©ä¿å­˜çš„æŒ‡æ ‡åˆ—è¡¨:';

  @override
  String get noSavedLists => 'ç›®å‰æ²¡æœ‰ä¿å­˜çš„æŒ‡æ ‡åˆ—è¡¨å¯åŠ è½½ã€‚';

  @override
  String get metricListSaved => 'æŒ‡æ ‡åˆ—è¡¨ä¿å­˜æˆåŠŸã€‚';

  @override
  String get metricListLoaded => 'æŒ‡æ ‡åˆ—è¡¨åŠ è½½æˆåŠŸã€‚';

  @override
  String get filters => 'ç­›é€‰';

  @override
  String get sortBy => 'æŽ’åºæ–¹å¼ï¼š';

  @override
  String get recent => 'æœ€è¿‘';

  @override
  String get name => 'åç§°';

  @override
  String get count => 'æ•°é‡';

  @override
  String get namedOnly => 'ä»…å‘½å';

  @override
  String get minMessages => 'æœ€å°‘æ¶ˆæ¯ï¼š';

  @override
  String get minimumMessages => 'æœ€å°‘æ¶ˆæ¯ï¼š';

  @override
  String get executiveSummary => 'æ‰§è¡Œæ‘˜è¦';

  @override
  String get metricScores => 'æŒ‡æ ‡å¾—åˆ†';

  @override
  String get contextualEvidenceExamples => 'ä¸Šä¸‹æ–‡è¯æ®ç¤ºä¾‹';

  @override
  String get neutralSynthesis => 'ä¸­ç«‹ç»¼åˆ';

  @override
  String analysisOfSender(Object sender) {
    return '$sender åˆ†æžï¼ˆå‘é€è€…ï¼‰';
  }

  @override
  String analysisOfReceiver(Object receiver) {
    return '$receiver åˆ†æžï¼ˆæŽ¥æ”¶è€…ï¼‰';
  }

  @override
  String get finalConclusion => 'æœ€ç»ˆç»“è®º';

  @override
  String get metric_1_name => 'è”‘è§†';

  @override
  String get metric_1_description =>
      'å¯»æ‰¾ä¼˜è¶Šæ„Ÿã€åŽŒæ¶ã€å˜²ç¬‘ã€ç¿»ç™½çœ¼è¯­è¨€æˆ–ä¾®è¾±ï¼Œè¿™äº›å°†ä¸€æ–¹ä¼´ä¾£ç½®äºŽå¦ä¸€æ–¹ä¹‹ä¸‹ã€‚';

  @override
  String get metric_2_name => 'é˜²å¾¡æ€§';

  @override
  String get metric_2_description =>
      'è¿½è¸ªåå°„æ€§è‡ªæˆ‘ä¿æŠ¤ã€åå‡»ã€å€Ÿå£å’Œæ‹’ç»è€ƒè™‘å¯¹æ–¹çš„æŠ•è¯‰ã€‚';

  @override
  String get metric_3_name => 'ç­‘å¢™';

  @override
  String get metric_3_description =>
      'è¯†åˆ«å…³é—­ã€é€€ç¼©ã€å¿½è§†ã€æ‹’ç»å›žç­”æˆ–ç»“æŸå¯¹è¯ä»¥é¿å…å‚ä¸Žã€‚';

  @override
  String get metric_4_name => 'æ‰¹è¯„';

  @override
  String get metric_4_description =>
      'æ£€æµ‹å¯¹æ€§æ ¼æˆ–äººæ ¼çš„æ”»å‡»ï¼Œè€Œä¸æ˜¯é’ˆå¯¹å…·ä½“è¡Œä¸ºã€éœ€æ±‚æˆ–äº‹ä»¶ã€‚';

  @override
  String get metric_5_name => 'ç…¤æ°”ç¯æ•ˆåº”æŒ‡æ ‡';

  @override
  String get metric_5_description =>
      'æ ‡è®°è¯•å›¾è®©äººæ€€ç–‘è®°å¿†ã€æ„ŸçŸ¥ã€ç†æ™ºæˆ–å…¶ç»åŽ†åˆæ³•æ€§çš„è¡Œä¸ºã€‚';

  @override
  String get metric_6_name => 'æŽ¨å¸è´£ä»»';

  @override
  String get metric_6_description =>
      'è¡¡é‡è´£ä»»æ˜¯å¦è¢«é‡å®šå‘åˆ°å¦ä¸€æ–¹ä¼´ä¾£ï¼Œè€Œä¸æ˜¯ç›´æŽ¥æ‰¿è®¤ã€‚';

  @override
  String get metric_7_name => 'å‡çº§æ¨¡å¼';

  @override
  String get metric_7_description =>
      'è¯„ä¼°è¯­æ°”ã€æŒ‡è´£ã€å¼ºåº¦æˆ–å¨èƒæ˜¯å¦å¢žåŠ ï¼Œè€Œä¸æ˜¯æœå‘è§£å†³æ–¹æ¡ˆã€‚';

  @override
  String get metric_8_name => 'ä¿®å¤å°è¯•è¯†åˆ«';

  @override
  String get metric_8_description =>
      'æ£€æŸ¥é“æ­‰ã€å¹½é»˜ã€æš‚åœã€å®‰æŠšæˆ–å’Œå¹³æè®®æ˜¯å¦è¢«æ³¨æ„åˆ°å¹¶æŽ¥å—ã€‚';

  @override
  String get metric_9_name => 'è´£ä»»è¯­è¨€';

  @override
  String get metric_9_description =>
      'å¯»æ‰¾å¯¹ä¼¤å®³çš„æ˜Žç¡®æ‰€æœ‰æƒã€å…·ä½“è´£ä»»å’Œæ”¹å˜è¡Œä¸ºçš„æ„æ„¿ã€‚';

  @override
  String get metric_10_name => 'è¾¹ç•Œå°Šé‡';

  @override
  String get metric_10_description =>
      'è¯„ä¼°å…³äºŽæ—¶é—´ã€éšç§ã€èº«ä½“ã€æƒ…æ„Ÿæˆ–æŽ¥è§¦çš„æ—¢å®šé™åˆ¶æ˜¯å¦å¾—åˆ°å°Šé‡ã€‚';

  @override
  String get metric_11_name => 'å¼ºåˆ¶æŽ§åˆ¶æŒ‡æ ‡';

  @override
  String get metric_11_description =>
      'æ ‡è®°æå“ã€é™åˆ¶ã€ç›‘æŽ§ã€ä¾èµ–æˆ–å¯¹é€‰æ‹©å’Œè¡ŒåŠ¨çš„æŽ§åˆ¶æ¨¡å¼ã€‚';

  @override
  String get metric_12_name => 'å¨èƒè¯­è¨€';

  @override
  String get metric_12_description =>
      'è¯†åˆ«æ¶‰åŠå®‰å…¨ã€æŠ›å¼ƒã€æ›å…‰ã€æŠ¥å¤æˆ–æƒ©ç½šçš„æ˜Žç¡®æˆ–éšå«å¨èƒã€‚';

  @override
  String get metric_13_name => 'è½»è§†';

  @override
  String get metric_13_description =>
      'æ£€æµ‹æ•·è¡å…³æ³¨ã€å°†éœ€æ±‚è§†ä¸ºä¸é‡è¦æˆ–æ‹’ç»è®¤çœŸå¯¹å¾…ç—›è‹¦ã€‚';

  @override
  String get metric_14_name => 'å¦å®š';

  @override
  String get metric_14_description =>
      'è¡¡é‡å¦è®¤ã€å˜²ç¬‘æˆ–çº æ­£ä»–äººçš„æƒ…ç»ªï¼Œè€Œä¸æ˜¯æ‰¿è®¤å®ƒä»¬ã€‚';

  @override
  String get metric_15_name => 'åŒç†å¿ƒè¡¨è¾¾';

  @override
  String get metric_15_description =>
      'å¯»æ‰¾æ¢ä½æ€è€ƒã€å…³å¿ƒã€æƒ…æ„Ÿè¯†åˆ«å’Œå¯¹ä»–äººç»åŽ†çš„å…³åˆ‡ã€‚';

  @override
  String get metric_16_name => 'äº’æƒ æ€§';

  @override
  String get metric_16_description =>
      'è¯„ä¼°æ³¨æ„åŠ›ã€åŠªåŠ›ã€é“æ­‰ã€å¦¥åå’Œæƒ…æ„Ÿæ”¯æŒæ˜¯å¦åŒå‘æµåŠ¨ã€‚';

  @override
  String get metric_17_name => 'æƒ…æ„Ÿè°ƒèŠ‚';

  @override
  String get metric_17_description =>
      'è¯„ä¼°ä¿æŒè„šè¸å®žåœ°ã€æš‚åœã€è‡ªæˆ‘å®‰æŠšå’Œåœ¨æ²¡æœ‰çˆ†ç‚¸æ€§ååº”çš„æƒ…å†µä¸‹æ²Ÿé€šçš„èƒ½åŠ›ã€‚';

  @override
  String get metric_18_name => 'ç”¨ä½œä¼¤å®³çš„è®½åˆº';

  @override
  String get metric_18_description =>
      'æ ‡è®°ç”¨äºŽè´¬ä½Žã€æƒ©ç½šã€ç¾žè¾±æˆ–å°†æ•Œæ„ä¼ªè£…æˆå¹½é»˜çš„è®½åˆºã€‚';

  @override
  String get metric_19_name => 'è°©éª‚';

  @override
  String get metric_19_description =>
      'è¯†åˆ«è´¬ä¹‰æ ‡ç­¾ã€ä¾®è¾±ã€é’ˆå¯¹ä¸ªäººçš„è„è¯æˆ–åŸºäºŽèº«ä»½çš„æ”»å‡»ã€‚';

  @override
  String get metric_20_name => 'æ²‰é»˜å¯¹å¾…æ¨¡å¼';

  @override
  String get metric_20_description =>
      'è¿½è¸ªç”¨ä½œæƒ©ç½šã€æŽ§åˆ¶ã€å›žé¿æˆ–æ’¤å›žè”ç³»çš„æ²‰é»˜ã€‚';

  @override
  String get metric_21_name => 'å«‰å¦’æ¡†æž¶';

  @override
  String get metric_21_description =>
      'è¯„ä¼°æ€€ç–‘ã€å æœ‰æ¬²ã€æŒ‡è´£æˆ–å«‰å¦’è¢«å‘ˆçŽ°ä¸ºå…³å¿ƒçš„è¯æ˜Žã€‚';

  @override
  String get metric_22_name => 'å­¤ç«‹åŽ‹åŠ›';

  @override
  String get metric_22_description =>
      'æ ‡è®°å°†ä¼´ä¾£ä¸Žæœ‹å‹ã€å®¶äººã€æ”¯æŒç³»ç»Ÿæˆ–å¤–éƒ¨è§‚ç‚¹åˆ†å¼€çš„åŠªåŠ›ã€‚';

  @override
  String get metric_23_name => 'è´¢åŠ¡æŽ§åˆ¶æŒ‡æ ‡';

  @override
  String get metric_23_description =>
      'å¯»æ‰¾å¯¹é‡‘é’±ã€æ”¯å‡ºã€å°±ä¸šã€è´¦æˆ·è®¿é—®æˆ–è´¢åŠ¡ç‹¬ç«‹çš„æŽ§åˆ¶ã€‚';

  @override
  String get metric_24_name => 'éšç§ä¾µçŠ¯æŒ‡æ ‡';

  @override
  String get metric_24_description =>
      'æ£€æµ‹çª¥æŽ¢ã€å¯†ç è¦æ±‚ã€è®¾å¤‡æ£€æŸ¥ã€ä½ç½®è·Ÿè¸ªæˆ–éšç§ä¾µçŠ¯ã€‚';

  @override
  String get metric_25_name => 'é“æ­‰çš„å…·ä½“æ€§';

  @override
  String get metric_25_description =>
      'è¡¡é‡é“æ­‰æ˜¯å¦å‘½åäº†ç¡®åˆ‡çš„ä¼¤å®³ã€å½±å“å’Œæœªæ¥çº æ­£ï¼Œè€Œä¸æ˜¯ä¿æŒæ¨¡ç³Šã€‚';

  @override
  String get metric_26_name => 'åŽŸè°…åŽ‹åŠ›';

  @override
  String get metric_26_description =>
      'æ ‡è®°åœ¨ä¿®å¤å‘ç”Ÿä¹‹å‰è¦æ±‚ç»§ç»­å‰è¿›ã€å¿«é€ŸåŽŸè°…æˆ–åœæ­¢è®¨è®ºä¼¤å®³çš„è¦æ±‚ã€‚';

  @override
  String get metric_27_name => 'æœ€å°åŒ–';

  @override
  String get metric_27_description =>
      'æ£€æµ‹æ·¡åŒ–ä¼¤å®³ã€å°†ä¸¥é‡å…³åˆ‡ç§°ä¸ºæˆå‰§æ€§æˆ–å‡å°‘å½±å“ä»¥é¿å…è´£ä»»ã€‚';

  @override
  String get metric_28_name => 'æŠ•å°„';

  @override
  String get metric_28_description =>
      'å¯»æ‰¾åæ˜ è¯´è¯è€…è‡ªå·±è¡Œä¸ºã€åŠ¨æœºæˆ–æœªè§£å†³æ„Ÿè§‰çš„æŒ‡è´£ã€‚';

  @override
  String get metric_29_name => 'æ‰“æ–­æ¨¡å¼';

  @override
  String get metric_29_description =>
      'è¿½è¸ªæ‰“æ–­ã€æŠ¢è¯ã€æ‹’ç»å®Œæˆæˆ–æŽ§åˆ¶å¯¹è¯è½®æ¬¡ã€‚';

  @override
  String get metric_30_name => 'è¯é¢˜è½¬ç§»';

  @override
  String get metric_30_description =>
      'è¯†åˆ«æ”¹å˜è¯é¢˜ã€æå‡ºä¸ç›¸å…³é—®é¢˜æˆ–é¿å…æ ¸å¿ƒå…³åˆ‡ã€‚';

  @override
  String get metric_31_name => 'è§£å†³å¯¼å‘';

  @override
  String get metric_31_description =>
      'è¡¡é‡æ¶ˆæ¯æ˜¯å¦æ—¨åœ¨è§£å†³æ–¹æ¡ˆã€æ¸…æ™°åº¦ã€åè®®å’Œä¸‹ä¸€æ­¥ã€‚';

  @override
  String get metric_32_name => 'å…±åŒè§£å†³é—®é¢˜';

  @override
  String get metric_32_description =>
      'è¯„ä¼°åä½œè¯­è¨€ã€å…±åŒè´£ä»»ã€å¤´è„‘é£Žæš´å’Œå¯»æ‰¾å¯è¡Œå¦¥åçš„æ„æ„¿ã€‚';

  @override
  String get metric_33_name => 'æƒ…æ„Ÿæ·¹æ²¡';

  @override
  String get metric_33_description =>
      'æ£€æµ‹ä¸çŸ¥æ‰€æŽªã€ææ…Œã€å…³é—­ã€èžºæ—‹æˆ–å†²çªæœŸé—´æ— æ³•å¤„ç†ã€‚';

  @override
  String get metric_34_name => 'ææƒ§ååº”çº¿ç´¢';

  @override
  String get metric_34_description =>
      'å¯»æ‰¾å®‰æŠšã€è°¨æ…ŽæŽªè¾žã€ææƒ§ã€å®‰å…¨å…³åˆ‡æˆ–å¯¹ä¼´ä¾£ååº”çš„ææƒ§ã€‚';

  @override
  String get metric_35_name => 'å£°æ˜Žçš„ä¸€è‡´æ€§';

  @override
  String get metric_35_description =>
      'è¯„ä¼°å™è¿°åœ¨æ¶ˆæ¯å’Œæ—¶é—´ä¸Šæ˜¯å¦ä¿æŒå†…éƒ¨ä¸€è‡´ã€‚';

  @override
  String get metric_36_name => 'åŸºäºŽè¯æ®çš„å›žå¿†';

  @override
  String get metric_36_description =>
      'æ£€æŸ¥å£°æ˜Žæ˜¯å¦å¼•ç”¨å…·ä½“äº‹ä»¶ã€å¼•ç”¨ã€æ—¶é—´çº¿æˆ–å¯è§‚å¯Ÿè¡Œä¸ºã€‚';

  @override
  String get metric_37_name => 'è¦æ±‚é€€ç¼©æ¨¡å¼';

  @override
  String get metric_37_description =>
      'è¿½è¸ªä¸€æ–¹ä¼´ä¾£å¯»æ±‚ç­”æ¡ˆæˆ–æ”¹å˜ï¼Œè€Œå¦ä¸€æ–¹å›žé¿ã€å…³é—­æˆ–é€€å‡ºã€‚';

  @override
  String get metric_38_name => 'æƒåŠ›å¤±è¡¡æŒ‡æ ‡';

  @override
  String get metric_38_description =>
      'æ ‡è®°ä¸å¹³ç­‰çš„å†³ç­–æƒã€å¯¹åŽæžœçš„ææƒ§ã€ä¾èµ–ã€æå“æˆ–å•æ–¹é¢æŽ§åˆ¶ã€‚';

  @override
  String get metric_39_name => 'å°Šé‡çš„åˆ†æ­§';

  @override
  String get metric_39_description =>
      'è¡¡é‡å†²çªæ˜¯å¦ä¿æŒå°Šä¸¥ã€å¥½å¥‡å¿ƒå’Œåˆ†æ­§è€Œæ²¡æœ‰è´¬ä½Žã€‚';

  @override
  String get metric_40_name => 'ç ´è£‚å’Œä¿®å¤å¾ªçŽ¯';

  @override
  String get metric_40_description =>
      'è¯„ä¼°å†²çªæ˜¯å¦éšåŽæ˜¯æ‰¿è®¤ã€é‡æ–°è¿žæŽ¥å’Œå®žé™…ä¿®å¤ã€‚';

  @override
  String get metric_41_name => 'æƒ…æ„Ÿæ’¤å›ž';

  @override
  String get metric_41_description =>
      'æ£€æµ‹çˆ±ã€æ¸©æš–ã€æ€§ã€æ³¨æ„åŠ›æˆ–å®‰æŠšè¢«æ‰£ç•™ä½œä¸ºæƒ©ç½šæˆ–æ æ†ã€‚';

  @override
  String get metric_42_name => 'å…¬å¼€ç¾žè¾±å‚è€ƒ';

  @override
  String get metric_42_description =>
      'æ ‡è®°åœ¨ä»–äººé¢å‰è®©ä¼´ä¾£å°´å°¬çš„å¨èƒã€çŽ©ç¬‘æˆ–è¡ŒåŠ¨ã€‚';

  @override
  String get metric_43_name => 'ç‰©è´¨ç›¸å…³å†²çªçº¿ç´¢';

  @override
  String get metric_43_description =>
      'å¯»æ‰¾ä¸Žä¾µç•¥ã€ä¸å¯é ã€å†²çªæˆ–ä¼¤å®³ç›¸å…³çš„é…’ç²¾æˆ–è¯ç‰©ä½¿ç”¨ã€‚';

  @override
  String get metric_44_name => 'è‚²å„¿å†²çªåŽ‹åŠ›';

  @override
  String get metric_44_description =>
      'è¯†åˆ«åœ¨å†²çªæˆ–æ æ†ä¸­ä½¿ç”¨çš„å­©å­ã€ç›‘æŠ¤æƒã€è‚²å„¿è§’è‰²æˆ–çˆ¶æ¯å†…ç–šã€‚';

  @override
  String get metric_45_name => 'æ€§è¾¹ç•Œå°Šé‡';

  @override
  String get metric_45_description =>
      'è¯„ä¼°å¯¹åŒæ„ã€åŽ‹åŠ›ã€æ‹’ç»ã€èˆ’é€‚ã€æ—¶æœºå’Œæ€§è‡ªä¸»æƒçš„å°Šé‡ã€‚';

  @override
  String get metric_46_name => 'æ•°å­—éªšæ‰°æŒ‡æ ‡';

  @override
  String get metric_46_description =>
      'è¿½è¸ªé‡å¤çš„ä¸å—æ¬¢è¿Žæ¶ˆæ¯ã€åžƒåœ¾ç”µè¯ã€åœ¨çº¿åŽ‹åŠ›ã€ç›‘æŽ§æˆ–åŸºäºŽå¹³å°çš„æå“ã€‚';

  @override
  String get metric_47_name => 'ç›‘æŽ§æˆ–ç›‘è§†è¯­è¨€';

  @override
  String get metric_47_description =>
      'æ ‡è®°æ£€æŸ¥è¡Œè¸ªã€è¦æ±‚è¯æ˜Žã€è·Ÿè¸ªè¡Œä¸ºæˆ–æŒç»­éªŒè¯ã€‚';

  @override
  String get metric_48_name => 'æœªæ¥å¯¼å‘';

  @override
  String get metric_48_description =>
      'è¡¡é‡ä¼´ä¾£æ˜¯å¦è®¨è®ºæœªæ¥æ”¹è¿›ã€æ‰¿è¯ºã€è®¡åˆ’æˆ–å»ºè®¾æ€§æ–¹å‘ã€‚';

  @override
  String get metric_49_name => 'å®‰å…¨è§„åˆ’ä¿¡å·';

  @override
  String get metric_49_description =>
      'å¯»æ‰¾å¯»æ±‚å¸®åŠ©ã€åˆ›é€ è·ç¦»ã€è®°å½•ä¼¤å®³æˆ–è®¡åˆ’èº«ä½“/æƒ…æ„Ÿå®‰å…¨çš„å°è¯•ã€‚';

  @override
  String get metric_50_name => 'å…±åŒé™çº§å°è¯•';

  @override
  String get metric_50_description =>
      'è¿½è¸ªæš‚åœã€å¹³é™è¯­è¨€ã€æ›´æŸ”å’Œçš„è¯­æ°”ã€è¶…æ—¶ä»¥åŠåŒæ–¹ä¼´ä¾£å‡å°‘å¼ºåº¦çš„å°è¯•ã€‚';

  @override
  String get metric_51_name => 'å®‰å…¨ä¾æ‹çº¿ç´¢';

  @override
  String get metric_51_description =>
      'è¯†åˆ«ä¿¡ä»»ã€ç›´æŽ¥å®‰æŠšã€æƒ…æ„Ÿå¯ç”¨æ€§ä»¥åŠå¯¹äº²å¯†å’Œç‹¬ç«‹çš„èˆ’é€‚æ„Ÿã€‚';

  @override
  String get metric_52_name => 'ç„¦è™‘ä¾æ‹æ¿€æ´»';

  @override
  String get metric_52_description =>
      'æ ‡è®°æŠ—è®®è¡Œä¸ºã€ç´§æ€¥å®‰æŠšéœ€æ±‚ã€è¢«æŠ›å¼ƒææƒ§å’Œå¯¹è·ç¦»çš„é«˜åº¦æ•æ„Ÿã€‚';

  @override
  String get metric_53_name => 'å›žé¿ä¾æ‹ç–è¿œ';

  @override
  String get metric_53_description =>
      'æ£€æµ‹æƒ…æ„Ÿæœ€å°åŒ–ã€ç‹¬ç«‹é˜²å¾¡ã€ä»Žè„†å¼±ä¸­é€€ç¼©æˆ–å¯¹éœ€æ±‚çš„ä¸é€‚ã€‚';

  @override
  String get metric_54_name => 'æ··ä¹±ä¾æ‹ä¿¡å·';

  @override
  String get metric_54_description =>
      'å¯»æ‰¾æŽ¥è¿‘-å›žé¿å¾ªçŽ¯ã€ææƒ§ä¸Žéœ€æ±‚æ··åˆã€æ··ä¹±ååº”æˆ–ä»¤äººå›°æƒ‘çš„äº²å¯†æ¨¡å¼ã€‚';

  @override
  String get metric_55_name => 'æƒ…æ„Ÿå‡ºä»·å’Œå›žåº”';

  @override
  String get metric_55_description =>
      'è¡¡é‡å¯¹æ³¨æ„åŠ›ã€èˆ’é€‚æˆ–è¿žæŽ¥çš„é‚€è¯·ä»¥åŠå®ƒä»¬æ˜¯å¦è¢«æŽ¥å—æˆ–é”™è¿‡ã€‚';

  @override
  String get metric_56_name => 'è¿œç¦»è¿žæŽ¥';

  @override
  String get metric_56_description =>
      'æ ‡è®°å¿½è§†ã€é©³å›žæˆ–æœªèƒ½å›žåº”äº²å¯†æˆ–æ”¯æŒçš„å‡ºä»·ã€‚';

  @override
  String get metric_57_name => 'å¯¹æŠ—è¿žæŽ¥';

  @override
  String get metric_57_description =>
      'æ£€æµ‹å¯¹æƒ…æ„Ÿã€è„†å¼±æˆ–ä¿®å¤å°è¯•çš„æ•Œæ„æˆ–æƒ©ç½šæ€§å›žåº”ã€‚';

  @override
  String get metric_58_name => 'ç§¯æžæƒ…æ„Ÿè¦†ç›–';

  @override
  String get metric_58_description =>
      'å¯»æ‰¾æ…·æ…¨ã€å–„æ„ã€å–œçˆ±å’Œé€šè¿‡å…³æ€€è§£è¯»å†²çªã€‚';

  @override
  String get metric_59_name => 'æ¶ˆæžæƒ…æ„Ÿè¦†ç›–';

  @override
  String get metric_59_description =>
      'æ ‡è®°å‡è®¾æ¶æ„ã€æ¶ˆæžè§£è¯»ä¸­æ€§æ¶ˆæ¯å’ŒæŒç»­æ•Œæ„æ¡†æž¶ã€‚';

  @override
  String get metric_60_name => 'ä¸¥åŽ‰å¯åŠ¨æ¨¡å¼';

  @override
  String get metric_60_description =>
      'è¯†åˆ«ä»¥æŒ‡è´£ã€æ”»å‡»ã€è”‘è§†æˆ–è´£å¤‡è€Œä¸æ˜¯è¯·æ±‚å¼€å§‹çš„å¯¹è¯ã€‚';

  @override
  String get metric_61_name => 'æ¸©å’Œå¯åŠ¨æ¨¡å¼';

  @override
  String get metric_61_description =>
      'å¯»æ‰¾ä½¿ç”¨æ„Ÿå—ã€éœ€æ±‚ã€å…·ä½“è¯·æ±‚å’ŒéžæŒ‡è´£è¯­è¨€çš„æ¸©å’Œå¼€åœºã€‚';

  @override
  String get metric_62_name => 'ç”Ÿç†è‡ªæˆ‘å®‰æŠš';

  @override
  String get metric_62_description =>
      'è¯„ä¼°åœ¨ç»§ç»­å†²çªä¹‹å‰æš‚åœã€å‘¼å¸ã€è…¾å‡ºç©ºé—´æˆ–è°ƒèŠ‚èº«ä½“çš„å°è¯•ã€‚';

  @override
  String get metric_63_name => 'å†²çªå›žé¿æ¨¡å¼';

  @override
  String get metric_63_description =>
      'è¿½è¸ªé‡å¤å›žé¿å¿…è¦è¯é¢˜ã€ä¸é€‚ã€åˆ†æ­§æˆ–æƒ…æ„Ÿè¯šå®žã€‚';

  @override
  String get metric_64_name => 'æ˜“å˜å†²çªé£Žæ ¼';

  @override
  String get metric_64_description =>
      'æ£€æµ‹é«˜å¼ºåº¦çš„ç›´æŽ¥è¡¨è¾¾å†²çªï¼Œå¯èƒ½ä»åŒ…æ‹¬å‚ä¸Žå’Œä¿®å¤ã€‚';

  @override
  String get metric_65_name => 'éªŒè¯å†²çªé£Žæ ¼';

  @override
  String get metric_65_description =>
      'è¡¡é‡ä¼´ä¾£åœ¨åˆ†æ­§æ—¶æ˜¯å¦æ‰¿è®¤å½¼æ­¤çš„è§‚ç‚¹ã€‚';

  @override
  String get metric_66_name => 'æ•Œå¯¹å†²çªé£Žæ ¼';

  @override
  String get metric_66_description =>
      'æ ‡è®°é¢‘ç¹æ‰¹è¯„ã€è”‘è§†ã€é˜²å¾¡ã€æ”»å‡»å’Œå¯¹æŠ—æ€§æ¡†æž¶ã€‚';

  @override
  String get metric_67_name => 'æ•Œå¯¹-ç–ç¦»æ¨¡å¼';

  @override
  String get metric_67_description =>
      'è¯†åˆ«å†·æ¼ æ•Œæ„ã€æƒ…æ„Ÿç–ç¦»ã€è”‘è§†å’Œä½Žä¿®å¤åŠ¨æœºã€‚';

  @override
  String get metric_68_name => 'å¦¥åæ„æ„¿';

  @override
  String get metric_68_description =>
      'å¯»æ‰¾çµæ´»æ€§ã€è°ˆåˆ¤ã€ä¸­é—´ææ¡ˆå’Œå°Šé‡åŒæ–¹éœ€æ±‚çš„ç‰ºç‰²ã€‚';

  @override
  String get metric_69_name => 'å½±å“æŽ¥å—';

  @override
  String get metric_69_description =>
      'è¡¡é‡å¯¹å—ä¼´ä¾£æ„Ÿå—ã€éœ€æ±‚æˆ–è§‚ç‚¹å½±å“çš„å¼€æ”¾æ€§ã€‚';

  @override
  String get metric_70_name => 'åƒµå±€å†²çªä¿¡å·';

  @override
  String get metric_70_description =>
      'æ ‡è®°ä¸Žä»·å€¼è§‚ã€æ¢¦æƒ³ã€èº«ä»½æˆ–æ…¢æ€§ä¸å…¼å®¹æ€§ç›¸å…³çš„é‡å¤æœªè§£å†³é—®é¢˜ã€‚';

  @override
  String get metric_71_name => 'å¯è§£å†³é—®é¢˜æ¡†æž¶';

  @override
  String get metric_71_description =>
      'æ£€æµ‹å¯å¯¼è‡´å…·ä½“åè®®çš„å®žç”¨ã€å…·ä½“é—®é¢˜å®šä¹‰ã€‚';

  @override
  String get metric_72_name => 'å…±äº«æ„ä¹‰å‚è€ƒ';

  @override
  String get metric_72_description =>
      'å¯»æ‰¾åˆ›é€ å…±äº«å…³ç³»æ•…äº‹çš„ä»·å€¼è§‚ã€ä»ªå¼ã€ç›®æ ‡ã€è®°å¿†æˆ–èº«ä»½è¯­è¨€ã€‚';

  @override
  String get metric_73_name => 'çˆ±æƒ…åœ°å›¾æ„è¯†';

  @override
  String get metric_73_description =>
      'è¯„ä¼°å¯¹ä¼´ä¾£å†…å¿ƒä¸–ç•Œã€åŽ‹åŠ›æºã€åå¥½ã€ææƒ§å’Œæ—¥å¸¸ç”Ÿæ´»çš„äº†è§£ã€‚';

  @override
  String get metric_74_name => 'å–œçˆ±å’Œé’¦ä½©';

  @override
  String get metric_74_description =>
      'è¯†åˆ«æ¬£èµã€å°Šé‡ã€æ¸©æš–ã€èµžç¾Žã€æ„Ÿæ¿€å’Œç§¯æžçœ‹æ³•ã€‚';

  @override
  String get metric_75_name => 'æƒ…æ„ŸåŠ³åŠ¨å¤±è¡¡';

  @override
  String get metric_75_description =>
      'æ ‡è®°ä¸€æ–¹ä¼´ä¾£æ‰¿æ‹…ä¸æˆæ¯”ä¾‹çš„è®¡åˆ’ã€å®‰æŠšã€è®°å¿†ã€è§£é‡Šæˆ–å…³ç³»ç»´æŠ¤ã€‚';

  @override
  String get metric_76_name => 'ç²¾ç¥žè´Ÿæ‹…é©³å›ž';

  @override
  String get metric_76_description =>
      'æ£€æµ‹æœ€å°åŒ–ä¸å¯è§çš„è®¡åˆ’å·¥ä½œã€å®¶åº­åè°ƒã€å®‰æŽ’æˆ–è´£ä»»è·Ÿè¸ªã€‚';

  @override
  String get metric_77_name => 'æ­¦å™¨åŒ–æ— èƒ½çº¿ç´¢';

  @override
  String get metric_77_description =>
      'å¯»æ‰¾å£°ç§°æ— èƒ½ã€å›°æƒ‘æˆ–æ— åŠ©ä»¥é¿å…å…¬å¹³è´£ä»»ã€‚';

  @override
  String get metric_78_name => 'åˆ›ä¼¤è§¦å‘æ•æ„Ÿæ€§';

  @override
  String get metric_78_description =>
      'è¡¡é‡å¯¹è§¦å‘å› ç´ ã€åˆ›ä¼¤ååº”å’Œè°¨æ…Žå¤„ç†è„†å¼±è¯é¢˜çš„æ„è¯†ã€‚';

  @override
  String get metric_79_name => 'è¿‡åº¦è­¦æƒ•çº¿ç´¢';

  @override
  String get metric_79_description =>
      'æ ‡è®°æ‰«æå±é™©ã€è¿‡åº¦ç›‘æŽ§è¯­æ°”ã€å¯¹é”™è¯¯çš„ææƒ§æˆ–æŒç»­çš„æƒ…æ„Ÿè­¦è§‰ã€‚';

  @override
  String get metric_80_name => 'è¢«æŠ›å¼ƒææƒ§è¯­è¨€';

  @override
  String get metric_80_description =>
      'æ£€æµ‹è¢«ç•™ä¸‹ã€è¢«æ›¿æ¢ã€è¢«å¿½è§†ã€è¢«æŠ›å¼ƒæˆ–æƒ…æ„Ÿè¢«é—å¼ƒçš„ææƒ§ã€‚';

  @override
  String get metric_81_name => 'å¯»æ±‚å®‰æŠšæ¨¡å¼';

  @override
  String get metric_81_description =>
      'è¿½è¸ªé‡å¤è¯·æ±‚çˆ±ã€æ‰¿è¯ºã€å®‰å…¨æˆ–æŒç»­å…´è¶£çš„è¯æ˜Žã€‚';

  @override
  String get metric_82_name => 'è¿½æ±‚è€…-ç–è¿œè€…å¾ªçŽ¯';

  @override
  String get metric_82_description =>
      'è¯†åˆ«ä¸€æ–¹ä¼´ä¾£å‡çº§å¯¹äº²å¯†çš„è¿½æ±‚ï¼Œè€Œå¦ä¸€æ–¹å¢žåŠ è·ç¦»ã€‚';

  @override
  String get metric_83_name => 'æ€¨æ¨ç§¯ç´¯';

  @override
  String get metric_83_description =>
      'å¯»æ‰¾å­˜å‚¨çš„å§”å±ˆã€é‡å¤çš„è¿‡åŽ»å‚è€ƒã€è‹¦æ¶©å’Œæœªè§£å†³çš„æƒ…æ„Ÿå€ºåŠ¡ã€‚';

  @override
  String get metric_84_name => 'è®°åˆ†è¡Œä¸º';

  @override
  String get metric_84_description =>
      'æ ‡è®°äº¤æ˜“æ€§è®¡ç®—é”™è¯¯ã€æ©æƒ ã€ç‰ºç‰²æˆ–é”™è¯¯ä»¥èŽ·å¾—æ æ†ã€‚';

  @override
  String get metric_85_name => 'æœ‰æ¡ä»¶çš„çˆ±';

  @override
  String get metric_85_description =>
      'æ£€æµ‹ä»…åœ¨è¾¾åˆ°åˆè§„æ—¶æä¾›çš„çˆ±ã€æ‰¹å‡†ã€è®¿é—®æˆ–æ¸©æš–ã€‚';

  @override
  String get metric_86_name => 'çˆ±æƒ…è½°ç‚¸æŒ‡æ ‡';

  @override
  String get metric_86_description =>
      'æ ‡è®°ç”¨äºŽåŠ é€Ÿä¾æ‹æˆ–æŽ§åˆ¶çš„å¼ºçƒˆçˆ±ã€æ‰¿è¯ºã€åŽ‹åŠ›æˆ–ç†æƒ³åŒ–ã€‚';

  @override
  String get metric_87_name => 'å¸å°˜å°è¯•';

  @override
  String get metric_87_description =>
      'è¯†åˆ«é€šè¿‡å†…ç–šã€æ€€æ—§ã€æ‰¿è¯ºã€å±æœºæˆ–çªç„¶çš„çˆ±å°†æŸäººæ‹‰å›žçš„å°è¯•ã€‚';

  @override
  String get metric_88_name => 'DARVOæ¨¡å¼';

  @override
  String get metric_88_description =>
      'æ£€æµ‹åœ¨é¢å¯¹ä¼¤å®³æ—¶å¦è®¤ã€æ”»å‡»å’Œåè½¬å—å®³è€…-åŠ å®³è€…ååº”ã€‚';

  @override
  String get metric_89_name => 'å—å®³è€…å§¿æ€æ¨¡å¼';

  @override
  String get metric_89_description =>
      'æ ‡è®°é¿å…è´£ä»»æˆ–é‡å®šå‘å¯¹é€ æˆä¼¤å®³æ³¨æ„çš„é‡å¤è‡ªæˆ‘å—å®³è€…åŒ–ã€‚';

  @override
  String get metric_90_name => 'é“å¾·ä¼˜è¶Šæ€§æ¡†æž¶';

  @override
  String get metric_90_description =>
      'å¯»æ‰¾ç”¨äºŽä¸»å¯¼å†²çªçš„æ­£ä¹‰ã€çº¯æ´å£°æ˜Žæˆ–é“å¾·ä¼˜è¶Šæ€§ã€‚';

  @override
  String get metric_91_name => 'äººæ ¼æš—æ€';

  @override
  String get metric_91_description =>
      'æ£€æµ‹å¯¹èº«ä»½ã€æ­£ç›´ã€å¿ƒç†å¥åº·æˆ–ä»·å€¼çš„å¹¿æ³›æ”»å‡»ï¼Œè€Œä¸æ˜¯å…·ä½“è¡Œä¸ºã€‚';

  @override
  String get metric_92_name => 'ä¸‰è§’åŒ–æŒ‡æ ‡';

  @override
  String get metric_92_description =>
      'æ ‡è®°å°†ç¬¬ä¸‰æ–¹å¸¦å…¥å†²çªä»¥æ–½åŽ‹ã€æ¯”è¾ƒã€éªŒè¯æˆ–ç ´åä¼´ä¾£ã€‚';

  @override
  String get metric_93_name => 'ç¤¾ä¼šæ¯”è¾ƒåŽ‹åŠ›';

  @override
  String get metric_93_description =>
      'å¯»æ‰¾ç”¨äºŽç¾žè¾±æˆ–èƒè¿«çš„å‰ä»»ã€æœ‹å‹ã€å…¶ä»–æƒ…ä¾£æˆ–ç†æƒ³çš„æ¯”è¾ƒã€‚';

  @override
  String get metric_94_name => 'è‡ªä¸»æ”¯æŒ';

  @override
  String get metric_94_description =>
      'è¡¡é‡å¯¹ç‹¬ç«‹é€‰æ‹©ã€å‹è°Šã€ç›®æ ‡ã€è¾¹ç•Œå’Œä¸ªäººä»£ç†æƒçš„å°Šé‡ã€‚';

  @override
  String get metric_95_name => 'åŒæ„å’Œé€‰æ‹©å°Šé‡';

  @override
  String get metric_95_description =>
      'è¯„ä¼°å†³ç­–æ˜¯å¦åœ¨æ²¡æœ‰åŽ‹åŠ›ã€å†…ç–šã€å¨èƒæˆ–æ“çºµçš„æƒ…å†µä¸‹è‡ªç”±åšå‡ºã€‚';

  @override
  String get metric_96_name => 'åä½œè§„åˆ’';

  @override
  String get metric_96_description =>
      'å¯»æ‰¾å…±äº«å®‰æŽ’ã€è”åˆå†³ç­–ã€åè°ƒè´£ä»»å’Œå®žé™…è·Ÿè¿›ã€‚';

  @override
  String get metric_97_name => 'ä¿®å¤è·Ÿè¿›';

  @override
  String get metric_97_description =>
      'è¡¡é‡æ‰¿è¯ºçš„æ›´æ”¹æ˜¯å¦åŽæ¥åæ˜ åœ¨è¡Œä¸ºä¸­ï¼Œè€Œä¸ä»…ä»…æ˜¯è¨€è¯­ã€‚';

  @override
  String get metric_98_name => 'æ”¹å˜è¡Œä¸ºè¯æ®';

  @override
  String get metric_98_description =>
      'æ£€æŸ¥æ˜¾ç¤ºå­¦ä¹ ã€è°ƒæ•´æˆ–å‡å°‘æœ‰å®³è¡Œä¸ºçš„å¯è§‚å¯Ÿã€é‡å¤è¡ŒåŠ¨ã€‚';

  @override
  String get metric_99_name => 'æƒ…æ„Ÿå®‰å…¨è¯­è¨€';

  @override
  String get metric_99_description =>
      'è¯†åˆ«é‚€è¯·è¯šå®žã€é™ä½Žææƒ§ã€ä¿æŠ¤å°Šä¸¥å’Œå®‰æŠšå®‰å…¨è¡¨è¾¾çš„è¯­è¨€ã€‚';

  @override
  String get metric_100_name => 'å…³ç³»çŸ›ç›¾';

  @override
  String get metric_100_description =>
      'æ£€æµ‹ä¸ç¡®å®šæ€§ã€æ··åˆæ‰¿è¯ºã€æŽ¨æ‹‰æ¶ˆæ¯æˆ–ä¸æ˜Žç¡®çš„ç»§ç»­æ„¿æœ›ã€‚';

  @override
  String get unableToOpenConversations => 'æ— æ³•æ‰“å¼€å¯¹è¯';

  @override
  String get unableToOpenConversationsBody =>
      'åŠ è½½å¯¹è¯æ—¶å‡ºé”™ã€‚è¯·é‡è¯•ã€‚';

  @override
  String get unableToLoadConversationsBody =>
      'æ— æ³•åŠ è½½å¯¹è¯ã€‚è¯·æ£€æŸ¥æƒé™å¹¶é‡è¯•ã€‚';

  @override
  String get errorLoadingConversationsBody =>
      'åŠ è½½å¯¹è¯é”™è¯¯ã€‚è¯·é‡è¯•ã€‚';

  @override
  String get smsPermissionRequired => 'éœ€è¦ SMS æƒé™';

  @override
  String get smsPermissionRequiredBody =>
      'è¦åˆ†æž SMS å¯¹è¯ï¼Œæˆ‘ä»¬éœ€è¦è¯»å–æ¶ˆæ¯çš„æƒé™ã€‚æ‚¨çš„éšç§å¾ˆé‡è¦ â€” æ¶ˆæ¯ä»…åœ¨æœ¬åœ°åˆ†æžï¼Œç»ä¸ä¼šå­˜å‚¨åœ¨æˆ‘ä»¬çš„æœåŠ¡å™¨ä¸Šã€‚';

  @override
  String get grantSmsPermission => 'æŽˆäºˆ SMS æƒé™';

  @override
  String get noSmsConversationsFound => 'æœªæ‰¾åˆ° SMS å¯¹è¯';

  @override
  String get noConversationsMatchSearch => 'æ²¡æœ‰å¯¹è¯åŒ¹é…æ‚¨çš„æœç´¢';

  @override
  String get noSmsMessagesOnDevice => 'æ­¤è®¾å¤‡ä¸Šæ²¡æœ‰ SMS æ¶ˆæ¯';

  @override
  String get tryDifferentSearch => 'å°è¯•ä¸åŒçš„æœç´¢è¯';

  @override
  String get clearSearch => 'æ¸…é™¤æœç´¢';

  @override
  String selectedFile(String filename) {
    return 'å·²é€‰æ‹©: $filename';
  }

  @override
  String get invalidFile => 'æ— æ•ˆæ–‡ä»¶';

  @override
  String get fileImport => 'å¯¼å…¥æ–‡ä»¶';

  @override
  String get fileImportNotImplemented =>
      'æ­¤æ–‡ä»¶ç±»åž‹çš„æ–‡ä»¶åˆ†æžå°šæœªå®žçŽ°ã€‚';

  @override
  String get errorPickingFile => 'æ— æ³•æ‰“å¼€æ–‡ä»¶ã€‚è¯·é‡è¯•ã€‚';

  @override
  String get readyToCapture => 'å‡†å¤‡æ•èŽ·';

  @override
  String get readyToCaptureBody =>
      'çŽ°åœ¨è½¬åˆ°æ¶ˆæ¯åº”ç”¨å¹¶å¼€å§‹æˆªå±ã€‚\n\nå®ŒæˆåŽè¿”å›žæ­¤åº”ç”¨å¹¶ç‚¹å‡»\"å®Œæˆå¹¶å¤„ç†\"ã€‚';

  @override
  String get noScreenshotsToProcess => 'æ²¡æœ‰è¦å¤„ç†çš„æˆªå›¾ã€‚';

  @override
  String processingScreenshot(int current, int total) {
    return 'æ­£åœ¨å¤„ç†æˆªå›¾ $current / $total...';
  }

  @override
  String get noMessagesFound => 'æœªæ‰¾åˆ°æ¶ˆæ¯';

  @override
  String get noMessagesFoundBody =>
      'æ— æ³•ä»Žæˆªå›¾ä¸­æå–æ¶ˆæ¯ã€‚\n\nç¡®ä¿æˆªå›¾æ¸…æ™°æ˜¾ç¤ºå¯¹è¯ã€‚';

  @override
  String loadedMessages(int count) {
    return 'ä»Žæˆªå›¾åŠ è½½äº† $count æ¡æ¶ˆæ¯';
  }

  @override
  String get processingError => 'å¤„ç†é”™è¯¯';

  @override
  String get processingErrorBody => 'å¤„ç†æˆªå›¾æ—¶å‡ºé”™ã€‚è¯·é‡è¯•ã€‚';

  @override
  String metricListSavedAs(String name) {
    return 'æ‚¨çš„é€‰æ‹©å·²ä¿å­˜ä¸º \"$name\"ã€‚';
  }

  @override
  String metricListLoadedName(String name) {
    return 'é€‰æ‹© \"$name\" å·²æ£€ç´¢å¹¶åº”ç”¨ã€‚';
  }

  @override
  String conversationLoaded(int count, String name) {
    return 'ä»Ž $name åŠ è½½äº† $count æ¡æ¶ˆæ¯';
  }

  @override
  String get loadButton => 'åŠ è½½';

  @override
  String get photoPermissionRequired =>
      'éœ€è¦ç…§ç‰‡åº“æƒé™æ‰èƒ½æ£€æµ‹æˆªå›¾ã€‚';

  @override
  String get initializingConnection => 'æ­£åœ¨åˆå§‹åŒ–å®‰å…¨è¿žæŽ¥...';

  @override
  String get configurationRequired => 'éœ€è¦é…ç½®';

  @override
  String get goBack => 'è¿”å›ž';

  @override
  String get enableDateRangeFiltering => 'å¯ç”¨æ—¥æœŸèŒƒå›´è¿‡æ»¤';

  @override
  String get clearSelectedDateRange => 'æ¸…é™¤é€‰å®šçš„æ—¥æœŸèŒƒå›´';

  @override
  String get largeThreadNoticeTitle => 'ç”¨æˆ·é€šçŸ¥';

  @override
  String get largeThreadNoticeBody =>
      'å¤„ç†å¼‚å¸¸å¤§çš„æ–‡æœ¬çº¿ç¨‹æ—¶ï¼Œæ­¤åº”ç”¨ç¨‹åºä¸­çš„æŸäº›åŠ è½½å±å¹•æœ‰æ—¶å¯èƒ½è¶…è¿‡ä¸€åˆ†åŠé’Ÿã€‚\n\nåº”ç”¨ç¨‹åºä¸ä¼šæŒ‚èµ·ã€‚å¦‚æžœæ‚¨çœ‹åˆ°æ—‹è½¬çš„çŠ¶æ€æŒ‡ç¤ºå™¨ï¼Œåº”ç”¨ç¨‹åºä»åœ¨åŠ è½½ã€‚\n\nè¯·åœ¨è¿™ç§æƒ…å†µä¸‹ä¿æŒè€å¿ƒï¼Œå› ä¸ºä¸Žå…¶ä»–åº”ç”¨ç¨‹åºç›¸æ¯”ï¼ŒåŠ è½½æ—¶é—´å¯èƒ½ä¼šæ›´é•¿ï¼Œç‰¹åˆ«æ˜¯åœ¨å¤„ç†å¤§åž‹æ•°æ®é›†ï¼ˆä¾‹å¦‚åŒ…å« 50,000 æ¡æ¶ˆæ¯çš„çº¿ç¨‹ï¼‰æ—¶ã€‚';

  @override
  String get neverShowThisAgain => 'ä¸å†æ˜¾ç¤ºæ­¤æ¶ˆæ¯';

  @override
  String loadingConversationWith(String name) {
    return 'æ­£åœ¨åŠ è½½å¯¹è¯\nä¸Ž $nameâ€¦';
  }

  @override
  String get iosCaptureInstructions =>
      '1. æ‰“å¼€æ¶ˆæ¯åº”ç”¨å¹¶é€‰æ‹©å¯¹è¯\n2. æ»šåŠ¨åˆ°è¦åˆ†æžçš„æœ€æ—§æ¶ˆæ¯\n3. ç‚¹å‡»ä¸‹æ–¹çš„\"å¼€å§‹æ•èŽ·\"\n4. æ»šåŠ¨å¯¹è¯æ—¶æˆªå–å±å¹•æˆªå›¾\n5. å®ŒæˆåŽç‚¹å‡»\"å®Œæˆå¹¶å¤„ç†\"';

  @override
  String get howToCaptureIosMessages => 'å¦‚ä½•æ•èŽ· iOS æ¶ˆæ¯';

  @override
  String get deepSeekApiKey => 'DeepSeek API å¯†é’¥';

  @override
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis =>
      'è¾“å…¥æ‚¨çš„ DeepSeek API å¯†é’¥ä»¥å¯ç”¨ AI åˆ†æžã€‚';

  @override
  String get getYourApiKeyFrom =>
      'ä»Žä»¥ä¸‹ä½ç½®èŽ·å–æ‚¨çš„ API å¯†é’¥ï¼šhttps://platform.deepseek.com';

  @override
  String get apiKey => 'API å¯†é’¥';

  @override
  String get skPlaceholder => 'sk-...';

  @override
  String get yourApiKeyIsStoredSecurely =>
      'æ‚¨çš„ API å¯†é’¥å®‰å…¨åœ°å­˜å‚¨åœ¨æ‚¨çš„è®¾å¤‡ä¸Šï¼Œç»ä¸ä¼šå…±äº«ã€‚';

  @override
  String get pleaseEnterApiKey => 'è¯·è¾“å…¥ API å¯†é’¥';

  @override
  String get apiKeySavedSuccessfully => 'API å¯†é’¥ä¿å­˜æˆåŠŸï¼';

  @override
  String get pleaseBePatientLongerTextThreads =>
      'è¯·è€å¿ƒç­‰å¾…ï¼Œè¾ƒé•¿çš„æ–‡æœ¬çº¿ç¨‹æ•°æ®é›†åŠ è½½éœ€è¦ç›¸å½“é•¿çš„æ—¶é—´';

  @override
  String get almostThereBigOne => 'å³å°†å®Œæˆï¼Œå“‡ï¼Œè¿™ä¸ªä¸€å®šå¾ˆå¤§';

  @override
  String get pleaseBePatientLargeDatasets =>
      'è¯·è€å¿ƒç­‰å¾…ï¼Œå¤§åž‹æ•°æ®é›†å¯èƒ½å¯¼è‡´åŠ è½½æ—¶é—´è¶…è¿‡ä¸€åˆ†åŠé’Ÿ';

  @override
  String continuingToLoadMassiveThread(String name) {
    return 'ç»§ç»­åŠ è½½ä¸Ž $name çš„å·¨å¤§çº¿ç¨‹â€¦';
  }

  @override
  String get noMessagesInDateRange => 'æ‰€é€‰æ—¥æœŸèŒƒå›´å†…æ— æ¶ˆæ¯';

  @override
  String get purchaseCustomMetricTileTitle => 'è´­ä¹°è‡ªå®šä¹‰æŒ‡æ ‡';

  @override
  String get purchaseCustomMetricTileDescription =>
      'ä¸€æ¬¡æ€§æ”¯ä»˜ \$4.99ï¼Œè¾“å…¥è‡ªå®šä¹‰æŒ‡æ ‡åç§°å’Œå®šä¹‰ï¼Œæ°¸ä¹…ä¿å­˜åœ¨å…¶ä»–æŒ‡æ ‡æ—è¾¹ï¼Œä¾›å°†æ¥ä»»ä½•åˆ†æžä½¿ç”¨ã€‚è´­ä¹°æ— é™è‡ªå®šä¹‰æŒ‡æ ‡ã€‚';

  @override
  String get purchaseCustomMetricConfirmTitle => 'è´­ä¹°è‡ªå®šä¹‰æŒ‡æ ‡';

  @override
  String get purchaseCustomMetricConfirmBody =>
      'æ‚¨å°†è¢«æ”¶å– \$4.99ï¼ˆä¸€æ¬¡æ€§è´¹ç”¨ï¼‰ä»¥è§£é”ä¸€ä¸ªè‡ªå®šä¹‰æŒ‡æ ‡æ§½ä½ã€‚\n\næ‚¨çš„è‡ªå®šä¹‰æŒ‡æ ‡åç§°å’Œå®šä¹‰ä¸€æ—¦ä¿å­˜å³ä¸ºæ°¸ä¹…ï¼Œæ°¸è¿œæ— æ³•æ›´æ”¹ï¼Œå› æ­¤è¯·è°¨æ…Žé€‰æ‹©ã€‚';

  @override
  String get purchaseCustomMetricConfirmButton => 'è´­ä¹° â€” \$4.99';

  @override
  String get purchaseCustomMetricEnterNameTitle => 'è‡ªå®šä¹‰æŒ‡æ ‡åç§°';

  @override
  String get purchaseCustomMetricEnterNamePrompt =>
      'è¾“å…¥è‡ªå®šä¹‰æŒ‡æ ‡çš„åç§°:';

  @override
  String get purchaseCustomMetricNameHint => 'æŒ‡æ ‡åç§°';

  @override
  String get purchaseCustomMetricConfirmNameTitle => 'ç¡®è®¤æŒ‡æ ‡åç§°';

  @override
  String get purchaseCustomMetricConfirmNameYouEntered => 'æ‚¨è¾“å…¥äº†:\n\n';

  @override
  String get purchaseCustomMetricConfirmNameWarning =>
      '\n\nâš ï¸  è¿™æ˜¯æœ€ç»ˆçš„ï¼Œæ°¸è¿œæ— æ³•æ›´æ”¹ã€‚';

  @override
  String get purchaseCustomMetricReenterName => 'å“Žå‘€ â€” é‡æ–°è¾“å…¥åç§°';

  @override
  String get purchaseCustomMetricSaveName => 'ç¡®å®š â€” ä¿å­˜æŒ‡æ ‡åç§°';

  @override
  String purchaseCustomMetricDefineTitleWithName(String name) {
    return 'å®šä¹‰: $name';
  }

  @override
  String purchaseCustomMetricDefinePromptWithName(String name) {
    return 'è¾“å…¥è‡ªå®šä¹‰æŒ‡æ ‡çš„å«ä¹‰: $name';
  }

  @override
  String get purchaseCustomMetricMeaningHint =>
      'æè¿°æ­¤æŒ‡æ ‡çš„å«ä¹‰ã€å®ƒå¯»æ‰¾çš„è¡Œä¸ºä»¥åŠå®ƒå¦‚ä½•åº”ç”¨äºŽå…³ç³»åŠ¨æ€...';

  @override
  String get purchaseCustomMetricReenter => 'å“Žå‘€ â€” é‡æ–°è¾“å…¥';

  @override
  String get purchaseCustomMetricSaveMeaning => 'ç¡®å®š â€” ä¿å­˜å«ä¹‰';

  @override
  String get purchaseCustomMetricPreviewTitle => 'é¢„è§ˆæ‚¨çš„è‡ªå®šä¹‰æŒ‡æ ‡';

  @override
  String get purchaseCustomMetricPreviewSubtitle =>
      'æ‚¨çš„ç£è´´å°†å¦‚ä¸‹æ‰€ç¤º:';

  @override
  String get purchaseCustomMetricLastChanceWarning =>
      'âš ï¸  è¿™æ˜¯æ‚¨æ”¹å˜ä¸»æ„çš„æœ€åŽæœºä¼šã€‚\nä¸€æ—¦ç¡®è®¤ï¼Œåç§°å’Œå®šä¹‰å³ä¸ºæ°¸ä¹…ã€‚';

  @override
  String get purchaseCustomMetricCancelEverything => 'å…¨éƒ¨å–æ¶ˆ';

  @override
  String get purchaseCustomMetricCommit => 'ç¡®è®¤è‡ªå®šä¹‰æŒ‡æ ‡';

  @override
  String purchaseCustomMetricSuccess(String name) {
    return 'âœ“ \"$name\" å·²æ·»åŠ åˆ°æ‚¨çš„æŒ‡æ ‡ï¼çŽ°åœ¨æ‚¨å¯ä»¥é€‰æ‹©å®ƒè¿›è¡Œåˆ†æžã€‚';
  }

  @override
  String get purchaseCustomMetricProcessingTitle => 'æ­£åœ¨å¤„ç†è´­ä¹°...';

  @override
  String get purchaseCustomMetricProcessingBody =>
      'ç­‰å¾…å•†åº—ç¡®è®¤ã€‚\nè¯·ä¸è¦å…³é—­åº”ç”¨ã€‚';

  @override
  String get next => 'ä¸‹ä¸€æ­¥';

  @override
  String get cancelNotReady => 'å–æ¶ˆ â€” æˆ‘è¿˜æ²¡å‡†å¤‡å¥½';

  @override
  String get packGoodLabel => 'å–„';

  @override
  String get packBadLabel => 'æ¶';

  @override
  String get packUglyLabel => 'ä¸‘';

  @override
  String get metric_good_1_name => 'ç§¯æžå€¾å¬çº¿ç´¢';

  @override
  String get metric_good_1_description =>
      'æ£€æµ‹æ–‡æœ¬ä¸­çš„é‡Šä¹‰ã€æ¾„æ¸…æ€§é—®é¢˜ä»¥åŠå¯¹ä¼´ä¾£è§‚ç‚¹çš„ç†è§£è¡¨çŽ°ã€‚';

  @override
  String get metric_good_2_name => 'èµžèµè¡¨è¾¾';

  @override
  String get metric_good_2_description =>
      'è¯†åˆ«å…·ä½“çš„æ„Ÿæ¿€ä¹‹æƒ…ã€å¯¹åŠªåŠ›çš„è®¤å¯ï¼Œä»¥åŠå¯¹ä¼´ä¾£ç§¯æžå“è´¨æˆ–è¡Œä¸ºçš„è‚¯å®šã€‚';

  @override
  String get metric_good_3_name => 'è‚¯å®šè¯­è¨€';

  @override
  String get metric_good_3_description =>
      'å¯»æ‰¾è®¤å¯ä¼´ä¾£æ„Ÿå—ã€ç»åŽ†ã€ä»·å€¼æˆ–éœ€æ±‚æƒåˆ©çš„é™ˆè¿°ã€‚';

  @override
  String get metric_good_4_name => 'åä½œè¯­æ°”';

  @override
  String get metric_good_4_description =>
      'è¡¡é‡ä½¿ç”¨â€œæˆ‘ä»¬â€ã€å…±åŒè§£å†³é—®é¢˜çš„è¯­è¨€ï¼Œå¹¶å°†é—®é¢˜è§†ä¸ºå…±åŒæŒ‘æˆ˜æ¥åº”å¯¹ã€‚';

  @override
  String get metric_good_5_name => 'å¯¹ä¼´ä¾£çš„å¥½å¥‡';

  @override
  String get metric_good_5_description =>
      'è¿½è¸ªè¯¢é—®ä¼´ä¾£æƒ³æ³•ã€æ„Ÿå—ã€æ—¥å¸¸ã€åå¥½æˆ–å†…å¿ƒä½“éªŒçš„é—®é¢˜ã€‚';

  @override
  String get metric_good_6_name => 'è„†å¼±è¡¨è¾¾';

  @override
  String get metric_good_6_description =>
      'è¯†åˆ«æ— é˜²å¾¡æˆ–æŒ‡è´£åœ°åˆ†äº«ææƒ§ã€ä¸å®‰ã€éœ€æ±‚æˆ–æƒ…æ„ŸçœŸç›¸ã€‚';

  @override
  String get metric_good_7_name => 'å¹½é»˜è”ç»“';

  @override
  String get metric_good_7_description =>
      'æ£€æµ‹å¸¦æ¥ä¼´ä¾£é—´è”ç»“çš„å¬‰æˆå…±äº«ç¬‘å£°ï¼Œè€Œéžå˜²ç¬‘æˆ–è´¬ä½Žã€‚';

  @override
  String get metric_good_8_name => 'æä¾›å®‰æŠš';

  @override
  String get metric_good_8_description =>
      'å¯»æ‰¾ä¸ºç„¦è™‘åž‹ä¼´ä¾£æä¾›å®‰æ…°ã€å®‰å…¨æ„Ÿæˆ–ä¿¡å¿ƒçš„ä¸»åŠ¨è¡¨è¿°ã€‚';

  @override
  String get metric_good_9_name => 'èµžç¾Žé¢‘çŽ‡';

  @override
  String get metric_good_9_description =>
      'è¡¡é‡å…³äºŽå¤–è²Œã€æ€§æ ¼ã€èƒ½åŠ›æˆ–ç§¯æžè¡Œä¸ºçš„å…·ä½“çœŸè¯šèµžç¾Žã€‚';

  @override
  String get metric_good_10_name => 'æƒ…æ„Ÿå¯å¾—æ€§';

  @override
  String get metric_good_10_description =>
      'è¯„ä¼°å¯¹ä¼´ä¾£æƒ…æ„Ÿéœ€æ±‚çš„å›žåº”ã€åœ¨å¯¹æ–¹ç—›è‹¦æ—¶çš„åœ¨åœºç¨‹åº¦ä»¥åŠå‚ä¸Žæ„æ„¿ã€‚';

  @override
  String get metric_good_11_name => 'æ„Ÿæ©ä¹ æƒ¯';

  @override
  String get metric_good_11_description =>
      'è¯†åˆ«å¯¹å°äº‹ã€ä»˜å‡ºã€é™ªä¼´æˆ–æ”¯æŒçš„å®šæœŸæ„Ÿè°¢è¡¨è¾¾ã€‚';

  @override
  String get metric_good_12_name => 'æ”¯æŒæ€§è¯­è¨€';

  @override
  String get metric_good_12_description =>
      'è¿½è¸ªæä¾›å¸®åŠ©ã€é¼“åŠ±ã€ç›¸ä¿¡ä¼´ä¾£èƒ½åŠ›æˆ–å¹¶è‚©æ”¯æŒçš„è¨€è¯­ã€‚';

  @override
  String get metric_good_13_name => 'æ¸©å’Œåˆ†æ­§';

  @override
  String get metric_good_13_description =>
      'è¡¡é‡åœ¨è¡¨è¾¾ä¸åŒè§‚ç‚¹æ—¶ä¿æŒå°Šé‡ã€å¥½å¥‡å¿ƒå’Œå…³ç³»çš„èƒ½åŠ›ã€‚';

  @override
  String get metric_good_14_name => 'é“æ­‰çœŸè¯šåº¦';

  @override
  String get metric_good_14_description =>
      'æ£€æµ‹çœŸè¯šçš„æ‚”æ„ã€å¯¹å½±å“çš„è®¤çŸ¥ä»¥åŠæ— å€Ÿå£æ”¹å˜çš„æ‰¿è¯ºã€‚';

  @override
  String get metric_good_15_name => 'å®½æ•æŽ¥çº³';

  @override
  String get metric_good_15_description =>
      'è§‚å¯Ÿæ”¾ä¸‹è¿‡å¾€ä¼¤å®³ã€å‘å‰è¿ˆè¿›å¹¶åœ¨ä¿®å¤åŽé‡å»ºä¿¡ä»»çš„æ„æ„¿ã€‚';

  @override
  String get metric_good_16_name => 'ä¼˜è´¨æ—¶é—´å‘èµ·';

  @override
  String get metric_good_16_description =>
      'è¯†åˆ«æå‡ºå…±åº¦ä¸“æ³¨æ—¶å…‰ã€è®¡åˆ’æ´»åŠ¨æˆ–åˆ›é€ è”ç»“æ—¶åˆ»çš„æè®®ã€‚';

  @override
  String get metric_good_17_name => 'èº«ä½“äº²å¯†ä¿¡å·';

  @override
  String get metric_good_17_description =>
      'è¿½è¸ªæåŠæ‹¥æŠ±ã€äº²å»æˆ–èº«ä½“äº²è¿‘ä½œä¸ºå…³çˆ±ä¸Žäº²å¯†è¡¨è¾¾çš„è¡Œä¸ºã€‚';

  @override
  String get metric_good_18_name => 'å…±äº«å–œæ‚¦è¯†åˆ«';

  @override
  String get metric_good_18_description =>
      'è¡¡é‡ä»¥çœŸè¯šçƒ­æƒ…åº†ç¥ä¼´ä¾£çš„èƒœåˆ©ã€æˆå°±ã€å¹¸ç¦æˆ–å¥½æ¶ˆæ¯ã€‚';

  @override
  String get metric_good_19_name => 'å†²çªè§£å†³åŠªåŠ›';

  @override
  String get metric_good_19_description =>
      'è¯†åˆ«åœ¨åˆ†æ­§åŽå¯»æ±‚è§£å†³æ–¹æ¡ˆã€å¦¥åæˆ–æ¢å¤å’Œå¹³çš„å°è¯•ã€‚';

  @override
  String get metric_good_20_name => 'è€å¿ƒè¡¨çŽ°';

  @override
  String get metric_good_20_description =>
      'æ£€æµ‹å¯¹ä¼´ä¾£èŠ‚å¥ã€å›°éš¾ã€å­¦ä¹ æ›²çº¿æˆ–æƒ…æ„Ÿå¤„ç†éœ€æ±‚çš„å®¹å¿åº¦ã€‚';

  @override
  String get metric_good_21_name => 'æ¢ä½æ€è€ƒè¯­è¨€';

  @override
  String get metric_good_21_description =>
      'å¯»æ‰¾æ˜¾ç¤ºç†è§£ä¼´ä¾£è§‚ç‚¹ã€èƒŒæ™¯æˆ–æƒ…æ„ŸçŽ°å®žçš„é™ˆè¿°ã€‚';

  @override
  String get metric_good_22_name => 'å¯é æ€§ä¿¡å·';

  @override
  String get metric_good_22_description =>
      'è¿½è¸ªå±¥è¡Œæ‰¿è¯ºã€æŒç»­å‡ºçŽ°å’Œå¯é æ€§çš„è¡¨çŽ°ã€‚';

  @override
  String get metric_good_23_name => 'å°Šé‡å·®å¼‚';

  @override
  String get metric_good_23_description =>
      'è¡¡é‡å¯¹ä¼´ä¾£ç‹¬ç‰¹ç‰¹è´¨ã€åå¥½ã€æ„è§å’Œå­˜åœ¨æ–¹å¼çš„æŽ¥å—ç¨‹åº¦ã€‚';

  @override
  String get metric_good_24_name => 'åé¦ˆå¼€æ”¾æ€§';

  @override
  String get metric_good_24_description =>
      'è¯†åˆ«å¯¹ä¼´ä¾£å…³åˆ‡çš„æŽ¥çº³ã€æ„¿æ„å¬å–æ‰¹è¯„ä»¥åŠæ”¹è¿›çš„æ„æ„¿ã€‚';

  @override
  String get metric_good_25_name => 'æƒ…æ„ŸéªŒè¯';

  @override
  String get metric_good_25_description =>
      'æ£€æµ‹æ‰¿è®¤ä¼´ä¾£çš„æ„Ÿå—æ˜¯çœŸå®žã€å¯ç†è§£ä¸”å€¼å¾—å…³æ³¨çš„è¡¨è¿°ã€‚';

  @override
  String get metric_good_26_name => 'é¼“åŠ±è¯­è¨€';

  @override
  String get metric_good_26_description =>
      'å¯»æ‰¾æ¿€å‘ä¿¡å¿ƒã€ä¿ƒè¿›è¡ŒåŠ¨æˆ–æ”¯æŒä¼´ä¾£ç›®æ ‡çš„é™ˆè¿°ã€‚';

  @override
  String get metric_good_27_name => 'äº²å¯†è‡ªæˆ‘è¡¨éœ²';

  @override
  String get metric_good_27_description =>
      'è¯†åˆ«åˆ†äº«ä¸ªäººæƒ³æ³•ã€æ¢¦æƒ³ã€ææƒ§æˆ–ç§˜å¯†ä»¥åŠ æ·±æƒ…æ„Ÿè”ç³»çš„è¡Œä¸ºã€‚';

  @override
  String get metric_good_28_name => 'æƒ…æ„Ÿè°ƒè°ä¿¡å·';

  @override
  String get metric_good_28_description =>
      'è¡¡é‡åœ¨æœªè¢«æ˜Žç¡®å‘ŠçŸ¥çš„æƒ…å†µä¸‹æ³¨æ„åˆ°ä¼´ä¾£çš„æƒ…ç»ªã€éœ€æ±‚æˆ–å›°æ‰°çš„èƒ½åŠ›ã€‚';

  @override
  String get metric_good_29_name => 'ç§¯æžé‡æž„';

  @override
  String get metric_good_29_description =>
      'æ£€æµ‹åœ¨å›°éš¾æƒ…å¢ƒä¸­å‘çŽ°ç§¯æžé¢ã€æˆé•¿æœºä¼šæˆ–å»ºè®¾æ€§è§’åº¦çš„èƒ½åŠ›ã€‚';

  @override
  String get metric_good_30_name => 'æ‰¿è¯ºè¯­è¨€';

  @override
  String get metric_good_30_description =>
      'è¿½è¸ªå¯¹å…³ç³»çš„æ‰¿è¯ºã€é•¿è¿œæ€è€ƒåŠæœªæ¥æŠ•å…¥çš„è¡¨è¾¾ã€‚';

  @override
  String get metric_good_31_name => 'çµæ´»æ€§å±•ç¤º';

  @override
  String get metric_good_31_description =>
      'è¯†åˆ«è°ƒæ•´è®¡åˆ’ã€æ”¹å˜æœŸæœ›æˆ–ä¸Žä¼´ä¾£å¦¥åçš„æ„æ„¿ã€‚';

  @override
  String get metric_good_32_name => 'ä¿æŠ¤æ€§è¯­è¨€';

  @override
  String get metric_good_32_description =>
      'å¯»æ‰¾è¡¨æ˜Žä¼´ä¾£çš„å®‰å…¨ã€ç¦ç¥‰å’Œåˆ©ç›Šè‡³å…³é‡è¦çš„é™ˆè¿°ã€‚';

  @override
  String get metric_good_33_name => 'é‡Œç¨‹ç¢‘åº†ç¥';

  @override
  String get metric_good_33_description =>
      'è¡¡é‡å¯¹çºªå¿µæ—¥ã€æˆå°±æˆ–å…±åŒé‡è¦æ—¶åˆ»çš„è®¤å¯ã€‚';

  @override
  String get metric_good_34_name => 'å»ºè®¾æ€§åé¦ˆ';

  @override
  String get metric_good_34_description =>
      'æ£€æµ‹æä¾›å‹å–„ã€å…·ä½“ä¸”ä»¥æˆé•¿ä¸ºå¯¼å‘çš„æ”¹è¿›å»ºè®®ã€‚';

  @override
  String get metric_good_35_name => 'å›°å¢ƒé™ªä¼´';

  @override
  String get metric_good_35_description =>
      'è¯†åˆ«åœ¨ä¼´ä¾£æŒ£æ‰Žã€æ‚²ä¼¤æˆ–é¢ä¸´æŒ‘æˆ˜æ—¶ä¿æŒå‚ä¸Žçš„è¡Œä¸ºã€‚';

  @override
  String get metric_good_36_name => 'é’¦ä½©è¡¨è¾¾';

  @override
  String get metric_good_36_description =>
      'è¿½è¸ªå¯¹ä¼´ä¾£å“æ ¼ã€åŠ›é‡ã€æ™ºæ…§æˆ–éŸ§æ€§çš„çœŸè¯šå°Šé‡ã€‚';

  @override
  String get metric_good_37_name => 'å¬‰æˆæŒ‡æ ‡';

  @override
  String get metric_good_37_description =>
      'å¯»æ‰¾è½»æ¾çŽ©ç¬‘ã€å†…éƒ¨ç¬‘è¯æˆ–æœ‰è¶£çš„äº’åŠ¨ï¼Œä»¥åŠ å¼ºæƒ…æ„Ÿçº½å¸¦ã€‚';

  @override
  String get metric_good_38_name => 'å…±æƒ…é•œåƒ';

  @override
  String get metric_good_38_description =>
      'è¡¡é‡å¯¹ä¼´ä¾£æƒ…ç»ªçš„åé¦ˆï¼Œä»¥å±•ç¤ºç†è§£å’Œè®¤å¯ã€‚';

  @override
  String get metric_good_39_name => 'æŽ¥çº³è¯­è¨€';

  @override
  String get metric_good_39_description =>
      'æ£€æµ‹æŽ¥çº³ä¼´ä¾£æœ¬æ¥çš„æ ·å­ï¼ŒåŒ…æ‹¬ç¼ºç‚¹ï¼Œè€Œä¸è¦æ±‚æ”¹å˜ã€‚';

  @override
  String get metric_good_40_name => 'æ”¯æŒæ€§å­˜åœ¨';

  @override
  String get metric_good_40_description =>
      'è¯†åˆ«åœ¨ä¼´ä¾£èº«è¾¹è€Œä¸è¯•å›¾è§£å†³é—®é¢˜ï¼Œé€šè¿‡å€¾å¬å’Œé™ªä¼´æä¾›å®‰æ…°ã€‚';

  @override
  String get metric_good_41_name => 'çœŸè¯šå…´è¶£';

  @override
  String get metric_good_41_description =>
      'è¿½è¸ªæå‡ºåŽç»­é—®é¢˜å¹¶è®°ä½ä¼´ä¾£ç”Ÿæ´»å’Œå…³åˆ‡çš„ç»†èŠ‚ã€‚';

  @override
  String get metric_good_42_name => 'äº’æƒ åŠªåŠ›';

  @override
  String get metric_good_42_description =>
      'è¡¡é‡åŒæ–¹åœ¨æƒ…æ„Ÿå·¥ä½œã€è§„åˆ’å’Œå…³ç³»ç»´æŠ¤ä¸Šçš„å¹³ç­‰è´¡çŒ®ã€‚';

  @override
  String get metric_good_43_name => 'å®½æ•è¯­è¨€';

  @override
  String get metric_good_43_description =>
      'å¯»æ‰¾æ”¾ä¸‹æ€¨æ¨ã€ç»™äºˆç¬¬äºŒæ¬¡æœºä¼šå¹¶é€‰æ‹©è¶…è¶Šä¼¤å®³çš„è¡Œä¸ºã€‚';

  @override
  String get metric_good_44_name => 'ç›¸äº’å°Šé‡ä¿¡å·';

  @override
  String get metric_good_44_description =>
      'æ£€æµ‹å°†ä¼´ä¾£è§†ä¸ºå¹³ç­‰ã€å°Šé‡å…¶æ„è§å¹¶é‡è§†å…¶è´¡çŒ®ã€‚';

  @override
  String get metric_good_45_name => 'æƒ…æ„Ÿè¯šå®ž';

  @override
  String get metric_good_45_description =>
      'è¯†åˆ«çœŸå®žè¡¨è¾¾æ„Ÿå—ï¼Œä¸æ“çºµã€ä¸å¤¸å¤§ã€ä¸ç­–ç•¥æ€§éšçž’ã€‚';

  @override
  String get metric_good_46_name => 'æ”¯æŒæ€§å€¾å¬';

  @override
  String get metric_good_46_description =>
      'è¡¡é‡å…è®¸ä¼´ä¾£å……åˆ†è¡¨è¾¾è€Œä¸æ‰“æ–­ã€è¯„åˆ¤æˆ–ç«‹å³è§£å†³é—®é¢˜çš„è¡Œä¸ºã€‚';

  @override
  String get metric_good_47_name => 'çˆ±ç§°ä½¿ç”¨';

  @override
  String get metric_good_47_description =>
      'è¿½è¸ªä½¿ç”¨è¡¨è¾¾æ¸©æš–å’Œäº²å¯†è¿žæŽ¥çš„çˆ±ç§°ã€‚';

  @override
  String get metric_good_48_name => 'å…±äº«æ¬¢ç¬‘';

  @override
  String get metric_good_48_description =>
      'è¯†åˆ«åˆ›é€ ç§¯æžè”ç»“ä½“éªŒçš„ç›¸äº’å¹½é»˜å’Œæ¬¢ä¹æ—¶åˆ»ã€‚';

  @override
  String get metric_good_49_name => 'ä½“è´´ä¸¾åŠ¨';

  @override
  String get metric_good_49_description =>
      'å…³æ³¨å°å–„ä¸¾ã€è®°ä½åå¥½æˆ–ä¸ºè®©ä¼´ä¾£å¼€å¿ƒè€Œåšçš„äº‹æƒ…ã€‚';

  @override
  String get metric_good_50_name => 'å¯¹ä¼´ä¾£çš„ä¿¡å¿ƒ';

  @override
  String get metric_good_50_description =>
      'æ£€æµ‹å¯¹ä¼´ä¾£èƒ½åŠ›ã€æ½œåŠ›å’Œåº”å¯¹æŒ‘æˆ˜èƒ½åŠ›çš„ä¿¡ä»»ã€‚';

  @override
  String get metric_good_51_name => 'å¥åº·ç›¸äº’ä¾èµ–';

  @override
  String get metric_good_51_description =>
      'è¡¡é‡äº²å¯†ä¸Žç‹¬ç«‹ä¹‹é—´çš„å¹³è¡¡ï¼Œæ”¯æŒå½¼æ­¤çš„è‡ªä¸»æ€§ã€‚';

  @override
  String get metric_good_52_name => 'å†²çªé™çº§';

  @override
  String get metric_good_52_description =>
      'è¯†åˆ«ç¼“å’Œæ¿€çƒˆè®¨è®ºçš„æŸ”å’Œè¯­è¨€ã€æš‚åœæˆ–æä¾›è§£å†³æ–¹æ¡ˆã€‚';

  @override
  String get metric_good_53_name => 'çœŸè¯šé“æ­‰';

  @override
  String get metric_good_53_description =>
      'è¿½è¸ªå¯¹é”™è¯¯çš„å®Œå…¨æ‰¿è®¤ï¼Œä¸è½»ææ·¡å†™ã€ä¸è¾©æŠ¤ã€ä¸æŽ¨å¸è´£ä»»ã€‚';

  @override
  String get metric_good_54_name => 'æƒ…æ„Ÿæ”¯æŒæä¾›';

  @override
  String get metric_good_54_description =>
      'å…³æ³¨ä¸»åŠ¨å…³å¿ƒã€è¯¢é—®ä¼´ä¾£çŠ¶å†µå¹¶æä¾›å¸®åŠ©ã€‚';

  @override
  String get metric_good_55_name => 'å°Šé‡è¾¹ç•Œ';

  @override
  String get metric_good_55_description =>
      'è¡¡é‡å°Šé‡ä¼´ä¾£æ˜Žç¡®è®¾å®šçš„ç•Œé™ï¼ŒåŒæ—¶ä¿æŒè‡ªèº«å¥åº·è¾¹ç•Œçš„è¡Œä¸ºã€‚';

  @override
  String get metric_good_56_name => 'ç§¯æžæœŸå¾…';

  @override
  String get metric_good_56_description =>
      'æ£€æµ‹å¯¹å…±åŒæœªæ¥çš„å…´å¥‹æ„Ÿã€æå‰è§„åˆ’ä»¥åŠæœŸå¾…å…±äº«ä½“éªŒçš„ç§¯æžæƒ…ç»ªã€‚';

  @override
  String get metric_good_57_name => 'å…³æ³¨ä¿¡å·';

  @override
  String get metric_good_57_description =>
      'è¯†åˆ«è®°ä½é‡è¦æ—¥æœŸã€åå¥½å’Œç»†èŠ‚çš„è¡Œä¸ºï¼Œè¿™äº›è¡¨æ˜Žä¼´ä¾£çš„é‡è¦æ€§ã€‚';

  @override
  String get metric_good_58_name => 'é¼“åŠ±æˆé•¿';

  @override
  String get metric_good_58_description =>
      'è¿½è¸ªæ”¯æŒä¼´ä¾£ä¸ªäººå‘å±•ã€å­¦ä¹ å’Œè¿½æ±‚ç›®æ ‡çš„è¡Œä¸ºã€‚';

  @override
  String get metric_good_59_name => 'æ¸©æŸ”è¯­è¨€';

  @override
  String get metric_good_59_description =>
      'å¯»æ‰¾æŸ”å’Œã€å…³åˆ‡çš„æŽªè¾žï¼Œä¼ è¾¾æ¸©æŸ”å’Œæƒ…æ„Ÿæ¸©æš–ã€‚';

  @override
  String get metric_good_60_name => 'å…±åŒè´£ä»»';

  @override
  String get metric_good_60_description =>
      'è¡¡é‡åŒæ–¹ä¸ºè‡ªå·±çš„è¡Œä¸ºåŠå…¶å½±å“æ‰¿æ‹…è´£ä»»çš„ç¨‹åº¦ã€‚';

  @override
  String get metric_good_61_name => 'èµžç¾Žä¼´ä¾£';

  @override
  String get metric_good_61_description =>
      'æ£€æµ‹å…¬å¼€æˆ–ç§ä¸‹è¡¨è¾¾å¯¹ä¼´ä¾£çš„è‡ªè±ªã€å–œæ‚¦æˆ–é’¦ä½©ã€‚';

  @override
  String get metric_good_62_name => 'æŒç»­å…³çˆ±';

  @override
  String get metric_good_62_description =>
      'è¯†åˆ«ä¸å› è¡¨çŽ°æˆ–é¡ºä»Žæ³¢åŠ¨çš„ç¨³å®šçˆ±æ„è¡¨è¾¾ã€‚';

  @override
  String get metric_good_63_name => 'æƒ…æ„Ÿå…±é¸£';

  @override
  String get metric_good_63_description =>
      'è¿½è¸ªæ„ŸçŸ¥å¹¶å›žåº”ä¼´ä¾£æƒ…ç»ªçŠ¶æ€å¾®å¦™å˜åŒ–çš„èƒ½åŠ›ã€‚';

  @override
  String get metric_good_64_name => 'åä½œå†³ç­–';

  @override
  String get metric_good_64_description =>
      'è¡¡é‡å…±åŒè®¨è®ºé€‰é¡¹å¹¶åšå‡ºè€ƒè™‘åŒæ–¹éœ€æ±‚çš„é€‰æ‹©ã€‚';

  @override
  String get metric_good_65_name => 'æ— æ¡ä»¶å®‰æŠš';

  @override
  String get metric_good_65_description =>
      'å¯»æ‰¾æ— éœ€ä¼´ä¾£äº‰å–å³å¯æä¾›å®‰æ…°å’Œå®‰å…¨æ„Ÿçš„è¡Œä¸ºã€‚';

  @override
  String get metric_good_66_name => 'çœŸè¯šè¿žæŽ¥';

  @override
  String get metric_good_66_description =>
      'æ£€æµ‹äº’åŠ¨ä¸­çœŸå®žçš„å­˜åœ¨ã€çœŸè¯šåˆ†äº«å’Œæ‘’å¼ƒä¼ªè£…ã€‚';

  @override
  String get metric_good_67_name => 'ç›¸äº’é¼“åŠ±';

  @override
  String get metric_good_67_description =>
      'è¯†åˆ«åŒæ–¹äº’ç›¸é¼“åŠ±ï¼Œåº†ç¥åŠªåŠ›è€Œéžä»…å…³æ³¨ç»“æžœã€‚';

  @override
  String get metric_good_68_name => 'å°Šé‡æ€§æé—®';

  @override
  String get metric_good_68_description =>
      'è¿½è¸ªä»¥çœŸè¯šå¥½å¥‡è€Œéžå®¡é—®çš„æ–¹å¼è¯¢é—®ä¼´ä¾£çš„è§‚ç‚¹ã€‚';

  @override
  String get metric_good_69_name => 'çˆ±çš„æ’å¸¸';

  @override
  String get metric_good_69_description =>
      'è¡¡é‡åœ¨é¡ºå¢ƒå’Œé€†å¢ƒä¸­ä¿æŒä¸€è‡´ï¼Œæƒ…æ„Ÿå¯é ã€‚';

  @override
  String get metric_good_70_name => 'æƒ…æ„Ÿäº’æƒ ';

  @override
  String get metric_good_70_description =>
      'å¯»æ‰¾åŒæ–¹ä»¥å¹³è¡¡æ–¹å¼åˆ†äº«æ„Ÿå—ã€éœ€æ±‚å’Œè„†å¼±ä¹‹å¤„ã€‚';

  @override
  String get metric_good_71_name => 'æ„‰æ‚¦ç›¸ä¼´';

  @override
  String get metric_good_71_description =>
      'æ£€æµ‹ä¸Žä¼´ä¾£ç›¸å¤„æ—¶çš„çœŸå®žå¿«ä¹å’Œå¯¹å…±åº¦æ—¶å…‰çš„çƒ­æƒ…ã€‚';

  @override
  String get metric_good_72_name => 'å»ºè®¾æ€§å¯¹è¯';

  @override
  String get metric_good_72_description =>
      'è¯†åˆ«è¶‹å‘ç†è§£è€Œéžäº‰èƒœæˆ–è¯æ˜Žæ­£ç¡®çš„å¯¹è¯ã€‚';

  @override
  String get metric_good_73_name => 'ä¿æŠ¤æ€§æ”¯æŒ';

  @override
  String get metric_good_73_description =>
      'è¿½è¸ªä¸ºä¼´ä¾£æŒºèº«è€Œå‡ºã€ç»´æŠ¤ä¼´ä¾£å¹¶ä¼˜å…ˆè€ƒè™‘å…¶ç¦ç¥‰çš„è¡Œä¸ºã€‚';

  @override
  String get metric_good_74_name => 'æ­£å¿µæ²Ÿé€š';

  @override
  String get metric_good_74_description =>
      'è¡¡é‡æ·±æ€ç†Ÿè™‘çš„æŽªè¾žã€åœ¨è¯´è¯å‰è€ƒè™‘å½±å“ä»¥åŠæœ‰æ„å›¾çš„æ²Ÿé€šã€‚';

  @override
  String get metric_good_75_name => 'å…³ç³»æŠ•å…¥';

  @override
  String get metric_good_75_description =>
      'è§‚å¯ŸæŠ•å…¥äºŽæ»‹å…»ä¼´ä¾£å…³ç³»çš„æ—¶é—´ã€ç²¾åŠ›å’Œèµ„æºã€‚';

  @override
  String get metric_good_76_name => 'å®‰å…¨åŸºåœ°è¯­è¨€';

  @override
  String get metric_good_76_description =>
      'æ£€æµ‹æä¾›ç¨³å®šæ€§ã€å®‰å…¨æ„Ÿä»¥åŠè®©ä¼´ä¾£èƒ½å¤ŸæŽ¢ç´¢çš„åŸºç¡€ã€‚';

  @override
  String get metric_good_77_name => 'ç›¸äº’æ¬£èµ';

  @override
  String get metric_good_77_description =>
      'è¯†åˆ«åŒæ–¹å¯¹å½¼æ­¤å“è´¨è¡¨è¾¾å°Šé‡å’Œæ¬£èµã€‚';

  @override
  String get metric_good_78_name => 'æ¸©é¦¨æ—¶åˆ»';

  @override
  String get metric_good_78_description =>
      'è¿½è¸ªåˆ›é€ æˆ–è¯†åˆ«äº²å¯†å®‰é™çš„è¿žæŽ¥ä¸Žäº²è¿‘æ—¶åˆ»ã€‚';

  @override
  String get metric_good_79_name => 'çœŸè¯šå¥½å¥‡';

  @override
  String get metric_good_79_description =>
      'è§‚å¯Ÿå¯¹ç†è§£ä¼´ä¾£æƒ³æ³•ã€æ„Ÿå—å’Œç»åŽ†çš„çœŸå®žå…´è¶£ã€‚';

  @override
  String get metric_good_80_name => 'çˆ±çš„æŽ¥çº³';

  @override
  String get metric_good_80_description =>
      'æ£€æµ‹æŽ¥çº³ä¼´ä¾£çš„å…¨éƒ¨è‡ªæˆ‘ï¼ŒåŒ…æ‹¬ä¸å®Œç¾Žå’Œè¿‡åŽ»ã€‚';

  @override
  String get metric_good_81_name => 'å…±åŒæˆé•¿æ”¯æŒ';

  @override
  String get metric_good_81_description =>
      'è¯†åˆ«åŒæ–¹é¼“åŠ±å½¼æ­¤å‘å±•å¹¶åº†ç¥è¿›æ­¥ã€‚';

  @override
  String get metric_good_82_name => 'æ¸©æš–è¯­æ°”æŒ‡æ ‡';

  @override
  String get metric_good_82_description =>
      'è¿½è¸ªä½¿ç”¨äº²æ˜µè¯­è¨€ã€æ¸©å’ŒæŽªè¾žå’Œæ¸©æŸ”æ²Ÿé€šæ–¹å¼çš„æƒ…å†µã€‚';

  @override
  String get metric_good_83_name => 'å›žåº”æ€§æŠ•å…¥';

  @override
  String get metric_good_83_description =>
      'è¡¡é‡å¯¹ä¼´ä¾£ä¿¡æ¯å’Œæƒ…æ„Ÿè¯‰æ±‚çš„å¿«é€Ÿã€ç§¯æžå›žåº”ã€‚';

  @override
  String get metric_good_84_name => 'å…±åŒä»·å€¼è§‚å¥‘åˆ';

  @override
  String get metric_good_84_description =>
      'å¯»æ‰¾æåŠå…±åŒä¿¡å¿µã€ç›®æ ‡æˆ–äººç”Ÿå“²å­¦ä»¥è”ç»“ä¼´ä¾£çš„è¡¨è¿°ã€‚';

  @override
  String get metric_good_85_name => 'æ— æ¡ä»¶æ”¯æŒ';

  @override
  String get metric_good_85_description =>
      'æ£€æµ‹åœ¨å›°éš¾ä¸­æ— æ¡ä»¶æ”¯æŒä¼´ä¾£çš„è¡Œä¸ºã€‚';

  @override
  String get metric_good_86_name => 'äº²å¯†è„†å¼±æ€§';

  @override
  String get metric_good_86_description =>
      'è¯†åˆ«åˆ†äº«æ·±å±‚ææƒ§ã€æ¢¦æƒ³æˆ–ä¸å®‰å…¨æ„Ÿä»¥åŠ æ·±æƒ…æ„Ÿçº½å¸¦çš„è¡Œä¸ºã€‚';

  @override
  String get metric_good_87_name => 'ç›¸äº’å°Šé‡è¯­è¨€';

  @override
  String get metric_good_87_description =>
      'è¿½è¸ªåœ¨æ²Ÿé€šä¸­å°Šé‡å¯¹æ–¹è§‚ç‚¹ã€é€‰æ‹©å’Œè‡ªä¸»æ€§çš„è¡¨çŽ°ã€‚';

  @override
  String get metric_good_88_name => 'ç§¯æžæ¡†æž¶';

  @override
  String get metric_good_88_description =>
      'è¡¡é‡å¯¹æƒ…å¢ƒå’Œä¼´ä¾£æŒç§¯æžçœ‹æ³•ã€å…³æ³¨ä¼˜åŠ¿çš„ç¨‹åº¦ã€‚';

  @override
  String get metric_good_89_name => 'åä½œé—®é¢˜è§£å†³';

  @override
  String get metric_good_89_description =>
      'å¯»æ‰¾å…±åŒè‡´åŠ›äºŽä½¿åŒæ–¹å¹³ç­‰å—ç›Šçš„è§£å†³æ–¹æ¡ˆçš„è¡Œä¸ºã€‚';

  @override
  String get metric_good_90_name => 'æƒ…æ„ŸéªŒè¯';

  @override
  String get metric_good_90_description =>
      'æ£€æµ‹ç¡®è®¤ä¼´ä¾£æ„Ÿå—åˆç†ä¸”å¯æŽ¥å—çš„è¡Œä¸ºã€‚';

  @override
  String get metric_good_91_name => 'æŒç»­å–„æ„';

  @override
  String get metric_good_91_description =>
      'è¯†åˆ«å‡ºç»å¸¸æ€§çš„å°å…³æ€€è¡Œä¸ºï¼Œè¡¨æ˜Žä¼´ä¾£è¢«æƒ¦è®°å’Œé‡è§†ã€‚';

  @override
  String get metric_good_92_name => 'å…±åŒåº†ç¥';

  @override
  String get metric_good_92_description =>
      'è¿½è¸ªåŒæ–¹å¯¹å½¼æ­¤çš„æˆåŠŸå’Œå–œæ‚¦çœŸå¿ƒæ„Ÿåˆ°é«˜å…´çš„ç¨‹åº¦ã€‚';

  @override
  String get metric_good_93_name => 'å®‰å…¨ä¾æ‹è¯­è¨€';

  @override
  String get metric_good_93_description =>
      'è¡¡é‡è¡¨è¾¾ä¿¡ä»»ã€äº²å¯†èˆ’é€‚æ„Ÿä»¥åŠå¯¹å…³ç³»çš„ä¿¡å¿ƒã€‚';

  @override
  String get metric_good_94_name => 'ä½“è´´è€ƒé‡';

  @override
  String get metric_good_94_description =>
      'å¯»æ‰¾åœ¨å†³ç­–æ—¶è€ƒè™‘ä¼´ä¾£éœ€æ±‚å’Œæ„Ÿå—çš„è¡¨çŽ°ã€‚';

  @override
  String get metric_good_95_name => 'çˆ±çš„åœ¨åœº';

  @override
  String get metric_good_95_description =>
      'æ£€æµ‹å®Œå…¨æŠ•å…¥å½“ä¸‹çš„çŠ¶æ€ï¼Œè¡¨æ˜Žä¼´ä¾£æ˜¯æœ€é‡è¦çš„ã€‚';

  @override
  String get metric_good_96_name => 'çœŸè¯šå…³æ€€è¯­è¨€';

  @override
  String get metric_good_96_description =>
      'è¿½è¸ªå¯¹ä¼´ä¾£ç¦ç¥‰çœŸè¯šçš„å…³å¿ƒã€å…³æ€€å’ŒæŠ•å…¥çš„è¡¨è¾¾ã€‚';

  @override
  String get metric_good_97_name => 'å…³ç³»æ‰¿è¯º';

  @override
  String get metric_good_97_description =>
      'è¡¡é‡å¯¹å…³ç³»çš„æŠ•å…¥ä»¥åŠå…±åŒé¢å¯¹æŒ‘æˆ˜çš„æ„æ„¿ã€‚';

  @override
  String get metric_good_98_name => 'çœŸè¯šçˆ±æ„è¡¨è¾¾';

  @override
  String get metric_good_98_description =>
      'å¯»æ‰¾çœŸå®žä¸”æŒç»­çš„çˆ±æ„è¡¨è¾¾ï¼Œè®©äººæ„Ÿåˆ°çœŸå®žå’Œæ— æ¡ä»¶ã€‚';

  @override
  String get metric_good_99_name => 'å…±åŒç›®æ ‡è®¾å®š';

  @override
  String get metric_good_99_description =>
      'è¯†åˆ«ä¼´ä¾£å…±åŒå®šä¹‰æœªæ¥æ¢¦æƒ³ã€ä¼˜å…ˆäº‹é¡¹å’Œæ–¹å‘ã€‚';

  @override
  String get metric_good_100_name => 'ä¿®å¤å°è¯•è¯†åˆ«';

  @override
  String get metric_good_100_description =>
      'è¯†åˆ«å¹¶ç§¯æžå›žåº”ä¼´ä¾£ä¸ºç¼“å’Œå†²çªã€é‡å»ºè”ç»“è€Œå‘å‡ºçš„ä¿®å¤ä¿¡å·ã€‚';

  @override
  String get metric_bad_1_name => 'è¢«åŠ¨æ”»å‡»';

  @override
  String get metric_bad_1_description =>
      'é€šè¿‡æ‹–å»¶ã€é—å¿˜ã€è®½åˆºæˆ–éšæ€§ç ´åé—´æŽ¥è¡¨è¾¾æ•Œæ„ï¼Œè€Œéžç›´æŽ¥æ²Ÿé€šã€‚';

  @override
  String get metric_bad_2_name => 'å†…ç–šæ­¦å™¨åŒ–';

  @override
  String get metric_bad_2_description =>
      'è¯†åˆ«åˆ©ç”¨å†…ç–šã€ç¾žè€»æˆ–ä¹‰åŠ¡æ€§è¯­è¨€æ¥æ“çºµå†³å®šæˆ–é˜»æ­¢è®¾å®šè¾¹ç•Œçš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_3_name => 'æƒ…æ„Ÿå‹’ç´¢';

  @override
  String get metric_bad_3_description =>
      'æ ‡è®°ä»¥è‡ªæ®‹ã€æŠ›å¼ƒæˆ–æ’¤å›žçˆ±ä½œä¸ºå¨èƒï¼Œä»¥æŽ§åˆ¶è¡Œä¸ºæˆ–é˜»æ­¢è®¨è®ºã€‚';

  @override
  String get metric_bad_4_name => 'ä¹ æƒ¯æ€§æŠ±æ€¨';

  @override
  String get metric_bad_4_description =>
      'è¿½è¸ªæŒç»­çš„æ¶ˆæžã€ååˆæˆ–æŠ±æ€¨ï¼Œè€Œä¸å¯»æ±‚è§£å†³æ–¹æ¡ˆæˆ–å…±åŒæ”¹å˜ã€‚';

  @override
  String get metric_bad_5_name => 'æ¯”è¾ƒç¾žè¾±';

  @override
  String get metric_bad_5_description =>
      'è¯†åˆ«é€šè¿‡ä¸Žå‰ä»»ã€æœ‹å‹æˆ–å®¶äººè¿›è¡Œä¸åˆ©æ¯”è¾ƒæ¥ç¾žè¾±æˆ–å¼ºè¿«æ”¹å˜è¡Œä¸ºçš„æƒ…å†µã€‚';

  @override
  String get metric_bad_6_name => 'æ¡ä»¶æ€§å€¾å¬';

  @override
  String get metric_bad_6_description =>
      'æ£€æµ‹ä»…åœ¨å¯¹è‡ªå·±æœ‰åˆ©æˆ–æœåŠ¡äºŽè‡ªèº«ç›®çš„æ—¶æ‰å€¾å¬ï¼Œè€ŒéžçœŸæ­£ç†è§£ã€‚';

  @override
  String get metric_bad_7_name => 'é€‰æ‹©æ€§è®°å¿†';

  @override
  String get metric_bad_7_description =>
      'è¿½è¸ªé€‰æ‹©æ€§é—å¿˜æ‰¿è¯ºã€åè®®æˆ–è¿‡åŽ»æœ‰å®³è¡Œä¸ºä»¥é€ƒé¿è´£ä»»ã€‚';

  @override
  String get metric_bad_8_name => 'å±æœºå¼å¯»æ±‚å…³æ³¨';

  @override
  String get metric_bad_8_description =>
      'è¯†åˆ«ä¸ºèŽ·å–å…³æ³¨æˆ–åŒæƒ…è€Œè¿›è¡Œçš„æˆå‰§æ€§å‡çº§ã€åˆ¶é€ å±æœºæˆ–å¤¸å¤§è¡Œä¸ºã€‚';

  @override
  String get metric_bad_9_name => 'ç•Œé™è¯•æŽ¢';

  @override
  String get metric_bad_9_description =>
      'æ£€æµ‹åå¤è¯•æŽ¢æˆ–æŽ¨åŠ¨å·²è®¾å®šçš„ç•Œé™ä»¥ç¡®è®¤æ˜¯å¦ä¼šè¢«æ‰§è¡Œã€‚';

  @override
  String get metric_bad_10_name => 'ä¿¡æ¯éšçž’';

  @override
  String get metric_bad_10_description =>
      'è¯†åˆ«æ•…æ„éšçž’ç›¸å…³äº‹å®žã€èƒŒæ™¯æˆ–é€æ˜Žåº¦ä»¥ç»´æŒæŽ§åˆ¶çš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_11_name => 'è¿‡åº¦æ„¤æ€’';

  @override
  String get metric_bad_11_description =>
      'è¿½è¸ªè¿œè¶…å‡ºè§¦å‘äº‹ä»¶åˆç†èŒƒå›´çš„æ„¤æ€’ååº”ã€‚';

  @override
  String get metric_bad_12_name => 'å®‰æ…°æˆç˜¾';

  @override
  String get metric_bad_12_description =>
      'æ ‡è®°æŒç»­éœ€è¦è®¤å¯ã€åå¤è¯¢é—®æ‰¿è¯ºæˆ–æ— å°½è¯æ˜Žçˆ±çš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_13_name => 'å¯¹è¯å›žé¿';

  @override
  String get metric_bad_13_description =>
      'æ£€æµ‹æ‹’ç»å¤„ç†å…³åˆ‡ã€ä½¿ç”¨å›žé¿æ€§è¯­è¨€æˆ–ç»ˆæ­¢é‡è¦è®¨è®ºçš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_14_name => 'çŸ›ç›¾æ¨¡å¼';

  @override
  String get metric_bad_14_description =>
      'è¯†åˆ«é€ æˆæ··ä¹±æˆ–ä¸ç¨³å®šçš„çŸ›ç›¾é™ˆè¿°ã€æ‰¿è¯ºæˆ–ç«‹åœºã€‚';

  @override
  String get metric_bad_15_name => 'æ ‡ç­¾å¦å®š';

  @override
  String get metric_bad_15_description =>
      'æ ‡è®°å°†å…³åˆ‡æ ‡ç­¾ä¸ºâ€œç–¯ç‹‚â€ã€â€œæˆå‰§åŒ–â€ã€â€œåæ‰§â€æˆ–â€œååº”è¿‡åº¦â€ä»¥å¦å®šå…¶æœ‰æ•ˆæ€§ã€‚';

  @override
  String get metric_bad_16_name => 'é€‰æ‹©æ€§å…±æƒ…';

  @override
  String get metric_bad_16_description =>
      'æ£€æµ‹ä»…åœ¨æ–¹ä¾¿æˆ–ç¬¦åˆè¯´è¯è€…åˆ©ç›Šæ—¶æä¾›çš„å…±æƒ…ã€‚';

  @override
  String get metric_bad_17_name => 'äº¤æ˜“æ€§æ¡†æž¶';

  @override
  String get metric_bad_17_description =>
      'è¯†åˆ«â€œä½ æ¬ æˆ‘çš„â€ã€â€œæˆ‘ä¸ºä½ åšäº†è¿™ä¹ˆå¤šâ€æˆ–å°†å…³ç³»è¡Œä¸ºè§†ä¸ºåˆ›é€ å€ºåŠ¡çš„è¡¨è¿°ã€‚';

  @override
  String get metric_bad_18_name => 'æ—§æ€¨é‡æ';

  @override
  String get metric_bad_18_description =>
      'è¿½è¸ªåå¤æèµ·æ—§æ€¨æˆ–åœ¨å½“å‰å†²çªä¸­åˆ©ç”¨è¿‡åŽ»ä¼¤å®³ä½œä¸ºæ­¦å™¨ã€‚';

  @override
  String get metric_bad_19_name => 'å‘½ä»¤å¼è¯­è¨€';

  @override
  String get metric_bad_19_description =>
      'æ ‡è®°å‘½ä»¤ã€æŒ‡ä»¤æˆ–æœ€åŽé€šç‰’ï¼Œè€Œéžè¯·æ±‚æˆ–åä½œè§£å†³é—®é¢˜ã€‚';

  @override
  String get metric_bad_20_name => 'æƒ…æ„Ÿç–ç¦»';

  @override
  String get metric_bad_20_description =>
      'æ£€æµ‹æŒç»­æ‹’ç»æƒ…æ„ŸæŠ•å…¥ã€åˆ†äº«æ„Ÿå—æˆ–æä¾›å®‰æ…°çš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_21_name => 'æ•Œæ„è§£è¯»';

  @override
  String get metric_bad_21_description =>
      'è¯†åˆ«å°†ä¸­æ€§é™ˆè¿°è§†ä¸ºæ”»å‡»ï¼Œæˆ–è¯¯è§£æ¨¡ç³Šä¿¡æ¯ä¸ºæ•Œæ„çš„å€¾å‘ã€‚';

  @override
  String get metric_bad_22_name => 'ç‰¹æƒæ¡†æž¶';

  @override
  String get metric_bad_22_description =>
      'æ ‡è®°æš—ç¤ºè¯´è¯è€…åº”èŽ·å¾—ç‰¹æ®Šå¾…é‡ã€ä¾‹å¤–æˆ–ä¼˜å…ˆæƒçš„è¯­è¨€ã€‚';

  @override
  String get metric_bad_23_name => 'ä¼ªè£…æˆå¸®åŠ©çš„æ‰¹è¯„';

  @override
  String get metric_bad_23_description =>
      'æ£€æµ‹ä»¥â€œæˆ‘åªæ˜¯æƒ³å¸®å¿™â€æˆ–â€œä¸ºä½ å¥½â€ä¸ºåŒ…è£…çš„æ‰¹è¯„ã€‚';

  @override
  String get metric_bad_24_name => 'å¿½è§†æ¨¡å¼';

  @override
  String get metric_bad_24_description =>
      'è¯†åˆ«æŒç»­æœªèƒ½æ»¡è¶³æƒ…æ„Ÿã€èº«ä½“æˆ–å…³ç³»éœ€æ±‚çš„è¡Œä¸ºæ¨¡å¼ã€‚';

  @override
  String get metric_bad_25_name => 'å†²çªååˆ';

  @override
  String get metric_bad_25_description =>
      'è¿½è¸ªåå¤çº ç»“å†²çªè€Œä¸å¯»æ±‚è§£å†³æˆ–äº†ç»“çš„å€¾å‘ã€‚';

  @override
  String get metric_bad_26_name => 'æ•æ„Ÿå¦å®š';

  @override
  String get metric_bad_26_description =>
      'æ ‡è®°â€œä½ å¤ªæ•æ„Ÿäº†â€æˆ–â€œä½ ååº”è¿‡åº¦â€ç­‰å¦å®šæ„Ÿå—çš„è¡¨è¿°ã€‚';

  @override
  String get metric_bad_27_name => 'ç«žäº‰æ¡†æž¶';

  @override
  String get metric_bad_27_description =>
      'æ£€æµ‹å°†å…³ç³»è§†ä¸ºä¸€æ–¹å¿…é¡»èµ¢æˆ–ä¸»å¯¼çš„ç«žäº‰æ¡†æž¶ã€‚';

  @override
  String get metric_bad_28_name => 'åŒé‡æ ‡å‡†';

  @override
  String get metric_bad_28_description =>
      'è¯†åˆ«å¯¹è‡ªå·±å’Œä¼´ä¾£é‡‡ç”¨ä¸åŒæ ‡å‡†æˆ–éšæ„æ”¹å˜æœŸæœ›çš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_29_name => 'æƒ…æ„Ÿæƒ©ç½š';

  @override
  String get metric_bad_29_description =>
      'æ ‡è®°ä»¥æ”¶å›žå…³çˆ±ã€å…³æ³¨æˆ–æ²Ÿé€šä½œä¸ºå¯¹æ„ŸçŸ¥åˆ°çš„é”™è¯¯è¿›è¡ŒæŠ¥å¤çš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_30_name => 'æŒ‡è´£è½®æ¢';

  @override
  String get metric_bad_30_description =>
      'è¿½è¸ªåœ¨ä¼´ä¾£ã€çŽ¯å¢ƒå’Œå¤–éƒ¨å› ç´ ä¹‹é—´è½®æ¢æŒ‡è´£ä»¥é€ƒé¿è´£ä»»çš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_31_name => 'ä¿®è¾žå˜²è®½';

  @override
  String get metric_bad_31_description =>
      'æ£€æµ‹ç”¨äºŽå˜²è®½è€Œéžç†è§£çš„ä¿®è¾žæ€§æˆ–è®½åˆºæ€§é—®é¢˜ã€‚';

  @override
  String get metric_bad_32_name => 'ç‰ºç‰²æé†’';

  @override
  String get metric_bad_32_description =>
      'è¯†åˆ«æé†’ä¼´ä¾£è‡ªå·±çš„ç‰ºç‰²ã€æ©æƒ æˆ–æ”¯æŒä»¥åˆ¶é€ äºæ¬ æ„Ÿå’Œé¡ºä»Žçš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_33_name => 'æ•…æ„å‡çº§';

  @override
  String get metric_bad_33_description =>
      'æ ‡è®°æ•…æ„åŠ å‰§å†²çªå¼ºåº¦ä»¥åŽ‹å€’ä¼´ä¾£ç†æ€§ååº”èƒ½åŠ›çš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_34_name => 'ç­–ç•¥æ€§è„†å¼±';

  @override
  String get metric_bad_34_description =>
      'æ£€æµ‹ä»…åœ¨æœåŠ¡äºŽæ“çºµæˆ–æŽ§åˆ¶ç›®çš„æ—¶æ‰åˆ†äº«æƒ…ç»ªçš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_35_name => 'åæ”»è½¬ç§»';

  @override
  String get metric_bad_35_description =>
      'è¯†åˆ«é€šè¿‡æå‡ºæ— å…³é—®é¢˜æˆ–åæŒ‡è´£æ¥è½¬ç§»å¯¹ä¼´ä¾£å…³åˆ‡çš„æ³¨æ„åŠ›çš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_36_name => 'ä¼˜è¶Šæ€§è¯­è¨€';

  @override
  String get metric_bad_36_description =>
      'æ ‡è®°ä¼˜è¶Šæ€§è¯­è¨€ã€å±…é«˜ä¸´ä¸‹æ€åº¦æˆ–å°†ä¼´ä¾£è§†ä¸ºä½Žäººä¸€ç­‰çš„è¡¨è¿°ã€‚';

  @override
  String get metric_bad_37_name => 'å†²çªé€€å‡ºæ¨¡å¼';

  @override
  String get metric_bad_37_description =>
      'æ£€æµ‹åœ¨å†²çªä¸­ç¦»å¼€å¯¹è¯ã€æ‹’ç»å‚ä¸Žæˆ–åˆ¶é€ è·ç¦»çš„æ¨¡å¼ã€‚';

  @override
  String get metric_bad_38_name => 'è´Ÿé¢åè§';

  @override
  String get metric_bad_38_description =>
      'è¿½è¸ªæŒç»­å°†ä¸­æ€§æˆ–ç§¯æžè¡Œä¸ºè§£è¯»ä¸ºè´Ÿé¢æˆ–å¯ç–‘çš„å€¾å‘ã€‚';

  @override
  String get metric_bad_39_name => 'èƒ½åŠ¨æ€§å¦è®¤';

  @override
  String get metric_bad_39_description =>
      'è¯†åˆ«â€œæˆ‘å¿…é¡»â€ã€â€œä½ è®©æˆ‘â€ç­‰å‰¥å¤ºè¯´è¯è€…ä¸ªäººèƒ½åŠ¨æ€§çš„è¯­è¨€ã€‚';

  @override
  String get metric_bad_40_name => 'æ²‰é»˜æŽ§åˆ¶';

  @override
  String get metric_bad_40_description =>
      'æ ‡è®°ä»¥æ²‰é»˜æˆ–ä¸å›žåº”ä½œä¸ºæƒ©ç½šæˆ–æŽ§åˆ¶æ‰‹æ®µçš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_41_name => 'éšç§åŒæ ‡';

  @override
  String get metric_bad_41_description =>
      'æ£€æµ‹æ‹’ç»åˆ†äº«ä¿¡æ¯å´è¦æ±‚ä¼´ä¾£å®Œå…¨é€æ˜Žçš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_42_name => 'æœªç»è¯·æ±‚çš„ä¸¥åŽ‰åé¦ˆ';

  @override
  String get metric_bad_42_description =>
      'è¯†åˆ«æœªç»åŒæ„ä»¥â€œå»ºè®¾æ€§â€æˆ–â€œå¸®åŠ©â€ä¸ºåæå‡ºçš„ä¸¥åŽ‰åé¦ˆã€‚';

  @override
  String get metric_bad_43_name => 'æœ‰æ¡ä»¶å…³æ€€';

  @override
  String get metric_bad_43_description =>
      'æ ‡è®°ä»…åœ¨ä¼´ä¾£ç¬¦åˆè¯´è¯è€…æœŸæœ›æ—¶æ‰æä¾›çš„æ”¯æŒã€‚';

  @override
  String get metric_bad_44_name => 'å½±å“å¦è®¤';

  @override
  String get metric_bad_44_description =>
      'æ£€æµ‹åœ¨é€ æˆä¼¤å®³åŽè¯´â€œæˆ‘ä¸æ˜¯é‚£ä¸ªæ„æ€â€æˆ–â€œä½ æƒ³å¤ªå¤šäº†â€çš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_45_name => 'å€ºåŠ¡å¿ƒæ€';

  @override
  String get metric_bad_45_description =>
      'è¿½è¸ªæåŠè¿‡åŽ»çš„å¸®åŠ©æˆ–æ”¯æŒä»¥åˆ¶é€ äºæ¬ æ„Ÿï¼Œä»Žè€ŒæŽ§åˆ¶å½“å‰è¡Œä¸ºã€‚';

  @override
  String get metric_bad_46_name => 'é€ƒé¿è´£ä»»';

  @override
  String get metric_bad_46_description =>
      'æ ‡è®°ä¸€è´¯ä¸ä¸ºè¡Œä¸ºåŽæžœæ‰¿æ‹…è´£ä»»çš„è¡Œä¸ºæ¨¡å¼ã€‚';

  @override
  String get metric_bad_47_name => 'éœ€æ±‚å¦å®š';

  @override
  String get metric_bad_47_description =>
      'è¯†åˆ«å°†ä¼´ä¾£çš„éœ€æ±‚è§†ä¸ºä¸ä¾¿ã€ä¸åˆç†æˆ–ä¸é‡è¦çš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_48_name => 'æƒ…ç»ªæ“æŽ§';

  @override
  String get metric_bad_48_description =>
      'æ ‡è®°åˆ©ç”¨æƒ…ç»ªç­–ç•¥æ€§åœ°æŽ§åˆ¶ç»“æžœæˆ–é€ƒé¿è´£ä»»çš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_49_name => 'äº²å¯†å›žé¿';

  @override
  String get metric_bad_49_description =>
      'è¿½è¸ªæ— è§£é‡Šåœ°æŒç»­å›žé¿æƒ…æ„Ÿæˆ–èº«ä½“äº²å¯†çš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_50_name => 'éšæ€§æ‰¹è¯„';

  @override
  String get metric_bad_50_description =>
      'è¯†åˆ«ä¼ªè£…æˆçŽ©ç¬‘ã€è§‚å¯Ÿæˆ–éšæ„è¯„è®ºçš„æ‰¹è¯„ã€‚';

  @override
  String get metric_bad_51_name => 'è½»è§†æ‹…å¿§';

  @override
  String get metric_bad_51_description =>
      'æ ‡è®°å°†ä¼´ä¾£çš„æ‹…å¿§è´¬ä½Žä¸ºæ— å…³ç´§è¦æˆ–å¤¸å¤§å…¶è¯çš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_52_name => 'å†…ç–šæ–½åŽ‹';

  @override
  String get metric_bad_52_description =>
      'è¯†åˆ«åˆ©ç”¨å†…ç–šæˆ–ç¾žè€»è¿«ä½¿ä¼´ä¾£æœä»ŽæœŸæœ›çš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_53_name => 'æŠ—æ‹’é“æ­‰';

  @override
  String get metric_bad_53_description =>
      'è¿½è¸ªæ‹’ç»é“æ­‰ã€åˆç†åŒ–ä¼¤å®³æˆ–å¦è®¤è¡Œä¸ºå½±å“çš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_54_name => 'è§‚ç‚¹æŽ’æ–¥';

  @override
  String get metric_bad_54_description =>
      'æ ‡è®°æ‹’ç»è€ƒè™‘æˆ–è®¤å¯ä¼´ä¾£è§‚ç‚¹æˆ–ç»åŽ†çš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_55_name => 'æƒ…æ„Ÿé…ç»™';

  @override
  String get metric_bad_55_description =>
      'æ£€æµ‹æ•…æ„é™åˆ¶æƒ…æ„Ÿè¡¨è¾¾æˆ–è”ç³»ä»¥ä½œä¸ºæŽ§åˆ¶æ‰‹æ®µçš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_56_name => 'ä¹‰åŠ¡æ“çºµ';

  @override
  String get metric_bad_56_description =>
      'æ ‡è®°åˆ©ç”¨è¿‡åŽ»çš„æ”¯æŒæˆ–ç‰ºç‰²æ¥æ“çºµå½“å‰å†³ç­–çš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_57_name => 'æŠ—æ‹’æˆé•¿';

  @override
  String get metric_bad_57_description =>
      'è¿½è¸ªåœ¨ä»–äººè¯·æ±‚æˆ–å·²è¯æ˜Žå½±å“ä¸‹ä»æ‹’ç»æ”¹å˜æœ‰å®³è¡Œä¸ºçš„æƒ…å†µã€‚';

  @override
  String get metric_bad_58_name => 'ä¼¤å®³å¦è®¤';

  @override
  String get metric_bad_58_description =>
      'æ£€æµ‹æ‹’ç»æ‰¿è®¤æˆ–è®¤çœŸå¯¹å¾…è‡ªèº«è¡Œä¸ºå½±å“çš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_59_name => 'è¯±å¯¼æ€§é—®é¢˜';

  @override
  String get metric_bad_59_description =>
      'æ ‡è®°ä¼ªè£…æˆæ— è¾œé—®é¢˜æˆ–å¥½å¥‡è¡¨è¾¾çš„æ‰¹è¯„æ„å›¾ã€‚';

  @override
  String get metric_bad_60_name => 'è½»è”‘è¯­æ°”';

  @override
  String get metric_bad_60_description =>
      'è¯†åˆ«é€šè¿‡æ–‡æœ¬æ¨¡å¼å’ŒæŽªè¾žè¡¨è¾¾çš„è½»è”‘æ€åº¦æˆ–é„™è§†ã€‚';

  @override
  String get metric_bad_61_name => 'å†…ç–šå¾ªçŽ¯';

  @override
  String get metric_bad_61_description =>
      'æ£€æµ‹åå¤åˆ©ç”¨è¿‡åŽ»æ”¯æŒæˆ–ç‰ºç‰²çš„å†…ç–šæ„Ÿæ¥æŽ§åˆ¶å½“å‰è¡Œä¸ºã€‚';

  @override
  String get metric_bad_62_name => 'æƒ…æ„Ÿé˜²å¤‡';

  @override
  String get metric_bad_62_description =>
      'è¿½è¸ªæ‹’ç»ä¸Žä¼´ä¾£åˆ†äº«æƒ…æ„Ÿã€ææƒ§æˆ–éœ€æ±‚ä½œä¸ºä¿æŠ¤æ€§ä¿ç•™çš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_63_name => 'ç•Œé™åå•†';

  @override
  String get metric_bad_63_description =>
      'æ ‡è®°å°†æ˜Žç¡®ç•Œé™è§†ä¸ºå»ºè®®æˆ–å¯åå•†è€Œéžåšå®šæ‰¿è¯ºçš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_64_name => 'æƒ…æ„Ÿç¼ºå¸­';

  @override
  String get metric_bad_64_description =>
      'æ£€æµ‹æŒç»­æ‹’ç»æä¾›æƒ…æ„Ÿæ”¯æŒæˆ–ç§¯æžå‚ä¸Žçš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_65_name => 'æ©æƒ è®°è´¦';

  @override
  String get metric_bad_65_description =>
      'æ ‡è®°å¯¹æ©æƒ ã€æ”¯æŒæˆ–ç‰ºç‰²è¿›è¡Œå¿ƒç†è®°è´¦ä»¥å¤‡æ—¥åŽåˆ©ç”¨çš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_66_name => 'å›žé¿è¯šå®ž';

  @override
  String get metric_bad_66_description =>
      'æ£€æµ‹éšçž’çœŸç›¸ã€çœç•¥äº‹å®žæˆ–æ•…æ„å«ç³Šå…¶è¾žçš„æ¨¡å¼ã€‚';

  @override
  String get metric_bad_67_name => 'å¦å®šæœ‰æ•ˆæ€§';

  @override
  String get metric_bad_67_description =>
      'è¯†åˆ«å°†ä¼´ä¾£çš„æ„Ÿå—ã€éœ€æ±‚æˆ–æ‹…å¿§è§†ä¸ºæ— æ•ˆæˆ–ä¸åˆç†çš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_68_name => 'å»ºè®®å¼æ‰¹è¯„';

  @override
  String get metric_bad_68_description =>
      'æ ‡è®°ä»¥å…³å¿ƒã€å»ºè®®æˆ–æœ‰ç›Šè§‚å¯Ÿä¸ºä¼ªè£…çš„æ‰¹è¯„ã€‚';

  @override
  String get metric_bad_69_name => 'ä¼˜è¶Šæ„ŸæŒ‡æ ‡';

  @override
  String get metric_bad_69_description =>
      'æ£€æµ‹è¯­è¨€æˆ–æ²Ÿé€šé£Žæ ¼ä¸­çš„ä¼˜è¶Šæ„Ÿã€å˜²è®½æˆ–è½»è”‘ã€‚';

  @override
  String get metric_bad_70_name => 'ä¿®å¤æŠ—æ‹’';

  @override
  String get metric_bad_70_description =>
      'è¿½è¸ªå†²çªåŽæ‹’ç»å¼¥è¡¥ã€é‡å»ºè”ç³»æˆ–ä¿®å¤å…³ç³»çš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_71_name => 'åŠªåŠ›å¦å®š';

  @override
  String get metric_bad_71_description =>
      'æ ‡è®°è½»è§†æˆ–å¿½è§†ä¼´ä¾£æ”¹å–„æˆ–è§£å†³é—®é¢˜çš„åŠªåŠ›ã€‚';

  @override
  String get metric_bad_72_name => 'æƒ…æ„Ÿç–è¿œæ¨¡å¼';

  @override
  String get metric_bad_72_description =>
      'æ£€æµ‹é•¿æœŸçš„æƒ…æ„Ÿç–è¿œæˆ–æ‹’ç»çœŸè¯šæŠ•å…¥çš„æ¨¡å¼ã€‚';

  @override
  String get metric_bad_73_name => 'ä½Žäººä¸€ç­‰æ¡†æž¶';

  @override
  String get metric_bad_73_description =>
      'å°†ä¼´ä¾£è§†ä¸ºä½Žäººä¸€ç­‰ã€æœ‰ç¼ºé™·æˆ–ä¸å€¼å¾—å®Œå…¨å°Šé‡ã€‚';

  @override
  String get metric_bad_74_name => 'åé¦ˆæŠµè§¦';

  @override
  String get metric_bad_74_description =>
      'æ£€æµ‹å¯¹æŽ¥å—æ‰¹è¯„çš„æŠµè§¦ã€æ‹’ç»å€¾å¬æˆ–ç»ˆæ­¢è®¨è®ºçš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_75_name => 'æ‹…å¿§å¦å®š';

  @override
  String get metric_bad_75_description =>
      'è¯†åˆ«å°†ä¼´ä¾£çš„æ‹…å¿§æˆ–ææƒ§è§†ä¸ºæ— æ ¹æ®æˆ–ä¸ç†æ€§çš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_76_name => 'å¹æ¯›æ±‚ç–µ';

  @override
  String get metric_bad_76_description =>
      'æ ‡è®°é•¿æœŸæŒ‘å‰”ã€æŠ±æ€¨æˆ–æ”»å‡»ä¼´ä¾£æ€§æ ¼çš„æ¨¡å¼ã€‚';

  @override
  String get metric_bad_77_name => 'ç‰ºç‰²å†…ç–šå¾ªçŽ¯';

  @override
  String get metric_bad_77_description =>
      'è¯†åˆ«åå¤æåŠè¿‡åŽ»çš„ä»˜å‡ºä»¥åˆ¶é€ å†…ç–šæˆ–æŽ§åˆ¶è¡Œä¸ºã€‚';

  @override
  String get metric_bad_78_name => 'æ‰¿è¯ºæ¨¡ç³Š';

  @override
  String get metric_bad_78_description =>
      'è¿½è¸ªæ¨¡ç³Šæˆ–æ‘‡æ‘†çš„æ‰¿è¯ºè¯­è¨€ã€çŸ›ç›¾ä¿¡å·æˆ–ä¸æ„¿æ‰¿è¯ºçš„è¡¨çŽ°ã€‚';

  @override
  String get metric_bad_79_name => 'è¯·æ±‚å¿½è§†';

  @override
  String get metric_bad_79_description =>
      'æ ‡è®°å¿½è§†ã€æ‹’ç»æˆ–å»¶è¿Ÿå›žåº”ä¼´ä¾£åˆç†è¯·æ±‚çš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_80_name => 'æƒ…ç»ªæŽ§åˆ¶ç­–ç•¥';

  @override
  String get metric_bad_80_description =>
      'æ£€æµ‹åˆ©ç”¨æƒ…ç»ªæŽ§åˆ¶ç»“æžœæˆ–é€ƒé¿è´£ä»»çš„ç­–ç•¥ã€‚';

  @override
  String get metric_bad_81_name => 'äº¤æ¢å¿ƒæ€';

  @override
  String get metric_bad_81_description =>
      'æ ‡è®°ä»¥å€ºåŠ¡ã€ä¹‰åŠ¡æˆ–äº¤æ˜“äº¤æ¢çš„è§†è§’çœ‹å¾…å…³ç³»ã€‚';

  @override
  String get metric_bad_82_name => 'ä¸ªäººå‘å±•æŠ—æ‹’';

  @override
  String get metric_bad_82_description =>
      'æ£€æµ‹å¯¹ä¸ªäººå‘å±•ã€å­¦ä¹ æˆ–æ”¹å˜æœ‰å®³æ¨¡å¼çš„æŠ—æ‹’ã€‚';

  @override
  String get metric_bad_83_name => 'æ”¹è¿›æ‹’ç»';

  @override
  String get metric_bad_83_description =>
      'è¯†åˆ«è½»è§†æˆ–æ‹’ç»ä¼´ä¾£æ”¹è¿›æˆ–è§£å†³é—®é¢˜çš„åŠªåŠ›ã€‚';

  @override
  String get metric_bad_84_name => 'é•¿æœŸæ‰¹è¯„';

  @override
  String get metric_bad_84_description =>
      'æ ‡è®°ä»¥å…³å¿ƒã€å¸®åŠ©æˆ–å…³çˆ±è¯­è¨€åŒ…è£…çš„é•¿æœŸæ‰¹è¯„æ¨¡å¼ã€‚';

  @override
  String get metric_bad_85_name => 'è§£å†³æ–¹æ¡ˆå›žé¿';

  @override
  String get metric_bad_85_description =>
      'æ£€æµ‹æŒç»­å›žé¿ç»“æŸã€å‰è¿›æˆ–å¯»æ‰¾å¯è¡Œè§£å†³æ–¹æ¡ˆçš„æ¨¡å¼ã€‚';

  @override
  String get metric_bad_86_name => 'è´£ä»»è½¬ç§»æ¨¡å¼';

  @override
  String get metric_bad_86_description =>
      'æ ‡è®°ä¹ æƒ¯æ€§å°†è´£ä»»è½¬å«ç»™å¤–éƒ¨å› ç´ æˆ–ä¼´ä¾£çš„æ¨¡å¼ã€‚';

  @override
  String get metric_bad_87_name => 'é©³å›žå¼å›žåº”';

  @override
  String get metric_bad_87_description =>
      'è¯†åˆ«ä¸åŠ è€ƒè™‘åœ°é©³å›žä¼´ä¾£æ„è§ã€æƒ³æ³•æˆ–å»ºè®®çš„æ¨¡å¼ã€‚';

  @override
  String get metric_bad_88_name => 'æ€¨æ¨è¡¨è¾¾';

  @override
  String get metric_bad_88_description =>
      'æ£€æµ‹æ²Ÿé€šä¸­çš„æ€¨æ¨ã€è‹¦æ¶©æˆ–é•¿æœŸç§¯æ€¨çš„è¯­æ°”ã€‚';

  @override
  String get metric_bad_89_name => 'çŸ›ç›¾ä¿¡æ¯';

  @override
  String get metric_bad_89_description =>
      'æ ‡è®°å…³äºŽæ‰¿è¯ºçš„çŸ›ç›¾ä¿¡æ¯ã€ä¸æ˜Žç¡®çš„ç»§ç»­æ„æ„¿æˆ–æŽ¨æ‹‰åŠ¨æ€ã€‚';

  @override
  String get metric_bad_90_name => 'æœŸæœ›è½¬ç§»';

  @override
  String get metric_bad_90_description =>
      'è¯†åˆ«åœ¨æœªæ²Ÿé€šçš„æƒ…å†µä¸‹æ”¹å˜æœŸæœ›ï¼Œç„¶åŽå› ä¼´ä¾£æœªè¾¾åˆ°æœŸæœ›è€ŒæŒ‡è´£ã€‚';

  @override
  String get metric_bad_91_name => 'å›žé¿ä¹ æƒ¯';

  @override
  String get metric_bad_91_description =>
      'æ£€æµ‹ä¹ æƒ¯æ€§å›žé¿ç›´æŽ¥å›žç­”æˆ–å°†å¯¹è¯ä»Žè´£ä»»æ‰¿æ‹…ä¸Šè½¬ç§»å¼€çš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_92_name => 'å–„æ„æ“æŽ§';

  @override
  String get metric_bad_92_description =>
      'æ ‡è®°ä¸ºåˆ¶é€ ä¹‰åŠ¡æˆ–é™ä½Žé˜²å¾¡è€Œç­–ç•¥æ€§ä½¿ç”¨çš„è¿‡åº¦æ…·æ…¨ã€‚';

  @override
  String get metric_bad_93_name => 'é•¿æœŸè¿Ÿåˆ°æ¨¡å¼';

  @override
  String get metric_bad_93_description =>
      'è¯†åˆ«å› è¿Ÿåˆ°æˆ–è¿èƒŒæ—¥ç¨‹æ‰¿è¯ºè€ŒæŒç»­å¿½è§†ä¼´ä¾£æ—¶é—´çš„è¡Œä¸ºã€‚';

  @override
  String get metric_bad_94_name => 'è¿›æ­¥è´¬ä½Ž';

  @override
  String get metric_bad_94_description =>
      'è¿½è¸ªå¯¹ä¼´ä¾£çœŸå®žä¸ªäººæˆé•¿æˆ–æ”¹è¿›çš„å¿½è§†æˆ–ä¸äºˆè®¤å¯ã€‚';

  @override
  String get metric_bad_95_name => 'æƒ…æ„Ÿæ­¦å™¨åŒ–';

  @override
  String get metric_bad_95_description =>
      'æ£€æµ‹åœ¨å†²çªä¸­åˆ©ç”¨ä¼´ä¾£é€éœ²çš„è„†å¼±ç‚¹æˆ–ææƒ§æ¥æ”»å‡»å¯¹æ–¹ã€‚';

  @override
  String get metric_bad_96_name => 'ç±»ç…¤æ°”ç¯ç­–ç•¥';

  @override
  String get metric_bad_96_description =>
      'è¯†åˆ«åˆ¶é€ è‡ªæˆ‘æ€€ç–‘ä½†ä¸å®Œå…¨æž„æˆç…¤æ°”ç¯æ•ˆåº”çš„å¾®å¦™æ‰­æ›²çŽ°å®žç­–ç•¥ã€‚';

  @override
  String get metric_bad_97_name => 'è¢«åŠ¨å†·å¤„ç†';

  @override
  String get metric_bad_97_description =>
      'æ ‡è®°å¾®å¦™çš„è„±ç¦»ã€å•å­—å›žåº”æˆ–å¿ƒä¸åœ¨ç„‰çš„å­˜åœ¨ä½œä¸ºå›žé¿è¡Œä¸ºã€‚';

  @override
  String get metric_bad_98_name => 'å™äº‹æŽ§åˆ¶';

  @override
  String get metric_bad_98_description =>
      'æ£€æµ‹åšæŒä½œä¸ºäº‹ä»¶ç»è¿‡ã€æ„Ÿå—æˆ–æ„å›¾çš„å”¯ä¸€æƒå¨ã€‚';

  @override
  String get metric_bad_99_name => 'è´£ä»»è½¬ç§»';

  @override
  String get metric_bad_99_description =>
      'è¿½è¸ªæŒç»­å°†è´£ä»»è½¬å«ç»™å¤–éƒ¨å› ç´ ã€ç¬¬ä¸‰æ–¹æˆ–ä¼´ä¾£è¡Œä¸ºã€‚';

  @override
  String get metric_bad_100_name => 'æƒ…æ„Ÿä¸å¯å¾—';

  @override
  String get metric_bad_100_description =>
      'æ ‡è®°åœ¨ä¼´ä¾£éœ€è¦äº²å¯†æ—¶ï¼Œé•¿æœŸå›žé¿æƒ…æ„Ÿäº²å¯†ã€è„†å¼±æˆ–æœ‰æ„ä¹‰è¿žæŽ¥çš„è¡Œä¸ºã€‚';

  @override
  String get metric_ugly_1_name => 'èº«ä½“æš´åŠ›å¨èƒ';

  @override
  String get metric_ugly_1_description =>
      'æ£€æµ‹åˆ°å¯¹ä¼´ä¾£çš„æ˜Žç¡®æˆ–éšæ™¦çš„æ®´æ‰“ã€ä¼¤å®³æˆ–äººèº«æ”»å‡»å¨èƒã€‚';

  @override
  String get metric_ugly_2_name => 'æ­¦å™¨æŒæœ‰æåŠ';

  @override
  String get metric_ugly_2_description =>
      'æ ‡è®°åœ¨æ„¤æ€’ã€æŽ§åˆ¶æˆ–ä¼¤å®³èƒ½åŠ›èƒŒæ™¯ä¸‹æåŠæžªæ”¯ã€åˆ€å…·æˆ–æ­¦å™¨çš„å†…å®¹ã€‚';

  @override
  String get metric_ugly_3_name => 'æ‰¼æ€æŒ‡æ ‡';

  @override
  String get metric_ugly_3_description =>
      'è¯†åˆ«æ¶‰åŠæ‰¼é¢ˆã€æŠ“å–‰ã€çª’æ¯æˆ–çª’æ¯ç›¸å…³è¯­è¨€æˆ–æåŠã€‚';

  @override
  String get metric_ugly_4_name => 'è‡ªæ€å¨èƒæ­¦å™¨åŒ–';

  @override
  String get metric_ugly_4_description =>
      'æ£€æµ‹åˆ©ç”¨è‡ªæ®‹å¨èƒæ¥æŽ§åˆ¶ã€æ“çºµæˆ–æƒ©ç½šä¼´ä¾£ã€‚';

  @override
  String get metric_ugly_5_name => 'æ€äººæ„å¿µè¯­è¨€';

  @override
  String get metric_ugly_5_description =>
      'æ ‡è®°è¡¨è¾¾æ„å›¾ã€è®¡åˆ’æˆ–æ¸´æœ›æ€å®³ä¼´ä¾£çš„é™ˆè¿°ã€‚';

  @override
  String get metric_ugly_6_name => 'è‡´å‘½é£Žé™©æ¨¡å¼';

  @override
  String get metric_ugly_6_description =>
      'è¯†åˆ«é«˜è‡´å‘½æ€§é¢„è­¦ä¿¡å·ï¼šæ­¦å™¨èŽ·å–ã€æ‰§å¿µã€å‡çº§å’Œåˆ†ç¦»å¨èƒçš„ç»„åˆã€‚';

  @override
  String get metric_ugly_7_name => 'è·Ÿè¸ªç—´è¿·è¯­è¨€';

  @override
  String get metric_ugly_7_description =>
      'æ£€æµ‹å¼ºè¿«æ€§ä½ç½®ç›‘æŽ§ã€è·Ÿè¸ªã€çªç„¶é€ è®¿æˆ–æŒç»­ä¸å—æ¬¢è¿Žçš„è¿½æ±‚ã€‚';

  @override
  String get metric_ugly_8_name => 'å¼ºåˆ¶éš”ç¦»æ‰§è¡Œ';

  @override
  String get metric_ugly_8_description =>
      'æ ‡è®°è¦æ±‚åˆ‡æ–­æ‰€æœ‰å®¶äººã€æœ‹å‹ã€å·¥ä½œæˆ–å¤–ç•Œè”ç³»çš„æ¿€è¿›è¦æ±‚ã€‚';

  @override
  String get metric_ugly_9_name => 'ç»æµŽç ´å';

  @override
  String get metric_ugly_9_description =>
      'è¯†åˆ«è“„æ„ç ´åå°±ä¸šã€ä¿¡ç”¨ã€è´¢åŠ¡æˆ–ç»æµŽç¨³å®šçš„è¡Œä¸ºã€‚';

  @override
  String get metric_ugly_10_name => 'ç”Ÿæ®–èƒè¿«';

  @override
  String get metric_ugly_10_description =>
      'æ£€æµ‹å¼ºè¿«æ€€å­•ã€å •èƒŽåŽ‹åŠ›ã€é¿å­•å¹²æ‰°æˆ–ç”Ÿæ®–æŽ§åˆ¶ã€‚';

  @override
  String get metric_ugly_11_name => 'æ€§èƒè¿«åŽ‹åŠ›';

  @override
  String get metric_ugly_11_description =>
      'æ ‡è®°å¼ºè¿«æ€§è¡Œä¸ºã€èƒè¿«æ€§è¡Œä¸ºã€æ‹’ç»åŽæ–½åŽ‹æˆ–æ€§æƒ©ç½šè¯­è¨€ã€‚';

  @override
  String get metric_ugly_12_name => 'éžè‡ªæ„¿æ€§è¯­è¨€';

  @override
  String get metric_ugly_12_description =>
      'è¯†åˆ«æ˜Žç¡®æˆ–æš—ç¤ºçš„éžè‡ªæ„¿æ€§ä¾µçŠ¯å¨èƒæˆ–æè¿°ã€‚';

  @override
  String get metric_ugly_13_name => 'å„¿ç«¥ä¼¤å®³å¨èƒ';

  @override
  String get metric_ugly_13_description =>
      'æ£€æµ‹ä»¥ä¼¤å®³ã€å¿½è§†æˆ–è™å¾…å„¿ç«¥ä½œä¸ºå¯¹ä¼´ä¾£çš„æ–½åŽ‹æˆ–æƒ©ç½šçš„å¨èƒã€‚';

  @override
  String get metric_ugly_14_name => 'å„¿ç«¥ç›‘æŠ¤æƒæ­¦å™¨åŒ–';

  @override
  String get metric_ugly_14_description =>
      'æ ‡è®°ä»¥å¸¦èµ°å­©å­ã€æ‹’ç»æŽ¢è§†æˆ–åˆ©ç”¨ç›‘æŠ¤æƒä½œä¸ºæŽ§åˆ¶æ‰‹æ®µçš„å¨èƒã€‚';

  @override
  String get metric_ugly_15_name => 'å® ç‰©ä¼¤å®³å¨èƒ';

  @override
  String get metric_ugly_15_description =>
      'è¯†åˆ«ä»¥ä¼¤å®³ã€æ€å®³æˆ–è™å¾…å® ç‰©ä½œä¸ºæƒ©ç½šæˆ–å±•ç¤ºæŽ§åˆ¶çš„å¨èƒã€‚';

  @override
  String get metric_ugly_16_name => 'ç¡çœ å‰¥å¤ºç­–ç•¥';

  @override
  String get metric_ugly_16_description =>
      'æ ‡è®°æ•…æ„é˜»æ­¢ç¡çœ ã€æŒç»­å¹²æ‰°æˆ–è€—å°½ç²¾åŠ›ä½œä¸ºæŽ§åˆ¶æ‰‹æ®µã€‚';

  @override
  String get metric_ugly_17_name => 'é™åˆ¶è‡ªç”±è¯­è¨€';

  @override
  String get metric_ugly_17_description =>
      'æ ‡è®°å°†ä¼´ä¾£é”åœ¨å®¤å†…ã€é˜»æ­¢ç¦»å¼€æˆ–é™åˆ¶å…¶æ´»åŠ¨èŒƒå›´çš„è¯­è¨€ã€‚';

  @override
  String get metric_ugly_18_name => 'æŽ å¤ºæ€§è¯±å¯¼è¯­è¨€';

  @override
  String get metric_ugly_18_description =>
      'æ ‡è®°ç³»ç»Ÿæ€§çš„æ“çºµè¡Œä¸ºï¼Œæ—¨åœ¨é™ä½Žé˜²å¾¡ã€å»ºç«‹è™šå‡ä¿¡ä»»ï¼Œç„¶åŽåˆ©ç”¨ä¼´ä¾£ã€‚';

  @override
  String get metric_ugly_19_name => 'éžäººåŒ–è¯­è¨€';

  @override
  String get metric_ugly_19_description =>
      'æ£€æµ‹åˆ°å°†ä¼´ä¾£æè¿°ä¸ºåŠ¨ç‰©ã€ç‰©ä½“ã€éžäººç±»æˆ–ä¸é…äº«æœ‰åŸºæœ¬æƒåˆ©çš„è¯­è¨€ã€‚';

  @override
  String get metric_ugly_20_name => 'è‡ªæ‹æš´æ€’å‡çº§';

  @override
  String get metric_ugly_20_description =>
      'æ£€æµ‹åˆ°å› æ„ŸçŸ¥åˆ°çš„è½»è§†ã€æ‰¹è¯„æˆ–ä»»ä½•å¤±æŽ§è€Œå¼•å‘çš„çˆ†ç‚¸æ€§æ„¤æ€’ã€‚';

  @override
  String get metric_ugly_21_name => 'å¼ºè¿«æ€§å æœ‰ä¸»å¼ ';

  @override
  String get metric_ugly_21_description =>
      'æ ‡è®°å£°ç§°å¯¹ä¼´ä¾£æ‹¥æœ‰æ‰€æœ‰æƒã€è´¢äº§æƒæˆ–å®Œå…¨æŽ§åˆ¶æƒçš„è¯­è¨€ã€‚';

  @override
  String get metric_ugly_22_name => 'ç—…æ€è¯´è°Žæ¨¡å¼';

  @override
  String get metric_ugly_22_description =>
      'è¯†åˆ«å…³äºŽä¸¥é‡äº‹é¡¹çš„æŒç»­ã€è¯¦å°½æˆ–æ— å¿…è¦çš„è°Žè¨€ï¼Œä¸”æ— æ˜Žæ˜¾ç†ç”±ã€‚';

  @override
  String get metric_ugly_23_name => 'å¤ä»‡å¹»æƒ³è¯­è¨€';

  @override
  String get metric_ugly_23_description =>
      'è¯†åˆ«å…³äºŽä¼¤å®³ã€ç¾žè¾±æˆ–æ‘§æ¯ä¼´ä¾£çš„è¯¦ç»†å¹»æƒ³ã€‚';

  @override
  String get metric_ugly_24_name => 'èƒŒå›æ‰§å¿µå›ºç€';

  @override
  String get metric_ugly_24_description =>
      'æ£€æµ‹åˆ°é’ˆå¯¹æ„ŸçŸ¥ä¸å¿ çš„å¼ºè¿«æ€§æ²‰æ€ã€æŒ‡è´£å’Œæƒ©ç½šã€‚';

  @override
  String get metric_ugly_25_name => 'é—å¼ƒææ…Œæ”»å‡»';

  @override
  String get metric_ugly_25_description =>
      'æ ‡è®°å¯¹æ„ŸçŸ¥åˆ°çš„é—å¼ƒæˆ–ä»»ä½•åˆ†ç¦»å°è¯•çš„æš´åŠ›æˆ–æ”»å‡»æ€§ååº”ã€‚';

  @override
  String get metric_ugly_26_name => 'åˆ†ç¦»å¨èƒå‡çº§';

  @override
  String get metric_ugly_26_description =>
      'è¯†åˆ«å› åˆ†æ‰‹æˆ–åˆ†ç¦»å°è¯•å¼•å‘çš„æžç«¯å¨èƒæˆ–å±é™©è¡Œä¸ºã€‚';

  @override
  String get metric_ugly_27_name => 'åˆ†ç¦»åŽéªšæ‰°å¨èƒ';

  @override
  String get metric_ugly_27_description =>
      'æ ‡è®°å…³ç³»ç»“æŸåŽå…³äºŽè·Ÿè¸ªã€ä¼¤å®³æˆ–å¼ºè¿«æŽ¥è§¦çš„å¨èƒã€‚';

  @override
  String get metric_ugly_28_name => 'ç›‘æŠ¤ç»‘æž¶å¨èƒ';

  @override
  String get metric_ugly_28_description =>
      'è¯†åˆ«å¨èƒå¸¦èµ°å­©å­å¹¶æ°¸ä¹…éšè—æˆ–é€ƒç¦»å¦ä¸€æ–¹çš„è¡Œä¸ºã€‚';

  @override
  String get metric_ugly_29_name => 'çˆ¶æ¯ç–ç¦»è®®ç¨‹';

  @override
  String get metric_ugly_29_description =>
      'æ ‡è®°é€šè¿‡æ“çºµæ‰‹æ®µç³»ç»Ÿæ€§åœ°æŒ‘æ‹¨å­©å­ä¸Žå¦ä¸€æ–¹çˆ¶æ¯å…³ç³»çš„ä¼å›¾ã€‚';

  @override
  String get metric_ugly_30_name => 'å„¿ç«¥è§è¯æ¼ è§†';

  @override
  String get metric_ugly_30_description =>
      'è¯†åˆ«å¯¹å­©å­ç›®ç¹è™å¾…ã€å†²çªæˆ–æƒ…æ„Ÿä¼¤å®³çš„æ¼ è§†è¡Œä¸ºã€‚';

  @override
  String get metric_ugly_31_name => 'äººå£è´©å–è¯­è¨€';

  @override
  String get metric_ugly_31_description =>
      'è¯†åˆ«æš—ç¤ºè´©å–ã€äº¤æ˜“æˆ–æ€§å‰¥å‰Šä¼´ä¾£çš„è¯­è¨€ã€‚';

  @override
  String get metric_ugly_32_name => 'å¥´å½¹è¯­è¨€';

  @override
  String get metric_ugly_32_description =>
      'è¯†åˆ«å°†ä¼´ä¾£è§†ä¸ºè´¢äº§ã€å¥´éš¶æˆ–æ— æƒåˆ©å®Œå…¨å æœ‰è€…çš„è¯­è¨€ã€‚';

  @override
  String get metric_ugly_33_name => 'å€ºåŠ¡å¥´å½¹å¨èƒ';

  @override
  String get metric_ugly_33_description =>
      'æ£€æµ‹é€šè¿‡åˆ¶é€ å€ºåŠ¡æˆ–è´¢åŠ¡ä¹‰åŠ¡æ¥å›°ä½ä¼´ä¾£çš„å¨èƒã€‚';

  @override
  String get metric_ugly_34_name => 'å¼ºè¿«åŠ³åŠ¨è¦æ±‚';

  @override
  String get metric_ugly_34_description =>
      'æ ‡è®°åœ¨ä¼¤å®³æˆ–æƒ©ç½šå¨èƒä¸‹è¦æ±‚æ— å¿åŠ³åŠ¨ã€å¥´å½¹æˆ–å·¥ä½œçš„è¡Œä¸ºã€‚';

  @override
  String get metric_ugly_35_name => 'å‰¥å‰Šæ­£å¸¸åŒ–';

  @override
  String get metric_ugly_35_description =>
      'è¯†åˆ«å°†ä¸¥é‡å‰¥å‰Šæè¿°ä¸ºæ­£å¸¸ã€åº”å¾—ã€è‡ªæ„¿ç”šè‡³æœ‰ç›Šçš„è¡Œä¸ºã€‚';

  @override
  String get metric_ugly_36_name => 'è„†å¼±æ€§é’ˆå¯¹';

  @override
  String get metric_ugly_36_description =>
      'è¯†åˆ«æ•…æ„é’ˆå¯¹å­¤ç«‹ã€ç»æµŽä¾èµ–æˆ–å¿ƒç†è„†å¼±ä¸ªä½“çš„è¡Œä¸ºã€‚';

  @override
  String get metric_ugly_37_name => 'åˆ›ä¼¤çº½å¸¦å·¥ç¨‹';

  @override
  String get metric_ugly_37_description =>
      'æ£€æµ‹åˆ»æ„åˆ¶é€ ææƒ§-ç¼“è§£å¾ªçŽ¯ï¼Œæ—¨åœ¨å»ºç«‹æ·±å±‚æƒ…æ„Ÿä¾èµ–ã€‚';

  @override
  String get metric_ugly_38_name => 'é—´æ­‡å¼ºåŒ–è™å¾…';

  @override
  String get metric_ugly_38_description =>
      'æ ‡è®°ä¸å¯é¢„æµ‹çš„å¥–æƒ©å¾ªçŽ¯ï¼Œç”¨äºŽåˆ¶é€ å¿ƒç†æˆç˜¾ã€‚';

  @override
  String get metric_ugly_39_name => 'ä¹ å¾—æ€§æ— åŠ©è¯±å¯¼';

  @override
  String get metric_ugly_39_description =>
      'è¯†åˆ«ç³»ç»Ÿæ€§åœ°å‰¥å¤ºè‡ªä¸»æƒã€èµ„æºå’Œæ„ŸçŸ¥åˆ°çš„é€ƒè„±é€‰é¡¹ã€‚';

  @override
  String get metric_ugly_40_name => 'èº«ä»½æŠ¹é™¤è¯­è¨€';

  @override
  String get metric_ugly_40_description =>
      'æ ‡è®°è¦æ±‚æ”¾å¼ƒä¸ªæ€§ã€å…´è¶£ã€å¤–è²Œæˆ–æ ¸å¿ƒèº«ä»½è®¤åŒçš„è¨€è®ºã€‚';

  @override
  String get metric_ugly_41_name => 'è‡ªä¸»æƒæ¹®ç­';

  @override
  String get metric_ugly_41_description =>
      'æ£€æµ‹ç³»ç»Ÿæ€§åœ°æ¶ˆé™¤ç‹¬ç«‹æ€è€ƒã€å†³ç­–æˆ–ä¸ªäººè‡ªä¸»æƒã€‚';

  @override
  String get metric_ugly_42_name => 'æ€æƒ³æŽ§åˆ¶ç­–ç•¥';

  @override
  String get metric_ugly_42_description =>
      'æ ‡è®°è¦æ±‚ä»…æŒ‰æŽ§åˆ¶ä¼´ä¾£çš„æŒ‡ç¤ºæ€è€ƒã€ç›¸ä¿¡æˆ–æ„Ÿå—ã€‚';

  @override
  String get metric_ugly_43_name => 'æƒ…æ„Ÿéº»æœ¨å¼ºåˆ¶';

  @override
  String get metric_ugly_43_description =>
      'è¯†åˆ«å› è¡¨è¾¾æƒ…ç»ªè€Œå—æƒ©ç½šï¼Œæˆ–æ˜Žç¡®è¦æ±‚åŽ‹æŠ‘æ‰€æœ‰æ„Ÿå—ã€‚';

  @override
  String get metric_ugly_44_name => 'å¤æ‚åˆ›ä¼¤åˆ¶é€ ';

  @override
  String get metric_ugly_44_description =>
      'æ ‡è®°é€šè¿‡é•¿æœŸè™å¾…åˆ¶é€ å¤æ‚æ€§åˆ›ä¼¤åŽåº”æ¿€éšœç¢çš„ç³»ç»Ÿæ€§æ¨¡å¼ã€‚';

  @override
  String get metric_ugly_45_name => 'èƒŒå›åˆ›ä¼¤æ–½åŠ ';

  @override
  String get metric_ugly_45_description =>
      'è¯†åˆ«æ—¨åœ¨æ‘§æ¯åŸºç¡€ä¿¡ä»»å’Œå¿ƒç†å®‰å…¨çš„è“„æ„èƒŒå›ã€‚';

  @override
  String get metric_ugly_46_name => 'é“å¾·ä¼¤å®³è¯­è¨€';

  @override
  String get metric_ugly_46_description =>
      'æ£€æµ‹å¼ºè¿«ä¼´ä¾£è¿èƒŒè‡ªèº«æ·±å±‚ä»·å€¼è§‚æˆ–å®žæ–½æœ‰å®³è¡Œä¸ºã€‚';

  @override
  String get metric_ugly_47_name => 'ç”Ÿå­˜å¨èƒè¯­è¨€';

  @override
  String get metric_ugly_47_description =>
      'æ ‡è®°å¯¹ä¼´ä¾£å­˜åœ¨ã€æ ¸å¿ƒèº«ä»½ã€ç†æ™ºæˆ–ç”Ÿå­˜æ„å¿—çš„å¨èƒã€‚';

  @override
  String get metric_ugly_48_name => 'è‡ªæ€èƒè¿«è¯­è¨€';

  @override
  String get metric_ugly_48_description =>
      'è¯†åˆ«é€šè¿‡æŒç»­è™å¾…å’Œåˆ¶é€ ç»æœ›æ„ŸæŽ¨åŠ¨ä¼´ä¾£äº§ç”Ÿè‡ªæ€æ„å¿µã€‚';

  @override
  String get metric_ugly_49_name => 'åˆç†åŒ–ç¥žè¯';

  @override
  String get metric_ugly_49_description =>
      'è¯†åˆ«ä¸ºå°†è™å¾…åˆç†åŒ–è€Œç¼–é€ çš„å¤æ‚å™äº‹ï¼Œå£°ç§°è™å¾…æ˜¯å¿…è¦ã€åº”å¾—æˆ–æ­£ä¹‰çš„ã€‚';

  @override
  String get metric_ugly_50_name => 'å—å®³è€…å™äº‹åè½¬';

  @override
  String get metric_ugly_50_description =>
      'æ£€æµ‹å®Œå…¨é¢ å€’çš„æƒ…å†µï¼Œæ–½è™è€…å£°ç§°è‡ªå·±æ‰æ˜¯è‡ªèº«è™å¾…è¡Œä¸ºçš„çœŸæ­£å—å®³è€…ã€‚';

  @override
  String get metric_ugly_51_name => 'è™å¾…æ­£å¸¸åŒ–è¯´æ•™';

  @override
  String get metric_ugly_51_description =>
      'æ ‡è®°æ•™å¯¼æˆ–åšæŒè®¤ä¸ºè™å¾…æ˜¯æ­£å¸¸ã€å¥åº·æˆ–å¯¹ä¼´ä¾£æœ‰ç›Šçš„è¨€è®ºã€‚';

  @override
  String get metric_ugly_52_name => 'æŽ å¤ºæ€§æ„è¯†å½¢æ€';

  @override
  String get metric_ugly_52_description =>
      'è¯†åˆ«ä¸ºå‰¥å‰Šã€æ”¯é…æˆ–ä¼¤å®³ä¼´ä¾£æä¾›æ„è¯†å½¢æ€è¾©æŠ¤ã€‚';

  @override
  String get metric_ugly_53_name => 'é‚ªæ•™é¢†è¢–å¼ä¿¡æ¯';

  @override
  String get metric_ugly_53_description =>
      'æ£€æµ‹å£°ç§°æ‹¥æœ‰ç‰¹æ®ŠçŸ¥è¯†ã€ç¥žæƒæˆ–å¯¹ä¼´ä¾£æ‹¥æœ‰æ›´é«˜æƒå¨çš„ä¿¡æ¯ã€‚';

  @override
  String get metric_ugly_54_name => 'åŸ¹å…»æ—¶é—´çº¿è¯­è¨€';

  @override
  String get metric_ugly_54_description =>
      'æ ‡è®°æåŠé•¿æœŸæ“çºµè®¡åˆ’æˆ–æè¿°åŸ¹å…»è¿›ç¨‹çš„è¨€è®ºã€‚';

  @override
  String get metric_ugly_55_name => 'é•¿æœŸç¾žè¾±è¿åŠ¨';

  @override
  String get metric_ugly_55_description =>
      'è¯†åˆ«æŒç»­å…¬å¼€æˆ–ç§ä¸‹ç¾žè¾±çš„æ¨¡å¼ï¼Œæ—¨åœ¨æ‘§æ¯è‡ªæˆ‘ä»·å€¼ã€‚';

  @override
  String get metric_ugly_56_name => 'å®‰å…¨å‡ºå£å°é”';

  @override
  String get metric_ugly_56_description =>
      'æ£€æµ‹ä¸»åŠ¨é˜»æ­¢ä¼´ä¾£èŽ·å–é€ƒç”Ÿè·¯çº¿ã€æ”¯æŒç³»ç»Ÿæˆ–å®‰å…¨èµ„æºçš„è¡Œä¸ºã€‚';

  @override
  String get metric_ugly_57_name => 'è¯ä»¶æ²¡æ”¶å¨èƒ';

  @override
  String get metric_ugly_57_description =>
      'æ ‡è®°å¨èƒæˆ–è¡ŒåŠ¨ä»¥èŽ·å–ã€éšè—æˆ–é”€æ¯èº«ä»½æ–‡ä»¶ï¼Œä»Žè€Œé˜»æ­¢é€ƒç¦»ã€‚';

  @override
  String get metric_ugly_58_name => 'æš´åŠ›å«‰å¦’æ¨¡å¼';

  @override
  String get metric_ugly_58_description =>
      'è¯†åˆ«å·²å‡çº§ä¸ºæ˜Žç¡®å¨èƒã€ç›‘è§†æˆ–æš´åŠ›æŠ¥å¤çš„å«‰å¦’è¡Œä¸ºã€‚';

  @override
  String get metric_ugly_59_name => 'æš´æ€’çˆ†å‘æ¨¡å¼';

  @override
  String get metric_ugly_59_description =>
      'æ£€æµ‹ä¸Žä»»ä½•è§¦å‘å› ç´ ä¸æˆæ¯”ä¾‹çš„çˆ†ç‚¸æ€§æš´åŠ›çˆ†å‘çš„æè¿°æˆ–æ¨¡å¼ã€‚';

  @override
  String get metric_ugly_60_name => 'å¼ºåˆ¶æŽ§åˆ¶å‡çº§';

  @override
  String get metric_ugly_60_description =>
      'è¿½è¸ªå¼ºåˆ¶æŽ§åˆ¶ç­–ç•¥éšæ—¶é—´æŽ¨ç§»çš„ä¸¥é‡æ€§å’Œå¹¿åº¦å¢žåŠ ã€‚';

  @override
  String get metric_ugly_61_name => 'ææƒ§é¡ºä»Žè¯­è¨€';

  @override
  String get metric_ugly_61_description =>
      'è¯†åˆ«å®Œå…¨å‡ºäºŽå¯¹æš´åŠ›æˆ–ä¸¥åŽ‰æƒ©ç½šçš„ææƒ§è€Œéžé€‰æ‹©çš„é¡ºä»Žè¡Œä¸ºã€‚';

  @override
  String get metric_ugly_62_name => 'æƒ©ç½šä»ªå¼è¯­è¨€';

  @override
  String get metric_ugly_62_description =>
      'æ£€æµ‹ç”¨äºŽå¼ºåˆ¶é¡ºä»Žå’ŒæŽ§åˆ¶çš„ç³»ç»Ÿæ€§æƒ©ç½šå®žè·µçš„æåŠã€‚';

  @override
  String get metric_ugly_63_name => 'ç¾žè¾±ä»ªå¼æŒ‡æ ‡';

  @override
  String get metric_ugly_63_description =>
      'æ ‡è®°æ—¨åœ¨æ‘§æ¯å°Šä¸¥çš„ç³»ç»Ÿæ€§è´¬ä½Žæˆ–ç¾žè¾±ä»ªå¼ã€‚';

  @override
  String get metric_ugly_64_name => 'éžè‡ªæ„¿æ›å…‰å¨èƒ';

  @override
  String get metric_ugly_64_description =>
      'è¯†åˆ«æœªç»åŒæ„å¨èƒæ›å…‰äº²å¯†å›¾åƒã€ç§äººä¿¡æ¯æˆ–ç§˜å¯†çš„è¡Œä¸ºã€‚';

  @override
  String get metric_ugly_65_name => 'å›¾åƒæ»¥ç”¨å¨èƒ';

  @override
  String get metric_ugly_65_description =>
      'æ£€æµ‹ä»¥æŠ¥å¤ã€æƒ©ç½šæˆ–å‹’ç´¢ä¸ºç›®çš„å¨èƒä¼ æ’­äº²å¯†å›¾åƒçš„è¡Œä¸ºã€‚';

  @override
  String get metric_ugly_66_name => 'ç»æµŽé™·é˜±ç­–ç•¥';

  @override
  String get metric_ugly_66_description =>
      'æ ‡è®°æ•…æ„åˆ¶é€ ç»æµŽä¾èµ–ä»¥ä½¿å…¶æ— æ³•ç‹¬ç«‹ç”Ÿå­˜çš„è¡Œä¸ºã€‚';

  @override
  String get metric_ugly_67_name => 'ä½æˆ¿å¨èƒè¯­è¨€';

  @override
  String get metric_ugly_67_description =>
      'æ£€æµ‹å¨èƒä½¿ä¼´ä¾£æ— å®¶å¯å½’ã€å‰¥å¤ºä½æˆ¿æƒåˆ©æˆ–ç ´åä½æ‰€å®‰å…¨çš„è¡Œä¸ºã€‚';

  @override
  String get metric_ugly_68_name => 'ç§»æ°‘èº«ä»½å¨èƒ';

  @override
  String get metric_ugly_68_description =>
      'è¯†åˆ«ä»¥æŽ§åˆ¶ä¸ºç›®çš„å¨èƒä¸¾æŠ¥ç§»æ°‘èº«ä»½æˆ–æ’¤é”€ç­¾è¯æ‹…ä¿çš„è¡Œä¸ºã€‚';

  @override
  String get metric_ugly_69_name => 'å®—æ•™æˆ–ç²¾ç¥žè™å¾…';

  @override
  String get metric_ugly_69_description =>
      'æ£€æµ‹åˆ©ç”¨å®—æ•™æƒå¨ã€æ•™ä¹‰æˆ–ç²¾ç¥žå¨èƒè¿›è¡ŒæŽ§åˆ¶ã€æƒ©ç½šæˆ–ä¼¤å®³çš„è¡Œä¸ºã€‚';

  @override
  String get metric_ugly_70_name => 'æ–‡åŒ–ç¾žè€»æ­¦å™¨åŒ–';

  @override
  String get metric_ugly_70_description =>
      'æ ‡è®°å¨èƒå‘æ–‡åŒ–æˆ–å®¶åº­ç¤¾åŒºæ›å…‰è¡Œä¸ºä½œä¸ºæƒ©ç½šçš„è¡Œä¸ºã€‚';

  @override
  String get metric_ugly_71_name => 'å®¶äººä¼¤å®³å¨èƒ';

  @override
  String get metric_ugly_71_description =>
      'è¯†åˆ«ä»¥ä¼¤å®³ä¼´ä¾£å®¶äººã€å­å¥³æˆ–äº²äººä¸ºè¦æŒŸçš„å¨èƒè¡Œä¸ºã€‚';

  @override
  String get metric_ugly_72_name => 'ååŒéªšæ‰°è¡ŒåŠ¨';

  @override
  String get metric_ugly_72_description =>
      'æ£€æµ‹ç»„ç»‡ä»–äººå¯¹ä¼´ä¾£è¿›è¡Œé›†ä½“éªšæ‰°ã€è·Ÿè¸ªæˆ–æå“çš„è¡Œä¸ºã€‚';

  @override
  String get metric_ugly_73_name => 'è™šå‡æŠ¥è­¦å¨èƒ';

  @override
  String get metric_ugly_73_description =>
      'å¨èƒè¦è™šå‡æŠ¥è­¦æˆ–å¯¹ä¼´ä¾£æå‡ºæ³•å¾‹æŒ‡æŽ§ã€‚';

  @override
  String get metric_ugly_74_name => 'æ³•å¾‹æ­¦å™¨åŒ–';

  @override
  String get metric_ugly_74_description =>
      'è¯†åˆ«åˆ©ç”¨æ³•å¾‹ç¨‹åºã€æ³•é™¢æˆ–ä¿æŠ¤ä»¤ä½œä¸ºéªšæ‰°æ­¦å™¨ã€‚';

  @override
  String get metric_ugly_75_name => 'è¿åé™åˆ¶ä»¤';

  @override
  String get metric_ugly_75_description =>
      'æ£€æµ‹æåŠè¿åæˆ–è®¡åˆ’è¿åä¿æŠ¤ä»¤æˆ–ç¦æ­¢æŽ¥è§¦ä»¤ã€‚';

  @override
  String get metric_ugly_76_name => 'èŒåœºç ´åå¨èƒ';

  @override
  String get metric_ugly_76_description =>
      'æ ‡è®°å¨èƒè”ç³»é›‡ä¸»ã€åŒäº‹æˆ–å®¢æˆ·ä»¥ç ´åä¼´ä¾£ç”Ÿè®¡ã€‚';

  @override
  String get metric_ugly_77_name => 'ç¤¾äº¤æ¯ç­å¨èƒ';

  @override
  String get metric_ugly_77_description =>
      'æ£€æµ‹å¨èƒç ´åä¼´ä¾£å£°èª‰ã€å…³ç³»å’Œç¤¾äº¤åœ°ä½ã€‚';

  @override
  String get metric_ugly_78_name => 'ç³»ç»Ÿæ€§æ¬ºéª—è¡ŒåŠ¨';

  @override
  String get metric_ugly_78_description =>
      'è¯†åˆ«æ—¨åœ¨ä»Žè´¢åŠ¡æˆ–æƒ…æ„Ÿä¸Šå‰¥å‰Šä¼´ä¾£çš„é•¿æœŸç²¾å¿ƒæ¬ºéª—ã€‚';

  @override
  String get metric_ugly_79_name => 'è´¢äº§ç ´åå¼æå“';

  @override
  String get metric_ugly_79_description =>
      'è¯†åˆ«æ•…æ„ç ´åä¼´ä¾£è´¢äº§ä½œä¸ºæå“æ‰‹æ®µã€‚';

  @override
  String get metric_ugly_80_name => 'è™å¾…åŠ¨ç‰©å¼ä»£ç†æå“';

  @override
  String get metric_ugly_80_description =>
      'æ£€æµ‹ä¼¤å®³æˆ–å¨èƒå® ç‰©ä»¥å‘ä¼´ä¾£å±•ç¤ºæš´åŠ›èƒ½åŠ›ã€‚';

  @override
  String get metric_ugly_81_name => 'å±å®³å„¿ç«¥è¯­è¨€';

  @override
  String get metric_ugly_81_description =>
      'æ ‡è®°å°†å„¿ç«¥ç½®äºŽå±é™©å¢ƒåœ°æˆ–ä»¥æ­¤ä½œä¸ºç­¹ç è¿›è¡Œå¨èƒã€‚';

  @override
  String get metric_ugly_82_name => 'åŸºäºŽæ®‹ç–¾çš„æŽ§åˆ¶';

  @override
  String get metric_ugly_82_description =>
      'æ£€æµ‹é€šè¿‡æŽ§åˆ¶è¯ç‰©ã€è¡ŒåŠ¨æˆ–æŠ¤ç†æ¥åˆ©ç”¨ä¼´ä¾£æ®‹ç–¾çš„è¡Œä¸ºã€‚';

  @override
  String get metric_ugly_83_name => 'å±æœºåˆ¶é€ æŽ§åˆ¶';

  @override
  String get metric_ugly_83_description =>
      'æ ‡è®°æ•…æ„åˆ¶é€ ç´§æ€¥æƒ…å†µæˆ–å±æœºä»¥å¢žåŠ ä¼´ä¾£ä¾èµ–æˆ–ä¸ºç›‘æŽ§è¾©æŠ¤çš„è¡Œä¸ºã€‚';

  @override
  String get metric_ugly_84_name => 'éš”ç¦»ç´§æ€¥æœåŠ¡';

  @override
  String get metric_ugly_84_description =>
      'è¯†åˆ«ä¸»åŠ¨é˜»æ­¢ä¼´ä¾£æŠ¥è­¦ã€å«æ•‘æŠ¤è½¦æˆ–è”ç³»å±æœºæœåŠ¡çš„è¡Œä¸ºã€‚';

  @override
  String get metric_ugly_85_name => 'å¨èƒå‡çº§è½¨è¿¹';

  @override
  String get metric_ugly_85_description =>
      'è¿½è¸ªå¨èƒåœ¨ä¸¥é‡æ€§ã€å…·ä½“æ€§æˆ–é¢‘çŽ‡ä¸Šéšæ—¶é—´å¯æµ‹é‡çš„å¢žåŠ ã€‚';

  @override
  String get metric_ugly_86_name => 'è‡´å‘½æ€§è¯„ä¼°æŒ‡æ ‡';

  @override
  String get metric_ugly_86_description =>
      'æ ‡è®°ä¸Žäº²å¯†ä¼´ä¾£å‡¶æ€æœ€é«˜é£Žé™©ç›¸å…³çš„å› ç´ ç»„åˆã€‚';

  @override
  String get metric_ugly_87_name => 'å¿ƒç†æŠ˜ç£¨ç­–ç•¥';

  @override
  String get metric_ugly_87_description =>
      'è¯†åˆ«æ—¨åœ¨ç ´åä¼´ä¾£å¿ƒç†ç¨³å®šçš„æŒç»­å¿ƒç†è™å¾…ã€‚';

  @override
  String get metric_ugly_88_name => 'å›šç¦è¯­è¨€';

  @override
  String get metric_ugly_88_description =>
      'æ£€æµ‹æåŠå›šç¦ä¼´ä¾£ã€é˜»æ­¢ç¦»å¼€æˆ–æŽ§åˆ¶æ‰€æœ‰è¡ŒåŠ¨çš„è¯­è¨€ã€‚';

  @override
  String get metric_ugly_89_name => 'é’ˆå¯¹æ€§æš´åŠ›è®¡åˆ’';

  @override
  String get metric_ugly_89_description =>
      'æ£€æµ‹ä»»ä½•è¡¨æ˜Žè®¡åˆ’ã€å‡†å¤‡æˆ–å€’è®¡æ—¶å¯¹ä¼´ä¾£æ–½æš´çš„è¯­è¨€ã€‚';

  @override
  String get metric_ugly_90_name => 'ç¬¬ä¸‰æ–¹å¨èƒæ‹›å‹Ÿ';

  @override
  String get metric_ugly_90_description =>
      'è¯†åˆ«æ‹›å‹Ÿæœ‹å‹ã€å®¶äººæˆ–ä»–äººå¨èƒæˆ–ä¼¤å®³ä¼´ä¾£çš„è¡Œä¸ºã€‚';

  @override
  String get metric_ugly_91_name => 'è‡ªæ€æ„å¿µåˆ©ç”¨';

  @override
  String get metric_ugly_91_description =>
      'åˆ©ç”¨ä¼´ä¾£çš„è‡ªæ€å±æœºä½œä¸ºç­¹ç æˆ–é˜»æ­¢å…¶å¯»æ±‚å¸®åŠ©ã€‚';

  @override
  String get metric_ugly_92_name => 'æŠ•æ¯’æˆ–ä¸‹è¯å¨èƒ';

  @override
  String get metric_ugly_92_description =>
      'æ£€æµ‹å¨èƒæˆ–æåŠä¸‹è¯ã€æŠ•æ¯’æˆ–ç¯¡æ”¹ä¼´ä¾£é£Ÿç‰©æˆ–é¥®æ–™çš„è¡Œä¸ºã€‚';

  @override
  String get metric_ugly_93_name => 'éžè‡ªæ€æ€§è‡ªä¼¤åˆ©ç”¨';

  @override
  String get metric_ugly_93_description =>
      'æ ‡è®°åˆ©ç”¨ä¼´ä¾£çš„è‡ªæ®‹è¡Œä¸ºä½œä¸ºç­¹ç ã€å˜²ç¬‘æˆ–è¿›ä¸€æ­¥æŽ§åˆ¶çš„è¡Œä¸ºã€‚';

  @override
  String get metric_ugly_94_name => 'è§£ç¦»è¯±å¯¼è¯­è¨€';

  @override
  String get metric_ugly_94_description =>
      'æ£€æµ‹æ—¨åœ¨å¯¼è‡´ä¼´ä¾£è§£ç¦»ã€ç–ç¦»æˆ–äººæ ¼è§£ä½“çš„è¯­è¨€æ¨¡å¼ã€‚';

  @override
  String get metric_ugly_95_name => 'è®¤çŸ¥æ‰­æ›²æ¤å…¥';

  @override
  String get metric_ugly_95_description =>
      'æ£€æµ‹æ•…æ„æ¤å…¥å…³äºŽè‡ªæˆ‘ã€çŽ°å®žæˆ–ä¼´ä¾£è‡ªèº«ç†æ™ºçš„é”™è¯¯ä¿¡å¿µã€‚';

  @override
  String get metric_ugly_96_name => 'åŒ»ç–—æŠ¤ç†é˜»æŒ ';

  @override
  String get metric_ugly_96_description =>
      'æ£€æµ‹é˜»æ­¢èŽ·å–è¯ç‰©ã€åŒ»ç”Ÿã€åŒ»é™¢æˆ–å¥åº·æ²»ç–—çš„è¡Œä¸ºã€‚';

  @override
  String get metric_ugly_97_name => 'æžç«¯å¨èƒè¯­è¨€';

  @override
  String get metric_ugly_97_description =>
      'æ ‡è®°ä»Žæžç«¯æˆ–æš´åŠ›æ„è¯†å½¢æ€æ¡†æž¶ä¸­å€Ÿç”¨å¹¶åº”ç”¨äºŽä¼´ä¾£çš„è¯­è¨€ã€‚';

  @override
  String get metric_ugly_98_name => 'åˆ†æ‰‹åŽè·Ÿè¸ªä¿¡å·';

  @override
  String get metric_ugly_98_description =>
      'æ£€æµ‹åˆ†æ‰‹åŽæˆ–é¢„æœŸåˆ†æ‰‹æ—¶çš„å¨èƒã€ç›‘è§†è¯­è¨€æˆ–æå“ç­–ç•¥ã€‚';

  @override
  String get metric_ugly_99_name => 'å„¿ç«¥æ­¦å™¨åŒ–';

  @override
  String get metric_ugly_99_description =>
      'è¯†åˆ«åˆ©ç”¨å­©å­ä½œä¸ºç­¹ç ã€å¨èƒç›‘æŠ¤æƒæˆ–åˆ©ç”¨äº²å­å…³ç³»ä½œä¸ºæŽ§åˆ¶æœºåˆ¶çš„è¡Œä¸ºã€‚';

  @override
  String get metric_ugly_100_name => 'ç³»ç»Ÿæ€§éžäººåŒ–';

  @override
  String get metric_ugly_100_description =>
      'æ£€æµ‹æŒç»­å‰¥å¤ºä¼´ä¾£äººæ ¼ã€å°Šä¸¥æˆ–åŸºæœ¬äººæƒçš„è¯­è¨€ã€‚';

  @override
  String get metric_narcissist_1_name => 'å¤¸å¤§è‡ªæˆ‘é‡è¦æ€§';

  @override
  String get metric_narcissist_1_description =>
      'å¯¹æˆå°±ã€æ‰èƒ½æˆ–åœ°ä½åšå‡ºè¶…å‡ºå®žé™…è¯æ®çš„å¤¸å¤§å®£ç§°ï¼Œå¸¸ä¼´æœ‰ç‹¬ç‰¹æ„Ÿã€‚';

  @override
  String get metric_narcissist_2_name => 'ç‰¹æƒè¦æ±‚';

  @override
  String get metric_narcissist_2_description =>
      'ä¸åˆç†åœ°æœŸæœ›èŽ·å¾—ç‰¹æ®Šå¾…é‡æˆ–è¦æ±‚ä»–äººæ— æ¡ä»¶é¡ºä»Žï¼Œè€Œä¸è€ƒè™‘äº’æƒ ã€‚';

  @override
  String get metric_narcissist_3_name => 'å…±æƒ…ç¼ºå¤±';

  @override
  String get metric_narcissist_3_description =>
      'æ— æ³•æˆ–ä¸æ„¿è¯†åˆ«æˆ–éªŒè¯ä»–äººçš„æ„Ÿå—ï¼Œå°†æƒ…æ„Ÿéœ€æ±‚è§†ä¸ºæ— å…³ç´§è¦ã€‚';

  @override
  String get metric_narcissist_4_name => 'å¯»æ±‚èµžç¾Žè¡¥ç»™';

  @override
  String get metric_narcissist_4_description =>
      'è¿‡åº¦å¯»æ±‚é’¦ä½©ã€èµžç¾Žæˆ–è®¤å¯ï¼Œä»¥æ”¯æ’‘è„†å¼±çš„è‡ªå°Šã€‚';

  @override
  String get metric_narcissist_5_name => 'ä¸‰è§’æµ‹é‡ç­–ç•¥';

  @override
  String get metric_narcissist_5_description =>
      'å°†ç¬¬ä¸‰æ–¹å¼•å…¥å†²çªï¼Œåˆ¶é€ å«‰å¦’ã€ç«žäº‰æˆ–æ“çºµä»–äººçœ‹æ³•ã€‚';

  @override
  String get metric_narcissist_6_name => 'çˆ±æƒ…è½°ç‚¸å¼ºåº¦';

  @override
  String get metric_narcissist_6_description =>
      'åœ¨å…³ç³»åˆæœŸç»™äºˆè¿‡åº¦çš„å¥‰æ‰¿ã€ç¤¼ç‰©æˆ–å…³æ³¨ï¼Œä»¥èŽ·å–æŽ§åˆ¶æƒå¹¶ç†æƒ³åŒ–ç›®æ ‡ã€‚';

  @override
  String get metric_narcissist_7_name => 'è´¬ä½Žæ‰¹è¯„';

  @override
  String get metric_narcissist_7_description =>
      'åœ¨ç†æƒ³åŒ–é˜¶æ®µåŽçªç„¶è½¬ä¸ºä¸¥åŽ‰æ‰¹è¯„ã€è´¬ä½Žæˆ–è”‘è§†ï¼Œå‰Šå¼±ç›®æ ‡çš„è‡ªå°Šã€‚';

  @override
  String get metric_narcissist_8_name => 'æ²‰é»˜æƒ©ç½š';

  @override
  String get metric_narcissist_8_description =>
      'æ•…æ„åœæ­¢æ²Ÿé€šæˆ–æƒ…æ„Ÿè¡¨è¾¾ï¼Œä½œä¸ºä¸€ç§æƒ©ç½šæ‰‹æ®µï¼Œå¼•å‘ç„¦è™‘å’Œé¡ºä»Žã€‚';

  @override
  String get metric_narcissist_9_name => 'DARVOè´£ä»»è½¬ç§»';

  @override
  String get metric_narcissist_9_description =>
      'å¦è®¤è´£ä»»ã€æ”»å‡»æŒ‡è´£è€…å¹¶é¢ å€’å—å®³è€…ä¸Žæ–½å®³è€…è§’è‰²ï¼Œä»¥é€ƒé¿é—®è´£ã€‚';

  @override
  String get metric_narcissist_10_name => 'ç…¤æ°”ç¯çŽ°å®žæ‰­æ›²';

  @override
  String get metric_narcissist_10_description =>
      'å¦è®¤æˆ–æ‰­æ›²äº‹å®žã€äº‹ä»¶æˆ–æ„Ÿå—ï¼Œä½¿ç›®æ ‡æ€€ç–‘è‡ªå·±çš„è®°å¿†æˆ–ç†æ™ºã€‚';

  @override
  String get metric_narcissist_11_name => 'æ‰¹è¯„æš´æ€’';

  @override
  String get metric_narcissist_11_description =>
      'å¯¹ä»»ä½•æ„ŸçŸ¥åˆ°çš„è½»è§†æˆ–åé¦ˆï¼ˆå³ä½¿æ˜¯å»ºè®¾æ€§çš„ï¼‰äº§ç”Ÿå¼ºçƒˆæ„¤æ€’ã€è”‘è§†æˆ–æŠ¥å¤è¡Œä¸ºã€‚';

  @override
  String get metric_narcissist_12_name => 'è¾¹ç•Œä¾µçŠ¯';

  @override
  String get metric_narcissist_12_description =>
      'æ— è§†æˆ–é€¾è¶Šå·²å£°æ˜Žçš„ç•Œé™ã€éšç§æˆ–ä¸ªäººç©ºé—´ï¼Œæ¯«æ— æ‚”æ„æˆ–åå•†ã€‚';

  @override
  String get metric_narcissist_13_name => 'å«‰å¦’è¡¨è¾¾';

  @override
  String get metric_narcissist_13_description =>
      'å¯¹ä»–äººçš„æˆåŠŸæˆ–æ‰€æœ‰ç‰©å¿ƒæ€€æ€¨æ¨ï¼Œå¸¸ä¼´éšè´¬ä½Žæˆ–è¯•å›¾ç ´åã€‚';

  @override
  String get metric_narcissist_14_name => 'å‰¥å‰Šè¡Œä¸º';

  @override
  String get metric_narcissist_14_description =>
      'ä¸ºä¸ªäººåˆ©ç›Šã€åœ°ä½æˆ–èµ„æºåˆ©ç”¨ä»–äººï¼Œä¸é¡¾å…¶ç¦ç¥‰æˆ–åŒæ„ã€‚';

  @override
  String get metric_narcissist_15_name => 'é•œåƒæ“æŽ§';

  @override
  String get metric_narcissist_15_description =>
      'æ¨¡ä»¿ç›®æ ‡çš„å…´è¶£ã€ä»·å€¼è§‚æˆ–ç‰¹è´¨ï¼Œä»¥å»ºç«‹è™šå‡èžæ´½å¹¶èŽ·å–ä¿¡ä»»ã€‚';

  @override
  String get metric_narcissist_16_name => 'ä¼˜è¶Šä¸»å¼ ';

  @override
  String get metric_narcissist_16_description =>
      'å®£ç§°è‡ªèº«å¤©ç”Ÿä¼˜äºŽä»–äººï¼Œå¸¸ä½¿ç”¨å±…é«˜ä¸´ä¸‹æˆ–è½»è”‘çš„è¯­è¨€ã€‚';

  @override
  String get metric_narcissist_17_name => 'å¹»æƒ³æ²‰è¿·';

  @override
  String get metric_narcissist_17_description =>
      'ç—´è¿·è°ˆè®ºä¸åˆ‡å®žé™…çš„æ— é™æˆåŠŸã€æƒåŠ›ã€æ‰åŽæˆ–ç†æƒ³çˆ±æƒ…ã€‚';

  @override
  String get metric_narcissist_18_name => 'ç‰¹æ®Šåœ°ä½ä¸»å¼ ';

  @override
  String get metric_narcissist_18_description =>
      'åšä¿¡åªæœ‰é«˜å±‚äººå£«æˆ–æœºæž„æ‰èƒ½ç†è§£æˆ–ä¸Žä¹‹äº¤å¾€ã€‚';

  @override
  String get metric_narcissist_19_name => 'äººé™…å‰¥å‰Š';

  @override
  String get metric_narcissist_19_description =>
      'åˆ©ç”¨ä»–äººçš„èµ„æºã€æ—¶é—´æˆ–æƒ…æ„Ÿï¼Œè€Œä¸äºˆå›žæŠ¥æˆ–æ„Ÿè°¢ã€‚';

  @override
  String get metric_narcissist_20_name => 'ç¼ºä¹æ‚”æ„';

  @override
  String get metric_narcissist_20_description =>
      'é€ æˆä¼¤å®³åŽæ¯«æ— å†…ç–šæˆ–é“æ­‰ï¼Œå¸¸å°†è¡Œä¸ºåˆç†åŒ–ï¼Œè®¤ä¸ºç›®æ ‡åº”å¾—æ­¤å¯¹å¾…ã€‚';

  @override
  String get metric_narcissist_21_name => 'ç«žäº‰æ€§ç ´å';

  @override
  String get metric_narcissist_21_description =>
      'é€šè¿‡ç ´åä»–äººçš„æˆå°±æˆ–å…³ç³»æ¥ç»´æŒè‡ªèº«ä¼˜è¶Šåœ°ä½ã€‚';

  @override
  String get metric_narcissist_22_name => 'ç†æƒ³åŒ–é˜¶æ®µ';

  @override
  String get metric_narcissist_22_description =>
      'åœ¨å…³ç³»åˆæœŸè¿‡åº¦èµžç¾Žå’Œå´‡æ‹œï¼Œä¸ºå¯¹æ–¹è®¾å®šä¸åˆ‡å®žé™…çš„æœŸæœ›ã€‚';

  @override
  String get metric_narcissist_23_name => 'è´¬ä½Žé˜¶æ®µ';

  @override
  String get metric_narcissist_23_description =>
      'åœ¨ç†æƒ³åŒ–ä¹‹åŽé€æ¸æˆ–çªç„¶è¿›è¡Œæ‰¹è¯„å’Œè”‘è§†ï¼Œå¼•å‘å›°æƒ‘å’Œè‡ªæˆ‘æ€€ç–‘ã€‚';

  @override
  String get metric_narcissist_24_name => 'æŠ›å¼ƒå†²åŠ¨';

  @override
  String get metric_narcissist_24_description =>
      'å½“å¯¹æ–¹ä¸å†æä¾›è‡ªæ‹ä¾›ç»™æˆ–æå‡ºæŒ‘æˆ˜æ—¶ï¼Œçªç„¶ç»ˆæ­¢å…³ç³»ã€‚';

  @override
  String get metric_narcissist_25_name => 'å›žå¸å°è¯•';

  @override
  String get metric_narcissist_25_description =>
      'é€šè¿‡æ‰¿è¯ºã€å†…ç–šæˆ–æ“çºµæ‰‹æ®µé‡æ–°è”ç³»è¢«æŠ›å¼ƒçš„ç›®æ ‡ï¼Œä»¥é‡æ–°èŽ·å–ä¾›ç»™ã€‚';

  @override
  String get metric_narcissist_26_name => 'ç¼ºé™·æŠ•å°„';

  @override
  String get metric_narcissist_26_description =>
      'å°†è‡ªå·±çš„è´Ÿé¢ç‰¹è´¨æˆ–è¡Œä¸ºå½’å’ŽäºŽä»–äººï¼Œä»¥é¿å…è‡ªæˆ‘è®¤çŸ¥ã€‚';

  @override
  String get metric_narcissist_27_name => 'å†…ç–šæŽ§åˆ¶';

  @override
  String get metric_narcissist_27_description =>
      'ä½¿ç”¨å¼•å‘å†…ç–šçš„è¨€è¯­æ“çºµä»–äººé¡ºä»Žæˆ–ç…§é¡¾è‡ªå·±ã€‚';

  @override
  String get metric_narcissist_28_name => 'æƒ…ç»ªæ³¢åŠ¨';

  @override
  String get metric_narcissist_28_description =>
      'ä»Žé­…åŠ›å››å°„åˆ°æš´æ€’çš„å¿«é€Ÿæƒ…ç»ªå˜åŒ–ï¼Œå¸¸ç”±æ„ŸçŸ¥åˆ°çš„è‡ªæ‹åˆ›ä¼¤è§¦å‘ã€‚';

  @override
  String get metric_narcissist_29_name => 'æ„Ÿå—å¦å®š';

  @override
  String get metric_narcissist_29_description =>
      'å°†ä»–äººçš„æƒ…ç»ªè§†ä¸ºè¿‡åº¦ååº”æˆ–ä¸ç†æ€§è€Œäºˆä»¥å¿½è§†æˆ–è´¬ä½Žã€‚';

  @override
  String get metric_narcissist_30_name => 'å¯¹è¯åž„æ–­';

  @override
  String get metric_narcissist_30_description =>
      'ä»¥è‡ªæˆ‘ä¸ºä¸­å¿ƒçš„è¯é¢˜ä¸»å¯¼å¯¹è¯ï¼Œæ‰“æ–­æˆ–å¿½è§†ä»–äººçš„å‘è¨€ã€‚';

  @override
  String get metric_narcissist_31_name => 'è¾±éª‚è´¬ä½Ž';

  @override
  String get metric_narcissist_31_description =>
      'ä½¿ç”¨ä¾®è¾±ã€æ ‡ç­¾æˆ–è´¬ä½Žæ€§è¨€è¾žæ¥è´¬ä½Žå’ŒæŽ§åˆ¶ç›®æ ‡ã€‚';

  @override
  String get metric_narcissist_32_name => 'æŠ›å¼ƒå¨èƒ';

  @override
  String get metric_narcissist_32_description =>
      'åˆ©ç”¨å¯¹è¢«æŠ›å¼ƒæˆ–æ‹’ç»çš„ææƒ§æ¥å¼ºè¿«å¯¹æ–¹é¡ºä»Žæˆ–èŽ·å–å…³æ³¨ã€‚';

  @override
  String get metric_narcissist_33_name => 'æ‰®æ¼”å—å®³è€…';

  @override
  String get metric_narcissist_33_description =>
      'å°†è‡ªå·±æç»˜æˆå—åˆ°ä¸å…¬æ­£å¯¹å¾…çš„äººï¼Œä»¥åšå–åŒæƒ…å¹¶é€ƒé¿è´£ä»»ã€‚';

  @override
  String get metric_narcissist_34_name => 'æ®‰é“è€…æƒ…ç»“';

  @override
  String get metric_narcissist_34_description =>
      'å£°ç§°è‡ªå·±è¿‡åº¦ç‰ºç‰²æˆ–å—è‹¦ï¼Œä»¥å¼•å‘ä»–äººçš„å†…ç–šæ„Ÿå’Œä¹‰åŠ¡æ„Ÿã€‚';

  @override
  String get metric_narcissist_35_name => 'é€‰æ‹©æ€§è®°å¿†';

  @override
  String get metric_narcissist_35_description =>
      'æ–¹ä¾¿åœ°å¿˜è®°æ‰¿è¯ºã€åè®®æˆ–æœ‰å®³è¡Œä¸ºï¼Œä»¥é€ƒé¿è´£ä»»ã€‚';

  @override
  String get metric_narcissist_36_name => 'æ²Ÿé€šé˜»éš”';

  @override
  String get metric_narcissist_36_description =>
      'æ‹’ç»å‚ä¸Žå¯¹è¯ã€å¿½è§†é—®é¢˜æˆ–ç»ˆæ­¢è®¨è®ºï¼Œä»¥ç»´æŒæŽ§åˆ¶ã€‚';

  @override
  String get metric_narcissist_37_name => 'æœªæ¥è™šæž„';

  @override
  String get metric_narcissist_37_description =>
      'å¯¹å…±åŒæœªæ¥è®¡åˆ’åšå‡ºå®å¤§æ‰¿è¯ºï¼Œä»¥åˆ¶é€ è™šå‡å¸Œæœ›å’Œä¾èµ–ã€‚';

  @override
  String get metric_narcissist_38_name => 'æŠ¹é»‘è¿åŠ¨';

  @override
  String get metric_narcissist_38_description =>
      'æ•£å¸ƒå…³äºŽç›®æ ‡çš„æ¶æ„è°£è¨€æˆ–è°Žè¨€ï¼Œä»¥å­¤ç«‹ä»–ä»¬å¹¶æŸå®³å…¶å£°èª‰ã€‚';

  @override
  String get metric_narcissist_39_name => 'å­¤ç«‹ç­–ç•¥';

  @override
  String get metric_narcissist_39_description =>
      'åŠé˜»æˆ–é˜»æ­¢ä¸Žæœ‹å‹ã€å®¶äººæˆ–æ”¯æŒç³»ç»Ÿçš„è”ç³»ï¼Œä»¥å¢žåŠ ä¾èµ–æ€§ã€‚';

  @override
  String get metric_narcissist_40_name => 'ç»æµŽå‰¥å‰Š';

  @override
  String get metric_narcissist_40_description =>
      'æ“çºµæˆ–æŽ§åˆ¶è´¢åŠ¡èµ„æºä»¥è°‹å–ç§åˆ©æˆ–åˆ¶é€ ä¾èµ–ã€‚';

  @override
  String get metric_narcissist_41_name => 'æ€§èƒè¿«';

  @override
  String get metric_narcissist_41_description =>
      'é€šè¿‡æ–½åŽ‹ã€å†…ç–šæˆ–æ“çºµæ‰‹æ®µèŽ·å–æ€§é¡ºä»Žï¼Œè€ŒéžåŸºäºŽçœŸå®žåŒæ„ã€‚';

  @override
  String get metric_narcissist_42_name => 'è¾¹ç•Œè¯•æŽ¢';

  @override
  String get metric_narcissist_42_description =>
      'åå¤è¯•æŽ¢åº•çº¿ä»¥è§‚å¯Ÿå“ªäº›è¡Œä¸ºèƒ½è¢«å®¹å¿ï¼ŒéšåŽé€æ­¥å‡çº§ä¾µçŠ¯è¡Œä¸ºã€‚';

  @override
  String get metric_narcissist_43_name => 'ç…¤æ°”ç¯å¼å¦è®¤';

  @override
  String get metric_narcissist_43_description =>
      'æ–­ç„¶å¦è®¤å·²å‘ç”Ÿçš„äº‹ä»¶æˆ–è¯´è¿‡çš„è¯ï¼Œå¯¼è‡´ç›®æ ‡è´¨ç–‘è‡ªèº«çŽ°å®žæ„ŸçŸ¥ã€‚';

  @override
  String get metric_narcissist_44_name => 'è½»è§†åŒ–å…³åˆ‡';

  @override
  String get metric_narcissist_44_description =>
      'å°†åˆç†æŠ•è¯‰è´¬ä½Žä¸ºæ— å…³ç´§è¦æˆ–è¿‡åº¦æ•æ„Ÿã€‚';

  @override
  String get metric_narcissist_45_name => 'å¤–åŒ–å½’è´£';

  @override
  String get metric_narcissist_45_description =>
      'å°†æ‰€æœ‰é—®é¢˜å’Œå†²çªå½’å’ŽäºŽä»–äººï¼Œä»Žä¸æ‰¿è®¤è‡ªèº«è¿‡é”™ã€‚';

  @override
  String get metric_narcissist_46_name => 'å«‰å¦’è¯±å‘';

  @override
  String get metric_narcissist_46_description =>
      'é€šè¿‡ä¸Žä»–äººè°ƒæƒ…æˆ–èµžç¾Žä»–äººæ¥æ¿€å‘å«‰å¦’ï¼Œä»¥ç»´æŒæƒ…æ„ŸæŽ§åˆ¶ã€‚';

  @override
  String get metric_narcissist_47_name => 'æƒ…æ„Ÿå‹’ç´¢';

  @override
  String get metric_narcissist_47_description =>
      'åˆ©ç”¨ææƒ§ã€ä¹‰åŠ¡æ„Ÿæˆ–å†…ç–šæ„Ÿæ“çºµä»–äººçš„å†³ç­–ä¸Žè¡Œä¸ºã€‚';

  @override
  String get metric_narcissist_48_name => 'ä¼ªæ´žå¯Ÿ';

  @override
  String get metric_narcissist_48_description =>
      'å‡è£…å…·æœ‰è‡ªæˆ‘è®¤çŸ¥æˆ–å…±æƒ…èƒ½åŠ›ä»¥æ˜¾å¾—æ”¹è¿‡è‡ªæ–°ï¼ŒéšåŽæ¢å¤æœ‰å®³è¡Œä¸ºæ¨¡å¼ã€‚';

  @override
  String get metric_narcissist_49_name => 'è½»è”‘è¯­æ°”';

  @override
  String get metric_narcissist_49_description =>
      'ä½¿ç”¨è®½åˆºã€å˜²å¼„æˆ–é„™å¤·çš„è¯­è¨€è´¬ä½Žå’Œå¦å®šä»–äººã€‚';

  @override
  String get metric_narcissist_50_name => 'æŠ¥å¤å¹»æƒ³';

  @override
  String get metric_narcissist_50_description =>
      'è¡¨è¾¾å¯¹å†’çŠ¯è€…è¿›è¡ŒæŠ¥å¤æˆ–æƒ©ç½šçš„æ¬²æœ›ã€‚';

  @override
  String get metric_serial_killer_1_name => 'æ•é£Ÿæ€§æ¡†æž¶';

  @override
  String get metric_serial_killer_1_description =>
      'æ£€æµ‹å°†è¯´è¯è€…å®šä½ä¸ºçŒŽæ‰‹ã€ç›®æ ‡å®šä½ä¸ºçŒŽç‰©çš„è¯­è¨€ï¼Œè¡¨æ˜Žæ•é£Ÿæ„å›¾ã€‚';

  @override
  String get metric_serial_killer_2_name => 'å…±æƒ…ç¼ºå¤±';

  @override
  String get metric_serial_killer_2_description =>
      'è¯†åˆ«ç¼ºä¹æƒ…æ„Ÿå…±é¸£æˆ–å¯¹ä»–äººç—›è‹¦æ¼ ä¸å…³å¿ƒçš„é™ˆè¿°ï¼Œæš—ç¤ºå†·é…·æ— æƒ…ã€‚';

  @override
  String get metric_serial_killer_3_name => 'éžäººåŒ–æ ‡ç­¾';

  @override
  String get metric_serial_killer_3_description =>
      'æ ‡è®°ä½¿ç”¨è´¬ä¹‰è¯æˆ–ç‰©åŒ–æ ‡ç­¾ï¼Œå‰¥å¤ºå—å®³è€…çš„äººæ€§ã€‚';

  @override
  String get metric_serial_killer_4_name => 'ç‰©åŒ–çº¿ç´¢';

  @override
  String get metric_serial_killer_4_description =>
      'è¯†åˆ«å°†ä¸ªä½“è§†ä¸ºæ»¡è¶³æ¬²æœ›çš„å·¥å…·æˆ–å¯¹è±¡çš„è¯­è¨€ã€‚';

  @override
  String get metric_serial_killer_5_name => 'æŽ§åˆ¶æ‰§å¿µ';

  @override
  String get metric_serial_killer_5_description =>
      'æ£€æµ‹å¯¹æ”¯é…ã€æ“çºµæˆ–å¼ºåˆ¶æœä»Žçš„å¼ºè¿«æ€§æåŠã€‚';

  @override
  String get metric_serial_killer_6_name => 'å¯»æ±‚åˆºæ¿€è¯­è°ƒ';

  @override
  String get metric_serial_killer_6_description =>
      'è¯†åˆ«æè¿°å±é™©ã€æš´åŠ›æˆ–æ•é£Ÿè¡Œä¸ºæ—¶çš„å…´å¥‹æˆ–æ¿€åŠ¨æƒ…ç»ªã€‚';

  @override
  String get metric_serial_killer_7_name => 'åˆ†éš”æ ‡è®°';

  @override
  String get metric_serial_killer_7_description =>
      'æ ‡è®°æ­£å¸¸è¯é¢˜ä¸Žæš´åŠ›è¯é¢˜ä¹‹é—´çš„çªç„¶è½¬æ¢ï¼Œè¡¨æ˜Žå¿ƒç†åˆ†ç¦»ã€‚';

  @override
  String get metric_serial_killer_8_name => 'å—å®³è€…é€‰æ‹©ä¿¡å·';

  @override
  String get metric_serial_killer_8_description =>
      'æ£€æµ‹é’ˆå¯¹ç‰¹å®šå¼±åŠ¿ç¾¤ä½“çš„é€‰æ‹©æ ‡å‡†æˆ–åå¥½ã€‚';

  @override
  String get metric_serial_killer_9_name => 'æ–½è™æ„‰æ‚¦';

  @override
  String get metric_serial_killer_9_description =>
      'è¯†åˆ«ä»Žä»–äººç—›è‹¦ã€ææƒ§æˆ–å—éš¾ä¸­èŽ·å¾—çš„å¿«æ„Ÿã€‚';

  @override
  String get metric_serial_killer_10_name => 'æ“çºµæ€§ä¼¤å®³';

  @override
  String get metric_serial_killer_10_description =>
      'è¯†åˆ«ç”¨äºŽæ¬ºéª—æˆ–èƒè¿«ä»–äººé™·å…¥æœ‰å®³å¢ƒåœ°çš„è¯­è¨€ã€‚';

  @override
  String get metric_serial_killer_11_name => 'è·Ÿè¸ªæŒ‡æ ‡';

  @override
  String get metric_serial_killer_11_description =>
      'æ ‡è®°å¯¹ç›®æ ‡çš„è¯¦ç»†è¿½è¸ªã€ç›‘è§†æˆ–å¼ºè¿«æ€§å…³æ³¨ã€‚';

  @override
  String get metric_serial_killer_12_name => 'è¯±éª—è¯­è¨€';

  @override
  String get metric_serial_killer_12_description =>
      'æ£€æµ‹é€æ­¥å»ºç«‹ä¿¡ä»»ä»¥åˆ©ç”¨æˆ–è™å¾…å—å®³è€…çš„ç­–ç•¥ã€‚';

  @override
  String get metric_serial_killer_13_name => 'æš´åŠ›å¹»æƒ³';

  @override
  String get metric_serial_killer_13_description =>
      'è¯†åˆ«æè¿°ä¼¤å®³æˆ–æ€å®³ä»–äººçš„ç”ŸåŠ¨ç»†èŠ‚ï¼Œä½œä¸ºå¿ƒç†é¢„æ¼”ã€‚';

  @override
  String get metric_serial_killer_14_name => 'æƒåŠ›ä¸»å¼ ';

  @override
  String get metric_serial_killer_14_description =>
      'è¯†åˆ«å¼ºè°ƒå¯¹ä»–äººçš„ä¼˜è¶Šæ€§æˆ–æŽ§åˆ¶çš„é™ˆè¿°ã€‚';

  @override
  String get metric_serial_killer_15_name => 'ç¼ºä¹æ‚”æ„';

  @override
  String get metric_serial_killer_15_description =>
      'æ ‡è®°è®¨è®ºæœ‰å®³è¡Œä¸ºåŽç¼ºä¹å†…ç–šæˆ–æ‚”æ¨çš„è¡¨çŽ°ã€‚';

  @override
  String get metric_serial_killer_16_name => 'å¤–åŒ–æŒ‡è´£';

  @override
  String get metric_serial_killer_16_description =>
      'æ£€æµ‹å°†æš´åŠ›å†²åŠ¨å½’å’ŽäºŽå—å®³è€…æˆ–ç¤¾ä¼šçš„å€¾å‘ã€‚';

  @override
  String get metric_serial_killer_17_name => 'æ€§åŒ–æš´åŠ›';

  @override
  String get metric_serial_killer_17_description =>
      'è¯†åˆ«è¯­è¨€ä¸­æ€§ä¸Žæš´åŠ›ä¸»é¢˜çš„èžåˆã€‚';

  @override
  String get metric_serial_killer_18_name => 'å­¤ç«‹ç­–ç•¥';

  @override
  String get metric_serial_killer_18_description =>
      'è¯†åˆ«å°†ç›®æ ‡ä¸Žæ”¯æŒç½‘ç»œåˆ†ç¦»çš„ä¼å›¾ã€‚';

  @override
  String get metric_serial_killer_19_name => 'ç…¤æ°”ç¯æ¨¡å¼';

  @override
  String get metric_serial_killer_19_description =>
      'æ ‡è®°æ—¨åœ¨æ‰­æ›²çŽ°å®žã€ç ´åå—å®³è€…ç†æ™ºçš„è¯­è¨€ã€‚';

  @override
  String get metric_serial_killer_20_name => 'å¨èƒæŽ©é¥°';

  @override
  String get metric_serial_killer_20_description =>
      'æ£€æµ‹ä¼ªè£…æˆéšæ„é™ˆè¿°çš„éšå«å¨èƒæˆ–è­¦å‘Šã€‚';

  @override
  String get metric_serial_killer_21_name => 'å æœ‰æ€§è¯­è¨€';

  @override
  String get metric_serial_killer_21_description =>
      'è¯†åˆ«å¯¹ä»–äººå®£ç§°æ‰€æœ‰æƒæˆ–åº”å¾—æƒåˆ©çš„è¡¨è¿°ã€‚';

  @override
  String get metric_serial_killer_22_name => 'å¤ä»‡ä¸»é¢˜';

  @override
  String get metric_serial_killer_22_description =>
      'è¯†åˆ«å¯¹æŠ¥å¤æˆ–æƒ©ç½šæ‰€æ„ŸçŸ¥ä¸å…¬çš„æ‰§å¿µã€‚';

  @override
  String get metric_serial_killer_23_name => 'è‡ªæ‹å¼å¤¸å¤§';

  @override
  String get metric_serial_killer_23_description =>
      'æ ‡è®°è¿‡åº¦è‡ªæˆ‘é‡è¦æ„ŸåŠå¯¹ä»–äººä»·å€¼çš„æ¼ è§†ã€‚';

  @override
  String get metric_serial_killer_24_name => 'æƒ…æ„Ÿç–ç¦»';

  @override
  String get metric_serial_killer_24_description =>
      'æ£€æµ‹åœ¨è®¨è®ºåˆ›ä¼¤æˆ–ä¼¤å®³æ—¶è¡¨çŽ°å‡ºçš„ä¸´åºŠå¼æˆ–ç–è¿œè¯­æ°”ã€‚';

  @override
  String get metric_serial_killer_25_name => 'æ•é£Ÿè€…è€å¿ƒ';

  @override
  String get metric_serial_killer_25_description =>
      'è¯†åˆ«é’ˆå¯¹æœªæ¥å—å®³è¡Œä¸ºçš„é•¿æœŸè§„åˆ’è¯­è¨€ã€‚';

  @override
  String get metric_serial_killer_26_name => 'è¾¹ç•Œè¯•æŽ¢';

  @override
  String get metric_serial_killer_26_description =>
      'è¯†åˆ«è¯•æŽ¢æ½œåœ¨å—å®³è€…åº•çº¿æˆ–æŠµæŠ—åŠ›çš„è¡Œä¸ºã€‚';

  @override
  String get metric_serial_killer_27_name => 'ä¼¤å®³æœ€å°åŒ–';

  @override
  String get metric_serial_killer_27_description =>
      'æ ‡è®°å¯¹æš´åŠ›æˆ–è™å¾…è¡Œä¸ºä¸¥é‡æ€§çš„è½»ææ·¡å†™ã€‚';

  @override
  String get metric_serial_killer_28_name => 'æš´åŠ›æ­£å½“åŒ–';

  @override
  String get metric_serial_killer_28_description =>
      'æ£€æµ‹å°†ä¼¤å®³ä»–äººè§†ä¸ºå¿…è¦æˆ–åº”å¾—çš„åˆç†åŒ–è¡¨è¿°ã€‚';

  @override
  String get metric_serial_killer_29_name => 'å¼ºè¿«æ€§ä¸“æ³¨';

  @override
  String get metric_serial_killer_29_description =>
      'è¯†åˆ«å¯¹ç‰¹å®šäººæˆ–è¡Œä¸ºçš„é‡å¤æ€§ã€å›ºç€æ€ç»´ã€‚';

  @override
  String get metric_serial_killer_30_name => 'å†·é…·ç®—è®¡';

  @override
  String get metric_serial_killer_30_description =>
      'è¯†åˆ«å¯¹æœ‰å®³è¡ŒåŠ¨çš„ç­–ç•¥æ€§ã€æ— æƒ…æ„Ÿè§„åˆ’ã€‚';

  @override
  String get metric_serial_killer_31_name => 'æ¬ºéª—æ€§é­…åŠ›';

  @override
  String get metric_serial_killer_31_description =>
      'æ ‡è®°è¿‡åº¦å¥‰æ‰¿æˆ–è®¨å¥½æ€§è¯­è¨€ä»¥æ“çºµä»–äººã€‚';

  @override
  String get metric_serial_killer_32_name => 'å—å®³è€…å½’å’Ž';

  @override
  String get metric_serial_killer_32_description =>
      'æ£€æµ‹å°†è´£ä»»å½’å’ŽäºŽç›®æ ‡è‡ªèº«å—å®³çš„è¡Œä¸ºã€‚';

  @override
  String get metric_serial_killer_33_name => 'å‡çº§ä¿¡å·';

  @override
  String get metric_serial_killer_33_description =>
      'è¯†åˆ«æš´åŠ›è¯­è¨€ä¸­ä»Žå¹»æƒ³å‘æ„å›¾çš„å‡çº§è¿‡ç¨‹ã€‚';

  @override
  String get metric_serial_killer_34_name => 'å¯„ç”Ÿå–å‘';

  @override
  String get metric_serial_killer_34_description =>
      'è¯†åˆ«å°†ä»–äººè§†ä¸ºå¯å‰¥å‰Šèµ„æºçš„è¯­è¨€ã€‚';

  @override
  String get metric_serial_killer_35_name => 'å”¤é†’çº¿ç´¢';

  @override
  String get metric_serial_killer_35_description =>
      'æ ‡è®°ä¸Žæš´åŠ›ä¸»é¢˜ç›¸å…³çš„ç”Ÿç†å…´å¥‹æŒ‡æ ‡ã€‚';

  @override
  String get metric_serial_killer_36_name => 'å¿ è¯šæµ‹è¯•';

  @override
  String get metric_serial_killer_36_description =>
      'æ£€æµ‹è¦æ±‚åŒä¼™è¯æ˜Žå¿ è¯šæˆ–ä¿å¯†çš„è¡Œä¸ºã€‚';

  @override
  String get metric_serial_killer_37_name => 'ä»ªå¼åŒ–è¯­è¨€';

  @override
  String get metric_serial_killer_37_description =>
      'è¯†åˆ«å›´ç»•æš´åŠ›è¡Œä¸ºçš„æ¨¡å¼åŒ–ã€ä»ªå¼æ€§æŽªè¾žã€‚';

  @override
  String get metric_serial_killer_38_name => 'ä¼˜è¶Šæ€§ä¸»å¼ ';

  @override
  String get metric_serial_killer_38_description =>
      'è¯†åˆ«å£°ç§°è¶…è¶Šé“å¾·æˆ–æ³•å¾‹çº¦æŸçš„è¡¨è¿°ã€‚';

  @override
  String get metric_serial_killer_39_name => 'æƒ…æ„ŸçœŸç©º';

  @override
  String get metric_serial_killer_39_description =>
      'æ ‡è®°åœ¨éœ€è¦å…±æƒ…çš„è¯­å¢ƒä¸­ç¼ºä¹æƒ…æ„Ÿè¯æ±‡çš„çŽ°è±¡ã€‚';

  @override
  String get metric_serial_killer_40_name => 'æŽ å¤ºæ€§å¥½å¥‡';

  @override
  String get metric_serial_killer_40_description =>
      'æ£€æµ‹é’ˆå¯¹ç›®æ ‡ææƒ§æˆ–å¼±ç‚¹çš„æŽ¢ç©¶æ€§é—®é¢˜ã€‚';

  @override
  String get metric_serial_killer_41_name => 'å¨èƒæ²‰é»˜';

  @override
  String get metric_serial_killer_41_description =>
      'è¯†åˆ«æ—¨åœ¨é˜»æ­¢æŠ«éœ²æˆ–ä¸¾æŠ¥çš„è­¦å‘Šã€‚';

  @override
  String get metric_serial_killer_42_name => 'éžäººåŒ–æ¯”è¾ƒ';

  @override
  String get metric_serial_killer_42_description =>
      'è¯†åˆ«å°†äººæ¯”ä½œåŠ¨ç‰©ã€ç‰©ä½“æˆ–æ¬¡äººç±»å®žä½“çš„è¡¨è¿°ã€‚';

  @override
  String get metric_serial_killer_43_name => 'æŽ§åˆ¶æ€§è¯­è¨€';

  @override
  String get metric_serial_killer_43_description =>
      'æ ‡è®°æ—¨åœ¨æ”¯é…ä»–äººçš„å‘½ä»¤å¼æˆ–å¼ºåˆ¶è¯­æ°”ã€‚';

  @override
  String get metric_serial_killer_44_name => 'æ–½è™ç»†èŠ‚';

  @override
  String get metric_serial_killer_44_description =>
      'æ£€æµ‹å™è¿°ä¸­å¯¹ç—›è‹¦æˆ–æŠ˜ç£¨çš„è¿‡åº¦å…³æ³¨ã€‚';

  @override
  String get metric_serial_killer_45_name => 'æ“çºµæ€§å…±æƒ…';

  @override
  String get metric_serial_killer_45_description =>
      'è¯†åˆ«å‡è£…å…³å¿ƒä»¥é™ä½Žç›®æ ‡é˜²å¾¡çš„è¡Œä¸ºã€‚';

  @override
  String get metric_serial_killer_46_name => 'æ•é£Ÿè€…å‡è§†';

  @override
  String get metric_serial_killer_46_description =>
      'è¯†åˆ«æè¿°å¯¹ç›®æ ‡è¿›è¡Œå¼ºçƒˆã€ä¾µå…¥æ€§è§‚å¯Ÿçš„è¯­è¨€ã€‚';

  @override
  String get metric_serial_killer_47_name => 'æš´åŠ›èº«ä»½';

  @override
  String get metric_serial_killer_47_description =>
      'æ ‡è®°è‡ªæˆ‘è®¤åŒä¸ºæ•é£Ÿè€…ã€æ€æ‰‹æˆ–æ€ªç‰©çš„è¡¨è¿°ã€‚';

  @override
  String get metric_serial_killer_48_name => 'ç‹©çŒŽå¿«æ„Ÿ';

  @override
  String get metric_serial_killer_48_description =>
      'æ£€æµ‹åœ¨è·Ÿè¸ªæˆ–è¿½æ•å—å®³è€…è¿‡ç¨‹ä¸­è¡¨çŽ°å‡ºçš„å…´å¥‹ã€‚';

  @override
  String get metric_serial_killer_49_name => 'å¼ºè¿«æ€§å¿æ‚”';

  @override
  String get metric_serial_killer_49_description =>
      'è¯†åˆ«ä¸ºå¯»æ±‚å¿ƒç†è§£è„±è€ŒæŠ«éœ²æš´åŠ›è¡Œä¸ºçš„å†²åŠ¨ã€‚';

  @override
  String get metric_serial_killer_50_name => 'ç»ˆç»“æ€§è¯­è¨€';

  @override
  String get metric_serial_killer_50_description =>
      'è¯†åˆ«æ¶‰åŠç»“æŸã€æ€å®³æˆ–æ°¸ä¹…æ²‰é»˜ç›®æ ‡çš„è¡¨è¿°ã€‚';

  @override
  String get packNarcissistLabel => 'è‡ªæ‹è€…';

  @override
  String get packSerialKillerLabel => 'è¿žçŽ¯æ€æ‰‹';

  @override
  String get expansionPacksPurchased => 'å·²è´­ä¹°çš„æ‰©å±•åŒ…:';

  @override
  String get expansionPacksStillAvailable => 'ä»å¯è´­ä¹°çš„æ‰©å±•åŒ…';

  @override
  String get metricsOwned => 'å·²æ‹¥æœ‰çš„æŒ‡æ ‡';

  @override
  String get metricsStillAvailable => 'ä»å¯è´­ä¹°çš„æŒ‡æ ‡';

  @override
  String get getMore => 'èŽ·å–æ›´å¤š!';

  @override
  String get standardPackTitle => 'æ ‡å‡†åŒ…';

  @override
  String get goodPackTitle => 'å¥½åŒ…';

  @override
  String get badPackTitle => 'ååŒ…';

  @override
  String get uglyPackTitle => 'ä¸‘åŒ…';

  @override
  String get narcissistPackTitle => 'è‡ªæ‹è€…åŒ…';

  @override
  String get serialKillerPackTitle => 'è¿žçŽ¯æ€æ‰‹åŒ…';

  @override
  String get customMetricsTitle => 'è‡ªå®šä¹‰æŒ‡æ ‡';

  @override
  String metricsCountSubtitle(Object count) {
    return '$countä¸ªæŒ‡æ ‡';
  }

  @override
  String metricsAddonSubtitle(Object count) {
    return '$countä¸ªæŒ‡æ ‡é™„åŠ åŒ…';
  }

  @override
  String metricSingular(Object count) {
    return '$countä¸ªæŒ‡æ ‡';
  }

  @override
  String metricPlural(Object count) {
    return '$countä¸ªæŒ‡æ ‡';
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
  String get allPacksOwned => 'å·²æ‹¥æœ‰æ‰€æœ‰æ‰©å±•åŒ…!';

  @override
  String get restorePurchases => 'æ¢å¤è´­ä¹°';

  @override
  String get restorePurchasesButton => 'æ¢å¤ä¹‹å‰çš„è´­ä¹°';

  @override
  String get restorePurchasesSuccess => 'è´­ä¹°å·²æˆåŠŸæ¢å¤ï¼';

  @override
  String get restorePurchasesError => 'æ— æ³•æ¢å¤è´­ä¹°ã€‚è¯·é‡è¯•ã€‚';

  @override
  String get restorePurchasesNoneFound => 'æœªæ‰¾åˆ°ä¹‹å‰çš„è´­ä¹°ã€‚';

  @override
  String get discordAddonPopupTitle => 'DiscordåŠŸèƒ½';

  @override
  String get discordAddonPopupMessage =>
      'æ­¤åŠŸèƒ½å¯ä½œä¸ºé™„åŠ ç»„ä»¶ä½¿ç”¨ã€‚';

  @override
  String get discordAccordionTitle => 'Discordé›†æˆ';

  @override
  String get discordAccordionSubtitle => 'è¿žæŽ¥DiscordæœåŠ¡å™¨';

  @override
  String get selectDiscord => 'é€‰æ‹© Discord';

  @override
  String get enableDiscord => 'å¯ç”¨ Discord';

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
  String get packTheGood => 'åŒ…ï¼šå¥½çš„';

  @override
  String get packTheBad => 'åŒ…ï¼šåçš„';

  @override
  String get packTheUgly => 'åŒ…ï¼šä¸‘é™‹çš„';

  @override
  String get packTheNarcissist => 'åŒ…ï¼šè‡ªæ‹è€…';

  @override
  String get metricsExpansionPack => 'æŒ‡æ ‡æ‰©å±•åŒ…';

  @override
  String purchaseTitle(String title) {
    return 'è´­ä¹°';
  }

  @override
  String buyForPrice(String price) {
    return 'ä»¥$priceè´­ä¹°';
  }

  @override
  String get processingPurchase => 'æ­£åœ¨å¤„ç†è´­ä¹°...';

  @override
  String get waitingForStoreConfirmation => 'ç­‰å¾…å•†åº—ç¡®è®¤...';

  @override
  String get myMetricList => 'æˆ‘çš„æŒ‡æ ‡åˆ—è¡¨';

  @override
  String get botTokenSaved => 'æœºå™¨äººä»¤ç‰Œå·²ä¿å­˜';

  @override
  String failedToSaveError(String error) {
    return 'ä¿å­˜å¤±è´¥';
  }

  @override
  String get connectionTestNotImplemented => 'è¿žæŽ¥æµ‹è¯•å°šæœªå®žçŽ°';

  @override
  String get pasteDiscordBotTokenHint =>
      'åœ¨æ­¤å¤„ç²˜è´´æ‚¨çš„Discordæœºå™¨äººä»¤ç‰Œ';

  @override
  String get botTokenLabel => 'æœºå™¨äººä»¤ç‰Œ';

  @override
  String get botConfigButton => 'é…ç½®æœºå™¨äºº';

  @override
  String get customMetricPurchasePlaceholder => 'è‡ªå®šä¹‰æŒ‡æ ‡ï¼ˆè´­ä¹°ï¼‰';

  @override
  String get configureBotToken => 'é…ç½®æœºå™¨äººä»¤ç‰Œ';

  @override
  String get retryButton => 'é‡è¯•';

  @override
  String get ownerLabel => 'æ‰€æœ‰è€…';

  @override
  String get noMessagesInChannel => 'æ­¤é¢‘é“ä¸­æ²¡æœ‰æ¶ˆæ¯';

  @override
  String failedToImportError(String error) {
    return 'å¯¼å…¥å¤±è´¥';
  }

  @override
  String get proMembershipUpsell =>
      'å‡çº§åˆ°ä¸“ä¸šç‰ˆä»¥èŽ·å–å®Œæ•´è®¿é—®æƒé™';

  @override
  String unlockForPrice(String price) {
    return 'ä»¥$priceè§£é”';
  }

  @override
  String get startCapture => 'å¼€å§‹æ•èŽ·';

  @override
  String get finishAndProcess => 'å®Œæˆå¹¶å¤„ç†';

  @override
  String get cancelButton => 'å–æ¶ˆ';

  @override
  String get processScreenshots => 'å¤„ç†æˆªå›¾';

  @override
  String get startOver => 'é‡æ–°å¼€å§‹';

  @override
  String get capturingStatus => 'æ­£åœ¨æ•èŽ·...';

  @override
  String get captureComplete => 'æ•èŽ·å®Œæˆï¼';

  @override
  String get errorDialogTitle => 'é”™è¯¯';

  @override
  String failedToLoadConversation(String error) {
    return 'åŠ è½½å¯¹è¯å¤±è´¥';
  }

  @override
  String get selectConversationTitle => 'é€‰æ‹©å¯¹è¯';

  @override
  String get platformCredentialsTitle => 'å¹³å°å‡­è¯';

  @override
  String get saveCredentialsTooltip => 'ä¿å­˜å‡­è¯';

  @override
  String get upgradeToProPlusTitle => 'å‡çº§åˆ°ä¸“ä¸šç‰ˆ+';

  @override
  String get upgradeNowButton => 'ç«‹å³å‡çº§';

  @override
  String get selectLanguageTooltip => 'é€‰æ‹©è¯­è¨€';

  @override
  String get nextSizeButton => 'ä¸‹ä¸€ä¸ªå°ºå¯¸';

  @override
  String get startSequenceButton => 'å¼€å§‹åºåˆ—';

  @override
  String get nextSizeInstruction => 'ç‚¹å‡»ä¸‹ä¸€ä¸ªå°ºå¯¸ç»§ç»­';

  @override
  String get okButton => 'ç¡®å®š';

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
  String get tileMyAccountTitle => '我的账户';

  @override
  String get tileMyAccountDesc => '会员资格、推荐、购买、销售和开发者许可证';

  @override
  String get tileReferFriendsTitle => '推荐好友\n获得免费月份';

  @override
  String get tileReferFriendsDesc => '推荐5位运行报告的好友，即可获得一个月免费标准版！';

  @override
  String get tileUserPacksTitle => '用户提交的\n指标包';

  @override
  String get tileUserPacksDesc => '浏览并购买社区创建的指标包。提交您自己的指标包以获得积分！';

  @override
  String get tileBrowseButton => '浏览';

  @override
  String get purchaseDialogCancel => '取消';

  @override
  String installedPacksAccordionSubtitle(int count) {
    return '$count 个指标 — 社区包';
  }
}
