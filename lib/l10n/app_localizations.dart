import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('nl'),
    Locale('pl'),
    Locale('pt'),
    Locale('ru'),
    Locale('tr'),
    Locale('uk'),
    Locale('zh')
  ];

  /// The app title displayed in the app bar
  ///
  /// In en, this message translates to:
  /// **'AI Relationship Toxicity Analyzer'**
  String get appTitle;

  /// Title for the metrics selection section
  ///
  /// In en, this message translates to:
  /// **'Psychological Metrics'**
  String get psychologicalMetrics;

  /// Explanation of how metric selection affects analysis
  ///
  /// In en, this message translates to:
  /// **'Fewer selected metrics produce a deeper, more concentrated analysis of those behaviors. More selected metrics produce a broader report with less detail per metric.'**
  String get metricsDescription;

  /// Button to select SMS messages
  ///
  /// In en, this message translates to:
  /// **'Select SMS / RCS Chat'**
  String get selectSMS;

  /// Button to select Discord channel
  ///
  /// In en, this message translates to:
  /// **'Select Channel'**
  String get selectDiscordChannel;

  /// Light mode label
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get lightMode;

  /// Dark mode label
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get darkMode;

  /// Title for Discord setup help dialog
  ///
  /// In en, this message translates to:
  /// **'How to Set Up Discord'**
  String get discordSetupTitle;

  /// Description for Discord setup help
  ///
  /// In en, this message translates to:
  /// **'Follow these steps to enable Discord channel analysis in the app:'**
  String get discordSetupDescription;

  /// Step 1 title for Discord setup
  ///
  /// In en, this message translates to:
  /// **'Create a Discord Bot'**
  String get discordStep1Title;

  /// Step 1 description for Discord setup
  ///
  /// In en, this message translates to:
  /// **'1. Go to discord.com/developers and click \'New Application\'\n2. Enter a name (e.g., \'AIRTA Bot\') and click Create\n3. In the left sidebar, click \'Bot\'\n4. Click \'Add Bot\' and confirm \'Yes, do it!\'\n5. Under the bot username, click \'Reset Token\' then \'Copy\' to save it\n6. Turn OFF \'Public Bot\' (private use only)\n7. Turn ON \'Message Content Intent\' and \'Server Members Intent\''**
  String get discordStep1Description;

  /// Step 2 title for Discord setup
  ///
  /// In en, this message translates to:
  /// **'Get Your Bot Token'**
  String get discordStep2Title;

  /// Step 2 description for Discord setup
  ///
  /// In en, this message translates to:
  /// **'In the Bot section (left sidebar), click \'Reset Token\' under the bot username, then click \'Copy\'. This token is your bot\'s password—keep it secret! Paste it into AIRTA\'s Discord settings.'**
  String get discordStep2Description;

  /// Step 3 title for Discord setup
  ///
  /// In en, this message translates to:
  /// **'Invite Bot to Your Server'**
  String get discordStep3Title;

  /// Step 3 description for Discord setup
  ///
  /// In en, this message translates to:
  /// **'1. In the left sidebar, click \'OAuth2\' then \'URL Generator\'\n2. Under \'SCOPES\', check \'bot\'\n3. Under \'BOT PERMISSIONS\', check:\n   • Read Messages/View Channels\n   • Read Message History\n   • Send Messages (optional)\n4. Copy the generated URL at the bottom\n5. Paste it in a new browser tab and select your server\n6. Click \'Authorize\' and complete the CAPTCHA'**
  String get discordStep3Description;

  /// Step 4 title for Discord setup
  ///
  /// In en, this message translates to:
  /// **'Enter Token in AIRTA'**
  String get discordStep4Title;

  /// Step 4 description for Discord setup
  ///
  /// In en, this message translates to:
  /// **'Return to this app, go to Settings → Discord Bot Configuration, paste your bot token, and tap Save. The app will verify your bot can connect to Discord.'**
  String get discordStep4Description;

  /// Step 5 title for Discord setup
  ///
  /// In en, this message translates to:
  /// **'Select a Channel to Analyze'**
  String get discordStep5Title;

  /// Step 5 description for Discord setup
  ///
  /// In en, this message translates to:
  /// **'Back on the main screen, tap \'Select Discord Channel\'. Choose your server from the list, then pick the channel you want to analyze. AIRTA will fetch recent messages and analyze them for relationship toxicity patterns.'**
  String get discordStep5Description;

  /// Button to go to bot configuration page
  ///
  /// In en, this message translates to:
  /// **'Bot Configuration'**
  String get discordBotConfiguration;

  /// Discord bot settings localization
  ///
  /// In en, this message translates to:
  /// **'Discord Bot Configuration'**
  String get discordBotConfigTitle;

  /// Discord bot settings localization
  ///
  /// In en, this message translates to:
  /// **'Bot Token Setup'**
  String get discordBotTokenSetupTitle;

  /// Discord bot settings localization
  ///
  /// In en, this message translates to:
  /// **'Enter your Discord bot token below. This is required to access your Discord servers and channels.'**
  String get discordBotTokenSetupDescription;

  /// Discord bot settings localization
  ///
  /// In en, this message translates to:
  /// **'Where to find your bot token:'**
  String get discordWhereToFindToken;

  /// Discord bot settings localization
  ///
  /// In en, this message translates to:
  /// **'Go to discord.com/developers'**
  String get discordStepDiscordDevelopers;

  /// Discord bot settings localization
  ///
  /// In en, this message translates to:
  /// **'Click on your application'**
  String get discordStepClickApplication;

  /// Discord bot settings localization
  ///
  /// In en, this message translates to:
  /// **'Go to \"Bot\" section'**
  String get discordStepGoToBot;

  /// Discord bot settings localization
  ///
  /// In en, this message translates to:
  /// **'Click \"Reset Token\" if needed'**
  String get discordStepResetToken;

  /// Discord bot settings localization
  ///
  /// In en, this message translates to:
  /// **'Copy the token and paste it below'**
  String get discordStepCopyToken;

  /// Discord bot settings localization
  ///
  /// In en, this message translates to:
  /// **'⚠️ Never share this token with anyone!'**
  String get discordNeverShareToken;

  /// Discord bot settings localization
  ///
  /// In en, this message translates to:
  /// **'Bot Token'**
  String get discordBotTokenLabel;

  /// Discord bot settings localization
  ///
  /// In en, this message translates to:
  /// **'Paste your Discord bot token here'**
  String get discordBotTokenHint;

  /// Discord bot settings localization
  ///
  /// In en, this message translates to:
  /// **'Please enter your bot token'**
  String get discordTokenRequiredError;

  /// Discord bot settings localization
  ///
  /// In en, this message translates to:
  /// **'Token appears too short'**
  String get discordTokenTooShortError;

  /// Discord bot settings localization
  ///
  /// In en, this message translates to:
  /// **'Save Token'**
  String get discordSaveToken;

  /// Discord bot settings localization
  ///
  /// In en, this message translates to:
  /// **'Saving...'**
  String get discordSaving;

  /// Discord bot settings localization
  ///
  /// In en, this message translates to:
  /// **'Test Connection'**
  String get discordTestConnection;

  /// Discord bot settings localization
  ///
  /// In en, this message translates to:
  /// **'View Full Setup Instructions'**
  String get discordViewFullSetup;

  /// Discord bot settings localization
  ///
  /// In en, this message translates to:
  /// **'Bot token saved successfully'**
  String get discordTokenSavedSuccess;

  /// Discord bot settings localization
  ///
  /// In en, this message translates to:
  /// **'Failed to save'**
  String get discordTokenSaveFailed;

  /// Discord bot settings localization
  ///
  /// In en, this message translates to:
  /// **'Connection test not yet implemented'**
  String get discordConnectionTestNotImplemented;

  /// Discord bot settings localization
  ///
  /// In en, this message translates to:
  /// **'Ready to configure your bot?'**
  String get discordReadyToConfigureTitle;

  /// Discord bot settings localization
  ///
  /// In en, this message translates to:
  /// **'Once you\'ve created your Discord bot following the steps above, enter your bot token in the settings to start analyzing.'**
  String get discordReadyToConfigureDescription;

  /// Button to dismiss help dialog
  ///
  /// In en, this message translates to:
  /// **'Got it'**
  String get gotIt;

  /// Button to select a file
  ///
  /// In en, this message translates to:
  /// **'Select file'**
  String get selectFile;

  /// Button to analyze selected metrics
  ///
  /// In en, this message translates to:
  /// **'Analyze Selected metrics'**
  String get analyzeSelectedMetrics;

  /// Button to analyze 20 random metrics
  ///
  /// In en, this message translates to:
  /// **'Analyze 20 Random metrics'**
  String get analyze20RandomMetrics;

  /// Title for membership landing page
  ///
  /// In en, this message translates to:
  /// **'Membership Options'**
  String get membershipOptions;

  /// Free tier label
  ///
  /// In en, this message translates to:
  /// **'Free'**
  String get free;

  /// One-time unlock tier label
  ///
  /// In en, this message translates to:
  /// **'One-Time Report Unlock'**
  String get oneTimeUnlock;

  /// Standard tier label
  ///
  /// In en, this message translates to:
  /// **'Standard'**
  String get standard;

  /// Discord addon label
  ///
  /// In en, this message translates to:
  /// **'Discord Addon'**
  String get discordAddon;

  /// Analyze button/action
  ///
  /// In en, this message translates to:
  /// **'Analyze'**
  String get analyze;

  /// Report label
  ///
  /// In en, this message translates to:
  /// **'Report'**
  String get report;

  /// PDF report label
  ///
  /// In en, this message translates to:
  /// **'PDF Report'**
  String get pdfReport;

  /// Button to open PDF
  ///
  /// In en, this message translates to:
  /// **'Open PDF'**
  String get openPdf;

  /// Button to share PDF
  ///
  /// In en, this message translates to:
  /// **'Share PDF'**
  String get sharePdf;

  /// Button to print PDF
  ///
  /// In en, this message translates to:
  /// **'Print PDF'**
  String get printPdf;

  /// Button to close PDF preview
  ///
  /// In en, this message translates to:
  /// **'Close PDF Preview Window'**
  String get closePdfPreview;

  /// Button to open PDF preview
  ///
  /// In en, this message translates to:
  /// **'Open PDF Preview Window'**
  String get openPdfPreview;

  /// Explanation of PDF preview window
  ///
  /// In en, this message translates to:
  /// **'The embedded PDF window starts closed to keep the report compact.'**
  String get pdfPreviewDescription;

  /// Button to dismiss purchase dialog
  ///
  /// In en, this message translates to:
  /// **'Not now'**
  String get notNow;

  /// Button to unlock single report
  ///
  /// In en, this message translates to:
  /// **'Unlock This Report - \$20'**
  String get unlockThisReport;

  /// Button to join Standard membership
  ///
  /// In en, this message translates to:
  /// **'Join Standard - \$9.99/mo'**
  String get joinStandard;

  /// Title for instant unlock dialog
  ///
  /// In en, this message translates to:
  /// **'Instant Report Unlock - \$20'**
  String get instantUnlockTitle;

  /// Description for instant unlock purchase
  ///
  /// In en, this message translates to:
  /// **'This is a one-time purchase to unlock the current report only. No subscription required. Future reports will require separate unlocks or a membership.\n\nProceed with payment?'**
  String get instantUnlockDescription;

  /// Button to purchase for $20
  ///
  /// In en, this message translates to:
  /// **'Purchase for \$20'**
  String get purchaseFor20;

  /// Share action
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// Print action
  ///
  /// In en, this message translates to:
  /// **'Print'**
  String get print;

  /// Save action
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// Cancel action
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// OK button
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// Loading indicator text
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// Error label
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// Success label
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success;

  /// Conversations label
  ///
  /// In en, this message translates to:
  /// **'Conversations'**
  String get conversations;

  /// Messages label
  ///
  /// In en, this message translates to:
  /// **'Messages'**
  String get messages;

  /// Select conversation prompt
  ///
  /// In en, this message translates to:
  /// **'Select Conversation'**
  String get selectConversation;

  /// Title for SMS conversation picker screen
  ///
  /// In en, this message translates to:
  /// **'Select SMS / RCS Conversation'**
  String get selectSmsConversation;

  /// Hint text for conversation search field
  ///
  /// In en, this message translates to:
  /// **'Search conversations...'**
  String get searchConversations;

  /// Loading indicator text for conversations
  ///
  /// In en, this message translates to:
  /// **'Loading conversations...'**
  String get loadingConversations;

  /// Error dialog title for conversation loading failure
  ///
  /// In en, this message translates to:
  /// **'Error Loading Conversations'**
  String get errorLoadingConversations;

  /// Dashboard title prompt
  ///
  /// In en, this message translates to:
  /// **'Select conversation to analyze'**
  String get selectConversationToAnalyze;

  /// Button to analyze with selected metrics
  ///
  /// In en, this message translates to:
  /// **'Analyze with the selected metrics'**
  String get analyzeWithSelectedMetrics;

  /// Hint to load conversation first
  ///
  /// In en, this message translates to:
  /// **'Load a conversation and select at least one metric'**
  String get loadConversationAndSelectMetric;

  /// Error message when no metrics selected
  ///
  /// In en, this message translates to:
  /// **'At least one metric needs to be selected to run the report.'**
  String get selectAtLeastOneMetric;

  /// Text shown while randomizing metrics
  ///
  /// In en, this message translates to:
  /// **'Spinning the metric wheel...'**
  String get spinningMetricWheel;

  /// Hint to load conversation for random analysis
  ///
  /// In en, this message translates to:
  /// **'Load a conversation to analyze'**
  String get loadConversationToAnalyze;

  /// Message when no conversations exist
  ///
  /// In en, this message translates to:
  /// **'No conversations found'**
  String get noConversationsFound;

  /// Permissions dialog title
  ///
  /// In en, this message translates to:
  /// **'Permissions Required'**
  String get permissionsRequired;

  /// SMS permission label
  ///
  /// In en, this message translates to:
  /// **'Text Messages'**
  String get smsPermission;

  /// Contacts permission label
  ///
  /// In en, this message translates to:
  /// **'Contacts'**
  String get contactsPermission;

  /// SMS permission description
  ///
  /// In en, this message translates to:
  /// **'To analyze your SMS conversations for relationship patterns'**
  String get smsPermissionDescription;

  /// Contacts permission description
  ///
  /// In en, this message translates to:
  /// **'To display contact names instead of phone numbers'**
  String get contactsPermissionDescription;

  /// Message shown while AI is analyzing
  ///
  /// In en, this message translates to:
  /// **'Stand by while your psychological analysis is generated by AI...'**
  String get analyzingMessage;

  /// Short status message shown during analysis
  ///
  /// In en, this message translates to:
  /// **'Analyzing conversation...'**
  String get analyzingStatus;

  /// Sub-message shown while AI is analyzing
  ///
  /// In en, this message translates to:
  /// **'Please be patient, this process could take up to a minute depending on your connection speed and the quantity of selected metrics'**
  String get analyzingSubMessage;

  /// Button to unlock full report
  ///
  /// In en, this message translates to:
  /// **'Unlock and show this entire report'**
  String get unlockFullReport;

  /// Title when report is locked
  ///
  /// In en, this message translates to:
  /// **'Full Report Locked'**
  String get fullReportLocked;

  /// Message explaining why report is locked
  ///
  /// In en, this message translates to:
  /// **'Upgrade your membership to unlock the full psychological analysis report with all metrics and detailed insights.'**
  String get upgradeToUnlock;

  /// Language selector label
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// English language name
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// Spanish language name
  ///
  /// In en, this message translates to:
  /// **'Spanish'**
  String get spanish;

  /// French language name
  ///
  /// In en, this message translates to:
  /// **'French'**
  String get french;

  /// German language name
  ///
  /// In en, this message translates to:
  /// **'German'**
  String get german;

  /// Italian language name
  ///
  /// In en, this message translates to:
  /// **'Italian'**
  String get italian;

  /// Portuguese language name
  ///
  /// In en, this message translates to:
  /// **'Portuguese'**
  String get portuguese;

  /// Dutch language name
  ///
  /// In en, this message translates to:
  /// **'Dutch'**
  String get dutch;

  /// Russian language name
  ///
  /// In en, this message translates to:
  /// **'Russian'**
  String get russian;

  /// Chinese language name
  ///
  /// In en, this message translates to:
  /// **'Chinese'**
  String get chinese;

  /// Japanese language name
  ///
  /// In en, this message translates to:
  /// **'Japanese'**
  String get japanese;

  /// Korean language name
  ///
  /// In en, this message translates to:
  /// **'Korean'**
  String get korean;

  /// Arabic language name
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get arabic;

  /// Hindi language name
  ///
  /// In en, this message translates to:
  /// **'Hindi'**
  String get hindi;

  /// Turkish language name
  ///
  /// In en, this message translates to:
  /// **'Turkish'**
  String get turkish;

  /// Polish language name
  ///
  /// In en, this message translates to:
  /// **'Polish'**
  String get polish;

  /// Ukrainian language name
  ///
  /// In en, this message translates to:
  /// **'Ukrainian'**
  String get ukrainian;

  /// No description provided for @runAnotherAnalysis.
  ///
  /// In en, this message translates to:
  /// **'Run another analysis?'**
  String get runAnotherAnalysis;

  /// No description provided for @becomeMemberTitle.
  ///
  /// In en, this message translates to:
  /// **'Become a member to get the full analysis report'**
  String get becomeMemberTitle;

  /// No description provided for @becomeMemberSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose the access level that matches the conversations and reports you need to analyze.'**
  String get becomeMemberSubtitle;

  /// No description provided for @benefitAnalyzeSms.
  ///
  /// In en, this message translates to:
  /// **'Analyze SMS text messages'**
  String get benefitAnalyzeSms;

  /// No description provided for @benefitReportPreview.
  ///
  /// In en, this message translates to:
  /// **'Run a report preview'**
  String get benefitReportPreview;

  /// No description provided for @benefitViewPartialReport.
  ///
  /// In en, this message translates to:
  /// **'View about 25% of the report'**
  String get benefitViewPartialReport;

  /// No description provided for @benefitLockedDetails.
  ///
  /// In en, this message translates to:
  /// **'Locked full report details'**
  String get benefitLockedDetails;

  /// No description provided for @currentFreeAccess.
  ///
  /// In en, this message translates to:
  /// **'Current free access'**
  String get currentFreeAccess;

  /// No description provided for @benefitUnlockCurrentReport.
  ///
  /// In en, this message translates to:
  /// **'Unlock this current full report'**
  String get benefitUnlockCurrentReport;

  /// No description provided for @benefitNoSubscription.
  ///
  /// In en, this message translates to:
  /// **'No subscription'**
  String get benefitNoSubscription;

  /// No description provided for @benefitSavePrintShareThis.
  ///
  /// In en, this message translates to:
  /// **'Save, print, and share this report'**
  String get benefitSavePrintShareThis;

  /// No description provided for @benefitBestSingleAnalysis.
  ///
  /// In en, this message translates to:
  /// **'Best if you only need one analysis'**
  String get benefitBestSingleAnalysis;

  /// No description provided for @unlockThisReportShort.
  ///
  /// In en, this message translates to:
  /// **'Unlock This Report'**
  String get unlockThisReportShort;

  /// No description provided for @benefitFullSmsReport.
  ///
  /// In en, this message translates to:
  /// **'Full SMS analysis report'**
  String get benefitFullSmsReport;

  /// No description provided for @benefitSavePrintSharePdf.
  ///
  /// In en, this message translates to:
  /// **'Save, print, and share PDF reports'**
  String get benefitSavePrintSharePdf;

  /// No description provided for @benefitTenReports.
  ///
  /// In en, this message translates to:
  /// **'10 reports per 24-hour period'**
  String get benefitTenReports;

  /// No description provided for @benefitBestTextReview.
  ///
  /// In en, this message translates to:
  /// **'Best for text-message relationship review'**
  String get benefitBestTextReview;

  /// No description provided for @benefitDateRangeFilter.
  ///
  /// In en, this message translates to:
  /// **'Filter analysis by date range'**
  String get benefitDateRangeFilter;

  /// No description provided for @signUpStandard.
  ///
  /// In en, this message translates to:
  /// **'Sign up for Standard Membership'**
  String get signUpStandard;

  /// No description provided for @benefitAddToStandard.
  ///
  /// In en, this message translates to:
  /// **'Add to Standard membership'**
  String get benefitAddToStandard;

  /// No description provided for @benefitAnalyzeDiscord.
  ///
  /// In en, this message translates to:
  /// **'Analyze Discord server chats'**
  String get benefitAnalyzeDiscord;

  /// No description provided for @benefitRequiresBot.
  ///
  /// In en, this message translates to:
  /// **'Requires bot installation'**
  String get benefitRequiresBot;

  /// No description provided for @benefitBestGamers.
  ///
  /// In en, this message translates to:
  /// **'Best for gamers and Discord communities'**
  String get benefitBestGamers;

  /// No description provided for @addDiscordAnalysis.
  ///
  /// In en, this message translates to:
  /// **'Add Discord Analysis'**
  String get addDiscordAnalysis;

  /// No description provided for @requiresStandardMembership.
  ///
  /// In en, this message translates to:
  /// **'Requires Standard Membership'**
  String get requiresStandardMembership;

  /// No description provided for @comingSoon.
  ///
  /// In en, this message translates to:
  /// **'Coming Soon'**
  String get comingSoon;

  /// No description provided for @comingSoonWithNextUpdate.
  ///
  /// In en, this message translates to:
  /// **'Coming soon with next update:'**
  String get comingSoonWithNextUpdate;

  /// No description provided for @proMembershipTier.
  ///
  /// In en, this message translates to:
  /// **'Pro Membership Tier - \$19.99'**
  String get proMembershipTier;

  /// No description provided for @proPlusMembershipTier.
  ///
  /// In en, this message translates to:
  /// **'Pro-Plus Membership Tier - \$24.99'**
  String get proPlusMembershipTier;

  /// No description provided for @proGetsLabel.
  ///
  /// In en, this message translates to:
  /// **'Pro gets:'**
  String get proGetsLabel;

  /// No description provided for @proGetsDescription.
  ///
  /// In en, this message translates to:
  /// **'Analyze chat threads from all the other popular texting and social media platforms such as:'**
  String get proGetsDescription;

  /// No description provided for @proPlatformsList.
  ///
  /// In en, this message translates to:
  /// **'LinkedIn, WhatsApp, Instagram, Facebook Messenger, Telegram, X (Twitter), Email, and Calendar'**
  String get proPlatformsList;

  /// No description provided for @proPlusGetsLabel.
  ///
  /// In en, this message translates to:
  /// **'Pro-Plus gets:'**
  String get proPlusGetsLabel;

  /// No description provided for @proPlusGetsDescription.
  ///
  /// In en, this message translates to:
  /// **'Everything in Pro, plus the Discord addon at a reduced price.'**
  String get proPlusGetsDescription;

  /// No description provided for @purchaseSuccessfulUnlocked.
  ///
  /// In en, this message translates to:
  /// **'Purchase successful! Report unlocked.'**
  String get purchaseSuccessfulUnlocked;

  /// No description provided for @purchaseFailed.
  ///
  /// In en, this message translates to:
  /// **'Purchase failed. Please try again.'**
  String get purchaseFailed;

  /// No description provided for @membershipActivated.
  ///
  /// In en, this message translates to:
  /// **'Membership activated!'**
  String get membershipActivated;

  /// No description provided for @dateRangeFilter.
  ///
  /// In en, this message translates to:
  /// **'Date Range Filter'**
  String get dateRangeFilter;

  /// No description provided for @dateRangeOptional.
  ///
  /// In en, this message translates to:
  /// **'(optional)'**
  String get dateRangeOptional;

  /// No description provided for @startDate.
  ///
  /// In en, this message translates to:
  /// **'Start Date'**
  String get startDate;

  /// No description provided for @endDate.
  ///
  /// In en, this message translates to:
  /// **'End Date'**
  String get endDate;

  /// No description provided for @clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// No description provided for @dateRangeRequiresMembership.
  ///
  /// In en, this message translates to:
  /// **'Requires Standard Membership or higher'**
  String get dateRangeRequiresMembership;

  /// No description provided for @selectUpToCount.
  ///
  /// In en, this message translates to:
  /// **'Select up to {max}. Current: {current}'**
  String selectUpToCount(Object current, Object max);

  /// No description provided for @clearSelections.
  ///
  /// In en, this message translates to:
  /// **'Clear Selections'**
  String get clearSelections;

  /// No description provided for @analyzeRandomMetrics.
  ///
  /// In en, this message translates to:
  /// **'Analyze {count} random metrics'**
  String analyzeRandomMetrics(Object count);

  /// No description provided for @saveSelections.
  ///
  /// In en, this message translates to:
  /// **'Save Selections'**
  String get saveSelections;

  /// No description provided for @loadSelections.
  ///
  /// In en, this message translates to:
  /// **'Load Selections'**
  String get loadSelections;

  /// No description provided for @saveMetricListName.
  ///
  /// In en, this message translates to:
  /// **'Save Metric List'**
  String get saveMetricListName;

  /// No description provided for @enterListName.
  ///
  /// In en, this message translates to:
  /// **'Enter a name for this metric list:'**
  String get enterListName;

  /// No description provided for @chooseSavedMetrics.
  ///
  /// In en, this message translates to:
  /// **'Choose saved metrics list:'**
  String get chooseSavedMetrics;

  /// No description provided for @noSavedLists.
  ///
  /// In en, this message translates to:
  /// **'No saved metric lists to load at this time.'**
  String get noSavedLists;

  /// No description provided for @metricListSaved.
  ///
  /// In en, this message translates to:
  /// **'Metric list saved successfully.'**
  String get metricListSaved;

  /// No description provided for @metricListLoaded.
  ///
  /// In en, this message translates to:
  /// **'Metric list loaded successfully.'**
  String get metricListLoaded;

  /// Header for the filters section in SMS conversation picker
  ///
  /// In en, this message translates to:
  /// **'Filters'**
  String get filters;

  /// Label for sort options
  ///
  /// In en, this message translates to:
  /// **'Sort by:'**
  String get sortBy;

  /// Sort option for most recent messages
  ///
  /// In en, this message translates to:
  /// **'Recent'**
  String get recent;

  /// Sort option by contact name
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// Sort option by message count
  ///
  /// In en, this message translates to:
  /// **'Count'**
  String get count;

  /// Checkbox label to show only threads with contact names
  ///
  /// In en, this message translates to:
  /// **'Named only'**
  String get namedOnly;

  /// Checkbox label for minimum message count filter
  ///
  /// In en, this message translates to:
  /// **'Min messages:'**
  String get minMessages;

  /// Label showing the minimum message count value
  ///
  /// In en, this message translates to:
  /// **'Minimum messages:'**
  String get minimumMessages;

  /// No description provided for @executiveSummary.
  ///
  /// In en, this message translates to:
  /// **'Executive Summary'**
  String get executiveSummary;

  /// No description provided for @metricScores.
  ///
  /// In en, this message translates to:
  /// **'Metric Scores'**
  String get metricScores;

  /// No description provided for @contextualEvidenceExamples.
  ///
  /// In en, this message translates to:
  /// **'Contextual Evidence Examples'**
  String get contextualEvidenceExamples;

  /// No description provided for @neutralSynthesis.
  ///
  /// In en, this message translates to:
  /// **'Neutral Synthesis'**
  String get neutralSynthesis;

  /// No description provided for @analysisOfSender.
  ///
  /// In en, this message translates to:
  /// **'Analysis of {sender} (Sender)'**
  String analysisOfSender(Object sender);

  /// No description provided for @analysisOfReceiver.
  ///
  /// In en, this message translates to:
  /// **'Analysis of {receiver} (Receiver)'**
  String analysisOfReceiver(Object receiver);

  /// No description provided for @finalConclusion.
  ///
  /// In en, this message translates to:
  /// **'Final Conclusion'**
  String get finalConclusion;

  /// No description provided for @metric_1_name.
  ///
  /// In en, this message translates to:
  /// **'Contempt'**
  String get metric_1_name;

  /// No description provided for @metric_1_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for superiority, disgust, mockery, eye-rolling language, or insults that place one partner beneath the other.'**
  String get metric_1_description;

  /// No description provided for @metric_2_name.
  ///
  /// In en, this message translates to:
  /// **'Defensiveness'**
  String get metric_2_name;

  /// No description provided for @metric_2_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks reflexive self-protection, counterattacks, excuses, and refusal to consider the other person\'s complaint.'**
  String get metric_2_description;

  /// No description provided for @metric_3_name.
  ///
  /// In en, this message translates to:
  /// **'Stonewalling'**
  String get metric_3_name;

  /// No description provided for @metric_3_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies shutdown, withdrawal, ignoring, refusal to answer, or ending conversations to avoid engagement.'**
  String get metric_3_description;

  /// No description provided for @metric_4_name.
  ///
  /// In en, this message translates to:
  /// **'Criticism'**
  String get metric_4_name;

  /// No description provided for @metric_4_description.
  ///
  /// In en, this message translates to:
  /// **'Detects attacks on character or personality instead of specific behaviors, needs, or incidents.'**
  String get metric_4_description;

  /// No description provided for @metric_5_name.
  ///
  /// In en, this message translates to:
  /// **'Gaslighting Indicators'**
  String get metric_5_name;

  /// No description provided for @metric_5_description.
  ///
  /// In en, this message translates to:
  /// **'Flags attempts to make someone doubt memory, perception, sanity, or the legitimacy of their experience.'**
  String get metric_5_description;

  /// No description provided for @metric_6_name.
  ///
  /// In en, this message translates to:
  /// **'Blame Shifting'**
  String get metric_6_name;

  /// No description provided for @metric_6_description.
  ///
  /// In en, this message translates to:
  /// **'Measures whether responsibility is redirected onto the other partner instead of being acknowledged directly.'**
  String get metric_6_description;

  /// No description provided for @metric_7_name.
  ///
  /// In en, this message translates to:
  /// **'Escalation Pattern'**
  String get metric_7_name;

  /// No description provided for @metric_7_description.
  ///
  /// In en, this message translates to:
  /// **'Evaluates whether tone, accusations, intensity, or threats increase instead of moving toward resolution.'**
  String get metric_7_description;

  /// No description provided for @metric_8_name.
  ///
  /// In en, this message translates to:
  /// **'Repair Attempt Recognition'**
  String get metric_8_name;

  /// No description provided for @metric_8_description.
  ///
  /// In en, this message translates to:
  /// **'Checks whether apologies, humor, pauses, reassurance, or peace offerings are noticed and accepted.'**
  String get metric_8_description;

  /// No description provided for @metric_9_name.
  ///
  /// In en, this message translates to:
  /// **'Accountability Language'**
  String get metric_9_name;

  /// No description provided for @metric_9_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for clear ownership of harm, specific responsibility, and willingness to change behavior.'**
  String get metric_9_description;

  /// No description provided for @metric_10_name.
  ///
  /// In en, this message translates to:
  /// **'Boundary Respect'**
  String get metric_10_name;

  /// No description provided for @metric_10_description.
  ///
  /// In en, this message translates to:
  /// **'Assesses whether stated limits around time, privacy, body, emotions, or contact are honored.'**
  String get metric_10_description;

  /// No description provided for @metric_11_name.
  ///
  /// In en, this message translates to:
  /// **'Coercive Control Indicators'**
  String get metric_11_name;

  /// No description provided for @metric_11_description.
  ///
  /// In en, this message translates to:
  /// **'Flags patterns of intimidation, restriction, monitoring, dependency, or control over choices and movement.'**
  String get metric_11_description;

  /// No description provided for @metric_12_name.
  ///
  /// In en, this message translates to:
  /// **'Threat Language'**
  String get metric_12_name;

  /// No description provided for @metric_12_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies explicit or implied threats involving safety, abandonment, exposure, retaliation, or punishment.'**
  String get metric_12_description;

  /// No description provided for @metric_13_name.
  ///
  /// In en, this message translates to:
  /// **'Dismissiveness'**
  String get metric_13_name;

  /// No description provided for @metric_13_description.
  ///
  /// In en, this message translates to:
  /// **'Detects brushing off concerns, treating needs as unimportant, or refusing to take distress seriously.'**
  String get metric_13_description;

  /// No description provided for @metric_14_name.
  ///
  /// In en, this message translates to:
  /// **'Invalidation'**
  String get metric_14_name;

  /// No description provided for @metric_14_description.
  ///
  /// In en, this message translates to:
  /// **'Measures denial, ridicule, or correction of another person\'s emotions instead of acknowledging them.'**
  String get metric_14_description;

  /// No description provided for @metric_15_name.
  ///
  /// In en, this message translates to:
  /// **'Empathy Expression'**
  String get metric_15_name;

  /// No description provided for @metric_15_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for perspective-taking, care, emotional recognition, and concern for the other person\'s experience.'**
  String get metric_15_description;

  /// No description provided for @metric_16_name.
  ///
  /// In en, this message translates to:
  /// **'Reciprocity'**
  String get metric_16_name;

  /// No description provided for @metric_16_description.
  ///
  /// In en, this message translates to:
  /// **'Assesses whether attention, effort, apology, compromise, and emotional support flow both ways.'**
  String get metric_16_description;

  /// No description provided for @metric_17_name.
  ///
  /// In en, this message translates to:
  /// **'Emotional Regulation'**
  String get metric_17_name;

  /// No description provided for @metric_17_description.
  ///
  /// In en, this message translates to:
  /// **'Evaluates ability to stay grounded, pause, self-soothe, and communicate without explosive reactivity.'**
  String get metric_17_description;

  /// No description provided for @metric_18_name.
  ///
  /// In en, this message translates to:
  /// **'Sarcasm Used as Harm'**
  String get metric_18_name;

  /// No description provided for @metric_18_description.
  ///
  /// In en, this message translates to:
  /// **'Flags sarcasm used to belittle, punish, humiliate, or disguise hostility as humor.'**
  String get metric_18_description;

  /// No description provided for @metric_19_name.
  ///
  /// In en, this message translates to:
  /// **'Name Calling'**
  String get metric_19_name;

  /// No description provided for @metric_19_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies derogatory labels, insults, profanity directed at the person, or identity-based attacks.'**
  String get metric_19_description;

  /// No description provided for @metric_20_name.
  ///
  /// In en, this message translates to:
  /// **'Silent Treatment Pattern'**
  String get metric_20_name;

  /// No description provided for @metric_20_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks silence used as punishment, control, avoidance, or withdrawal of connection.'**
  String get metric_20_description;

  /// No description provided for @metric_21_name.
  ///
  /// In en, this message translates to:
  /// **'Jealousy Framing'**
  String get metric_21_name;

  /// No description provided for @metric_21_description.
  ///
  /// In en, this message translates to:
  /// **'Evaluates suspicion, possessiveness, accusations, or jealousy presented as proof of care.'**
  String get metric_21_description;

  /// No description provided for @metric_22_name.
  ///
  /// In en, this message translates to:
  /// **'Isolation Pressure'**
  String get metric_22_name;

  /// No description provided for @metric_22_description.
  ///
  /// In en, this message translates to:
  /// **'Flags efforts to separate a partner from friends, family, support systems, or outside perspectives.'**
  String get metric_22_description;

  /// No description provided for @metric_23_name.
  ///
  /// In en, this message translates to:
  /// **'Financial Control Indicators'**
  String get metric_23_name;

  /// No description provided for @metric_23_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for control of money, spending, employment, access to accounts, or financial independence.'**
  String get metric_23_description;

  /// No description provided for @metric_24_name.
  ///
  /// In en, this message translates to:
  /// **'Privacy Invasion Indicators'**
  String get metric_24_name;

  /// No description provided for @metric_24_description.
  ///
  /// In en, this message translates to:
  /// **'Detects snooping, password demands, device checks, location tracking, or privacy violations.'**
  String get metric_24_description;

  /// No description provided for @metric_25_name.
  ///
  /// In en, this message translates to:
  /// **'Apology Specificity'**
  String get metric_25_name;

  /// No description provided for @metric_25_description.
  ///
  /// In en, this message translates to:
  /// **'Measures whether apologies name the exact harm, impact, and future correction instead of staying vague.'**
  String get metric_25_description;

  /// No description provided for @metric_26_name.
  ///
  /// In en, this message translates to:
  /// **'Forgiveness Pressure'**
  String get metric_26_name;

  /// No description provided for @metric_26_description.
  ///
  /// In en, this message translates to:
  /// **'Flags demands to move on, forgive quickly, or stop discussing harm before repair occurs.'**
  String get metric_26_description;

  /// No description provided for @metric_27_name.
  ///
  /// In en, this message translates to:
  /// **'Minimization'**
  String get metric_27_name;

  /// No description provided for @metric_27_description.
  ///
  /// In en, this message translates to:
  /// **'Detects downplaying harm, calling serious concerns dramatic, or reducing impact to avoid responsibility.'**
  String get metric_27_description;

  /// No description provided for @metric_28_name.
  ///
  /// In en, this message translates to:
  /// **'Projection'**
  String get metric_28_name;

  /// No description provided for @metric_28_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for accusations that mirror the speaker\'s own behavior, motives, or unresolved feelings.'**
  String get metric_28_description;

  /// No description provided for @metric_29_name.
  ///
  /// In en, this message translates to:
  /// **'Interruption Pattern'**
  String get metric_29_name;

  /// No description provided for @metric_29_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks cutting off, talking over, refusing completion, or controlling conversational turns.'**
  String get metric_29_description;

  /// No description provided for @metric_30_name.
  ///
  /// In en, this message translates to:
  /// **'Topic Deflection'**
  String get metric_30_name;

  /// No description provided for @metric_30_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies changing the subject, bringing up unrelated issues, or avoiding the central concern.'**
  String get metric_30_description;

  /// No description provided for @metric_31_name.
  ///
  /// In en, this message translates to:
  /// **'Resolution Orientation'**
  String get metric_31_name;

  /// No description provided for @metric_31_description.
  ///
  /// In en, this message translates to:
  /// **'Measures whether messages aim toward solutions, clarity, agreements, and next steps.'**
  String get metric_31_description;

  /// No description provided for @metric_32_name.
  ///
  /// In en, this message translates to:
  /// **'Mutual Problem Solving'**
  String get metric_32_name;

  /// No description provided for @metric_32_description.
  ///
  /// In en, this message translates to:
  /// **'Assesses collaborative language, shared responsibility, brainstorming, and willingness to find workable compromises.'**
  String get metric_32_description;

  /// No description provided for @metric_33_name.
  ///
  /// In en, this message translates to:
  /// **'Emotional Flooding'**
  String get metric_33_name;

  /// No description provided for @metric_33_description.
  ///
  /// In en, this message translates to:
  /// **'Detects overwhelm, panic, shutdown, spiraling, or inability to process during conflict.'**
  String get metric_33_description;

  /// No description provided for @metric_34_name.
  ///
  /// In en, this message translates to:
  /// **'Fear Response Cues'**
  String get metric_34_name;

  /// No description provided for @metric_34_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for appeasing, careful wording, dread, safety concerns, or fear of the partner\'s reaction.'**
  String get metric_34_description;

  /// No description provided for @metric_35_name.
  ///
  /// In en, this message translates to:
  /// **'Consistency of Claims'**
  String get metric_35_name;

  /// No description provided for @metric_35_description.
  ///
  /// In en, this message translates to:
  /// **'Evaluates whether accounts remain internally consistent across messages and time.'**
  String get metric_35_description;

  /// No description provided for @metric_36_name.
  ///
  /// In en, this message translates to:
  /// **'Evidence-Based Recollection'**
  String get metric_36_name;

  /// No description provided for @metric_36_description.
  ///
  /// In en, this message translates to:
  /// **'Checks whether claims reference concrete events, quotes, timelines, or observable behavior.'**
  String get metric_36_description;

  /// No description provided for @metric_37_name.
  ///
  /// In en, this message translates to:
  /// **'Demand Withdrawal Pattern'**
  String get metric_37_name;

  /// No description provided for @metric_37_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks one partner pursuing answers or change while the other avoids, shuts down, or exits.'**
  String get metric_37_description;

  /// No description provided for @metric_38_name.
  ///
  /// In en, this message translates to:
  /// **'Power Imbalance Indicators'**
  String get metric_38_name;

  /// No description provided for @metric_38_description.
  ///
  /// In en, this message translates to:
  /// **'Flags unequal decision power, fear of consequences, dependence, intimidation, or unilateral control.'**
  String get metric_38_description;

  /// No description provided for @metric_39_name.
  ///
  /// In en, this message translates to:
  /// **'Respectful Disagreement'**
  String get metric_39_name;

  /// No description provided for @metric_39_description.
  ///
  /// In en, this message translates to:
  /// **'Measures whether conflict preserves dignity, curiosity, and disagreement without degradation.'**
  String get metric_39_description;

  /// No description provided for @metric_40_name.
  ///
  /// In en, this message translates to:
  /// **'Rupture and Repair Cycle'**
  String get metric_40_name;

  /// No description provided for @metric_40_description.
  ///
  /// In en, this message translates to:
  /// **'Assesses whether conflict is followed by acknowledgment, reconnection, and actual repair.'**
  String get metric_40_description;

  /// No description provided for @metric_41_name.
  ///
  /// In en, this message translates to:
  /// **'Affection Withdrawal'**
  String get metric_41_name;

  /// No description provided for @metric_41_description.
  ///
  /// In en, this message translates to:
  /// **'Detects love, warmth, sex, attention, or reassurance being withheld as punishment or leverage.'**
  String get metric_41_description;

  /// No description provided for @metric_42_name.
  ///
  /// In en, this message translates to:
  /// **'Public Humiliation References'**
  String get metric_42_name;

  /// No description provided for @metric_42_description.
  ///
  /// In en, this message translates to:
  /// **'Flags threats, jokes, or actions that embarrass the partner in front of others.'**
  String get metric_42_description;

  /// No description provided for @metric_43_name.
  ///
  /// In en, this message translates to:
  /// **'Substance-Linked Conflict Cues'**
  String get metric_43_name;

  /// No description provided for @metric_43_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for alcohol or drug use being tied to aggression, unreliability, conflict, or harm.'**
  String get metric_43_description;

  /// No description provided for @metric_44_name.
  ///
  /// In en, this message translates to:
  /// **'Parenting Conflict Pressure'**
  String get metric_44_name;

  /// No description provided for @metric_44_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies children, custody, parenting roles, or parental guilt used in conflict or leverage.'**
  String get metric_44_description;

  /// No description provided for @metric_45_name.
  ///
  /// In en, this message translates to:
  /// **'Sexual Boundary Respect'**
  String get metric_45_name;

  /// No description provided for @metric_45_description.
  ///
  /// In en, this message translates to:
  /// **'Assesses respect for consent, pressure, refusal, comfort, timing, and sexual autonomy.'**
  String get metric_45_description;

  /// No description provided for @metric_46_name.
  ///
  /// In en, this message translates to:
  /// **'Digital Harassment Indicators'**
  String get metric_46_name;

  /// No description provided for @metric_46_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks repeated unwanted messages, spam calls, online pressure, surveillance, or platform-based intimidation.'**
  String get metric_46_description;

  /// No description provided for @metric_47_name.
  ///
  /// In en, this message translates to:
  /// **'Monitoring or Surveillance Language'**
  String get metric_47_name;

  /// No description provided for @metric_47_description.
  ///
  /// In en, this message translates to:
  /// **'Flags checking whereabouts, demanding proof, tracking behavior, or constant verification.'**
  String get metric_47_description;

  /// No description provided for @metric_48_name.
  ///
  /// In en, this message translates to:
  /// **'Future Orientation'**
  String get metric_48_name;

  /// No description provided for @metric_48_description.
  ///
  /// In en, this message translates to:
  /// **'Measures whether partners discuss future improvement, commitments, plans, or constructive direction.'**
  String get metric_48_description;

  /// No description provided for @metric_49_name.
  ///
  /// In en, this message translates to:
  /// **'Safety Planning Signals'**
  String get metric_49_name;

  /// No description provided for @metric_49_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for attempts to seek help, create distance, document harm, or plan for physical/emotional safety.'**
  String get metric_49_description;

  /// No description provided for @metric_50_name.
  ///
  /// In en, this message translates to:
  /// **'Mutual De-escalation Attempts'**
  String get metric_50_name;

  /// No description provided for @metric_50_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks pauses, calming language, softer tone, timeouts, and attempts by both partners to reduce intensity.'**
  String get metric_50_description;

  /// No description provided for @metric_51_name.
  ///
  /// In en, this message translates to:
  /// **'Secure Attachment Cues'**
  String get metric_51_name;

  /// No description provided for @metric_51_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies trust, direct reassurance, emotional availability, and comfort with closeness and independence.'**
  String get metric_51_description;

  /// No description provided for @metric_52_name.
  ///
  /// In en, this message translates to:
  /// **'Anxious Attachment Activation'**
  String get metric_52_name;

  /// No description provided for @metric_52_description.
  ///
  /// In en, this message translates to:
  /// **'Flags protest behavior, urgent reassurance needs, abandonment fear, and heightened sensitivity to distance.'**
  String get metric_52_description;

  /// No description provided for @metric_53_name.
  ///
  /// In en, this message translates to:
  /// **'Avoidant Attachment Distancing'**
  String get metric_53_name;

  /// No description provided for @metric_53_description.
  ///
  /// In en, this message translates to:
  /// **'Detects emotional minimization, independence defenses, withdrawal from vulnerability, or discomfort with needs.'**
  String get metric_53_description;

  /// No description provided for @metric_54_name.
  ///
  /// In en, this message translates to:
  /// **'Disorganized Attachment Signals'**
  String get metric_54_name;

  /// No description provided for @metric_54_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for approach-avoid cycles, fear mixed with need, chaotic reactions, or confusing intimacy patterns.'**
  String get metric_54_description;

  /// No description provided for @metric_55_name.
  ///
  /// In en, this message translates to:
  /// **'Emotional Bids and Responses'**
  String get metric_55_name;

  /// No description provided for @metric_55_description.
  ///
  /// In en, this message translates to:
  /// **'Measures invitations for attention, comfort, or connection and whether they are accepted or missed.'**
  String get metric_55_description;

  /// No description provided for @metric_56_name.
  ///
  /// In en, this message translates to:
  /// **'Turning Away from Connection'**
  String get metric_56_name;

  /// No description provided for @metric_56_description.
  ///
  /// In en, this message translates to:
  /// **'Flags ignoring, dismissing, or failing to respond to bids for closeness or support.'**
  String get metric_56_description;

  /// No description provided for @metric_57_name.
  ///
  /// In en, this message translates to:
  /// **'Turning Against Connection'**
  String get metric_57_name;

  /// No description provided for @metric_57_description.
  ///
  /// In en, this message translates to:
  /// **'Detects hostile or punishing responses to attempts at affection, vulnerability, or repair.'**
  String get metric_57_description;

  /// No description provided for @metric_58_name.
  ///
  /// In en, this message translates to:
  /// **'Positive Sentiment Override'**
  String get metric_58_name;

  /// No description provided for @metric_58_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for generosity, benefit-of-the-doubt, fondness, and interpreting conflict through care.'**
  String get metric_58_description;

  /// No description provided for @metric_59_name.
  ///
  /// In en, this message translates to:
  /// **'Negative Sentiment Override'**
  String get metric_59_name;

  /// No description provided for @metric_59_description.
  ///
  /// In en, this message translates to:
  /// **'Flags assuming bad intent, interpreting neutral messages negatively, and persistent hostile framing.'**
  String get metric_59_description;

  /// No description provided for @metric_60_name.
  ///
  /// In en, this message translates to:
  /// **'Harsh Startup Pattern'**
  String get metric_60_name;

  /// No description provided for @metric_60_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies conversations that begin with accusation, attack, contempt, or blame rather than a request.'**
  String get metric_60_description;

  /// No description provided for @metric_61_name.
  ///
  /// In en, this message translates to:
  /// **'Soft Startup Pattern'**
  String get metric_61_name;

  /// No description provided for @metric_61_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for gentle openings using feelings, needs, specific requests, and non-accusatory language.'**
  String get metric_61_description;

  /// No description provided for @metric_62_name.
  ///
  /// In en, this message translates to:
  /// **'Physiological Self-Soothing'**
  String get metric_62_name;

  /// No description provided for @metric_62_description.
  ///
  /// In en, this message translates to:
  /// **'Assesses attempts to pause, breathe, take space, or regulate the body before continuing conflict.'**
  String get metric_62_description;

  /// No description provided for @metric_63_name.
  ///
  /// In en, this message translates to:
  /// **'Conflict Avoidance Pattern'**
  String get metric_63_name;

  /// No description provided for @metric_63_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks repeated avoidance of necessary topics, discomfort, disagreement, or emotional honesty.'**
  String get metric_63_description;

  /// No description provided for @metric_64_name.
  ///
  /// In en, this message translates to:
  /// **'Volatile Conflict Style'**
  String get metric_64_name;

  /// No description provided for @metric_64_description.
  ///
  /// In en, this message translates to:
  /// **'Detects high-intensity conflict with direct expression that may still include engagement and repair.'**
  String get metric_64_description;

  /// No description provided for @metric_65_name.
  ///
  /// In en, this message translates to:
  /// **'Validating Conflict Style'**
  String get metric_65_name;

  /// No description provided for @metric_65_description.
  ///
  /// In en, this message translates to:
  /// **'Measures whether partners acknowledge each other\'s perspective while disagreeing.'**
  String get metric_65_description;

  /// No description provided for @metric_66_name.
  ///
  /// In en, this message translates to:
  /// **'Hostile Conflict Style'**
  String get metric_66_name;

  /// No description provided for @metric_66_description.
  ///
  /// In en, this message translates to:
  /// **'Flags frequent criticism, contempt, defensiveness, attacks, and adversarial framing.'**
  String get metric_66_description;

  /// No description provided for @metric_67_name.
  ///
  /// In en, this message translates to:
  /// **'Hostile-Detached Pattern'**
  String get metric_67_name;

  /// No description provided for @metric_67_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies cold hostility, emotional disengagement, contempt, and low repair motivation.'**
  String get metric_67_description;

  /// No description provided for @metric_68_name.
  ///
  /// In en, this message translates to:
  /// **'Compromise Willingness'**
  String get metric_68_name;

  /// No description provided for @metric_68_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for flexibility, negotiation, middle-ground proposals, and sacrifices that respect both needs.'**
  String get metric_68_description;

  /// No description provided for @metric_69_name.
  ///
  /// In en, this message translates to:
  /// **'Influence Acceptance'**
  String get metric_69_name;

  /// No description provided for @metric_69_description.
  ///
  /// In en, this message translates to:
  /// **'Measures openness to being affected by the partner\'s feelings, needs, or perspective.'**
  String get metric_69_description;

  /// No description provided for @metric_70_name.
  ///
  /// In en, this message translates to:
  /// **'Gridlocked Conflict Signals'**
  String get metric_70_name;

  /// No description provided for @metric_70_description.
  ///
  /// In en, this message translates to:
  /// **'Flags repeated unsolved issues tied to values, dreams, identity, or chronic incompatibility.'**
  String get metric_70_description;

  /// No description provided for @metric_71_name.
  ///
  /// In en, this message translates to:
  /// **'Solvable Problem Framing'**
  String get metric_71_name;

  /// No description provided for @metric_71_description.
  ///
  /// In en, this message translates to:
  /// **'Detects practical, concrete problem definitions that can lead to specific agreements.'**
  String get metric_71_description;

  /// No description provided for @metric_72_name.
  ///
  /// In en, this message translates to:
  /// **'Shared Meaning References'**
  String get metric_72_name;

  /// No description provided for @metric_72_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for values, rituals, goals, memories, or identity language that creates a shared relationship story.'**
  String get metric_72_description;

  /// No description provided for @metric_73_name.
  ///
  /// In en, this message translates to:
  /// **'Love Map Awareness'**
  String get metric_73_name;

  /// No description provided for @metric_73_description.
  ///
  /// In en, this message translates to:
  /// **'Assesses knowledge of the partner\'s inner world, stressors, preferences, fears, and daily life.'**
  String get metric_73_description;

  /// No description provided for @metric_74_name.
  ///
  /// In en, this message translates to:
  /// **'Fondness and Admiration'**
  String get metric_74_name;

  /// No description provided for @metric_74_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies appreciation, respect, warmth, compliments, gratitude, and positive regard.'**
  String get metric_74_description;

  /// No description provided for @metric_75_name.
  ///
  /// In en, this message translates to:
  /// **'Emotional Labor Imbalance'**
  String get metric_75_name;

  /// No description provided for @metric_75_description.
  ///
  /// In en, this message translates to:
  /// **'Flags one partner carrying disproportionate planning, soothing, remembering, explaining, or relationship maintenance.'**
  String get metric_75_description;

  /// No description provided for @metric_76_name.
  ///
  /// In en, this message translates to:
  /// **'Mental Load Dismissal'**
  String get metric_76_name;

  /// No description provided for @metric_76_description.
  ///
  /// In en, this message translates to:
  /// **'Detects minimizing invisible planning work, household coordination, scheduling, or responsibility tracking.'**
  String get metric_76_description;

  /// No description provided for @metric_77_name.
  ///
  /// In en, this message translates to:
  /// **'Weaponized Incompetence Cues'**
  String get metric_77_name;

  /// No description provided for @metric_77_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for claiming inability, confusion, or helplessness to avoid fair responsibility.'**
  String get metric_77_description;

  /// No description provided for @metric_78_name.
  ///
  /// In en, this message translates to:
  /// **'Trauma Trigger Sensitivity'**
  String get metric_78_name;

  /// No description provided for @metric_78_description.
  ///
  /// In en, this message translates to:
  /// **'Measures awareness of triggers, trauma responses, and careful handling of vulnerable topics.'**
  String get metric_78_description;

  /// No description provided for @metric_79_name.
  ///
  /// In en, this message translates to:
  /// **'Hypervigilance Cues'**
  String get metric_79_name;

  /// No description provided for @metric_79_description.
  ///
  /// In en, this message translates to:
  /// **'Flags scanning for danger, over-monitoring tone, fear of mistakes, or constant emotional alertness.'**
  String get metric_79_description;

  /// No description provided for @metric_80_name.
  ///
  /// In en, this message translates to:
  /// **'Abandonment Fear Language'**
  String get metric_80_name;

  /// No description provided for @metric_80_description.
  ///
  /// In en, this message translates to:
  /// **'Detects fear of being left, replaced, ignored, discarded, or emotionally deserted.'**
  String get metric_80_description;

  /// No description provided for @metric_81_name.
  ///
  /// In en, this message translates to:
  /// **'Reassurance Seeking Pattern'**
  String get metric_81_name;

  /// No description provided for @metric_81_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks repeated requests for proof of love, commitment, safety, or continued interest.'**
  String get metric_81_description;

  /// No description provided for @metric_82_name.
  ///
  /// In en, this message translates to:
  /// **'Pursuer-Distancer Cycle'**
  String get metric_82_name;

  /// No description provided for @metric_82_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies one partner escalating pursuit for closeness while the other increases distance.'**
  String get metric_82_description;

  /// No description provided for @metric_83_name.
  ///
  /// In en, this message translates to:
  /// **'Resentment Accumulation'**
  String get metric_83_name;

  /// No description provided for @metric_83_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for stored grievances, repeated past references, bitterness, and unresolved emotional debt.'**
  String get metric_83_description;

  /// No description provided for @metric_84_name.
  ///
  /// In en, this message translates to:
  /// **'Scorekeeping Behavior'**
  String get metric_84_name;

  /// No description provided for @metric_84_description.
  ///
  /// In en, this message translates to:
  /// **'Flags transactional counting of faults, favors, sacrifices, or mistakes to gain leverage.'**
  String get metric_84_description;

  /// No description provided for @metric_85_name.
  ///
  /// In en, this message translates to:
  /// **'Conditional Affection'**
  String get metric_85_name;

  /// No description provided for @metric_85_description.
  ///
  /// In en, this message translates to:
  /// **'Detects love, approval, access, or warmth offered only when compliance is achieved.'**
  String get metric_85_description;

  /// No description provided for @metric_86_name.
  ///
  /// In en, this message translates to:
  /// **'Love Bombing Indicators'**
  String get metric_86_name;

  /// No description provided for @metric_86_description.
  ///
  /// In en, this message translates to:
  /// **'Flags intense affection, promises, pressure, or idealization used to accelerate attachment or control.'**
  String get metric_86_description;

  /// No description provided for @metric_87_name.
  ///
  /// In en, this message translates to:
  /// **'Hoovering Attempts'**
  String get metric_87_name;

  /// No description provided for @metric_87_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies attempts to pull someone back through guilt, nostalgia, promises, crises, or sudden affection.'**
  String get metric_87_description;

  /// No description provided for @metric_88_name.
  ///
  /// In en, this message translates to:
  /// **'DARVO Pattern'**
  String get metric_88_name;

  /// No description provided for @metric_88_description.
  ///
  /// In en, this message translates to:
  /// **'Detects deny, attack, and reverse-victim-offender responses when confronted about harm.'**
  String get metric_88_description;

  /// No description provided for @metric_89_name.
  ///
  /// In en, this message translates to:
  /// **'Victim Stance Pattern'**
  String get metric_89_name;

  /// No description provided for @metric_89_description.
  ///
  /// In en, this message translates to:
  /// **'Flags recurring self-victimization that avoids accountability or redirects attention from harm caused.'**
  String get metric_89_description;

  /// No description provided for @metric_90_name.
  ///
  /// In en, this message translates to:
  /// **'Moral Superiority Framing'**
  String get metric_90_name;

  /// No description provided for @metric_90_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for righteousness, purity claims, or ethical superiority used to dominate conflict.'**
  String get metric_90_description;

  /// No description provided for @metric_91_name.
  ///
  /// In en, this message translates to:
  /// **'Character Assassination'**
  String get metric_91_name;

  /// No description provided for @metric_91_description.
  ///
  /// In en, this message translates to:
  /// **'Detects broad attacks on identity, integrity, mental health, or worth rather than specific behavior.'**
  String get metric_91_description;

  /// No description provided for @metric_92_name.
  ///
  /// In en, this message translates to:
  /// **'Triangulation Indicators'**
  String get metric_92_name;

  /// No description provided for @metric_92_description.
  ///
  /// In en, this message translates to:
  /// **'Flags bringing third parties into conflict to pressure, compare, validate, or destabilize the partner.'**
  String get metric_92_description;

  /// No description provided for @metric_93_name.
  ///
  /// In en, this message translates to:
  /// **'Social Comparison Pressure'**
  String get metric_93_name;

  /// No description provided for @metric_93_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for comparisons to exes, friends, other couples, or ideals used to shame or coerce.'**
  String get metric_93_description;

  /// No description provided for @metric_94_name.
  ///
  /// In en, this message translates to:
  /// **'Autonomy Support'**
  String get metric_94_name;

  /// No description provided for @metric_94_description.
  ///
  /// In en, this message translates to:
  /// **'Measures respect for independent choices, friendships, goals, boundaries, and personal agency.'**
  String get metric_94_description;

  /// No description provided for @metric_95_name.
  ///
  /// In en, this message translates to:
  /// **'Consent and Choice Respect'**
  String get metric_95_name;

  /// No description provided for @metric_95_description.
  ///
  /// In en, this message translates to:
  /// **'Assesses whether decisions are freely made without pressure, guilt, threats, or manipulation.'**
  String get metric_95_description;

  /// No description provided for @metric_96_name.
  ///
  /// In en, this message translates to:
  /// **'Collaborative Planning'**
  String get metric_96_name;

  /// No description provided for @metric_96_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for shared scheduling, joint decisions, coordinated responsibilities, and practical follow-through.'**
  String get metric_96_description;

  /// No description provided for @metric_97_name.
  ///
  /// In en, this message translates to:
  /// **'Repair Follow-Through'**
  String get metric_97_name;

  /// No description provided for @metric_97_description.
  ///
  /// In en, this message translates to:
  /// **'Measures whether promised changes are later reflected in behavior, not just words.'**
  String get metric_97_description;

  /// No description provided for @metric_98_name.
  ///
  /// In en, this message translates to:
  /// **'Changed Behavior Evidence'**
  String get metric_98_name;

  /// No description provided for @metric_98_description.
  ///
  /// In en, this message translates to:
  /// **'Checks for observable, repeated actions showing learning, adjustment, or reduced harmful behavior.'**
  String get metric_98_description;

  /// No description provided for @metric_99_name.
  ///
  /// In en, this message translates to:
  /// **'Emotional Safety Language'**
  String get metric_99_name;

  /// No description provided for @metric_99_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies language that invites honesty, lowers fear, protects dignity, and reassures safe expression.'**
  String get metric_99_description;

  /// No description provided for @metric_100_name.
  ///
  /// In en, this message translates to:
  /// **'Relationship Ambivalence'**
  String get metric_100_name;

  /// No description provided for @metric_100_description.
  ///
  /// In en, this message translates to:
  /// **'Detects uncertainty, mixed commitment, push-pull messaging, or unclear desire to continue.'**
  String get metric_100_description;

  /// No description provided for @unableToOpenConversations.
  ///
  /// In en, this message translates to:
  /// **'Unable to Open Conversations'**
  String get unableToOpenConversations;

  /// No description provided for @unableToOpenConversationsBody.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong loading your conversations. Please try again.'**
  String get unableToOpenConversationsBody;

  /// No description provided for @unableToLoadConversationsBody.
  ///
  /// In en, this message translates to:
  /// **'Unable to load conversations. Please check your permissions and try again.'**
  String get unableToLoadConversationsBody;

  /// No description provided for @errorLoadingConversationsBody.
  ///
  /// In en, this message translates to:
  /// **'Error loading conversations. Please try again.'**
  String get errorLoadingConversationsBody;

  /// No description provided for @smsPermissionRequired.
  ///
  /// In en, this message translates to:
  /// **'SMS Permission Required'**
  String get smsPermissionRequired;

  /// No description provided for @smsPermissionRequiredBody.
  ///
  /// In en, this message translates to:
  /// **'To analyze SMS conversations, we need permission to read your messages. Your privacy is important — messages are only analyzed locally and never stored on our servers.'**
  String get smsPermissionRequiredBody;

  /// No description provided for @grantSmsPermission.
  ///
  /// In en, this message translates to:
  /// **'Grant SMS Permission'**
  String get grantSmsPermission;

  /// No description provided for @noSmsConversationsFound.
  ///
  /// In en, this message translates to:
  /// **'No SMS conversations found'**
  String get noSmsConversationsFound;

  /// No description provided for @noConversationsMatchSearch.
  ///
  /// In en, this message translates to:
  /// **'No conversations match your search'**
  String get noConversationsMatchSearch;

  /// No description provided for @noSmsMessagesOnDevice.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have any SMS messages on this device'**
  String get noSmsMessagesOnDevice;

  /// No description provided for @tryDifferentSearch.
  ///
  /// In en, this message translates to:
  /// **'Try a different search term'**
  String get tryDifferentSearch;

  /// No description provided for @clearSearch.
  ///
  /// In en, this message translates to:
  /// **'Clear Search'**
  String get clearSearch;

  /// No description provided for @selectedFile.
  ///
  /// In en, this message translates to:
  /// **'Selected: {filename}'**
  String selectedFile(String filename);

  /// No description provided for @invalidFile.
  ///
  /// In en, this message translates to:
  /// **'Invalid File'**
  String get invalidFile;

  /// No description provided for @fileImport.
  ///
  /// In en, this message translates to:
  /// **'File Import'**
  String get fileImport;

  /// No description provided for @fileImportNotImplemented.
  ///
  /// In en, this message translates to:
  /// **'File parsing is not yet implemented for this file type.'**
  String get fileImportNotImplemented;

  /// No description provided for @errorPickingFile.
  ///
  /// In en, this message translates to:
  /// **'Unable to open the file. Please try again.'**
  String get errorPickingFile;

  /// No description provided for @readyToCapture.
  ///
  /// In en, this message translates to:
  /// **'Ready to Capture'**
  String get readyToCapture;

  /// No description provided for @readyToCaptureBody.
  ///
  /// In en, this message translates to:
  /// **'Switch to the Messages app now and start taking screenshots.\n\nReturn to this app when you\'re done and tap \"Finish & Process\".'**
  String get readyToCaptureBody;

  /// No description provided for @noScreenshotsToProcess.
  ///
  /// In en, this message translates to:
  /// **'No screenshots to process.'**
  String get noScreenshotsToProcess;

  /// No description provided for @processingScreenshot.
  ///
  /// In en, this message translates to:
  /// **'Processing screenshot {current} of {total}...'**
  String processingScreenshot(int current, int total);

  /// No description provided for @noMessagesFound.
  ///
  /// In en, this message translates to:
  /// **'No Messages Found'**
  String get noMessagesFound;

  /// No description provided for @noMessagesFoundBody.
  ///
  /// In en, this message translates to:
  /// **'Could not extract any messages from the screenshots.\n\nPlease ensure the screenshots clearly show the message conversation.'**
  String get noMessagesFoundBody;

  /// No description provided for @loadedMessages.
  ///
  /// In en, this message translates to:
  /// **'Loaded {count} messages from screenshots'**
  String loadedMessages(int count);

  /// No description provided for @processingError.
  ///
  /// In en, this message translates to:
  /// **'Processing Error'**
  String get processingError;

  /// No description provided for @processingErrorBody.
  ///
  /// In en, this message translates to:
  /// **'Error processing screenshots. Please try again.'**
  String get processingErrorBody;

  /// No description provided for @metricListSavedAs.
  ///
  /// In en, this message translates to:
  /// **'Your selections have been saved as \"{name}\".'**
  String metricListSavedAs(String name);

  /// No description provided for @metricListLoadedName.
  ///
  /// In en, this message translates to:
  /// **'Selections \"{name}\" have been retrieved and applied.'**
  String metricListLoadedName(String name);

  /// No description provided for @conversationLoaded.
  ///
  /// In en, this message translates to:
  /// **'Loaded {count} messages from {name}'**
  String conversationLoaded(int count, String name);

  /// No description provided for @loadButton.
  ///
  /// In en, this message translates to:
  /// **'Load'**
  String get loadButton;

  /// No description provided for @photoPermissionRequired.
  ///
  /// In en, this message translates to:
  /// **'Photo library permission is required to detect screenshots.'**
  String get photoPermissionRequired;

  /// No description provided for @initializingConnection.
  ///
  /// In en, this message translates to:
  /// **'Initializing secure connection...'**
  String get initializingConnection;

  /// No description provided for @configurationRequired.
  ///
  /// In en, this message translates to:
  /// **'Configuration Required'**
  String get configurationRequired;

  /// No description provided for @goBack.
  ///
  /// In en, this message translates to:
  /// **'Go Back'**
  String get goBack;

  /// No description provided for @enableDateRangeFiltering.
  ///
  /// In en, this message translates to:
  /// **'Enable date range filtering'**
  String get enableDateRangeFiltering;

  /// No description provided for @clearSelectedDateRange.
  ///
  /// In en, this message translates to:
  /// **'Clear Selected Date Range'**
  String get clearSelectedDateRange;

  /// No description provided for @largeThreadNoticeTitle.
  ///
  /// In en, this message translates to:
  /// **'NOTICE TO USER'**
  String get largeThreadNoticeTitle;

  /// No description provided for @largeThreadNoticeBody.
  ///
  /// In en, this message translates to:
  /// **'When dealing with exceptionally large text threads, some loading screens within this app could exceed over a minute and a half at times.\n\nThe application does not hang. If you see a circling status indicator spinning, the app is still loading.\n\nPlease be patient in those cases, as loading time could be longer than usual compared to your average load time in other applications — especially when dealing with a large dataset such as a thread with 50,000 messages.'**
  String get largeThreadNoticeBody;

  /// No description provided for @neverShowThisAgain.
  ///
  /// In en, this message translates to:
  /// **'Never show this message again'**
  String get neverShowThisAgain;

  /// No description provided for @loadingConversationWith.
  ///
  /// In en, this message translates to:
  /// **'Loading conversation\nwith {name}…'**
  String loadingConversationWith(String name);

  /// No description provided for @iosCaptureInstructions.
  ///
  /// In en, this message translates to:
  /// **'1. Open the Messages app and select the conversation\n2. Scroll to the oldest message you want to analyze\n3. Tap \"Start Capture\" below\n4. Take screenshots as you scroll through the conversation\n5. When done, tap \"Finish & Process\"'**
  String get iosCaptureInstructions;

  /// No description provided for @howToCaptureIosMessages.
  ///
  /// In en, this message translates to:
  /// **'How to Capture iOS Messages'**
  String get howToCaptureIosMessages;

  /// No description provided for @deepSeekApiKey.
  ///
  /// In en, this message translates to:
  /// **'DeepSeek API Key'**
  String get deepSeekApiKey;

  /// No description provided for @enterYourDeepSeekApiKeyToEnableAiAnalysis.
  ///
  /// In en, this message translates to:
  /// **'Enter your DeepSeek API key to enable AI analysis.'**
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis;

  /// No description provided for @getYourApiKeyFrom.
  ///
  /// In en, this message translates to:
  /// **'Get your API key from: https://platform.deepseek.com'**
  String get getYourApiKeyFrom;

  /// No description provided for @apiKey.
  ///
  /// In en, this message translates to:
  /// **'API Key'**
  String get apiKey;

  /// No description provided for @skPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'sk-...'**
  String get skPlaceholder;

  /// No description provided for @yourApiKeyIsStoredSecurely.
  ///
  /// In en, this message translates to:
  /// **'Your API key is stored securely on your device and never shared.'**
  String get yourApiKeyIsStoredSecurely;

  /// No description provided for @pleaseEnterApiKey.
  ///
  /// In en, this message translates to:
  /// **'Please enter an API key'**
  String get pleaseEnterApiKey;

  /// No description provided for @apiKeySavedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'API key saved successfully!'**
  String get apiKeySavedSuccessfully;

  /// No description provided for @pleaseBePatientLongerTextThreads.
  ///
  /// In en, this message translates to:
  /// **'Please be patient, Longer text thread datasets take quite a while to load'**
  String get pleaseBePatientLongerTextThreads;

  /// No description provided for @almostThereBigOne.
  ///
  /// In en, this message translates to:
  /// **'Almost there, Wow this must have been a big one'**
  String get almostThereBigOne;

  /// No description provided for @pleaseBePatientLargeDatasets.
  ///
  /// In en, this message translates to:
  /// **'Please be patient, large datasets could result in loading times greater than a minute and a half'**
  String get pleaseBePatientLargeDatasets;

  /// No description provided for @continuingToLoadMassiveThread.
  ///
  /// In en, this message translates to:
  /// **'Continuing to load the massive thread with {name}…'**
  String continuingToLoadMassiveThread(String name);

  /// Status when no messages in date range
  ///
  /// In en, this message translates to:
  /// **'No Messages Found in Date Range'**
  String get noMessagesInDateRange;

  /// Title label on the Purchase Custom Metric tile in the metrics grid
  ///
  /// In en, this message translates to:
  /// **'Purchase Custom Metric'**
  String get purchaseCustomMetricTileTitle;

  /// Description on the Purchase Custom Metric tile explaining what the purchase does
  ///
  /// In en, this message translates to:
  /// **'For a one-time fee of \$4.99, enter a custom metric name and definition saved permanently alongside your other metrics for use in any future analysis. Purchase unlimited custom metrics.'**
  String get purchaseCustomMetricTileDescription;

  /// Title of the purchase confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'Purchase Custom Metric'**
  String get purchaseCustomMetricConfirmTitle;

  /// Body text of the purchase confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'You will be charged \$4.99 (one-time) to unlock one custom metric slot.\n\nYour custom metric name and definition are permanent and cannot ever be changed once saved, so please choose carefully.'**
  String get purchaseCustomMetricConfirmBody;

  /// Confirm button label on the purchase dialog
  ///
  /// In en, this message translates to:
  /// **'Purchase — \$4.99'**
  String get purchaseCustomMetricConfirmButton;

  /// Title of the dialog where the user enters their custom metric name
  ///
  /// In en, this message translates to:
  /// **'Custom Metric Name'**
  String get purchaseCustomMetricEnterNameTitle;

  /// Prompt text above the name text field
  ///
  /// In en, this message translates to:
  /// **'Enter the name for your custom metric:'**
  String get purchaseCustomMetricEnterNamePrompt;

  /// Hint text inside the metric name text field
  ///
  /// In en, this message translates to:
  /// **'Metric Name'**
  String get purchaseCustomMetricNameHint;

  /// Title of the name confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'Confirm Metric Name'**
  String get purchaseCustomMetricConfirmNameTitle;

  /// Label before showing the entered metric name back to the user
  ///
  /// In en, this message translates to:
  /// **'You entered:\n\n'**
  String get purchaseCustomMetricConfirmNameYouEntered;

  /// Warning shown after the metric name in the confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'\n\n⚠️  This is FINAL and can NEVER be changed.'**
  String get purchaseCustomMetricConfirmNameWarning;

  /// Button to go back and re-enter the metric name
  ///
  /// In en, this message translates to:
  /// **'Oops — Re-Enter Name'**
  String get purchaseCustomMetricReenterName;

  /// Button to confirm and save the metric name
  ///
  /// In en, this message translates to:
  /// **'OK — Save Metric Name'**
  String get purchaseCustomMetricSaveName;

  /// Title of the dialog where the user defines the metric meaning. {name} is the metric name they entered.
  ///
  /// In en, this message translates to:
  /// **'Define: {name}'**
  String purchaseCustomMetricDefineTitleWithName(String name);

  /// Prompt text above the meaning text field. {name} is the metric name.
  ///
  /// In en, this message translates to:
  /// **'Input the meaning of your Custom Metric: {name}'**
  String purchaseCustomMetricDefinePromptWithName(String name);

  /// Hint text inside the metric definition/meaning text field
  ///
  /// In en, this message translates to:
  /// **'Describe what this metric means, what behaviors it looks for, and how it applies to relationship dynamics...'**
  String get purchaseCustomMetricMeaningHint;

  /// Generic re-enter button (used in meaning dialog)
  ///
  /// In en, this message translates to:
  /// **'Oops — Re-Enter'**
  String get purchaseCustomMetricReenter;

  /// Button to confirm and save the metric meaning/definition
  ///
  /// In en, this message translates to:
  /// **'OK — Save Meaning'**
  String get purchaseCustomMetricSaveMeaning;

  /// Title of the final preview dialog before committing the custom metric
  ///
  /// In en, this message translates to:
  /// **'Preview Your Custom Metric'**
  String get purchaseCustomMetricPreviewTitle;

  /// Subtitle text above the tile preview in the final preview dialog
  ///
  /// In en, this message translates to:
  /// **'This is how your tile will look:'**
  String get purchaseCustomMetricPreviewSubtitle;

  /// Final warning shown in the preview dialog before the user commits
  ///
  /// In en, this message translates to:
  /// **'⚠️  This is your LAST CHANCE to change your mind.\nOnce committed, the name and definition are permanent.'**
  String get purchaseCustomMetricLastChanceWarning;

  /// Button to cancel the entire custom metric purchase and setup flow
  ///
  /// In en, this message translates to:
  /// **'Cancel Everything'**
  String get purchaseCustomMetricCancelEverything;

  /// Final commit button that permanently saves the custom metric
  ///
  /// In en, this message translates to:
  /// **'Commit to Custom Metric'**
  String get purchaseCustomMetricCommit;

  /// Snackbar message shown after a custom metric is successfully created. {name} is the metric name.
  ///
  /// In en, this message translates to:
  /// **'✓ \"{name}\" added to your metrics! You can now select it for analysis.'**
  String purchaseCustomMetricSuccess(String name);

  /// Title of the dialog shown while waiting for the store to confirm a purchase
  ///
  /// In en, this message translates to:
  /// **'Processing Purchase...'**
  String get purchaseCustomMetricProcessingTitle;

  /// Body text of the processing/pending purchase dialog
  ///
  /// In en, this message translates to:
  /// **'Waiting for store confirmation.\nPlease do not close the app.'**
  String get purchaseCustomMetricProcessingBody;

  /// Generic Next button label used in multi-step flows
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// Cancel button used across custom metric dialogs when the user wasn't ready to proceed
  ///
  /// In en, this message translates to:
  /// **'Cancel — I Wasn\'t Ready'**
  String get cancelNotReady;

  /// Tab label for The Good pack — 100 positive, healthy relationship pattern metrics
  ///
  /// In en, this message translates to:
  /// **'The Good'**
  String get packGoodLabel;

  /// Tab label for The Bad pack — 100 warning-sign / harmful-pattern metrics
  ///
  /// In en, this message translates to:
  /// **'The Bad'**
  String get packBadLabel;

  /// Tab label for The Ugly pack — 100 severe red-flag / abuse-indicator metrics
  ///
  /// In en, this message translates to:
  /// **'The Ugly'**
  String get packUglyLabel;

  /// No description provided for @metric_good_1_name.
  ///
  /// In en, this message translates to:
  /// **'Active Listening Cues'**
  String get metric_good_1_name;

  /// No description provided for @metric_good_1_description.
  ///
  /// In en, this message translates to:
  /// **'Detects paraphrasing, clarifying questions, and demonstrated understanding of the partner\'s perspective in text.'**
  String get metric_good_1_description;

  /// No description provided for @metric_good_2_name.
  ///
  /// In en, this message translates to:
  /// **'Appreciation Expression'**
  String get metric_good_2_name;

  /// No description provided for @metric_good_2_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies specific gratitude, recognition of effort, and acknowledgment of partner\'s positive qualities or actions.'**
  String get metric_good_2_description;

  /// No description provided for @metric_good_3_name.
  ///
  /// In en, this message translates to:
  /// **'Affirmation Language'**
  String get metric_good_3_name;

  /// No description provided for @metric_good_3_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for statements that validate the partner\'s feelings, experiences, worth, or right to have needs.'**
  String get metric_good_3_description;

  /// No description provided for @metric_good_4_name.
  ///
  /// In en, this message translates to:
  /// **'Collaborative Tone'**
  String get metric_good_4_name;

  /// No description provided for @metric_good_4_description.
  ///
  /// In en, this message translates to:
  /// **'Measures use of \"we,\" joint problem-solving language, and framing issues as shared challenges to address together.'**
  String get metric_good_4_description;

  /// No description provided for @metric_good_5_name.
  ///
  /// In en, this message translates to:
  /// **'Curiosity About Partner'**
  String get metric_good_5_name;

  /// No description provided for @metric_good_5_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks asking questions about the partner\'s thoughts, feelings, day, preferences, or inner experience.'**
  String get metric_good_5_description;

  /// No description provided for @metric_good_6_name.
  ///
  /// In en, this message translates to:
  /// **'Vulnerability Expression'**
  String get metric_good_6_name;

  /// No description provided for @metric_good_6_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies sharing fears, insecurities, needs, or emotional truths without defensiveness or blame.'**
  String get metric_good_6_description;

  /// No description provided for @metric_good_7_name.
  ///
  /// In en, this message translates to:
  /// **'Humor as Connection'**
  String get metric_good_7_name;

  /// No description provided for @metric_good_7_description.
  ///
  /// In en, this message translates to:
  /// **'Detects playful shared laughter that brings partners together rather than mocking or belittling.'**
  String get metric_good_7_description;

  /// No description provided for @metric_good_8_name.
  ///
  /// In en, this message translates to:
  /// **'Reassurance Offering'**
  String get metric_good_8_name;

  /// No description provided for @metric_good_8_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for proactive statements that provide comfort, security, or confidence to the anxious partner.'**
  String get metric_good_8_description;

  /// No description provided for @metric_good_9_name.
  ///
  /// In en, this message translates to:
  /// **'Compliment Frequency'**
  String get metric_good_9_name;

  /// No description provided for @metric_good_9_description.
  ///
  /// In en, this message translates to:
  /// **'Measures genuine specific praise about appearance, character, abilities, or positive actions.'**
  String get metric_good_9_description;

  /// No description provided for @metric_good_10_name.
  ///
  /// In en, this message translates to:
  /// **'Emotional Availability'**
  String get metric_good_10_name;

  /// No description provided for @metric_good_10_description.
  ///
  /// In en, this message translates to:
  /// **'Assesses responsiveness to the partner\'s emotional needs, presence during distress, and willingness to engage.'**
  String get metric_good_10_description;

  /// No description provided for @metric_good_11_name.
  ///
  /// In en, this message translates to:
  /// **'Gratitude Habit'**
  String get metric_good_11_name;

  /// No description provided for @metric_good_11_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies regular expressions of thanks for small things, effort, presence, or support.'**
  String get metric_good_11_description;

  /// No description provided for @metric_good_12_name.
  ///
  /// In en, this message translates to:
  /// **'Supportive Language'**
  String get metric_good_12_name;

  /// No description provided for @metric_good_12_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks statements offering help, encouragement, belief in the partner\'s abilities, or standing beside them.'**
  String get metric_good_12_description;

  /// No description provided for @metric_good_13_name.
  ///
  /// In en, this message translates to:
  /// **'Gentle Disagreement'**
  String get metric_good_13_name;

  /// No description provided for @metric_good_13_description.
  ///
  /// In en, this message translates to:
  /// **'Measures ability to express different views while preserving respect, curiosity, and the relationship.'**
  String get metric_good_13_description;

  /// No description provided for @metric_good_14_name.
  ///
  /// In en, this message translates to:
  /// **'Apology Sincerity'**
  String get metric_good_14_name;

  /// No description provided for @metric_good_14_description.
  ///
  /// In en, this message translates to:
  /// **'Detects genuine remorse, understanding of impact, and commitment to change without excuses.'**
  String get metric_good_14_description;

  /// No description provided for @metric_good_15_name.
  ///
  /// In en, this message translates to:
  /// **'Forgiveness Acceptance'**
  String get metric_good_15_name;

  /// No description provided for @metric_good_15_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for willingness to let go of past harm, move forward, and rebuild trust after repair.'**
  String get metric_good_15_description;

  /// No description provided for @metric_good_16_name.
  ///
  /// In en, this message translates to:
  /// **'Quality Time Initiation'**
  String get metric_good_16_name;

  /// No description provided for @metric_good_16_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies offers to spend focused time together, plan activities, or create connection moments.'**
  String get metric_good_16_description;

  /// No description provided for @metric_good_17_name.
  ///
  /// In en, this message translates to:
  /// **'Physical Affection Cues'**
  String get metric_good_17_name;

  /// No description provided for @metric_good_17_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks mentions of touch, hugs, kisses, or physical closeness as expressions of care and intimacy.'**
  String get metric_good_17_description;

  /// No description provided for @metric_good_18_name.
  ///
  /// In en, this message translates to:
  /// **'Shared Joy Recognition'**
  String get metric_good_18_name;

  /// No description provided for @metric_good_18_description.
  ///
  /// In en, this message translates to:
  /// **'Measures celebrating partner\'s wins, achievements, happiness, or good news with genuine enthusiasm.'**
  String get metric_good_18_description;

  /// No description provided for @metric_good_19_name.
  ///
  /// In en, this message translates to:
  /// **'Conflict Resolution Effort'**
  String get metric_good_19_name;

  /// No description provided for @metric_good_19_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies attempts to find solutions, compromise, or restore peace after disagreement.'**
  String get metric_good_19_description;

  /// No description provided for @metric_good_20_name.
  ///
  /// In en, this message translates to:
  /// **'Patience Demonstration'**
  String get metric_good_20_name;

  /// No description provided for @metric_good_20_description.
  ///
  /// In en, this message translates to:
  /// **'Detects tolerance for partner\'s pace, struggles, learning curve, or emotional processing needs.'**
  String get metric_good_20_description;

  /// No description provided for @metric_good_21_name.
  ///
  /// In en, this message translates to:
  /// **'Perspective-Taking Language'**
  String get metric_good_21_name;

  /// No description provided for @metric_good_21_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for statements showing understanding of the partner\'s viewpoint, context, or emotional reality.'**
  String get metric_good_21_description;

  /// No description provided for @metric_good_22_name.
  ///
  /// In en, this message translates to:
  /// **'Reliability Signals'**
  String get metric_good_22_name;

  /// No description provided for @metric_good_22_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks following through on promises, showing up consistently, and being dependable.'**
  String get metric_good_22_description;

  /// No description provided for @metric_good_23_name.
  ///
  /// In en, this message translates to:
  /// **'Respect for Differences'**
  String get metric_good_23_name;

  /// No description provided for @metric_good_23_description.
  ///
  /// In en, this message translates to:
  /// **'Measures acceptance of partner\'s unique traits, preferences, opinions, and ways of being.'**
  String get metric_good_23_description;

  /// No description provided for @metric_good_24_name.
  ///
  /// In en, this message translates to:
  /// **'Openness to Feedback'**
  String get metric_good_24_name;

  /// No description provided for @metric_good_24_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies receptiveness to partner\'s concerns, willingness to hear criticism, and desire to improve.'**
  String get metric_good_24_description;

  /// No description provided for @metric_good_25_name.
  ///
  /// In en, this message translates to:
  /// **'Validation of Emotions'**
  String get metric_good_25_name;

  /// No description provided for @metric_good_25_description.
  ///
  /// In en, this message translates to:
  /// **'Detects acknowledgment that the partner\'s feelings are real, understandable, and worthy of attention.'**
  String get metric_good_25_description;

  /// No description provided for @metric_good_26_name.
  ///
  /// In en, this message translates to:
  /// **'Encouragement Language'**
  String get metric_good_26_name;

  /// No description provided for @metric_good_26_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for statements that inspire confidence, motivate action, or support the partner\'s goals.'**
  String get metric_good_26_description;

  /// No description provided for @metric_good_27_name.
  ///
  /// In en, this message translates to:
  /// **'Intimate Disclosure'**
  String get metric_good_27_name;

  /// No description provided for @metric_good_27_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies sharing personal thoughts, dreams, fears, or secrets that deepen emotional connection.'**
  String get metric_good_27_description;

  /// No description provided for @metric_good_28_name.
  ///
  /// In en, this message translates to:
  /// **'Attunement Signals'**
  String get metric_good_28_name;

  /// No description provided for @metric_good_28_description.
  ///
  /// In en, this message translates to:
  /// **'Measures noticing the partner\'s mood, needs, or distress without being told explicitly.'**
  String get metric_good_28_description;

  /// No description provided for @metric_good_29_name.
  ///
  /// In en, this message translates to:
  /// **'Positive Reframing'**
  String get metric_good_29_name;

  /// No description provided for @metric_good_29_description.
  ///
  /// In en, this message translates to:
  /// **'Detects finding silver linings, growth opportunities, or constructive angles in difficult situations.'**
  String get metric_good_29_description;

  /// No description provided for @metric_good_30_name.
  ///
  /// In en, this message translates to:
  /// **'Commitment Language'**
  String get metric_good_30_name;

  /// No description provided for @metric_good_30_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks expressions of dedication, long-term thinking, and investment in the relationship\'s future.'**
  String get metric_good_30_description;

  /// No description provided for @metric_good_31_name.
  ///
  /// In en, this message translates to:
  /// **'Flexibility Demonstration'**
  String get metric_good_31_name;

  /// No description provided for @metric_good_31_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies willingness to adapt plans, adjust expectations, or meet the partner halfway.'**
  String get metric_good_31_description;

  /// No description provided for @metric_good_32_name.
  ///
  /// In en, this message translates to:
  /// **'Protective Language'**
  String get metric_good_32_name;

  /// No description provided for @metric_good_32_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for statements showing the partner\'s safety, wellbeing, and interests matter deeply.'**
  String get metric_good_32_description;

  /// No description provided for @metric_good_33_name.
  ///
  /// In en, this message translates to:
  /// **'Celebration of Milestones'**
  String get metric_good_33_name;

  /// No description provided for @metric_good_33_description.
  ///
  /// In en, this message translates to:
  /// **'Measures acknowledging anniversaries, achievements, or meaningful moments together.'**
  String get metric_good_33_description;

  /// No description provided for @metric_good_34_name.
  ///
  /// In en, this message translates to:
  /// **'Constructive Feedback'**
  String get metric_good_34_name;

  /// No description provided for @metric_good_34_description.
  ///
  /// In en, this message translates to:
  /// **'Detects offering suggestions for improvement that are kind, specific, and growth-focused.'**
  String get metric_good_34_description;

  /// No description provided for @metric_good_35_name.
  ///
  /// In en, this message translates to:
  /// **'Presence During Hardship'**
  String get metric_good_35_name;

  /// No description provided for @metric_good_35_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies staying engaged when the partner is struggling, grieving, or facing challenges.'**
  String get metric_good_35_description;

  /// No description provided for @metric_good_36_name.
  ///
  /// In en, this message translates to:
  /// **'Admiration Expression'**
  String get metric_good_36_name;

  /// No description provided for @metric_good_36_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks genuine respect for the partner\'s character, strength, intelligence, or resilience.'**
  String get metric_good_36_description;

  /// No description provided for @metric_good_37_name.
  ///
  /// In en, this message translates to:
  /// **'Playfulness Indicators'**
  String get metric_good_37_name;

  /// No description provided for @metric_good_37_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for lighthearted teasing, inside jokes, or fun interactions that strengthen bonding.'**
  String get metric_good_37_description;

  /// No description provided for @metric_good_38_name.
  ///
  /// In en, this message translates to:
  /// **'Empathic Mirroring'**
  String get metric_good_38_name;

  /// No description provided for @metric_good_38_description.
  ///
  /// In en, this message translates to:
  /// **'Measures reflecting back the partner\'s emotions to show understanding and validation.'**
  String get metric_good_38_description;

  /// No description provided for @metric_good_39_name.
  ///
  /// In en, this message translates to:
  /// **'Acceptance Language'**
  String get metric_good_39_name;

  /// No description provided for @metric_good_39_description.
  ///
  /// In en, this message translates to:
  /// **'Detects embracing the partner as they are, including flaws, without demanding change.'**
  String get metric_good_39_description;

  /// No description provided for @metric_good_40_name.
  ///
  /// In en, this message translates to:
  /// **'Supportive Presence'**
  String get metric_good_40_name;

  /// No description provided for @metric_good_40_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies being there without fixing, offering comfort through listening and companionship.'**
  String get metric_good_40_description;

  /// No description provided for @metric_good_41_name.
  ///
  /// In en, this message translates to:
  /// **'Genuine Interest'**
  String get metric_good_41_name;

  /// No description provided for @metric_good_41_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks asking follow-up questions and remembering details about the partner\'s life and concerns.'**
  String get metric_good_41_description;

  /// No description provided for @metric_good_42_name.
  ///
  /// In en, this message translates to:
  /// **'Reciprocal Effort'**
  String get metric_good_42_name;

  /// No description provided for @metric_good_42_description.
  ///
  /// In en, this message translates to:
  /// **'Measures both partners contributing equally to emotional work, planning, and relationship maintenance.'**
  String get metric_good_42_description;

  /// No description provided for @metric_good_43_name.
  ///
  /// In en, this message translates to:
  /// **'Forgiveness Language'**
  String get metric_good_43_name;

  /// No description provided for @metric_good_43_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for releasing grudges, offering second chances, and choosing to move past hurt.'**
  String get metric_good_43_description;

  /// No description provided for @metric_good_44_name.
  ///
  /// In en, this message translates to:
  /// **'Mutual Respect Signals'**
  String get metric_good_44_name;

  /// No description provided for @metric_good_44_description.
  ///
  /// In en, this message translates to:
  /// **'Detects treating the partner as an equal, honoring their opinions, and valuing their input.'**
  String get metric_good_44_description;

  /// No description provided for @metric_good_45_name.
  ///
  /// In en, this message translates to:
  /// **'Emotional Honesty'**
  String get metric_good_45_name;

  /// No description provided for @metric_good_45_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies truthful expression of feelings without manipulation, exaggeration, or strategic withholding.'**
  String get metric_good_45_description;

  /// No description provided for @metric_good_46_name.
  ///
  /// In en, this message translates to:
  /// **'Supportive Listening'**
  String get metric_good_46_name;

  /// No description provided for @metric_good_46_description.
  ///
  /// In en, this message translates to:
  /// **'Measures allowing the partner to fully express without interrupting, judging, or immediately problem-solving.'**
  String get metric_good_46_description;

  /// No description provided for @metric_good_47_name.
  ///
  /// In en, this message translates to:
  /// **'Affectionate Nicknames'**
  String get metric_good_47_name;

  /// No description provided for @metric_good_47_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks use of loving terms of endearment that convey warmth and intimate connection.'**
  String get metric_good_47_description;

  /// No description provided for @metric_good_48_name.
  ///
  /// In en, this message translates to:
  /// **'Shared Laughter'**
  String get metric_good_48_name;

  /// No description provided for @metric_good_48_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies moments of mutual humor and joy that create positive bonding experiences.'**
  String get metric_good_48_description;

  /// No description provided for @metric_good_49_name.
  ///
  /// In en, this message translates to:
  /// **'Thoughtful Gestures'**
  String get metric_good_49_name;

  /// No description provided for @metric_good_49_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for small acts of kindness, remembering preferences, or doing things to make partner happy.'**
  String get metric_good_49_description;

  /// No description provided for @metric_good_50_name.
  ///
  /// In en, this message translates to:
  /// **'Confidence in Partner'**
  String get metric_good_50_name;

  /// No description provided for @metric_good_50_description.
  ///
  /// In en, this message translates to:
  /// **'Detects belief in the partner\'s abilities, potential, and capacity to handle challenges.'**
  String get metric_good_50_description;

  /// No description provided for @metric_good_51_name.
  ///
  /// In en, this message translates to:
  /// **'Healthy Interdependence'**
  String get metric_good_51_name;

  /// No description provided for @metric_good_51_description.
  ///
  /// In en, this message translates to:
  /// **'Measures balance between togetherness and independence, supporting each other\'s autonomy.'**
  String get metric_good_51_description;

  /// No description provided for @metric_good_52_name.
  ///
  /// In en, this message translates to:
  /// **'Conflict De-escalation'**
  String get metric_good_52_name;

  /// No description provided for @metric_good_52_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies soft language, breaks, or solution-offering to calm heated discussions.'**
  String get metric_good_52_description;

  /// No description provided for @metric_good_53_name.
  ///
  /// In en, this message translates to:
  /// **'Genuine Apology'**
  String get metric_good_53_name;

  /// No description provided for @metric_good_53_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks full acknowledgment of wrongdoing without minimizing, defending, or shifting blame.'**
  String get metric_good_53_description;

  /// No description provided for @metric_good_54_name.
  ///
  /// In en, this message translates to:
  /// **'Emotional Support Offers'**
  String get metric_good_54_name;

  /// No description provided for @metric_good_54_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for proactive check-ins, asking how the partner is doing, and offering help.'**
  String get metric_good_54_description;

  /// No description provided for @metric_good_55_name.
  ///
  /// In en, this message translates to:
  /// **'Respectful Boundaries'**
  String get metric_good_55_name;

  /// No description provided for @metric_good_55_description.
  ///
  /// In en, this message translates to:
  /// **'Measures honoring the partner\'s stated limits while maintaining own healthy boundaries.'**
  String get metric_good_55_description;

  /// No description provided for @metric_good_56_name.
  ///
  /// In en, this message translates to:
  /// **'Positive Anticipation'**
  String get metric_good_56_name;

  /// No description provided for @metric_good_56_description.
  ///
  /// In en, this message translates to:
  /// **'Detects excitement about the future together, planning ahead, and looking forward to shared experiences.'**
  String get metric_good_56_description;

  /// No description provided for @metric_good_57_name.
  ///
  /// In en, this message translates to:
  /// **'Attentiveness Signals'**
  String get metric_good_57_name;

  /// No description provided for @metric_good_57_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies remembering important dates, preferences, and details that show the partner matters.'**
  String get metric_good_57_description;

  /// No description provided for @metric_good_58_name.
  ///
  /// In en, this message translates to:
  /// **'Encouraging Growth'**
  String get metric_good_58_name;

  /// No description provided for @metric_good_58_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks supporting the partner\'s personal development, learning, and pursuit of goals.'**
  String get metric_good_58_description;

  /// No description provided for @metric_good_59_name.
  ///
  /// In en, this message translates to:
  /// **'Tender Language'**
  String get metric_good_59_name;

  /// No description provided for @metric_good_59_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for soft, caring word choices that convey gentleness and emotional warmth.'**
  String get metric_good_59_description;

  /// No description provided for @metric_good_60_name.
  ///
  /// In en, this message translates to:
  /// **'Mutual Accountability'**
  String get metric_good_60_name;

  /// No description provided for @metric_good_60_description.
  ///
  /// In en, this message translates to:
  /// **'Measures both partners taking responsibility for their actions and their impact.'**
  String get metric_good_60_description;

  /// No description provided for @metric_good_61_name.
  ///
  /// In en, this message translates to:
  /// **'Celebration of Partner'**
  String get metric_good_61_name;

  /// No description provided for @metric_good_61_description.
  ///
  /// In en, this message translates to:
  /// **'Detects publicly or privately expressing pride, joy, or admiration for the partner.'**
  String get metric_good_61_description;

  /// No description provided for @metric_good_62_name.
  ///
  /// In en, this message translates to:
  /// **'Consistent Affection'**
  String get metric_good_62_name;

  /// No description provided for @metric_good_62_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies regular expressions of love that do not fluctuate based on performance or compliance.'**
  String get metric_good_62_description;

  /// No description provided for @metric_good_63_name.
  ///
  /// In en, this message translates to:
  /// **'Emotional Attunement'**
  String get metric_good_63_name;

  /// No description provided for @metric_good_63_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks sensing and responding to subtle shifts in the partner\'s emotional state.'**
  String get metric_good_63_description;

  /// No description provided for @metric_good_64_name.
  ///
  /// In en, this message translates to:
  /// **'Collaborative Decision-Making'**
  String get metric_good_64_name;

  /// No description provided for @metric_good_64_description.
  ///
  /// In en, this message translates to:
  /// **'Measures discussing options together and making choices that consider both partners\' needs.'**
  String get metric_good_64_description;

  /// No description provided for @metric_good_65_name.
  ///
  /// In en, this message translates to:
  /// **'Reassurance Without Demand'**
  String get metric_good_65_name;

  /// No description provided for @metric_good_65_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for offering comfort and security without requiring the partner to earn it.'**
  String get metric_good_65_description;

  /// No description provided for @metric_good_66_name.
  ///
  /// In en, this message translates to:
  /// **'Authentic Connection'**
  String get metric_good_66_name;

  /// No description provided for @metric_good_66_description.
  ///
  /// In en, this message translates to:
  /// **'Detects genuine presence, real sharing, and dropping pretense in interactions.'**
  String get metric_good_66_description;

  /// No description provided for @metric_good_67_name.
  ///
  /// In en, this message translates to:
  /// **'Mutual Encouragement'**
  String get metric_good_67_name;

  /// No description provided for @metric_good_67_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies both partners cheering each other on and celebrating efforts not just outcomes.'**
  String get metric_good_67_description;

  /// No description provided for @metric_good_68_name.
  ///
  /// In en, this message translates to:
  /// **'Respectful Questioning'**
  String get metric_good_68_name;

  /// No description provided for @metric_good_68_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks asking about the partner\'s perspective with genuine curiosity rather than interrogation.'**
  String get metric_good_68_description;

  /// No description provided for @metric_good_69_name.
  ///
  /// In en, this message translates to:
  /// **'Loving Consistency'**
  String get metric_good_69_name;

  /// No description provided for @metric_good_69_description.
  ///
  /// In en, this message translates to:
  /// **'Measures showing up the same way in good times and hard times, reliable in affection.'**
  String get metric_good_69_description;

  /// No description provided for @metric_good_70_name.
  ///
  /// In en, this message translates to:
  /// **'Emotional Reciprocity'**
  String get metric_good_70_name;

  /// No description provided for @metric_good_70_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for both partners sharing feelings, needs, and vulnerabilities in balanced ways.'**
  String get metric_good_70_description;

  /// No description provided for @metric_good_71_name.
  ///
  /// In en, this message translates to:
  /// **'Joyful Presence'**
  String get metric_good_71_name;

  /// No description provided for @metric_good_71_description.
  ///
  /// In en, this message translates to:
  /// **'Detects genuine happiness in the partner\'s company and enthusiasm for time together.'**
  String get metric_good_71_description;

  /// No description provided for @metric_good_72_name.
  ///
  /// In en, this message translates to:
  /// **'Constructive Dialogue'**
  String get metric_good_72_name;

  /// No description provided for @metric_good_72_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies conversations that move toward understanding rather than winning or proving right.'**
  String get metric_good_72_description;

  /// No description provided for @metric_good_73_name.
  ///
  /// In en, this message translates to:
  /// **'Protective Advocacy'**
  String get metric_good_73_name;

  /// No description provided for @metric_good_73_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks standing up for the partner, defending them, and prioritizing their wellbeing.'**
  String get metric_good_73_description;

  /// No description provided for @metric_good_74_name.
  ///
  /// In en, this message translates to:
  /// **'Mindful Communication'**
  String get metric_good_74_name;

  /// No description provided for @metric_good_74_description.
  ///
  /// In en, this message translates to:
  /// **'Measures thoughtful word choice, considering impact before speaking, and intentional messaging.'**
  String get metric_good_74_description;

  /// No description provided for @metric_good_75_name.
  ///
  /// In en, this message translates to:
  /// **'Relationship Investment'**
  String get metric_good_75_name;

  /// No description provided for @metric_good_75_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for time, energy, and resources devoted to nurturing the partnership.'**
  String get metric_good_75_description;

  /// No description provided for @metric_good_76_name.
  ///
  /// In en, this message translates to:
  /// **'Secure Base Language'**
  String get metric_good_76_name;

  /// No description provided for @metric_good_76_description.
  ///
  /// In en, this message translates to:
  /// **'Detects offering stability, safety, and a foundation from which the partner can explore.'**
  String get metric_good_76_description;

  /// No description provided for @metric_good_77_name.
  ///
  /// In en, this message translates to:
  /// **'Mutual Admiration'**
  String get metric_good_77_name;

  /// No description provided for @metric_good_77_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies both partners expressing respect and appreciation for each other\'s qualities.'**
  String get metric_good_77_description;

  /// No description provided for @metric_good_78_name.
  ///
  /// In en, this message translates to:
  /// **'Tender Moments'**
  String get metric_good_78_name;

  /// No description provided for @metric_good_78_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks creating or recognizing intimate quiet moments of connection and closeness.'**
  String get metric_good_78_description;

  /// No description provided for @metric_good_79_name.
  ///
  /// In en, this message translates to:
  /// **'Genuine Curiosity'**
  String get metric_good_79_name;

  /// No description provided for @metric_good_79_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for authentic interest in understanding the partner\'s thoughts, feelings, and experiences.'**
  String get metric_good_79_description;

  /// No description provided for @metric_good_80_name.
  ///
  /// In en, this message translates to:
  /// **'Loving Acceptance'**
  String get metric_good_80_name;

  /// No description provided for @metric_good_80_description.
  ///
  /// In en, this message translates to:
  /// **'Detects embracing the partner\'s whole self, including imperfections and past.'**
  String get metric_good_80_description;

  /// No description provided for @metric_good_81_name.
  ///
  /// In en, this message translates to:
  /// **'Mutual Growth Support'**
  String get metric_good_81_name;

  /// No description provided for @metric_good_81_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies both partners encouraging each other\'s development and celebrating progress.'**
  String get metric_good_81_description;

  /// No description provided for @metric_good_82_name.
  ///
  /// In en, this message translates to:
  /// **'Warm Tone Indicators'**
  String get metric_good_82_name;

  /// No description provided for @metric_good_82_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks use of affectionate language, kind phrasing, and gentle communication style.'**
  String get metric_good_82_description;

  /// No description provided for @metric_good_83_name.
  ///
  /// In en, this message translates to:
  /// **'Responsive Engagement'**
  String get metric_good_83_name;

  /// No description provided for @metric_good_83_description.
  ///
  /// In en, this message translates to:
  /// **'Measures quick, engaged responses to the partner\'s messages and emotional bids.'**
  String get metric_good_83_description;

  /// No description provided for @metric_good_84_name.
  ///
  /// In en, this message translates to:
  /// **'Shared Values Alignment'**
  String get metric_good_84_name;

  /// No description provided for @metric_good_84_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for references to common beliefs, goals, or life philosophies that unite the couple.'**
  String get metric_good_84_description;

  /// No description provided for @metric_good_85_name.
  ///
  /// In en, this message translates to:
  /// **'Unconditional Support'**
  String get metric_good_85_name;

  /// No description provided for @metric_good_85_description.
  ///
  /// In en, this message translates to:
  /// **'Detects standing by the partner through difficulties without making support conditional.'**
  String get metric_good_85_description;

  /// No description provided for @metric_good_86_name.
  ///
  /// In en, this message translates to:
  /// **'Intimate Vulnerability'**
  String get metric_good_86_name;

  /// No description provided for @metric_good_86_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies sharing deep fears, dreams, or insecurities that deepen emotional bonds.'**
  String get metric_good_86_description;

  /// No description provided for @metric_good_87_name.
  ///
  /// In en, this message translates to:
  /// **'Mutual Respect Language'**
  String get metric_good_87_name;

  /// No description provided for @metric_good_87_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks honoring each other\'s perspectives, choices, and autonomy in communication.'**
  String get metric_good_87_description;

  /// No description provided for @metric_good_88_name.
  ///
  /// In en, this message translates to:
  /// **'Positive Framing'**
  String get metric_good_88_name;

  /// No description provided for @metric_good_88_description.
  ///
  /// In en, this message translates to:
  /// **'Measures seeing the best in situations and the partner, focusing on strengths.'**
  String get metric_good_88_description;

  /// No description provided for @metric_good_89_name.
  ///
  /// In en, this message translates to:
  /// **'Collaborative Problem Solving'**
  String get metric_good_89_name;

  /// No description provided for @metric_good_89_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for working together toward solutions that benefit both partners equally.'**
  String get metric_good_89_description;

  /// No description provided for @metric_good_90_name.
  ///
  /// In en, this message translates to:
  /// **'Emotional Validation'**
  String get metric_good_90_name;

  /// No description provided for @metric_good_90_description.
  ///
  /// In en, this message translates to:
  /// **'Detects confirming that the partner\'s feelings make sense and are acceptable.'**
  String get metric_good_90_description;

  /// No description provided for @metric_good_91_name.
  ///
  /// In en, this message translates to:
  /// **'Consistent Kindness'**
  String get metric_good_91_name;

  /// No description provided for @metric_good_91_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies regular small acts of care that show the partner is thought of and valued.'**
  String get metric_good_91_description;

  /// No description provided for @metric_good_92_name.
  ///
  /// In en, this message translates to:
  /// **'Mutual Celebration'**
  String get metric_good_92_name;

  /// No description provided for @metric_good_92_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks both partners genuinely happy about each other\'s successes and joys.'**
  String get metric_good_92_description;

  /// No description provided for @metric_good_93_name.
  ///
  /// In en, this message translates to:
  /// **'Secure Attachment Language'**
  String get metric_good_93_name;

  /// No description provided for @metric_good_93_description.
  ///
  /// In en, this message translates to:
  /// **'Measures expressing trust, comfort with intimacy, and confidence in the relationship.'**
  String get metric_good_93_description;

  /// No description provided for @metric_good_94_name.
  ///
  /// In en, this message translates to:
  /// **'Thoughtful Consideration'**
  String get metric_good_94_name;

  /// No description provided for @metric_good_94_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for making decisions with the partner\'s needs and feelings in mind.'**
  String get metric_good_94_description;

  /// No description provided for @metric_good_95_name.
  ///
  /// In en, this message translates to:
  /// **'Loving Presence'**
  String get metric_good_95_name;

  /// No description provided for @metric_good_95_description.
  ///
  /// In en, this message translates to:
  /// **'Detects being fully present and engaged, showing the partner they matter most.'**
  String get metric_good_95_description;

  /// No description provided for @metric_good_96_name.
  ///
  /// In en, this message translates to:
  /// **'Genuine Care Language'**
  String get metric_good_96_name;

  /// No description provided for @metric_good_96_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks authentic expressions of concern, care, and investment in the partner\'s wellbeing.'**
  String get metric_good_96_description;

  /// No description provided for @metric_good_97_name.
  ///
  /// In en, this message translates to:
  /// **'Relationship Commitment'**
  String get metric_good_97_name;

  /// No description provided for @metric_good_97_description.
  ///
  /// In en, this message translates to:
  /// **'Measures expressing dedication to the partnership and willingness to work through challenges.'**
  String get metric_good_97_description;

  /// No description provided for @metric_good_98_name.
  ///
  /// In en, this message translates to:
  /// **'Authentic Love Expression'**
  String get metric_good_98_name;

  /// No description provided for @metric_good_98_description.
  ///
  /// In en, this message translates to:
  /// **'Looks for genuine consistent expressions of love that feel real and unconditional.'**
  String get metric_good_98_description;

  /// No description provided for @metric_good_99_name.
  ///
  /// In en, this message translates to:
  /// **'Mutual Goal Setting'**
  String get metric_good_99_name;

  /// No description provided for @metric_good_99_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies partners collaboratively defining shared dreams, priorities, and direction for their future together.'**
  String get metric_good_99_description;

  /// No description provided for @metric_good_100_name.
  ///
  /// In en, this message translates to:
  /// **'Repair Attempt Recognition'**
  String get metric_good_100_name;

  /// No description provided for @metric_good_100_description.
  ///
  /// In en, this message translates to:
  /// **'Detects noticing and positively responding to the partner\'s bids to de-escalate conflict and restore connection.'**
  String get metric_good_100_description;

  /// No description provided for @metric_bad_1_name.
  ///
  /// In en, this message translates to:
  /// **'Passive Aggression'**
  String get metric_bad_1_name;

  /// No description provided for @metric_bad_1_description.
  ///
  /// In en, this message translates to:
  /// **'Detects indirect hostility through procrastination, forgetfulness, sarcasm, or subtle sabotage instead of direct expression.'**
  String get metric_bad_1_description;

  /// No description provided for @metric_bad_2_name.
  ///
  /// In en, this message translates to:
  /// **'Guilt Weaponization'**
  String get metric_bad_2_name;

  /// No description provided for @metric_bad_2_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies using guilt, shame, or obligation language to manipulate decisions or prevent boundary-setting.'**
  String get metric_bad_2_description;

  /// No description provided for @metric_bad_3_name.
  ///
  /// In en, this message translates to:
  /// **'Emotional Blackmail'**
  String get metric_bad_3_name;

  /// No description provided for @metric_bad_3_description.
  ///
  /// In en, this message translates to:
  /// **'Flags threats of self-harm, abandonment, or withdrawal of love to control behavior or prevent discussion.'**
  String get metric_bad_3_description;

  /// No description provided for @metric_bad_4_name.
  ///
  /// In en, this message translates to:
  /// **'Chronic Complaining'**
  String get metric_bad_4_name;

  /// No description provided for @metric_bad_4_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks persistent negativity, rumination, or complaint without seeking solutions or collaborative change.'**
  String get metric_bad_4_description;

  /// No description provided for @metric_bad_5_name.
  ///
  /// In en, this message translates to:
  /// **'Comparison Shaming'**
  String get metric_bad_5_name;

  /// No description provided for @metric_bad_5_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies unfavorable comparisons to exes, friends, or family to shame or coerce behavior change.'**
  String get metric_bad_5_description;

  /// No description provided for @metric_bad_6_name.
  ///
  /// In en, this message translates to:
  /// **'Conditional Listening'**
  String get metric_bad_6_name;

  /// No description provided for @metric_bad_6_description.
  ///
  /// In en, this message translates to:
  /// **'Detects listening only when it benefits the listener or serves their agenda rather than genuine understanding.'**
  String get metric_bad_6_description;

  /// No description provided for @metric_bad_7_name.
  ///
  /// In en, this message translates to:
  /// **'Selective Memory'**
  String get metric_bad_7_name;

  /// No description provided for @metric_bad_7_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks convenient forgetting of promises, agreements, or past harmful behavior to avoid accountability.'**
  String get metric_bad_7_description;

  /// No description provided for @metric_bad_8_name.
  ///
  /// In en, this message translates to:
  /// **'Attention Seeking Through Crisis'**
  String get metric_bad_8_name;

  /// No description provided for @metric_bad_8_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies dramatic escalation, crisis creation, or exaggeration to gain focus or sympathy.'**
  String get metric_bad_8_description;

  /// No description provided for @metric_bad_9_name.
  ///
  /// In en, this message translates to:
  /// **'Boundary Testing'**
  String get metric_bad_9_name;

  /// No description provided for @metric_bad_9_description.
  ///
  /// In en, this message translates to:
  /// **'Detects repeated probing or pushing of stated limits to determine if they will be enforced.'**
  String get metric_bad_9_description;

  /// No description provided for @metric_bad_10_name.
  ///
  /// In en, this message translates to:
  /// **'Withholding Information'**
  String get metric_bad_10_name;

  /// No description provided for @metric_bad_10_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies deliberate omission of relevant facts, context, or transparency to maintain control.'**
  String get metric_bad_10_description;

  /// No description provided for @metric_bad_11_name.
  ///
  /// In en, this message translates to:
  /// **'Disproportionate Anger'**
  String get metric_bad_11_name;

  /// No description provided for @metric_bad_11_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks anger responses that are significantly larger than the triggering incident warrants.'**
  String get metric_bad_11_description;

  /// No description provided for @metric_bad_12_name.
  ///
  /// In en, this message translates to:
  /// **'Reassurance Addiction'**
  String get metric_bad_12_name;

  /// No description provided for @metric_bad_12_description.
  ///
  /// In en, this message translates to:
  /// **'Flags constant need for validation, repeated questions about commitment, or endless proof of love.'**
  String get metric_bad_12_description;

  /// No description provided for @metric_bad_13_name.
  ///
  /// In en, this message translates to:
  /// **'Conversation Avoidance'**
  String get metric_bad_13_name;

  /// No description provided for @metric_bad_13_description.
  ///
  /// In en, this message translates to:
  /// **'Detects refusal to engage with concerns, avoidance phrases, or shutting down important discussions.'**
  String get metric_bad_13_description;

  /// No description provided for @metric_bad_14_name.
  ///
  /// In en, this message translates to:
  /// **'Contradiction Pattern'**
  String get metric_bad_14_name;

  /// No description provided for @metric_bad_14_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies contradictory statements, promises, or positions that create confusion or destabilization.'**
  String get metric_bad_14_description;

  /// No description provided for @metric_bad_15_name.
  ///
  /// In en, this message translates to:
  /// **'Dismissal Through Labeling'**
  String get metric_bad_15_name;

  /// No description provided for @metric_bad_15_description.
  ///
  /// In en, this message translates to:
  /// **'Flags labeling concerns as \"crazy,\" \"dramatic,\" \"paranoid,\" or \"overreacting\" to invalidate them.'**
  String get metric_bad_15_description;

  /// No description provided for @metric_bad_16_name.
  ///
  /// In en, this message translates to:
  /// **'Selective Empathy'**
  String get metric_bad_16_name;

  /// No description provided for @metric_bad_16_description.
  ///
  /// In en, this message translates to:
  /// **'Detects empathy offered only when convenient or when it serves the speaker\'s interests.'**
  String get metric_bad_16_description;

  /// No description provided for @metric_bad_17_name.
  ///
  /// In en, this message translates to:
  /// **'Transactional Framing'**
  String get metric_bad_17_name;

  /// No description provided for @metric_bad_17_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies \"you owe me,\" \"after all I\'ve done,\" or viewing relationship acts as creating debt.'**
  String get metric_bad_17_description;

  /// No description provided for @metric_bad_18_name.
  ///
  /// In en, this message translates to:
  /// **'Grievance Recycling'**
  String get metric_bad_18_name;

  /// No description provided for @metric_bad_18_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks bringing up old grievances repeatedly or using past harm as ammunition in current conflicts.'**
  String get metric_bad_18_description;

  /// No description provided for @metric_bad_19_name.
  ///
  /// In en, this message translates to:
  /// **'Demand Language'**
  String get metric_bad_19_name;

  /// No description provided for @metric_bad_19_description.
  ///
  /// In en, this message translates to:
  /// **'Flags imperatives, commands, or ultimatums rather than requests or collaborative problem-solving.'**
  String get metric_bad_19_description;

  /// No description provided for @metric_bad_20_name.
  ///
  /// In en, this message translates to:
  /// **'Emotional Unavailability'**
  String get metric_bad_20_name;

  /// No description provided for @metric_bad_20_description.
  ///
  /// In en, this message translates to:
  /// **'Detects consistent refusal to engage emotionally, share feelings, or provide comfort.'**
  String get metric_bad_20_description;

  /// No description provided for @metric_bad_21_name.
  ///
  /// In en, this message translates to:
  /// **'Hostile Interpretation'**
  String get metric_bad_21_name;

  /// No description provided for @metric_bad_21_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies taking neutral statements as attacks or interpreting ambiguous messages as hostile.'**
  String get metric_bad_21_description;

  /// No description provided for @metric_bad_22_name.
  ///
  /// In en, this message translates to:
  /// **'Entitlement Framing'**
  String get metric_bad_22_name;

  /// No description provided for @metric_bad_22_description.
  ///
  /// In en, this message translates to:
  /// **'Flags language suggesting the speaker deserves special treatment, exceptions, or priority.'**
  String get metric_bad_22_description;

  /// No description provided for @metric_bad_23_name.
  ///
  /// In en, this message translates to:
  /// **'Criticism Disguised as Help'**
  String get metric_bad_23_name;

  /// No description provided for @metric_bad_23_description.
  ///
  /// In en, this message translates to:
  /// **'Detects criticism wrapped in \"I\'m just trying to help\" or \"for your own good\" language.'**
  String get metric_bad_23_description;

  /// No description provided for @metric_bad_24_name.
  ///
  /// In en, this message translates to:
  /// **'Neglect Patterns'**
  String get metric_bad_24_name;

  /// No description provided for @metric_bad_24_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies consistent failure to meet emotional, physical, or relational needs.'**
  String get metric_bad_24_description;

  /// No description provided for @metric_bad_25_name.
  ///
  /// In en, this message translates to:
  /// **'Conflict Rumination'**
  String get metric_bad_25_name;

  /// No description provided for @metric_bad_25_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks obsessive rehashing of conflicts without moving toward resolution or closure.'**
  String get metric_bad_25_description;

  /// No description provided for @metric_bad_26_name.
  ///
  /// In en, this message translates to:
  /// **'Sensitivity Dismissal'**
  String get metric_bad_26_name;

  /// No description provided for @metric_bad_26_description.
  ///
  /// In en, this message translates to:
  /// **'Flags statements like \"you\'re too sensitive\" or \"you\'re overreacting\" to dismiss feelings.'**
  String get metric_bad_26_description;

  /// No description provided for @metric_bad_27_name.
  ///
  /// In en, this message translates to:
  /// **'Competitive Framing'**
  String get metric_bad_27_name;

  /// No description provided for @metric_bad_27_description.
  ///
  /// In en, this message translates to:
  /// **'Detects framing relationship as a competition where one partner must win or dominate.'**
  String get metric_bad_27_description;

  /// No description provided for @metric_bad_28_name.
  ///
  /// In en, this message translates to:
  /// **'Double Standards'**
  String get metric_bad_28_name;

  /// No description provided for @metric_bad_28_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies applying different rules to self versus partner or changing expectations arbitrarily.'**
  String get metric_bad_28_description;

  /// No description provided for @metric_bad_29_name.
  ///
  /// In en, this message translates to:
  /// **'Affection as Punishment'**
  String get metric_bad_29_name;

  /// No description provided for @metric_bad_29_description.
  ///
  /// In en, this message translates to:
  /// **'Flags removing affection, attention, or communication as retaliation for perceived wrongs.'**
  String get metric_bad_29_description;

  /// No description provided for @metric_bad_30_name.
  ///
  /// In en, this message translates to:
  /// **'Blame Rotation'**
  String get metric_bad_30_name;

  /// No description provided for @metric_bad_30_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks rotating blame between partner, circumstances, and external factors to avoid accountability.'**
  String get metric_bad_30_description;

  /// No description provided for @metric_bad_31_name.
  ///
  /// In en, this message translates to:
  /// **'Rhetorical Mockery'**
  String get metric_bad_31_name;

  /// No description provided for @metric_bad_31_description.
  ///
  /// In en, this message translates to:
  /// **'Detects rhetorical or sarcastic questions used to mock rather than understand.'**
  String get metric_bad_31_description;

  /// No description provided for @metric_bad_32_name.
  ///
  /// In en, this message translates to:
  /// **'Sacrifice Reminders'**
  String get metric_bad_32_name;

  /// No description provided for @metric_bad_32_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies reminding partner of sacrifices, favors, or support to create debt and compliance.'**
  String get metric_bad_32_description;

  /// No description provided for @metric_bad_33_name.
  ///
  /// In en, this message translates to:
  /// **'Deliberate Escalation'**
  String get metric_bad_33_name;

  /// No description provided for @metric_bad_33_description.
  ///
  /// In en, this message translates to:
  /// **'Flags deliberately escalating intensity to overwhelm partner\'s ability to respond rationally.'**
  String get metric_bad_33_description;

  /// No description provided for @metric_bad_34_name.
  ///
  /// In en, this message translates to:
  /// **'Strategic Vulnerability'**
  String get metric_bad_34_name;

  /// No description provided for @metric_bad_34_description.
  ///
  /// In en, this message translates to:
  /// **'Detects sharing emotions only when it serves manipulation or control purposes.'**
  String get metric_bad_34_description;

  /// No description provided for @metric_bad_35_name.
  ///
  /// In en, this message translates to:
  /// **'Deflection Through Counterattack'**
  String get metric_bad_35_name;

  /// No description provided for @metric_bad_35_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies turning focus away from partner\'s concerns by raising unrelated issues or countercharges.'**
  String get metric_bad_35_description;

  /// No description provided for @metric_bad_36_name.
  ///
  /// In en, this message translates to:
  /// **'Superiority Language'**
  String get metric_bad_36_name;

  /// No description provided for @metric_bad_36_description.
  ///
  /// In en, this message translates to:
  /// **'Flags superiority language, condescension, or framing partner as beneath them.'**
  String get metric_bad_36_description;

  /// No description provided for @metric_bad_37_name.
  ///
  /// In en, this message translates to:
  /// **'Conflict Exit Pattern'**
  String get metric_bad_37_name;

  /// No description provided for @metric_bad_37_description.
  ///
  /// In en, this message translates to:
  /// **'Detects pattern of leaving conversations, refusing to engage, or creating distance during conflict.'**
  String get metric_bad_37_description;

  /// No description provided for @metric_bad_38_name.
  ///
  /// In en, this message translates to:
  /// **'Negative Bias'**
  String get metric_bad_38_name;

  /// No description provided for @metric_bad_38_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks consistently interpreting neutral or positive actions as negative or suspicious.'**
  String get metric_bad_38_description;

  /// No description provided for @metric_bad_39_name.
  ///
  /// In en, this message translates to:
  /// **'Agency Denial'**
  String get metric_bad_39_name;

  /// No description provided for @metric_bad_39_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies \"I have to,\" \"you make me,\" or language removing personal agency from the speaker.'**
  String get metric_bad_39_description;

  /// No description provided for @metric_bad_40_name.
  ///
  /// In en, this message translates to:
  /// **'Silence as Control'**
  String get metric_bad_40_name;

  /// No description provided for @metric_bad_40_description.
  ///
  /// In en, this message translates to:
  /// **'Flags using silence or non-response as a form of punishment or control.'**
  String get metric_bad_40_description;

  /// No description provided for @metric_bad_41_name.
  ///
  /// In en, this message translates to:
  /// **'Privacy Hypocrisy'**
  String get metric_bad_41_name;

  /// No description provided for @metric_bad_41_description.
  ///
  /// In en, this message translates to:
  /// **'Detects refusing to share information while demanding transparency from the partner.'**
  String get metric_bad_41_description;

  /// No description provided for @metric_bad_42_name.
  ///
  /// In en, this message translates to:
  /// **'Unsolicited Harsh Feedback'**
  String get metric_bad_42_name;

  /// No description provided for @metric_bad_42_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies harsh feedback presented as \"constructive\" or \"helpful\" without consent.'**
  String get metric_bad_42_description;

  /// No description provided for @metric_bad_43_name.
  ///
  /// In en, this message translates to:
  /// **'Conditional Care'**
  String get metric_bad_43_name;

  /// No description provided for @metric_bad_43_description.
  ///
  /// In en, this message translates to:
  /// **'Flags support offered only when partner complies with speaker\'s expectations.'**
  String get metric_bad_43_description;

  /// No description provided for @metric_bad_44_name.
  ///
  /// In en, this message translates to:
  /// **'Impact Denial'**
  String get metric_bad_44_name;

  /// No description provided for @metric_bad_44_description.
  ///
  /// In en, this message translates to:
  /// **'Detects \"I didn\'t mean it that way\" or \"you\'re reading too much into it\" after causing harm.'**
  String get metric_bad_44_description;

  /// No description provided for @metric_bad_45_name.
  ///
  /// In en, this message translates to:
  /// **'Debt Mentality'**
  String get metric_bad_45_name;

  /// No description provided for @metric_bad_45_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks bringing up past help or support to create debt and control current behavior.'**
  String get metric_bad_45_description;

  /// No description provided for @metric_bad_46_name.
  ///
  /// In en, this message translates to:
  /// **'Responsibility Evasion'**
  String get metric_bad_46_name;

  /// No description provided for @metric_bad_46_description.
  ///
  /// In en, this message translates to:
  /// **'Flags consistent pattern of not taking responsibility for the impact of actions.'**
  String get metric_bad_46_description;

  /// No description provided for @metric_bad_47_name.
  ///
  /// In en, this message translates to:
  /// **'Needs Dismissal'**
  String get metric_bad_47_name;

  /// No description provided for @metric_bad_47_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies treating partner\'s needs as inconvenient, unreasonable, or unimportant.'**
  String get metric_bad_47_description;

  /// No description provided for @metric_bad_48_name.
  ///
  /// In en, this message translates to:
  /// **'Emotional Manipulation'**
  String get metric_bad_48_name;

  /// No description provided for @metric_bad_48_description.
  ///
  /// In en, this message translates to:
  /// **'Flags using emotions strategically to control outcomes or prevent accountability.'**
  String get metric_bad_48_description;

  /// No description provided for @metric_bad_49_name.
  ///
  /// In en, this message translates to:
  /// **'Intimacy Avoidance'**
  String get metric_bad_49_name;

  /// No description provided for @metric_bad_49_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks consistent withdrawal from emotional or physical closeness without explanation.'**
  String get metric_bad_49_description;

  /// No description provided for @metric_bad_50_name.
  ///
  /// In en, this message translates to:
  /// **'Veiled Criticism'**
  String get metric_bad_50_name;

  /// No description provided for @metric_bad_50_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies criticism disguised as jokes, observations, or casual comments.'**
  String get metric_bad_50_description;

  /// No description provided for @metric_bad_51_name.
  ///
  /// In en, this message translates to:
  /// **'Concern Minimization'**
  String get metric_bad_51_name;

  /// No description provided for @metric_bad_51_description.
  ///
  /// In en, this message translates to:
  /// **'Flags reducing partner\'s concerns to insignificance or exaggeration.'**
  String get metric_bad_51_description;

  /// No description provided for @metric_bad_52_name.
  ///
  /// In en, this message translates to:
  /// **'Guilt Enforcement'**
  String get metric_bad_52_name;

  /// No description provided for @metric_bad_52_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies using guilt or shame to ensure partner complies with expectations.'**
  String get metric_bad_52_description;

  /// No description provided for @metric_bad_53_name.
  ///
  /// In en, this message translates to:
  /// **'Apology Resistance'**
  String get metric_bad_53_name;

  /// No description provided for @metric_bad_53_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks resistance to apologizing, explaining away harm, or refusing to acknowledge impact.'**
  String get metric_bad_53_description;

  /// No description provided for @metric_bad_54_name.
  ///
  /// In en, this message translates to:
  /// **'Perspective Rejection'**
  String get metric_bad_54_name;

  /// No description provided for @metric_bad_54_description.
  ///
  /// In en, this message translates to:
  /// **'Flags refusing to consider or validate partner\'s viewpoint or experience.'**
  String get metric_bad_54_description;

  /// No description provided for @metric_bad_55_name.
  ///
  /// In en, this message translates to:
  /// **'Emotional Rationing'**
  String get metric_bad_55_name;

  /// No description provided for @metric_bad_55_description.
  ///
  /// In en, this message translates to:
  /// **'Detects deliberately limiting emotional expression or connection as a form of control.'**
  String get metric_bad_55_description;

  /// No description provided for @metric_bad_56_name.
  ///
  /// In en, this message translates to:
  /// **'Obligation Manipulation'**
  String get metric_bad_56_name;

  /// No description provided for @metric_bad_56_description.
  ///
  /// In en, this message translates to:
  /// **'Flags using past support or sacrifice to manipulate current decisions.'**
  String get metric_bad_56_description;

  /// No description provided for @metric_bad_57_name.
  ///
  /// In en, this message translates to:
  /// **'Resistance to Growth'**
  String get metric_bad_57_name;

  /// No description provided for @metric_bad_57_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks resistance to modifying harmful behavior despite requests or demonstrated impact.'**
  String get metric_bad_57_description;

  /// No description provided for @metric_bad_58_name.
  ///
  /// In en, this message translates to:
  /// **'Harm Denial'**
  String get metric_bad_58_name;

  /// No description provided for @metric_bad_58_description.
  ///
  /// In en, this message translates to:
  /// **'Detects refusing to acknowledge or take seriously the impact of one\'s own behavior.'**
  String get metric_bad_58_description;

  /// No description provided for @metric_bad_59_name.
  ///
  /// In en, this message translates to:
  /// **'Loaded Questions'**
  String get metric_bad_59_name;

  /// No description provided for @metric_bad_59_description.
  ///
  /// In en, this message translates to:
  /// **'Flags critical intent disguised as innocent questions or expressions of curiosity.'**
  String get metric_bad_59_description;

  /// No description provided for @metric_bad_60_name.
  ///
  /// In en, this message translates to:
  /// **'Contemptuous Tone'**
  String get metric_bad_60_name;

  /// No description provided for @metric_bad_60_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies dismissive attitude or disdain conveyed through text patterns and word choice.'**
  String get metric_bad_60_description;

  /// No description provided for @metric_bad_61_name.
  ///
  /// In en, this message translates to:
  /// **'Guilt Trip Cycling'**
  String get metric_bad_61_name;

  /// No description provided for @metric_bad_61_description.
  ///
  /// In en, this message translates to:
  /// **'Detects repeatedly using guilt about past support or sacrifice to control current behavior.'**
  String get metric_bad_61_description;

  /// No description provided for @metric_bad_62_name.
  ///
  /// In en, this message translates to:
  /// **'Emotional Guardedness'**
  String get metric_bad_62_name;

  /// No description provided for @metric_bad_62_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks refusing to share emotions, fears, or needs with partner as protective withholding.'**
  String get metric_bad_62_description;

  /// No description provided for @metric_bad_63_name.
  ///
  /// In en, this message translates to:
  /// **'Boundary Negotiation'**
  String get metric_bad_63_name;

  /// No description provided for @metric_bad_63_description.
  ///
  /// In en, this message translates to:
  /// **'Flags treating stated limits as suggestions or negotiable rather than firm commitments.'**
  String get metric_bad_63_description;

  /// No description provided for @metric_bad_64_name.
  ///
  /// In en, this message translates to:
  /// **'Emotional Absence'**
  String get metric_bad_64_name;

  /// No description provided for @metric_bad_64_description.
  ///
  /// In en, this message translates to:
  /// **'Detects consistent refusal to provide emotional support or engaged presence.'**
  String get metric_bad_64_description;

  /// No description provided for @metric_bad_65_name.
  ///
  /// In en, this message translates to:
  /// **'Favor Tracking'**
  String get metric_bad_65_name;

  /// No description provided for @metric_bad_65_description.
  ///
  /// In en, this message translates to:
  /// **'Flags keeping mental score of favors, support, or sacrifices for later leverage.'**
  String get metric_bad_65_description;

  /// No description provided for @metric_bad_66_name.
  ///
  /// In en, this message translates to:
  /// **'Honesty Avoidance'**
  String get metric_bad_66_name;

  /// No description provided for @metric_bad_66_description.
  ///
  /// In en, this message translates to:
  /// **'Detects pattern of withholding truth, omitting facts, or being deliberately vague.'**
  String get metric_bad_66_description;

  /// No description provided for @metric_bad_67_name.
  ///
  /// In en, this message translates to:
  /// **'Validity Denial'**
  String get metric_bad_67_name;

  /// No description provided for @metric_bad_67_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies treating partner\'s feelings, needs, or concerns as invalid or illegitimate.'**
  String get metric_bad_67_description;

  /// No description provided for @metric_bad_68_name.
  ///
  /// In en, this message translates to:
  /// **'Advice Disguised Criticism'**
  String get metric_bad_68_name;

  /// No description provided for @metric_bad_68_description.
  ///
  /// In en, this message translates to:
  /// **'Flags criticism presented as concern, advice, or a helpful observation.'**
  String get metric_bad_68_description;

  /// No description provided for @metric_bad_69_name.
  ///
  /// In en, this message translates to:
  /// **'Superiority Indicators'**
  String get metric_bad_69_name;

  /// No description provided for @metric_bad_69_description.
  ///
  /// In en, this message translates to:
  /// **'Detects superiority, mockery, or disdain in language or communication style.'**
  String get metric_bad_69_description;

  /// No description provided for @metric_bad_70_name.
  ///
  /// In en, this message translates to:
  /// **'Repair Resistance'**
  String get metric_bad_70_name;

  /// No description provided for @metric_bad_70_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks resistance to making amends, reconnecting, or rebuilding after conflict.'**
  String get metric_bad_70_description;

  /// No description provided for @metric_bad_71_name.
  ///
  /// In en, this message translates to:
  /// **'Effort Dismissal'**
  String get metric_bad_71_name;

  /// No description provided for @metric_bad_71_description.
  ///
  /// In en, this message translates to:
  /// **'Flags minimizing or ignoring partner\'s attempts to improve or address issues.'**
  String get metric_bad_71_description;

  /// No description provided for @metric_bad_72_name.
  ///
  /// In en, this message translates to:
  /// **'Emotional Distance Pattern'**
  String get metric_bad_72_name;

  /// No description provided for @metric_bad_72_description.
  ///
  /// In en, this message translates to:
  /// **'Detects long-term pattern of emotional distance or refusal to engage authentically.'**
  String get metric_bad_72_description;

  /// No description provided for @metric_bad_73_name.
  ///
  /// In en, this message translates to:
  /// **'Inferiority Framing'**
  String get metric_bad_73_name;

  /// No description provided for @metric_bad_73_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies framing partner as inferior, flawed, or unworthy of full respect.'**
  String get metric_bad_73_description;

  /// No description provided for @metric_bad_74_name.
  ///
  /// In en, this message translates to:
  /// **'Feedback Resistance'**
  String get metric_bad_74_name;

  /// No description provided for @metric_bad_74_description.
  ///
  /// In en, this message translates to:
  /// **'Detects resistance to hearing criticism, refusing to listen, or shutting down discussion.'**
  String get metric_bad_74_description;

  /// No description provided for @metric_bad_75_name.
  ///
  /// In en, this message translates to:
  /// **'Worry Dismissal'**
  String get metric_bad_75_name;

  /// No description provided for @metric_bad_75_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies treating partner\'s worries or fears as unfounded or irrational.'**
  String get metric_bad_75_description;

  /// No description provided for @metric_bad_76_name.
  ///
  /// In en, this message translates to:
  /// **'Fault Finding'**
  String get metric_bad_76_name;

  /// No description provided for @metric_bad_76_description.
  ///
  /// In en, this message translates to:
  /// **'Flags chronic pattern of finding fault, complaining about, or attacking partner\'s character.'**
  String get metric_bad_76_description;

  /// No description provided for @metric_bad_77_name.
  ///
  /// In en, this message translates to:
  /// **'Sacrifice Guilt Cycling'**
  String get metric_bad_77_name;

  /// No description provided for @metric_bad_77_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies repeatedly bringing up past support to create guilt or control behavior.'**
  String get metric_bad_77_description;

  /// No description provided for @metric_bad_78_name.
  ///
  /// In en, this message translates to:
  /// **'Commitment Ambiguity'**
  String get metric_bad_78_name;

  /// No description provided for @metric_bad_78_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks unclear or wavering commitment language, mixed signals, or reluctance to commit.'**
  String get metric_bad_78_description;

  /// No description provided for @metric_bad_79_name.
  ///
  /// In en, this message translates to:
  /// **'Request Dismissal'**
  String get metric_bad_79_name;

  /// No description provided for @metric_bad_79_description.
  ///
  /// In en, this message translates to:
  /// **'Flags ignoring, refusing, or delaying response to partner\'s reasonable requests.'**
  String get metric_bad_79_description;

  /// No description provided for @metric_bad_80_name.
  ///
  /// In en, this message translates to:
  /// **'Emotional Control Tactics'**
  String get metric_bad_80_name;

  /// No description provided for @metric_bad_80_description.
  ///
  /// In en, this message translates to:
  /// **'Detects strategic use of emotions to control outcomes or prevent accountability.'**
  String get metric_bad_80_description;

  /// No description provided for @metric_bad_81_name.
  ///
  /// In en, this message translates to:
  /// **'Exchange Mentality'**
  String get metric_bad_81_name;

  /// No description provided for @metric_bad_81_description.
  ///
  /// In en, this message translates to:
  /// **'Flags viewing relationship through lens of debt, obligation, or transactional exchange.'**
  String get metric_bad_81_description;

  /// No description provided for @metric_bad_82_name.
  ///
  /// In en, this message translates to:
  /// **'Personal Development Resistance'**
  String get metric_bad_82_name;

  /// No description provided for @metric_bad_82_description.
  ///
  /// In en, this message translates to:
  /// **'Detects resistance to personal development, learning, or changing harmful patterns.'**
  String get metric_bad_82_description;

  /// No description provided for @metric_bad_83_name.
  ///
  /// In en, this message translates to:
  /// **'Improvement Rejection'**
  String get metric_bad_83_name;

  /// No description provided for @metric_bad_83_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies minimizing or rejecting partner\'s efforts to improve or address issues.'**
  String get metric_bad_83_description;

  /// No description provided for @metric_bad_84_name.
  ///
  /// In en, this message translates to:
  /// **'Chronic Criticism'**
  String get metric_bad_84_name;

  /// No description provided for @metric_bad_84_description.
  ///
  /// In en, this message translates to:
  /// **'Flags chronic pattern of criticism wrapped in concern, helpfulness, or care language.'**
  String get metric_bad_84_description;

  /// No description provided for @metric_bad_85_name.
  ///
  /// In en, this message translates to:
  /// **'Solution Avoidance'**
  String get metric_bad_85_name;

  /// No description provided for @metric_bad_85_description.
  ///
  /// In en, this message translates to:
  /// **'Detects consistent pattern of avoiding closure, moving forward, or finding workable solutions.'**
  String get metric_bad_85_description;

  /// No description provided for @metric_bad_86_name.
  ///
  /// In en, this message translates to:
  /// **'Blame Deflection Pattern'**
  String get metric_bad_86_name;

  /// No description provided for @metric_bad_86_description.
  ///
  /// In en, this message translates to:
  /// **'Flags habitual pattern of redirecting responsibility to external factors or the partner.'**
  String get metric_bad_86_description;

  /// No description provided for @metric_bad_87_name.
  ///
  /// In en, this message translates to:
  /// **'Dismissive Responses'**
  String get metric_bad_87_name;

  /// No description provided for @metric_bad_87_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies pattern of dismissing partner\'s input, ideas, or suggestions without consideration.'**
  String get metric_bad_87_description;

  /// No description provided for @metric_bad_88_name.
  ///
  /// In en, this message translates to:
  /// **'Resentment Expression'**
  String get metric_bad_88_name;

  /// No description provided for @metric_bad_88_description.
  ///
  /// In en, this message translates to:
  /// **'Detects tone of resentment, bitterness, or long-held frustration in communication.'**
  String get metric_bad_88_description;

  /// No description provided for @metric_bad_89_name.
  ///
  /// In en, this message translates to:
  /// **'Ambivalent Messaging'**
  String get metric_bad_89_name;

  /// No description provided for @metric_bad_89_description.
  ///
  /// In en, this message translates to:
  /// **'Flags mixed messages about commitment, unclear desire to continue, or push-pull dynamics.'**
  String get metric_bad_89_description;

  /// No description provided for @metric_bad_90_name.
  ///
  /// In en, this message translates to:
  /// **'Expectation Shifting'**
  String get metric_bad_90_name;

  /// No description provided for @metric_bad_90_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies changing expectations without communication, then blaming partner for not meeting them.'**
  String get metric_bad_90_description;

  /// No description provided for @metric_bad_91_name.
  ///
  /// In en, this message translates to:
  /// **'Deflection Habit'**
  String get metric_bad_91_name;

  /// No description provided for @metric_bad_91_description.
  ///
  /// In en, this message translates to:
  /// **'Detects habitual avoidance of direct answers or redirection of conversations away from accountability.'**
  String get metric_bad_91_description;

  /// No description provided for @metric_bad_92_name.
  ///
  /// In en, this message translates to:
  /// **'Manipulation Through Kindness'**
  String get metric_bad_92_name;

  /// No description provided for @metric_bad_92_description.
  ///
  /// In en, this message translates to:
  /// **'Flags exaggerated generosity used strategically to create obligation or lower defenses.'**
  String get metric_bad_92_description;

  /// No description provided for @metric_bad_93_name.
  ///
  /// In en, this message translates to:
  /// **'Chronic Lateness Pattern'**
  String get metric_bad_93_name;

  /// No description provided for @metric_bad_93_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies consistent disregard for partner\'s time through lateness or broken scheduling commitments.'**
  String get metric_bad_93_description;

  /// No description provided for @metric_bad_94_name.
  ///
  /// In en, this message translates to:
  /// **'Progress Minimization'**
  String get metric_bad_94_name;

  /// No description provided for @metric_bad_94_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks dismissing or failing to acknowledge the partner\'s genuine personal growth or improvements.'**
  String get metric_bad_94_description;

  /// No description provided for @metric_bad_95_name.
  ///
  /// In en, this message translates to:
  /// **'Emotional Weaponizing'**
  String get metric_bad_95_name;

  /// No description provided for @metric_bad_95_description.
  ///
  /// In en, this message translates to:
  /// **'Detects using partner\'s disclosed vulnerabilities or fears against them in conflict.'**
  String get metric_bad_95_description;

  /// No description provided for @metric_bad_96_name.
  ///
  /// In en, this message translates to:
  /// **'Gaslighting-Adjacent Tactics'**
  String get metric_bad_96_name;

  /// No description provided for @metric_bad_96_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies subtle reality-distorting tactics that create self-doubt without full gaslighting.'**
  String get metric_bad_96_description;

  /// No description provided for @metric_bad_97_name.
  ///
  /// In en, this message translates to:
  /// **'Passive Stonewalling'**
  String get metric_bad_97_name;

  /// No description provided for @metric_bad_97_description.
  ///
  /// In en, this message translates to:
  /// **'Flags subtle disengagement, monosyllabic responses, or checked-out presence as avoidance.'**
  String get metric_bad_97_description;

  /// No description provided for @metric_bad_98_name.
  ///
  /// In en, this message translates to:
  /// **'Narrative Control'**
  String get metric_bad_98_name;

  /// No description provided for @metric_bad_98_description.
  ///
  /// In en, this message translates to:
  /// **'Detects insisting on being the sole authority on what happened, how it felt, or what was meant.'**
  String get metric_bad_98_description;

  /// No description provided for @metric_bad_99_name.
  ///
  /// In en, this message translates to:
  /// **'Responsibility Deflection'**
  String get metric_bad_99_name;

  /// No description provided for @metric_bad_99_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks consistently redirecting accountability onto external factors, third parties, or the partner\'s behavior.'**
  String get metric_bad_99_description;

  /// No description provided for @metric_bad_100_name.
  ///
  /// In en, this message translates to:
  /// **'Emotional Unavailability'**
  String get metric_bad_100_name;

  /// No description provided for @metric_bad_100_description.
  ///
  /// In en, this message translates to:
  /// **'Flags chronic withdrawal from emotional intimacy, vulnerability, or meaningful connection when the partner needs closeness.'**
  String get metric_bad_100_description;

  /// No description provided for @metric_ugly_1_name.
  ///
  /// In en, this message translates to:
  /// **'Physical Violence Threats'**
  String get metric_ugly_1_name;

  /// No description provided for @metric_ugly_1_description.
  ///
  /// In en, this message translates to:
  /// **'Detects explicit or veiled threats of hitting, harming, or physical assault against the partner.'**
  String get metric_ugly_1_description;

  /// No description provided for @metric_ugly_2_name.
  ///
  /// In en, this message translates to:
  /// **'Weapon Possession References'**
  String get metric_ugly_2_name;

  /// No description provided for @metric_ugly_2_description.
  ///
  /// In en, this message translates to:
  /// **'Flags mentions of guns, knives, or weapons in the context of anger, control, or capability to harm.'**
  String get metric_ugly_2_description;

  /// No description provided for @metric_ugly_3_name.
  ///
  /// In en, this message translates to:
  /// **'Strangulation Indicators'**
  String get metric_ugly_3_name;

  /// No description provided for @metric_ugly_3_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies choking, throat-grabbing, suffocation, or asphyxiation language or references.'**
  String get metric_ugly_3_description;

  /// No description provided for @metric_ugly_4_name.
  ///
  /// In en, this message translates to:
  /// **'Suicide Threat Weaponization'**
  String get metric_ugly_4_name;

  /// No description provided for @metric_ugly_4_description.
  ///
  /// In en, this message translates to:
  /// **'Detects threats of self-harm used to control, manipulate, or punish the partner.'**
  String get metric_ugly_4_description;

  /// No description provided for @metric_ugly_5_name.
  ///
  /// In en, this message translates to:
  /// **'Homicide Ideation Language'**
  String get metric_ugly_5_name;

  /// No description provided for @metric_ugly_5_description.
  ///
  /// In en, this message translates to:
  /// **'Flags statements expressing intent, planning, or desire to kill the partner.'**
  String get metric_ugly_5_description;

  /// No description provided for @metric_ugly_6_name.
  ///
  /// In en, this message translates to:
  /// **'Lethality Risk Patterns'**
  String get metric_ugly_6_name;

  /// No description provided for @metric_ugly_6_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies high-lethality warning signs: weapon access, obsession, escalation, and separation threats combined.'**
  String get metric_ugly_6_description;

  /// No description provided for @metric_ugly_7_name.
  ///
  /// In en, this message translates to:
  /// **'Stalking Obsession Language'**
  String get metric_ugly_7_name;

  /// No description provided for @metric_ugly_7_description.
  ///
  /// In en, this message translates to:
  /// **'Detects obsessive location monitoring, following, surprise visits, or persistent unwanted pursuit.'**
  String get metric_ugly_7_description;

  /// No description provided for @metric_ugly_8_name.
  ///
  /// In en, this message translates to:
  /// **'Forced Isolation Enforcement'**
  String get metric_ugly_8_name;

  /// No description provided for @metric_ugly_8_description.
  ///
  /// In en, this message translates to:
  /// **'Flags aggressive demands to cut off all family, friends, work, or outside contact.'**
  String get metric_ugly_8_description;

  /// No description provided for @metric_ugly_9_name.
  ///
  /// In en, this message translates to:
  /// **'Economic Sabotage'**
  String get metric_ugly_9_name;

  /// No description provided for @metric_ugly_9_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies deliberate destruction of employment, credit, finances, or economic stability.'**
  String get metric_ugly_9_description;

  /// No description provided for @metric_ugly_10_name.
  ///
  /// In en, this message translates to:
  /// **'Reproductive Coercion'**
  String get metric_ugly_10_name;

  /// No description provided for @metric_ugly_10_description.
  ///
  /// In en, this message translates to:
  /// **'Detects forced pregnancy, abortion pressure, contraception tampering, or reproductive control.'**
  String get metric_ugly_10_description;

  /// No description provided for @metric_ugly_11_name.
  ///
  /// In en, this message translates to:
  /// **'Sexual Coercion Pressure'**
  String get metric_ugly_11_name;

  /// No description provided for @metric_ugly_11_description.
  ///
  /// In en, this message translates to:
  /// **'Flags forced sex, coerced sexual acts, pressure after refusal, or sexual punishment language.'**
  String get metric_ugly_11_description;

  /// No description provided for @metric_ugly_12_name.
  ///
  /// In en, this message translates to:
  /// **'Non-Consensual Sexual Language'**
  String get metric_ugly_12_name;

  /// No description provided for @metric_ugly_12_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies explicit or implicit non-consensual sexual assault threats or descriptions.'**
  String get metric_ugly_12_description;

  /// No description provided for @metric_ugly_13_name.
  ///
  /// In en, this message translates to:
  /// **'Child Harm Threats'**
  String get metric_ugly_13_name;

  /// No description provided for @metric_ugly_13_description.
  ///
  /// In en, this message translates to:
  /// **'Detects threats to harm, neglect, or abuse children as leverage or punishment against the partner.'**
  String get metric_ugly_13_description;

  /// No description provided for @metric_ugly_14_name.
  ///
  /// In en, this message translates to:
  /// **'Child Custody Weaponization'**
  String get metric_ugly_14_name;

  /// No description provided for @metric_ugly_14_description.
  ///
  /// In en, this message translates to:
  /// **'Flags threats to take children, deny access, or use custody as a control mechanism.'**
  String get metric_ugly_14_description;

  /// No description provided for @metric_ugly_15_name.
  ///
  /// In en, this message translates to:
  /// **'Pet Harm Threats'**
  String get metric_ugly_15_name;

  /// No description provided for @metric_ugly_15_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies threats to hurt, kill, or abuse pets as punishment or to demonstrate control.'**
  String get metric_ugly_15_description;

  /// No description provided for @metric_ugly_16_name.
  ///
  /// In en, this message translates to:
  /// **'Sleep Deprivation Tactics'**
  String get metric_ugly_16_name;

  /// No description provided for @metric_ugly_16_description.
  ///
  /// In en, this message translates to:
  /// **'Flags deliberate prevention of sleep, constant interruption, or exhaustion as a control method.'**
  String get metric_ugly_16_description;

  /// No description provided for @metric_ugly_17_name.
  ///
  /// In en, this message translates to:
  /// **'Confinement Language'**
  String get metric_ugly_17_name;

  /// No description provided for @metric_ugly_17_description.
  ///
  /// In en, this message translates to:
  /// **'Flags locking in, preventing departure, or confining the partner to a location.'**
  String get metric_ugly_17_description;

  /// No description provided for @metric_ugly_18_name.
  ///
  /// In en, this message translates to:
  /// **'Predatory Grooming Language'**
  String get metric_ugly_18_name;

  /// No description provided for @metric_ugly_18_description.
  ///
  /// In en, this message translates to:
  /// **'Flags systematic manipulation to lower defenses, build false trust, then exploit the partner.'**
  String get metric_ugly_18_description;

  /// No description provided for @metric_ugly_19_name.
  ///
  /// In en, this message translates to:
  /// **'Dehumanization Language'**
  String get metric_ugly_19_name;

  /// No description provided for @metric_ugly_19_description.
  ///
  /// In en, this message translates to:
  /// **'Detects describing partner as an animal, object, subhuman, or unworthy of basic rights.'**
  String get metric_ugly_19_description;

  /// No description provided for @metric_ugly_20_name.
  ///
  /// In en, this message translates to:
  /// **'Narcissistic Rage Escalation'**
  String get metric_ugly_20_name;

  /// No description provided for @metric_ugly_20_description.
  ///
  /// In en, this message translates to:
  /// **'Detects explosive anger triggered by perceived slights, criticism, or any loss of control.'**
  String get metric_ugly_20_description;

  /// No description provided for @metric_ugly_21_name.
  ///
  /// In en, this message translates to:
  /// **'Obsessive Possession Claims'**
  String get metric_ugly_21_name;

  /// No description provided for @metric_ugly_21_description.
  ///
  /// In en, this message translates to:
  /// **'Flags language claiming ownership, property rights, or total control over the partner\'s person.'**
  String get metric_ugly_21_description;

  /// No description provided for @metric_ugly_22_name.
  ///
  /// In en, this message translates to:
  /// **'Pathological Lying Patterns'**
  String get metric_ugly_22_name;

  /// No description provided for @metric_ugly_22_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies consistent, elaborate, or unnecessary lies about serious matters without apparent reason.'**
  String get metric_ugly_22_description;

  /// No description provided for @metric_ugly_23_name.
  ///
  /// In en, this message translates to:
  /// **'Revenge Fantasy Language'**
  String get metric_ugly_23_name;

  /// No description provided for @metric_ugly_23_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies detailed fantasies about harming, humiliating, or destroying the partner.'**
  String get metric_ugly_23_description;

  /// No description provided for @metric_ugly_24_name.
  ///
  /// In en, this message translates to:
  /// **'Betrayal Obsession Fixation'**
  String get metric_ugly_24_name;

  /// No description provided for @metric_ugly_24_description.
  ///
  /// In en, this message translates to:
  /// **'Detects obsessive rumination, accusation, and punishment focused on perceived infidelity.'**
  String get metric_ugly_24_description;

  /// No description provided for @metric_ugly_25_name.
  ///
  /// In en, this message translates to:
  /// **'Abandonment Panic Aggression'**
  String get metric_ugly_25_name;

  /// No description provided for @metric_ugly_25_description.
  ///
  /// In en, this message translates to:
  /// **'Flags violent or aggressive responses to perceived abandonment or any separation attempt.'**
  String get metric_ugly_25_description;

  /// No description provided for @metric_ugly_26_name.
  ///
  /// In en, this message translates to:
  /// **'Separation Threat Escalation'**
  String get metric_ugly_26_name;

  /// No description provided for @metric_ugly_26_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies extreme threats or dangerous behaviors triggered by breakup or separation attempts.'**
  String get metric_ugly_26_description;

  /// No description provided for @metric_ugly_27_name.
  ///
  /// In en, this message translates to:
  /// **'Post-Separation Harassment Threats'**
  String get metric_ugly_27_name;

  /// No description provided for @metric_ugly_27_description.
  ///
  /// In en, this message translates to:
  /// **'Flags threats of stalking, harm, or forced contact after the relationship ends.'**
  String get metric_ugly_27_description;

  /// No description provided for @metric_ugly_28_name.
  ///
  /// In en, this message translates to:
  /// **'Custody Kidnapping Threats'**
  String get metric_ugly_28_name;

  /// No description provided for @metric_ugly_28_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies threats to take children and flee or hide them permanently from the other parent.'**
  String get metric_ugly_28_description;

  /// No description provided for @metric_ugly_29_name.
  ///
  /// In en, this message translates to:
  /// **'Parental Alienation Agenda'**
  String get metric_ugly_29_name;

  /// No description provided for @metric_ugly_29_description.
  ///
  /// In en, this message translates to:
  /// **'Flags systematic attempts to turn children against the other parent through manipulation.'**
  String get metric_ugly_29_description;

  /// No description provided for @metric_ugly_30_name.
  ///
  /// In en, this message translates to:
  /// **'Child Witness Indifference'**
  String get metric_ugly_30_name;

  /// No description provided for @metric_ugly_30_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies disregard for children witnessing abuse, conflict, or emotional harm.'**
  String get metric_ugly_30_description;

  /// No description provided for @metric_ugly_31_name.
  ///
  /// In en, this message translates to:
  /// **'Human Trafficking Language'**
  String get metric_ugly_31_name;

  /// No description provided for @metric_ugly_31_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies language suggesting selling, trading, or sexually exploiting the partner.'**
  String get metric_ugly_31_description;

  /// No description provided for @metric_ugly_32_name.
  ///
  /// In en, this message translates to:
  /// **'Slavery Language'**
  String get metric_ugly_32_name;

  /// No description provided for @metric_ugly_32_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies language treating partner as property, slave, or wholly owned person without rights.'**
  String get metric_ugly_32_description;

  /// No description provided for @metric_ugly_33_name.
  ///
  /// In en, this message translates to:
  /// **'Debt Bondage Threats'**
  String get metric_ugly_33_name;

  /// No description provided for @metric_ugly_33_description.
  ///
  /// In en, this message translates to:
  /// **'Detects threats to trap partner through manufactured debt or financial obligation.'**
  String get metric_ugly_33_description;

  /// No description provided for @metric_ugly_34_name.
  ///
  /// In en, this message translates to:
  /// **'Forced Labor Demands'**
  String get metric_ugly_34_name;

  /// No description provided for @metric_ugly_34_description.
  ///
  /// In en, this message translates to:
  /// **'Flags demands for unpaid labor, servitude, or work under threat of harm or punishment.'**
  String get metric_ugly_34_description;

  /// No description provided for @metric_ugly_35_name.
  ///
  /// In en, this message translates to:
  /// **'Exploitation Normalization'**
  String get metric_ugly_35_name;

  /// No description provided for @metric_ugly_35_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies framing severe exploitation as normal, deserved, consensual, or even beneficial.'**
  String get metric_ugly_35_description;

  /// No description provided for @metric_ugly_36_name.
  ///
  /// In en, this message translates to:
  /// **'Vulnerability Targeting'**
  String get metric_ugly_36_name;

  /// No description provided for @metric_ugly_36_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies deliberate targeting of isolated, economically dependent, or psychologically vulnerable individuals.'**
  String get metric_ugly_36_description;

  /// No description provided for @metric_ugly_37_name.
  ///
  /// In en, this message translates to:
  /// **'Trauma Bonding Engineering'**
  String get metric_ugly_37_name;

  /// No description provided for @metric_ugly_37_description.
  ///
  /// In en, this message translates to:
  /// **'Detects deliberate creation of fear-relief cycles designed to create deep emotional dependency.'**
  String get metric_ugly_37_description;

  /// No description provided for @metric_ugly_38_name.
  ///
  /// In en, this message translates to:
  /// **'Intermittent Reinforcement Abuse'**
  String get metric_ugly_38_name;

  /// No description provided for @metric_ugly_38_description.
  ///
  /// In en, this message translates to:
  /// **'Flags unpredictable cycles of reward and severe punishment used to create psychological addiction.'**
  String get metric_ugly_38_description;

  /// No description provided for @metric_ugly_39_name.
  ///
  /// In en, this message translates to:
  /// **'Learned Helplessness Induction'**
  String get metric_ugly_39_name;

  /// No description provided for @metric_ugly_39_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies systematic removal of agency, resources, and perceived escape options.'**
  String get metric_ugly_39_description;

  /// No description provided for @metric_ugly_40_name.
  ///
  /// In en, this message translates to:
  /// **'Identity Erasure Language'**
  String get metric_ugly_40_name;

  /// No description provided for @metric_ugly_40_description.
  ///
  /// In en, this message translates to:
  /// **'Flags demands to abandon personality, interests, appearance, or core sense of identity.'**
  String get metric_ugly_40_description;

  /// No description provided for @metric_ugly_41_name.
  ///
  /// In en, this message translates to:
  /// **'Autonomy Annihilation'**
  String get metric_ugly_41_name;

  /// No description provided for @metric_ugly_41_description.
  ///
  /// In en, this message translates to:
  /// **'Detects systematic elimination of independent thought, decision-making, or personal agency.'**
  String get metric_ugly_41_description;

  /// No description provided for @metric_ugly_42_name.
  ///
  /// In en, this message translates to:
  /// **'Thought Control Tactics'**
  String get metric_ugly_42_name;

  /// No description provided for @metric_ugly_42_description.
  ///
  /// In en, this message translates to:
  /// **'Flags demands to think, believe, or feel only as the controlling partner dictates.'**
  String get metric_ugly_42_description;

  /// No description provided for @metric_ugly_43_name.
  ///
  /// In en, this message translates to:
  /// **'Emotional Numbness Enforcement'**
  String get metric_ugly_43_name;

  /// No description provided for @metric_ugly_43_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies punishment for showing emotions or explicit demands to suppress all feelings.'**
  String get metric_ugly_43_description;

  /// No description provided for @metric_ugly_44_name.
  ///
  /// In en, this message translates to:
  /// **'Complex Trauma Creation'**
  String get metric_ugly_44_name;

  /// No description provided for @metric_ugly_44_description.
  ///
  /// In en, this message translates to:
  /// **'Flags systematic patterns creating complex PTSD-level trauma through chronic abuse.'**
  String get metric_ugly_44_description;

  /// No description provided for @metric_ugly_45_name.
  ///
  /// In en, this message translates to:
  /// **'Betrayal Trauma Infliction'**
  String get metric_ugly_45_name;

  /// No description provided for @metric_ugly_45_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies deliberate betrayal designed to shatter foundational trust and psychological safety.'**
  String get metric_ugly_45_description;

  /// No description provided for @metric_ugly_46_name.
  ///
  /// In en, this message translates to:
  /// **'Moral Injury Language'**
  String get metric_ugly_46_name;

  /// No description provided for @metric_ugly_46_description.
  ///
  /// In en, this message translates to:
  /// **'Detects forcing partner to violate their own deeply held values or commit harmful acts.'**
  String get metric_ugly_46_description;

  /// No description provided for @metric_ugly_47_name.
  ///
  /// In en, this message translates to:
  /// **'Existential Threat Language'**
  String get metric_ugly_47_name;

  /// No description provided for @metric_ugly_47_description.
  ///
  /// In en, this message translates to:
  /// **'Flags threats to partner\'s existence, core identity, sanity, or will to live.'**
  String get metric_ugly_47_description;

  /// No description provided for @metric_ugly_48_name.
  ///
  /// In en, this message translates to:
  /// **'Suicide Coercion Language'**
  String get metric_ugly_48_name;

  /// No description provided for @metric_ugly_48_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies pushing partner toward suicidal ideation through sustained abuse and manufactured hopelessness.'**
  String get metric_ugly_48_description;

  /// No description provided for @metric_ugly_49_name.
  ///
  /// In en, this message translates to:
  /// **'Justification Mythology'**
  String get metric_ugly_49_name;

  /// No description provided for @metric_ugly_49_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies elaborate invented narratives presented to justify abuse as necessary, deserved, or righteous.'**
  String get metric_ugly_49_description;

  /// No description provided for @metric_ugly_50_name.
  ///
  /// In en, this message translates to:
  /// **'Victim Narrative Inversion'**
  String get metric_ugly_50_name;

  /// No description provided for @metric_ugly_50_description.
  ///
  /// In en, this message translates to:
  /// **'Detects complete reversal where the abuser claims to be the real victim of their own abuse.'**
  String get metric_ugly_50_description;

  /// No description provided for @metric_ugly_51_name.
  ///
  /// In en, this message translates to:
  /// **'Abuse Normalization Preaching'**
  String get metric_ugly_51_name;

  /// No description provided for @metric_ugly_51_description.
  ///
  /// In en, this message translates to:
  /// **'Flags teaching or insisting that abuse is normal, healthy, or beneficial for the partner.'**
  String get metric_ugly_51_description;

  /// No description provided for @metric_ugly_52_name.
  ///
  /// In en, this message translates to:
  /// **'Predatory Ideology'**
  String get metric_ugly_52_name;

  /// No description provided for @metric_ugly_52_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies ideological justification for exploitation, dominance, or harm toward the partner.'**
  String get metric_ugly_52_description;

  /// No description provided for @metric_ugly_53_name.
  ///
  /// In en, this message translates to:
  /// **'Cult Leader Messaging'**
  String get metric_ugly_53_name;

  /// No description provided for @metric_ugly_53_description.
  ///
  /// In en, this message translates to:
  /// **'Detects messaging claiming special knowledge, divine right, or superior authority over the partner.'**
  String get metric_ugly_53_description;

  /// No description provided for @metric_ugly_54_name.
  ///
  /// In en, this message translates to:
  /// **'Grooming Timeline Language'**
  String get metric_ugly_54_name;

  /// No description provided for @metric_ugly_54_description.
  ///
  /// In en, this message translates to:
  /// **'Flags references to a long-term manipulation plan or descriptions of a grooming progression.'**
  String get metric_ugly_54_description;

  /// No description provided for @metric_ugly_55_name.
  ///
  /// In en, this message translates to:
  /// **'Chronic Humiliation Campaign'**
  String get metric_ugly_55_name;

  /// No description provided for @metric_ugly_55_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies sustained pattern of public or private humiliation designed to destroy self-worth.'**
  String get metric_ugly_55_description;

  /// No description provided for @metric_ugly_56_name.
  ///
  /// In en, this message translates to:
  /// **'Safety Exit Blocking'**
  String get metric_ugly_56_name;

  /// No description provided for @metric_ugly_56_description.
  ///
  /// In en, this message translates to:
  /// **'Detects actively preventing the partner from accessing escape routes, support systems, or safety resources.'**
  String get metric_ugly_56_description;

  /// No description provided for @metric_ugly_57_name.
  ///
  /// In en, this message translates to:
  /// **'Document Confiscation Threats'**
  String get metric_ugly_57_name;

  /// No description provided for @metric_ugly_57_description.
  ///
  /// In en, this message translates to:
  /// **'Flags threats or actions to take, hide, or destroy identity documents to prevent escape.'**
  String get metric_ugly_57_description;

  /// No description provided for @metric_ugly_58_name.
  ///
  /// In en, this message translates to:
  /// **'Violent Jealousy Patterns'**
  String get metric_ugly_58_name;

  /// No description provided for @metric_ugly_58_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies jealousy that has escalated to explicit threats, surveillance, or violent retaliation.'**
  String get metric_ugly_58_description;

  /// No description provided for @metric_ugly_59_name.
  ///
  /// In en, this message translates to:
  /// **'Rage Explosion Patterns'**
  String get metric_ugly_59_name;

  /// No description provided for @metric_ugly_59_description.
  ///
  /// In en, this message translates to:
  /// **'Detects descriptions or patterns of explosive violent outbursts disproportionate to any trigger.'**
  String get metric_ugly_59_description;

  /// No description provided for @metric_ugly_60_name.
  ///
  /// In en, this message translates to:
  /// **'Coercive Control Escalation'**
  String get metric_ugly_60_name;

  /// No description provided for @metric_ugly_60_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks increasing severity and breadth of coercive control tactics over time.'**
  String get metric_ugly_60_description;

  /// No description provided for @metric_ugly_61_name.
  ///
  /// In en, this message translates to:
  /// **'Fear-Based Compliance Language'**
  String get metric_ugly_61_name;

  /// No description provided for @metric_ugly_61_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies compliance driven entirely by fear of violence or severe punishment rather than choice.'**
  String get metric_ugly_61_description;

  /// No description provided for @metric_ugly_62_name.
  ///
  /// In en, this message translates to:
  /// **'Punishment Ritual Language'**
  String get metric_ugly_62_name;

  /// No description provided for @metric_ugly_62_description.
  ///
  /// In en, this message translates to:
  /// **'Detects references to systematic punishment practices used to enforce compliance and control.'**
  String get metric_ugly_62_description;

  /// No description provided for @metric_ugly_63_name.
  ///
  /// In en, this message translates to:
  /// **'Degradation Ritual Indicators'**
  String get metric_ugly_63_name;

  /// No description provided for @metric_ugly_63_description.
  ///
  /// In en, this message translates to:
  /// **'Flags systematic degradation or humiliation rituals designed to destroy dignity.'**
  String get metric_ugly_63_description;

  /// No description provided for @metric_ugly_64_name.
  ///
  /// In en, this message translates to:
  /// **'Non-Consensual Exposure Threats'**
  String get metric_ugly_64_name;

  /// No description provided for @metric_ugly_64_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies threats to expose intimate images, private information, or secrets without consent.'**
  String get metric_ugly_64_description;

  /// No description provided for @metric_ugly_65_name.
  ///
  /// In en, this message translates to:
  /// **'Image-Based Abuse Threats'**
  String get metric_ugly_65_name;

  /// No description provided for @metric_ugly_65_description.
  ///
  /// In en, this message translates to:
  /// **'Detects threats to distribute intimate images as revenge, punishment, or blackmail.'**
  String get metric_ugly_65_description;

  /// No description provided for @metric_ugly_66_name.
  ///
  /// In en, this message translates to:
  /// **'Financial Entrapment Tactics'**
  String get metric_ugly_66_name;

  /// No description provided for @metric_ugly_66_description.
  ///
  /// In en, this message translates to:
  /// **'Flags deliberate creation of financial dependency making independent survival impossible.'**
  String get metric_ugly_66_description;

  /// No description provided for @metric_ugly_67_name.
  ///
  /// In en, this message translates to:
  /// **'Housing Threat Language'**
  String get metric_ugly_67_name;

  /// No description provided for @metric_ugly_67_description.
  ///
  /// In en, this message translates to:
  /// **'Detects threats to make partner homeless, remove housing access, or destroy shelter security.'**
  String get metric_ugly_67_description;

  /// No description provided for @metric_ugly_68_name.
  ///
  /// In en, this message translates to:
  /// **'Immigration Status Threats'**
  String get metric_ugly_68_name;

  /// No description provided for @metric_ugly_68_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies threats to report immigration status or revoke visa sponsorship as control.'**
  String get metric_ugly_68_description;

  /// No description provided for @metric_ugly_69_name.
  ///
  /// In en, this message translates to:
  /// **'Religious or Spiritual Abuse'**
  String get metric_ugly_69_name;

  /// No description provided for @metric_ugly_69_description.
  ///
  /// In en, this message translates to:
  /// **'Detects using religious authority, doctrine, or spiritual threat to control, punish, or harm.'**
  String get metric_ugly_69_description;

  /// No description provided for @metric_ugly_70_name.
  ///
  /// In en, this message translates to:
  /// **'Cultural Shame Weaponization'**
  String get metric_ugly_70_name;

  /// No description provided for @metric_ugly_70_description.
  ///
  /// In en, this message translates to:
  /// **'Flags threatening to expose behaviors to cultural or family community as punishment.'**
  String get metric_ugly_70_description;

  /// No description provided for @metric_ugly_71_name.
  ///
  /// In en, this message translates to:
  /// **'Family Harm Threats'**
  String get metric_ugly_71_name;

  /// No description provided for @metric_ugly_71_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies threats to harm partner\'s family members, children, or loved ones as leverage.'**
  String get metric_ugly_71_description;

  /// No description provided for @metric_ugly_72_name.
  ///
  /// In en, this message translates to:
  /// **'Coordinated Harassment Campaign'**
  String get metric_ugly_72_name;

  /// No description provided for @metric_ugly_72_description.
  ///
  /// In en, this message translates to:
  /// **'Detects organizing others to collectively harass, stalk, or intimidate the partner.'**
  String get metric_ugly_72_description;

  /// No description provided for @metric_ugly_73_name.
  ///
  /// In en, this message translates to:
  /// **'False Police Report Threats'**
  String get metric_ugly_73_name;

  /// No description provided for @metric_ugly_73_description.
  ///
  /// In en, this message translates to:
  /// **'Flags threatening to make false police reports or legal accusations against the partner.'**
  String get metric_ugly_73_description;

  /// No description provided for @metric_ugly_74_name.
  ///
  /// In en, this message translates to:
  /// **'Legal System Weaponization'**
  String get metric_ugly_74_name;

  /// No description provided for @metric_ugly_74_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies using legal processes, courts, or protective orders as weapons of harassment.'**
  String get metric_ugly_74_description;

  /// No description provided for @metric_ugly_75_name.
  ///
  /// In en, this message translates to:
  /// **'Restraining Order Violation'**
  String get metric_ugly_75_name;

  /// No description provided for @metric_ugly_75_description.
  ///
  /// In en, this message translates to:
  /// **'Detects references to violating or planning to violate protective or no-contact orders.'**
  String get metric_ugly_75_description;

  /// No description provided for @metric_ugly_76_name.
  ///
  /// In en, this message translates to:
  /// **'Workplace Sabotage Threats'**
  String get metric_ugly_76_name;

  /// No description provided for @metric_ugly_76_description.
  ///
  /// In en, this message translates to:
  /// **'Flags threats to contact employer, colleagues, or clients to destroy partner\'s livelihood.'**
  String get metric_ugly_76_description;

  /// No description provided for @metric_ugly_77_name.
  ///
  /// In en, this message translates to:
  /// **'Social Annihilation Threats'**
  String get metric_ugly_77_name;

  /// No description provided for @metric_ugly_77_description.
  ///
  /// In en, this message translates to:
  /// **'Detects threats to destroy partner\'s reputation, relationships, and social standing.'**
  String get metric_ugly_77_description;

  /// No description provided for @metric_ugly_78_name.
  ///
  /// In en, this message translates to:
  /// **'Systematic Deception Campaign'**
  String get metric_ugly_78_name;

  /// No description provided for @metric_ugly_78_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies long-term elaborate deception designed to exploit the partner financially or emotionally.'**
  String get metric_ugly_78_description;

  /// No description provided for @metric_ugly_79_name.
  ///
  /// In en, this message translates to:
  /// **'Property Destruction as Terror'**
  String get metric_ugly_79_name;

  /// No description provided for @metric_ugly_79_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies deliberate destruction of partner\'s property as an intimidation tactic.'**
  String get metric_ugly_79_description;

  /// No description provided for @metric_ugly_80_name.
  ///
  /// In en, this message translates to:
  /// **'Animal Cruelty as Proxy Terror'**
  String get metric_ugly_80_name;

  /// No description provided for @metric_ugly_80_description.
  ///
  /// In en, this message translates to:
  /// **'Detects harming or threatening pets to demonstrate capacity for violence to partner.'**
  String get metric_ugly_80_description;

  /// No description provided for @metric_ugly_81_name.
  ///
  /// In en, this message translates to:
  /// **'Child Endangerment Language'**
  String get metric_ugly_81_name;

  /// No description provided for @metric_ugly_81_description.
  ///
  /// In en, this message translates to:
  /// **'Flags placing children in dangerous situations or threatening to do so as leverage.'**
  String get metric_ugly_81_description;

  /// No description provided for @metric_ugly_82_name.
  ///
  /// In en, this message translates to:
  /// **'Disability-Based Control'**
  String get metric_ugly_82_name;

  /// No description provided for @metric_ugly_82_description.
  ///
  /// In en, this message translates to:
  /// **'Detects exploiting partner\'s disability by controlling access to medication, mobility, or care.'**
  String get metric_ugly_82_description;

  /// No description provided for @metric_ugly_83_name.
  ///
  /// In en, this message translates to:
  /// **'Crisis Manufactured Control'**
  String get metric_ugly_83_name;

  /// No description provided for @metric_ugly_83_description.
  ///
  /// In en, this message translates to:
  /// **'Flags deliberately creating emergencies or crises to increase partner dependency or justify monitoring.'**
  String get metric_ugly_83_description;

  /// No description provided for @metric_ugly_84_name.
  ///
  /// In en, this message translates to:
  /// **'Isolation from Emergency Services'**
  String get metric_ugly_84_name;

  /// No description provided for @metric_ugly_84_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies actively preventing partner from calling police, ambulance, or crisis services.'**
  String get metric_ugly_84_description;

  /// No description provided for @metric_ugly_85_name.
  ///
  /// In en, this message translates to:
  /// **'Threat Escalation Trajectory'**
  String get metric_ugly_85_name;

  /// No description provided for @metric_ugly_85_description.
  ///
  /// In en, this message translates to:
  /// **'Tracks measurable increase in severity, specificity, or frequency of threats over time.'**
  String get metric_ugly_85_description;

  /// No description provided for @metric_ugly_86_name.
  ///
  /// In en, this message translates to:
  /// **'Lethality Assessment Indicators'**
  String get metric_ugly_86_name;

  /// No description provided for @metric_ugly_86_description.
  ///
  /// In en, this message translates to:
  /// **'Flags combinations of factors associated with highest risk of intimate partner homicide.'**
  String get metric_ugly_86_description;

  /// No description provided for @metric_ugly_87_name.
  ///
  /// In en, this message translates to:
  /// **'Psychological Torture Tactics'**
  String get metric_ugly_87_name;

  /// No description provided for @metric_ugly_87_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies sustained psychological abuse designed to break the partner\'s mental stability.'**
  String get metric_ugly_87_description;

  /// No description provided for @metric_ugly_88_name.
  ///
  /// In en, this message translates to:
  /// **'Captivity Language'**
  String get metric_ugly_88_name;

  /// No description provided for @metric_ugly_88_description.
  ///
  /// In en, this message translates to:
  /// **'Detects references to holding partner captive, preventing departure, or controlling all movement.'**
  String get metric_ugly_88_description;

  /// No description provided for @metric_ugly_89_name.
  ///
  /// In en, this message translates to:
  /// **'Targeted Violence Planning'**
  String get metric_ugly_89_name;

  /// No description provided for @metric_ugly_89_description.
  ///
  /// In en, this message translates to:
  /// **'Detects any language indicating planning, preparation, or countdown to violence against partner.'**
  String get metric_ugly_89_description;

  /// No description provided for @metric_ugly_90_name.
  ///
  /// In en, this message translates to:
  /// **'Third Party Threat Recruitment'**
  String get metric_ugly_90_name;

  /// No description provided for @metric_ugly_90_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies recruiting friends, family, or others to threaten or harm the partner.'**
  String get metric_ugly_90_description;

  /// No description provided for @metric_ugly_91_name.
  ///
  /// In en, this message translates to:
  /// **'Suicidal Ideation Exploitation'**
  String get metric_ugly_91_name;

  /// No description provided for @metric_ugly_91_description.
  ///
  /// In en, this message translates to:
  /// **'Flags exploiting partner\'s suicidal crisis as leverage or to prevent them seeking help.'**
  String get metric_ugly_91_description;

  /// No description provided for @metric_ugly_92_name.
  ///
  /// In en, this message translates to:
  /// **'Poisoning or Drugging Threats'**
  String get metric_ugly_92_name;

  /// No description provided for @metric_ugly_92_description.
  ///
  /// In en, this message translates to:
  /// **'Detects threats or references to drugging, poisoning, or tampering with partner\'s food or drink.'**
  String get metric_ugly_92_description;

  /// No description provided for @metric_ugly_93_name.
  ///
  /// In en, this message translates to:
  /// **'Non-Suicidal Self-Harm Exploitation'**
  String get metric_ugly_93_name;

  /// No description provided for @metric_ugly_93_description.
  ///
  /// In en, this message translates to:
  /// **'Flags exploiting partner\'s self-harm behavior as leverage, mockery, or further control.'**
  String get metric_ugly_93_description;

  /// No description provided for @metric_ugly_94_name.
  ///
  /// In en, this message translates to:
  /// **'Dissociation Induction Language'**
  String get metric_ugly_94_name;

  /// No description provided for @metric_ugly_94_description.
  ///
  /// In en, this message translates to:
  /// **'Detects patterns designed to cause dissociation, detachment, or depersonalization in the partner.'**
  String get metric_ugly_94_description;

  /// No description provided for @metric_ugly_95_name.
  ///
  /// In en, this message translates to:
  /// **'Cognitive Distortion Implanting'**
  String get metric_ugly_95_name;

  /// No description provided for @metric_ugly_95_description.
  ///
  /// In en, this message translates to:
  /// **'Detects deliberate installation of false beliefs about self, reality, or the partner\'s own sanity.'**
  String get metric_ugly_95_description;

  /// No description provided for @metric_ugly_96_name.
  ///
  /// In en, this message translates to:
  /// **'Medical Care Obstruction'**
  String get metric_ugly_96_name;

  /// No description provided for @metric_ugly_96_description.
  ///
  /// In en, this message translates to:
  /// **'Detects preventing access to medication, doctors, hospitals, or health treatment.'**
  String get metric_ugly_96_description;

  /// No description provided for @metric_ugly_97_name.
  ///
  /// In en, this message translates to:
  /// **'Extremist Threat Language'**
  String get metric_ugly_97_name;

  /// No description provided for @metric_ugly_97_description.
  ///
  /// In en, this message translates to:
  /// **'Flags language borrowed from extremist or violent ideological frameworks applied toward the partner.'**
  String get metric_ugly_97_description;

  /// No description provided for @metric_ugly_98_name.
  ///
  /// In en, this message translates to:
  /// **'Post-Separation Stalking Signals'**
  String get metric_ugly_98_name;

  /// No description provided for @metric_ugly_98_description.
  ///
  /// In en, this message translates to:
  /// **'Detects threats, surveillance language, or intimidation tactics following or anticipating a breakup.'**
  String get metric_ugly_98_description;

  /// No description provided for @metric_ugly_99_name.
  ///
  /// In en, this message translates to:
  /// **'Child Weaponization'**
  String get metric_ugly_99_name;

  /// No description provided for @metric_ugly_99_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies using children as pawns, threats regarding custody, or leveraging parental bonds as control mechanisms.'**
  String get metric_ugly_99_description;

  /// No description provided for @metric_ugly_100_name.
  ///
  /// In en, this message translates to:
  /// **'Systematic Dehumanization'**
  String get metric_ugly_100_name;

  /// No description provided for @metric_ugly_100_description.
  ///
  /// In en, this message translates to:
  /// **'Detects sustained language that strips the partner of personhood, dignity, or their right to basic humanity.'**
  String get metric_ugly_100_description;

  /// No description provided for @metric_narcissist_1_name.
  ///
  /// In en, this message translates to:
  /// **'Grandiose Self-Importance'**
  String get metric_narcissist_1_name;

  /// No description provided for @metric_narcissist_1_description.
  ///
  /// In en, this message translates to:
  /// **'Exaggerated claims of achievements, talents, or status beyond realistic evidence, often with a sense of uniqueness.'**
  String get metric_narcissist_1_description;

  /// No description provided for @metric_narcissist_2_name.
  ///
  /// In en, this message translates to:
  /// **'Entitlement Demands'**
  String get metric_narcissist_2_name;

  /// No description provided for @metric_narcissist_2_description.
  ///
  /// In en, this message translates to:
  /// **'Unreasonable expectations of special treatment or automatic compliance with their wishes without reciprocity.'**
  String get metric_narcissist_2_description;

  /// No description provided for @metric_narcissist_3_name.
  ///
  /// In en, this message translates to:
  /// **'Empathy Deficit'**
  String get metric_narcissist_3_name;

  /// No description provided for @metric_narcissist_3_description.
  ///
  /// In en, this message translates to:
  /// **'Inability or unwillingness to recognize or validate others\' feelings, dismissing emotional needs as irrelevant.'**
  String get metric_narcissist_3_description;

  /// No description provided for @metric_narcissist_4_name.
  ///
  /// In en, this message translates to:
  /// **'Supply-Seeking Praise'**
  String get metric_narcissist_4_name;

  /// No description provided for @metric_narcissist_4_description.
  ///
  /// In en, this message translates to:
  /// **'Excessive fishing for admiration, compliments, or validation to bolster fragile self-esteem.'**
  String get metric_narcissist_4_description;

  /// No description provided for @metric_narcissist_5_name.
  ///
  /// In en, this message translates to:
  /// **'Triangulation Tactics'**
  String get metric_narcissist_5_name;

  /// No description provided for @metric_narcissist_5_description.
  ///
  /// In en, this message translates to:
  /// **'Introducing a third party into conflicts to create jealousy, competition, or manipulate perceptions.'**
  String get metric_narcissist_5_description;

  /// No description provided for @metric_narcissist_6_name.
  ///
  /// In en, this message translates to:
  /// **'Love Bombing Intensity'**
  String get metric_narcissist_6_name;

  /// No description provided for @metric_narcissist_6_description.
  ///
  /// In en, this message translates to:
  /// **'Overwhelming flattery, gifts, or attention early in a relationship to gain control and idealize the target.'**
  String get metric_narcissist_6_description;

  /// No description provided for @metric_narcissist_7_name.
  ///
  /// In en, this message translates to:
  /// **'Devaluation Criticism'**
  String get metric_narcissist_7_name;

  /// No description provided for @metric_narcissist_7_description.
  ///
  /// In en, this message translates to:
  /// **'Sudden shift to harsh criticism, belittling, or contempt after idealization, eroding the target\'s self-worth.'**
  String get metric_narcissist_7_description;

  /// No description provided for @metric_narcissist_8_name.
  ///
  /// In en, this message translates to:
  /// **'Silent Treatment Punishment'**
  String get metric_narcissist_8_name;

  /// No description provided for @metric_narcissist_8_description.
  ///
  /// In en, this message translates to:
  /// **'Withholding communication or affection as a deliberate punishment to induce anxiety and compliance.'**
  String get metric_narcissist_8_description;

  /// No description provided for @metric_narcissist_9_name.
  ///
  /// In en, this message translates to:
  /// **'DARVO Blame Shift'**
  String get metric_narcissist_9_name;

  /// No description provided for @metric_narcissist_9_description.
  ///
  /// In en, this message translates to:
  /// **'Denying responsibility, attacking the accuser, and reversing victim-offender roles to evade accountability.'**
  String get metric_narcissist_9_description;

  /// No description provided for @metric_narcissist_10_name.
  ///
  /// In en, this message translates to:
  /// **'Gaslighting Reality Distortion'**
  String get metric_narcissist_10_name;

  /// No description provided for @metric_narcissist_10_description.
  ///
  /// In en, this message translates to:
  /// **'Denying or twisting facts, events, or feelings to make the target doubt their own memory or sanity.'**
  String get metric_narcissist_10_description;

  /// No description provided for @metric_narcissist_11_name.
  ///
  /// In en, this message translates to:
  /// **'Rage at Criticism'**
  String get metric_narcissist_11_name;

  /// No description provided for @metric_narcissist_11_description.
  ///
  /// In en, this message translates to:
  /// **'Intense anger, contempt, or retaliation in response to any perceived slight or feedback, even if constructive.'**
  String get metric_narcissist_11_description;

  /// No description provided for @metric_narcissist_12_name.
  ///
  /// In en, this message translates to:
  /// **'Boundary Violation'**
  String get metric_narcissist_12_name;

  /// No description provided for @metric_narcissist_12_description.
  ///
  /// In en, this message translates to:
  /// **'Ignoring or overriding stated limits, privacy, or personal space without remorse or negotiation.'**
  String get metric_narcissist_12_description;

  /// No description provided for @metric_narcissist_13_name.
  ///
  /// In en, this message translates to:
  /// **'Envy Expression'**
  String get metric_narcissist_13_name;

  /// No description provided for @metric_narcissist_13_description.
  ///
  /// In en, this message translates to:
  /// **'Resentment of others\' successes or possessions, often accompanied by devaluation or attempts to undermine.'**
  String get metric_narcissist_13_description;

  /// No description provided for @metric_narcissist_14_name.
  ///
  /// In en, this message translates to:
  /// **'Exploitative Behavior'**
  String get metric_narcissist_14_name;

  /// No description provided for @metric_narcissist_14_description.
  ///
  /// In en, this message translates to:
  /// **'Using others for personal gain, status, or resources without regard for their well-being or consent.'**
  String get metric_narcissist_14_description;

  /// No description provided for @metric_narcissist_15_name.
  ///
  /// In en, this message translates to:
  /// **'Mirroring Manipulation'**
  String get metric_narcissist_15_name;

  /// No description provided for @metric_narcissist_15_description.
  ///
  /// In en, this message translates to:
  /// **'Imitating the target\'s interests, values, or traits to create false rapport and gain trust.'**
  String get metric_narcissist_15_description;

  /// No description provided for @metric_narcissist_16_name.
  ///
  /// In en, this message translates to:
  /// **'Superiority Claims'**
  String get metric_narcissist_16_name;

  /// No description provided for @metric_narcissist_16_description.
  ///
  /// In en, this message translates to:
  /// **'Asserting inherent superiority over others, often with condescending or dismissive language.'**
  String get metric_narcissist_16_description;

  /// No description provided for @metric_narcissist_17_name.
  ///
  /// In en, this message translates to:
  /// **'Fantasy Preoccupation'**
  String get metric_narcissist_17_name;

  /// No description provided for @metric_narcissist_17_description.
  ///
  /// In en, this message translates to:
  /// **'Obsessive talk about unlimited success, power, brilliance, or ideal love that is unrealistic.'**
  String get metric_narcissist_17_description;

  /// No description provided for @metric_narcissist_18_name.
  ///
  /// In en, this message translates to:
  /// **'Special Status Assertion'**
  String get metric_narcissist_18_name;

  /// No description provided for @metric_narcissist_18_description.
  ///
  /// In en, this message translates to:
  /// **'Belief that they can only be understood by or associate with high-status people or institutions.'**
  String get metric_narcissist_18_description;

  /// No description provided for @metric_narcissist_19_name.
  ///
  /// In en, this message translates to:
  /// **'Interpersonal Exploitation'**
  String get metric_narcissist_19_name;

  /// No description provided for @metric_narcissist_19_description.
  ///
  /// In en, this message translates to:
  /// **'Taking advantage of others\' resources, time, or emotions without reciprocation or gratitude.'**
  String get metric_narcissist_19_description;

  /// No description provided for @metric_narcissist_20_name.
  ///
  /// In en, this message translates to:
  /// **'Lack of Remorse'**
  String get metric_narcissist_20_name;

  /// No description provided for @metric_narcissist_20_description.
  ///
  /// In en, this message translates to:
  /// **'Absence of guilt or apology after causing harm, often justifying actions as deserved by the target.'**
  String get metric_narcissist_20_description;

  /// No description provided for @metric_narcissist_21_name.
  ///
  /// In en, this message translates to:
  /// **'Competitive Undermining'**
  String get metric_narcissist_21_name;

  /// No description provided for @metric_narcissist_21_description.
  ///
  /// In en, this message translates to:
  /// **'Sabotaging others\' achievements or relationships to maintain a superior position.'**
  String get metric_narcissist_21_description;

  /// No description provided for @metric_narcissist_22_name.
  ///
  /// In en, this message translates to:
  /// **'Idealization Phase'**
  String get metric_narcissist_22_name;

  /// No description provided for @metric_narcissist_22_description.
  ///
  /// In en, this message translates to:
  /// **'Excessive praise and adoration early in a relationship, setting unrealistic expectations for the target.'**
  String get metric_narcissist_22_description;

  /// No description provided for @metric_narcissist_23_name.
  ///
  /// In en, this message translates to:
  /// **'Devaluation Phase'**
  String get metric_narcissist_23_name;

  /// No description provided for @metric_narcissist_23_description.
  ///
  /// In en, this message translates to:
  /// **'Gradual or sudden criticism and contempt after idealization, creating confusion and self-doubt.'**
  String get metric_narcissist_23_description;

  /// No description provided for @metric_narcissist_24_name.
  ///
  /// In en, this message translates to:
  /// **'Discard Impulse'**
  String get metric_narcissist_24_name;

  /// No description provided for @metric_narcissist_24_description.
  ///
  /// In en, this message translates to:
  /// **'Abruptly ending relationships when the target no longer provides narcissistic supply or challenges them.'**
  String get metric_narcissist_24_description;

  /// No description provided for @metric_narcissist_25_name.
  ///
  /// In en, this message translates to:
  /// **'Hoovering Attempts'**
  String get metric_narcissist_25_name;

  /// No description provided for @metric_narcissist_25_description.
  ///
  /// In en, this message translates to:
  /// **'Re-engaging a discarded target with promises, guilt, or manipulation to regain supply.'**
  String get metric_narcissist_25_description;

  /// No description provided for @metric_narcissist_26_name.
  ///
  /// In en, this message translates to:
  /// **'Projection of Flaws'**
  String get metric_narcissist_26_name;

  /// No description provided for @metric_narcissist_26_description.
  ///
  /// In en, this message translates to:
  /// **'Accusing others of their own negative traits or behaviors to avoid self-awareness.'**
  String get metric_narcissist_26_description;

  /// No description provided for @metric_narcissist_27_name.
  ///
  /// In en, this message translates to:
  /// **'Control Through Guilt'**
  String get metric_narcissist_27_name;

  /// No description provided for @metric_narcissist_27_description.
  ///
  /// In en, this message translates to:
  /// **'Using guilt-inducing statements to manipulate others into compliance or caretaking.'**
  String get metric_narcissist_27_description;

  /// No description provided for @metric_narcissist_28_name.
  ///
  /// In en, this message translates to:
  /// **'Emotional Volatility'**
  String get metric_narcissist_28_name;

  /// No description provided for @metric_narcissist_28_description.
  ///
  /// In en, this message translates to:
  /// **'Rapid mood swings from charm to rage, often triggered by perceived narcissistic injury.'**
  String get metric_narcissist_28_description;

  /// No description provided for @metric_narcissist_29_name.
  ///
  /// In en, this message translates to:
  /// **'Invalidation of Feelings'**
  String get metric_narcissist_29_name;

  /// No description provided for @metric_narcissist_29_description.
  ///
  /// In en, this message translates to:
  /// **'Dismissing or minimizing others\' emotions as overreactions or irrational.'**
  String get metric_narcissist_29_description;

  /// No description provided for @metric_narcissist_30_name.
  ///
  /// In en, this message translates to:
  /// **'Monopolizing Conversations'**
  String get metric_narcissist_30_name;

  /// No description provided for @metric_narcissist_30_description.
  ///
  /// In en, this message translates to:
  /// **'Dominating dialogue with self-focused topics, interrupting, or ignoring others\' input.'**
  String get metric_narcissist_30_description;

  /// No description provided for @metric_narcissist_31_name.
  ///
  /// In en, this message translates to:
  /// **'Name-Calling Derogation'**
  String get metric_narcissist_31_name;

  /// No description provided for @metric_narcissist_31_description.
  ///
  /// In en, this message translates to:
  /// **'Using insults, labels, or demeaning terms to devalue and control the target.'**
  String get metric_narcissist_31_description;

  /// No description provided for @metric_narcissist_32_name.
  ///
  /// In en, this message translates to:
  /// **'Threats of Abandonment'**
  String get metric_narcissist_32_name;

  /// No description provided for @metric_narcissist_32_description.
  ///
  /// In en, this message translates to:
  /// **'Using fear of loss or rejection to coerce compliance or attention.'**
  String get metric_narcissist_32_description;

  /// No description provided for @metric_narcissist_33_name.
  ///
  /// In en, this message translates to:
  /// **'Playing the Victim'**
  String get metric_narcissist_33_name;

  /// No description provided for @metric_narcissist_33_description.
  ///
  /// In en, this message translates to:
  /// **'Portraying themselves as unfairly treated to elicit sympathy and deflect accountability.'**
  String get metric_narcissist_33_description;

  /// No description provided for @metric_narcissist_34_name.
  ///
  /// In en, this message translates to:
  /// **'Martyr Complex'**
  String get metric_narcissist_34_name;

  /// No description provided for @metric_narcissist_34_description.
  ///
  /// In en, this message translates to:
  /// **'Claiming excessive sacrifice or suffering to induce guilt and obligation in others.'**
  String get metric_narcissist_34_description;

  /// No description provided for @metric_narcissist_35_name.
  ///
  /// In en, this message translates to:
  /// **'Selective Memory'**
  String get metric_narcissist_35_name;

  /// No description provided for @metric_narcissist_35_description.
  ///
  /// In en, this message translates to:
  /// **'Conveniently forgetting promises, agreements, or harmful actions to avoid responsibility.'**
  String get metric_narcissist_35_description;

  /// No description provided for @metric_narcissist_36_name.
  ///
  /// In en, this message translates to:
  /// **'Stonewalling Communication'**
  String get metric_narcissist_36_name;

  /// No description provided for @metric_narcissist_36_description.
  ///
  /// In en, this message translates to:
  /// **'Refusing to engage in dialogue, ignoring questions, or shutting down discussions to maintain control.'**
  String get metric_narcissist_36_description;

  /// No description provided for @metric_narcissist_37_name.
  ///
  /// In en, this message translates to:
  /// **'Future Faking'**
  String get metric_narcissist_37_name;

  /// No description provided for @metric_narcissist_37_description.
  ///
  /// In en, this message translates to:
  /// **'Making grandiose promises about shared future plans to create false hope and dependency.'**
  String get metric_narcissist_37_description;

  /// No description provided for @metric_narcissist_38_name.
  ///
  /// In en, this message translates to:
  /// **'Smear Campaign'**
  String get metric_narcissist_38_name;

  /// No description provided for @metric_narcissist_38_description.
  ///
  /// In en, this message translates to:
  /// **'Spreading malicious rumors or lies about the target to isolate them and damage reputation.'**
  String get metric_narcissist_38_description;

  /// No description provided for @metric_narcissist_39_name.
  ///
  /// In en, this message translates to:
  /// **'Isolation Tactics'**
  String get metric_narcissist_39_name;

  /// No description provided for @metric_narcissist_39_description.
  ///
  /// In en, this message translates to:
  /// **'Discouraging or preventing contact with friends, family, or support systems to increase dependence.'**
  String get metric_narcissist_39_description;

  /// No description provided for @metric_narcissist_40_name.
  ///
  /// In en, this message translates to:
  /// **'Financial Exploitation'**
  String get metric_narcissist_40_name;

  /// No description provided for @metric_narcissist_40_description.
  ///
  /// In en, this message translates to:
  /// **'Manipulating or controlling financial resources for personal gain or to create dependency.'**
  String get metric_narcissist_40_description;

  /// No description provided for @metric_narcissist_41_name.
  ///
  /// In en, this message translates to:
  /// **'Sexual Coercion'**
  String get metric_narcissist_41_name;

  /// No description provided for @metric_narcissist_41_description.
  ///
  /// In en, this message translates to:
  /// **'Using pressure, guilt, or manipulation to obtain sexual compliance without genuine consent.'**
  String get metric_narcissist_41_description;

  /// No description provided for @metric_narcissist_42_name.
  ///
  /// In en, this message translates to:
  /// **'Boundary Testing'**
  String get metric_narcissist_42_name;

  /// No description provided for @metric_narcissist_42_description.
  ///
  /// In en, this message translates to:
  /// **'Repeatedly pushing limits to see what behavior is tolerated, then escalating violations.'**
  String get metric_narcissist_42_description;

  /// No description provided for @metric_narcissist_43_name.
  ///
  /// In en, this message translates to:
  /// **'Gaslighting Denial'**
  String get metric_narcissist_43_name;

  /// No description provided for @metric_narcissist_43_description.
  ///
  /// In en, this message translates to:
  /// **'Flatly denying events or statements that occurred, causing the target to question reality.'**
  String get metric_narcissist_43_description;

  /// No description provided for @metric_narcissist_44_name.
  ///
  /// In en, this message translates to:
  /// **'Trivializing Concerns'**
  String get metric_narcissist_44_name;

  /// No description provided for @metric_narcissist_44_description.
  ///
  /// In en, this message translates to:
  /// **'Dismissing legitimate complaints as unimportant or overly sensitive.'**
  String get metric_narcissist_44_description;

  /// No description provided for @metric_narcissist_45_name.
  ///
  /// In en, this message translates to:
  /// **'Blame Externalization'**
  String get metric_narcissist_45_name;

  /// No description provided for @metric_narcissist_45_description.
  ///
  /// In en, this message translates to:
  /// **'Attributing all problems and conflicts to others, never accepting personal fault.'**
  String get metric_narcissist_45_description;

  /// No description provided for @metric_narcissist_46_name.
  ///
  /// In en, this message translates to:
  /// **'Jealousy Provocation'**
  String get metric_narcissist_46_name;

  /// No description provided for @metric_narcissist_46_description.
  ///
  /// In en, this message translates to:
  /// **'Flirting with or praising others to incite jealousy and maintain emotional control.'**
  String get metric_narcissist_46_description;

  /// No description provided for @metric_narcissist_47_name.
  ///
  /// In en, this message translates to:
  /// **'Emotional Blackmail'**
  String get metric_narcissist_47_name;

  /// No description provided for @metric_narcissist_47_description.
  ///
  /// In en, this message translates to:
  /// **'Using fear, obligation, or guilt to manipulate decisions and behavior.'**
  String get metric_narcissist_47_description;

  /// No description provided for @metric_narcissist_48_name.
  ///
  /// In en, this message translates to:
  /// **'Pseudo-Insight'**
  String get metric_narcissist_48_name;

  /// No description provided for @metric_narcissist_48_description.
  ///
  /// In en, this message translates to:
  /// **'Feigning self-awareness or empathy to appear reformed, then reverting to toxic patterns.'**
  String get metric_narcissist_48_description;

  /// No description provided for @metric_narcissist_49_name.
  ///
  /// In en, this message translates to:
  /// **'Contemptuous Tone'**
  String get metric_narcissist_49_name;

  /// No description provided for @metric_narcissist_49_description.
  ///
  /// In en, this message translates to:
  /// **'Using sarcasm, mockery, or disdainful language to degrade and dismiss others.'**
  String get metric_narcissist_49_description;

  /// No description provided for @metric_narcissist_50_name.
  ///
  /// In en, this message translates to:
  /// **'Revenge Fantasies'**
  String get metric_narcissist_50_name;

  /// No description provided for @metric_narcissist_50_description.
  ///
  /// In en, this message translates to:
  /// **'Expressing desires for retaliation or punishment against those who have slighted them.'**
  String get metric_narcissist_50_description;

  /// No description provided for @metric_serial_killer_1_name.
  ///
  /// In en, this message translates to:
  /// **'Predatory Framing'**
  String get metric_serial_killer_1_name;

  /// No description provided for @metric_serial_killer_1_description.
  ///
  /// In en, this message translates to:
  /// **'Detects language that positions the speaker as a hunter and the target as prey, indicating predatory intent.'**
  String get metric_serial_killer_1_description;

  /// No description provided for @metric_serial_killer_2_name.
  ///
  /// In en, this message translates to:
  /// **'Empathy Deficit'**
  String get metric_serial_killer_2_name;

  /// No description provided for @metric_serial_killer_2_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies statements lacking emotional resonance or concern for others\' suffering, suggesting callousness.'**
  String get metric_serial_killer_2_description;

  /// No description provided for @metric_serial_killer_3_name.
  ///
  /// In en, this message translates to:
  /// **'Dehumanizing Labels'**
  String get metric_serial_killer_3_name;

  /// No description provided for @metric_serial_killer_3_description.
  ///
  /// In en, this message translates to:
  /// **'Flags use of derogatory terms or objectifying labels that strip victims of humanity.'**
  String get metric_serial_killer_3_description;

  /// No description provided for @metric_serial_killer_4_name.
  ///
  /// In en, this message translates to:
  /// **'Objectification Cues'**
  String get metric_serial_killer_4_name;

  /// No description provided for @metric_serial_killer_4_description.
  ///
  /// In en, this message translates to:
  /// **'Recognizes language treating individuals as tools or objects for gratification.'**
  String get metric_serial_killer_4_description;

  /// No description provided for @metric_serial_killer_5_name.
  ///
  /// In en, this message translates to:
  /// **'Control Fixation'**
  String get metric_serial_killer_5_name;

  /// No description provided for @metric_serial_killer_5_description.
  ///
  /// In en, this message translates to:
  /// **'Detects obsessive references to dominance, manipulation, or enforcing compliance.'**
  String get metric_serial_killer_5_description;

  /// No description provided for @metric_serial_killer_6_name.
  ///
  /// In en, this message translates to:
  /// **'Thrill-Seeking Tone'**
  String get metric_serial_killer_6_name;

  /// No description provided for @metric_serial_killer_6_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies excitement or arousal in describing risky, violent, or predatory acts.'**
  String get metric_serial_killer_6_description;

  /// No description provided for @metric_serial_killer_7_name.
  ///
  /// In en, this message translates to:
  /// **'Compartmentalization Markers'**
  String get metric_serial_killer_7_name;

  /// No description provided for @metric_serial_killer_7_description.
  ///
  /// In en, this message translates to:
  /// **'Flags abrupt shifts between normal and violent topics, indicating psychological separation.'**
  String get metric_serial_killer_7_description;

  /// No description provided for @metric_serial_killer_8_name.
  ///
  /// In en, this message translates to:
  /// **'Victim Selection Signals'**
  String get metric_serial_killer_8_name;

  /// No description provided for @metric_serial_killer_8_description.
  ///
  /// In en, this message translates to:
  /// **'Detects criteria or preferences for targeting specific vulnerable groups.'**
  String get metric_serial_killer_8_description;

  /// No description provided for @metric_serial_killer_9_name.
  ///
  /// In en, this message translates to:
  /// **'Sadistic Enjoyment'**
  String get metric_serial_killer_9_name;

  /// No description provided for @metric_serial_killer_9_description.
  ///
  /// In en, this message translates to:
  /// **'Recognizes pleasure derived from others\' pain, fear, or suffering.'**
  String get metric_serial_killer_9_description;

  /// No description provided for @metric_serial_killer_10_name.
  ///
  /// In en, this message translates to:
  /// **'Manipulative Harm'**
  String get metric_serial_killer_10_name;

  /// No description provided for @metric_serial_killer_10_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies language used to deceive or coerce others into harmful situations.'**
  String get metric_serial_killer_10_description;

  /// No description provided for @metric_serial_killer_11_name.
  ///
  /// In en, this message translates to:
  /// **'Stalking Indicators'**
  String get metric_serial_killer_11_name;

  /// No description provided for @metric_serial_killer_11_description.
  ///
  /// In en, this message translates to:
  /// **'Flags detailed tracking, surveillance, or obsessive monitoring of a target.'**
  String get metric_serial_killer_11_description;

  /// No description provided for @metric_serial_killer_12_name.
  ///
  /// In en, this message translates to:
  /// **'Grooming Language'**
  String get metric_serial_killer_12_name;

  /// No description provided for @metric_serial_killer_12_description.
  ///
  /// In en, this message translates to:
  /// **'Detects gradual trust-building tactics to exploit or abuse victims.'**
  String get metric_serial_killer_12_description;

  /// No description provided for @metric_serial_killer_13_name.
  ///
  /// In en, this message translates to:
  /// **'Violent Fantasizing'**
  String get metric_serial_killer_13_name;

  /// No description provided for @metric_serial_killer_13_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies vivid descriptions of harming or killing others as a mental rehearsal.'**
  String get metric_serial_killer_13_description;

  /// No description provided for @metric_serial_killer_14_name.
  ///
  /// In en, this message translates to:
  /// **'Power Assertion'**
  String get metric_serial_killer_14_name;

  /// No description provided for @metric_serial_killer_14_description.
  ///
  /// In en, this message translates to:
  /// **'Recognizes statements emphasizing superiority or control over others.'**
  String get metric_serial_killer_14_description;

  /// No description provided for @metric_serial_killer_15_name.
  ///
  /// In en, this message translates to:
  /// **'Lack of Remorse'**
  String get metric_serial_killer_15_name;

  /// No description provided for @metric_serial_killer_15_description.
  ///
  /// In en, this message translates to:
  /// **'Flags absence of guilt or regret after discussing harmful actions.'**
  String get metric_serial_killer_15_description;

  /// No description provided for @metric_serial_killer_16_name.
  ///
  /// In en, this message translates to:
  /// **'Blame Externalization'**
  String get metric_serial_killer_16_name;

  /// No description provided for @metric_serial_killer_16_description.
  ///
  /// In en, this message translates to:
  /// **'Detects shifting responsibility for violent urges onto victims or society.'**
  String get metric_serial_killer_16_description;

  /// No description provided for @metric_serial_killer_17_name.
  ///
  /// In en, this message translates to:
  /// **'Sexualized Violence'**
  String get metric_serial_killer_17_name;

  /// No description provided for @metric_serial_killer_17_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies merging of sexual and violent themes in language.'**
  String get metric_serial_killer_17_description;

  /// No description provided for @metric_serial_killer_18_name.
  ///
  /// In en, this message translates to:
  /// **'Isolation Tactics'**
  String get metric_serial_killer_18_name;

  /// No description provided for @metric_serial_killer_18_description.
  ///
  /// In en, this message translates to:
  /// **'Recognizes efforts to separate a target from support networks.'**
  String get metric_serial_killer_18_description;

  /// No description provided for @metric_serial_killer_19_name.
  ///
  /// In en, this message translates to:
  /// **'Gaslighting Patterns'**
  String get metric_serial_killer_19_name;

  /// No description provided for @metric_serial_killer_19_description.
  ///
  /// In en, this message translates to:
  /// **'Flags language designed to distort reality and undermine a victim\'s sanity.'**
  String get metric_serial_killer_19_description;

  /// No description provided for @metric_serial_killer_20_name.
  ///
  /// In en, this message translates to:
  /// **'Threat Veiling'**
  String get metric_serial_killer_20_name;

  /// No description provided for @metric_serial_killer_20_description.
  ///
  /// In en, this message translates to:
  /// **'Detects implied threats or warnings masked as casual statements.'**
  String get metric_serial_killer_20_description;

  /// No description provided for @metric_serial_killer_21_name.
  ///
  /// In en, this message translates to:
  /// **'Possessive Language'**
  String get metric_serial_killer_21_name;

  /// No description provided for @metric_serial_killer_21_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies claims of ownership or entitlement over another person.'**
  String get metric_serial_killer_21_description;

  /// No description provided for @metric_serial_killer_22_name.
  ///
  /// In en, this message translates to:
  /// **'Revenge Themes'**
  String get metric_serial_killer_22_name;

  /// No description provided for @metric_serial_killer_22_description.
  ///
  /// In en, this message translates to:
  /// **'Recognizes fixation on retaliation or punishing perceived wrongs.'**
  String get metric_serial_killer_22_description;

  /// No description provided for @metric_serial_killer_23_name.
  ///
  /// In en, this message translates to:
  /// **'Narcissistic Grandeur'**
  String get metric_serial_killer_23_name;

  /// No description provided for @metric_serial_killer_23_description.
  ///
  /// In en, this message translates to:
  /// **'Flags exaggerated self-importance and disregard for others\' worth.'**
  String get metric_serial_killer_23_description;

  /// No description provided for @metric_serial_killer_24_name.
  ///
  /// In en, this message translates to:
  /// **'Emotional Detachment'**
  String get metric_serial_killer_24_name;

  /// No description provided for @metric_serial_killer_24_description.
  ///
  /// In en, this message translates to:
  /// **'Detects clinical or distant tone when discussing trauma or harm.'**
  String get metric_serial_killer_24_description;

  /// No description provided for @metric_serial_killer_25_name.
  ///
  /// In en, this message translates to:
  /// **'Predatory Patience'**
  String get metric_serial_killer_25_name;

  /// No description provided for @metric_serial_killer_25_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies long-term planning language for future victimization.'**
  String get metric_serial_killer_25_description;

  /// No description provided for @metric_serial_killer_26_name.
  ///
  /// In en, this message translates to:
  /// **'Boundary Testing'**
  String get metric_serial_killer_26_name;

  /// No description provided for @metric_serial_killer_26_description.
  ///
  /// In en, this message translates to:
  /// **'Recognizes probing for limits or resistance in potential victims.'**
  String get metric_serial_killer_26_description;

  /// No description provided for @metric_serial_killer_27_name.
  ///
  /// In en, this message translates to:
  /// **'Minimization of Harm'**
  String get metric_serial_killer_27_name;

  /// No description provided for @metric_serial_killer_27_description.
  ///
  /// In en, this message translates to:
  /// **'Flags downplaying the severity of violent or abusive acts.'**
  String get metric_serial_killer_27_description;

  /// No description provided for @metric_serial_killer_28_name.
  ///
  /// In en, this message translates to:
  /// **'Justification of Violence'**
  String get metric_serial_killer_28_name;

  /// No description provided for @metric_serial_killer_28_description.
  ///
  /// In en, this message translates to:
  /// **'Detects rationalizations for harming others as necessary or deserved.'**
  String get metric_serial_killer_28_description;

  /// No description provided for @metric_serial_killer_29_name.
  ///
  /// In en, this message translates to:
  /// **'Obsessive Focus'**
  String get metric_serial_killer_29_name;

  /// No description provided for @metric_serial_killer_29_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies repetitive, fixated thoughts on a specific person or act.'**
  String get metric_serial_killer_29_description;

  /// No description provided for @metric_serial_killer_30_name.
  ///
  /// In en, this message translates to:
  /// **'Cold Calculation'**
  String get metric_serial_killer_30_name;

  /// No description provided for @metric_serial_killer_30_description.
  ///
  /// In en, this message translates to:
  /// **'Recognizes strategic, emotionless planning of harmful actions.'**
  String get metric_serial_killer_30_description;

  /// No description provided for @metric_serial_killer_31_name.
  ///
  /// In en, this message translates to:
  /// **'Deceptive Charm'**
  String get metric_serial_killer_31_name;

  /// No description provided for @metric_serial_killer_31_description.
  ///
  /// In en, this message translates to:
  /// **'Flags overly flattering or ingratiating language to manipulate.'**
  String get metric_serial_killer_31_description;

  /// No description provided for @metric_serial_killer_32_name.
  ///
  /// In en, this message translates to:
  /// **'Victim Blaming'**
  String get metric_serial_killer_32_name;

  /// No description provided for @metric_serial_killer_32_description.
  ///
  /// In en, this message translates to:
  /// **'Detects attributing fault to the target for their own victimization.'**
  String get metric_serial_killer_32_description;

  /// No description provided for @metric_serial_killer_33_name.
  ///
  /// In en, this message translates to:
  /// **'Escalation Signals'**
  String get metric_serial_killer_33_name;

  /// No description provided for @metric_serial_killer_33_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies progression from fantasy to intent in violent language.'**
  String get metric_serial_killer_33_description;

  /// No description provided for @metric_serial_killer_34_name.
  ///
  /// In en, this message translates to:
  /// **'Parasitic Orientation'**
  String get metric_serial_killer_34_name;

  /// No description provided for @metric_serial_killer_34_description.
  ///
  /// In en, this message translates to:
  /// **'Recognizes language treating others as resources to exploit.'**
  String get metric_serial_killer_34_description;

  /// No description provided for @metric_serial_killer_35_name.
  ///
  /// In en, this message translates to:
  /// **'Arousal Cues'**
  String get metric_serial_killer_35_name;

  /// No description provided for @metric_serial_killer_35_description.
  ///
  /// In en, this message translates to:
  /// **'Flags physiological excitement indicators linked to violent themes.'**
  String get metric_serial_killer_35_description;

  /// No description provided for @metric_serial_killer_36_name.
  ///
  /// In en, this message translates to:
  /// **'Testing Loyalty'**
  String get metric_serial_killer_36_name;

  /// No description provided for @metric_serial_killer_36_description.
  ///
  /// In en, this message translates to:
  /// **'Detects demands for proof of allegiance or secrecy from accomplices.'**
  String get metric_serial_killer_36_description;

  /// No description provided for @metric_serial_killer_37_name.
  ///
  /// In en, this message translates to:
  /// **'Ritualistic Language'**
  String get metric_serial_killer_37_name;

  /// No description provided for @metric_serial_killer_37_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies patterned, ceremonial phrasing around violent acts.'**
  String get metric_serial_killer_37_description;

  /// No description provided for @metric_serial_killer_38_name.
  ///
  /// In en, this message translates to:
  /// **'Superiority Claims'**
  String get metric_serial_killer_38_name;

  /// No description provided for @metric_serial_killer_38_description.
  ///
  /// In en, this message translates to:
  /// **'Recognizes assertions of being above moral or legal constraints.'**
  String get metric_serial_killer_38_description;

  /// No description provided for @metric_serial_killer_39_name.
  ///
  /// In en, this message translates to:
  /// **'Emotional Vacuum'**
  String get metric_serial_killer_39_name;

  /// No description provided for @metric_serial_killer_39_description.
  ///
  /// In en, this message translates to:
  /// **'Flags absence of emotional words in contexts requiring empathy.'**
  String get metric_serial_killer_39_description;

  /// No description provided for @metric_serial_killer_40_name.
  ///
  /// In en, this message translates to:
  /// **'Predatory Curiosity'**
  String get metric_serial_killer_40_name;

  /// No description provided for @metric_serial_killer_40_description.
  ///
  /// In en, this message translates to:
  /// **'Detects probing questions about a target\'s fears or vulnerabilities.'**
  String get metric_serial_killer_40_description;

  /// No description provided for @metric_serial_killer_41_name.
  ///
  /// In en, this message translates to:
  /// **'Silencing Threats'**
  String get metric_serial_killer_41_name;

  /// No description provided for @metric_serial_killer_41_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies warnings to prevent disclosure or reporting.'**
  String get metric_serial_killer_41_description;

  /// No description provided for @metric_serial_killer_42_name.
  ///
  /// In en, this message translates to:
  /// **'Dehumanizing Comparisons'**
  String get metric_serial_killer_42_name;

  /// No description provided for @metric_serial_killer_42_description.
  ///
  /// In en, this message translates to:
  /// **'Recognizes equating people to animals, objects, or subhuman entities.'**
  String get metric_serial_killer_42_description;

  /// No description provided for @metric_serial_killer_43_name.
  ///
  /// In en, this message translates to:
  /// **'Control Language'**
  String get metric_serial_killer_43_name;

  /// No description provided for @metric_serial_killer_43_description.
  ///
  /// In en, this message translates to:
  /// **'Flags imperative or commanding tones aimed at dominating others.'**
  String get metric_serial_killer_43_description;

  /// No description provided for @metric_serial_killer_44_name.
  ///
  /// In en, this message translates to:
  /// **'Sadistic Detail'**
  String get metric_serial_killer_44_name;

  /// No description provided for @metric_serial_killer_44_description.
  ///
  /// In en, this message translates to:
  /// **'Detects excessive focus on graphic pain or suffering in narratives.'**
  String get metric_serial_killer_44_description;

  /// No description provided for @metric_serial_killer_45_name.
  ///
  /// In en, this message translates to:
  /// **'Manipulative Empathy'**
  String get metric_serial_killer_45_name;

  /// No description provided for @metric_serial_killer_45_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies feigned concern to lower a target\'s defenses.'**
  String get metric_serial_killer_45_description;

  /// No description provided for @metric_serial_killer_46_name.
  ///
  /// In en, this message translates to:
  /// **'Predatory Gaze'**
  String get metric_serial_killer_46_name;

  /// No description provided for @metric_serial_killer_46_description.
  ///
  /// In en, this message translates to:
  /// **'Recognizes language describing intense, invasive observation of targets.'**
  String get metric_serial_killer_46_description;

  /// No description provided for @metric_serial_killer_47_name.
  ///
  /// In en, this message translates to:
  /// **'Violent Identity'**
  String get metric_serial_killer_47_name;

  /// No description provided for @metric_serial_killer_47_description.
  ///
  /// In en, this message translates to:
  /// **'Flags self-identification as a predator, killer, or monster.'**
  String get metric_serial_killer_47_description;

  /// No description provided for @metric_serial_killer_48_name.
  ///
  /// In en, this message translates to:
  /// **'Thrill of the Hunt'**
  String get metric_serial_killer_48_name;

  /// No description provided for @metric_serial_killer_48_description.
  ///
  /// In en, this message translates to:
  /// **'Detects excitement in the process of stalking or pursuing victims.'**
  String get metric_serial_killer_48_description;

  /// No description provided for @metric_serial_killer_49_name.
  ///
  /// In en, this message translates to:
  /// **'Compulsive Confession'**
  String get metric_serial_killer_49_name;

  /// No description provided for @metric_serial_killer_49_description.
  ///
  /// In en, this message translates to:
  /// **'Identifies urges to disclose violent acts for psychological relief.'**
  String get metric_serial_killer_49_description;

  /// No description provided for @metric_serial_killer_50_name.
  ///
  /// In en, this message translates to:
  /// **'Finality Language'**
  String get metric_serial_killer_50_name;

  /// No description provided for @metric_serial_killer_50_description.
  ///
  /// In en, this message translates to:
  /// **'Recognizes references to ending, killing, or permanent silencing of targets.'**
  String get metric_serial_killer_50_description;

  /// No description provided for @packNarcissistLabel.
  ///
  /// In en, this message translates to:
  /// **'The Narcissist'**
  String get packNarcissistLabel;

  /// No description provided for @packSerialKillerLabel.
  ///
  /// In en, this message translates to:
  /// **'The Serial Killer'**
  String get packSerialKillerLabel;

  /// No description provided for @expansionPacksPurchased.
  ///
  /// In en, this message translates to:
  /// **'Expansion Packs Purchased:'**
  String get expansionPacksPurchased;

  /// No description provided for @expansionPacksStillAvailable.
  ///
  /// In en, this message translates to:
  /// **'Expansion Packs Still Available'**
  String get expansionPacksStillAvailable;

  /// No description provided for @metricsOwned.
  ///
  /// In en, this message translates to:
  /// **'Metrics owned'**
  String get metricsOwned;

  /// No description provided for @metricsStillAvailable.
  ///
  /// In en, this message translates to:
  /// **'Metrics Still Available'**
  String get metricsStillAvailable;

  /// No description provided for @getMore.
  ///
  /// In en, this message translates to:
  /// **'Get more!'**
  String get getMore;

  /// No description provided for @standardPackTitle.
  ///
  /// In en, this message translates to:
  /// **'Standard Pack'**
  String get standardPackTitle;

  /// No description provided for @goodPackTitle.
  ///
  /// In en, this message translates to:
  /// **'The Good Pack'**
  String get goodPackTitle;

  /// No description provided for @badPackTitle.
  ///
  /// In en, this message translates to:
  /// **'The Bad Pack'**
  String get badPackTitle;

  /// No description provided for @uglyPackTitle.
  ///
  /// In en, this message translates to:
  /// **'The Ugly Pack'**
  String get uglyPackTitle;

  /// No description provided for @narcissistPackTitle.
  ///
  /// In en, this message translates to:
  /// **'Narcissist Pack'**
  String get narcissistPackTitle;

  /// No description provided for @serialKillerPackTitle.
  ///
  /// In en, this message translates to:
  /// **'Serial Killer Pack'**
  String get serialKillerPackTitle;

  /// No description provided for @customMetricsTitle.
  ///
  /// In en, this message translates to:
  /// **'Custom Metrics'**
  String get customMetricsTitle;

  /// Subtitle showing metric count
  ///
  /// In en, this message translates to:
  /// **'{count} Metrics'**
  String metricsCountSubtitle(Object count);

  /// Subtitle showing metric count as addon
  ///
  /// In en, this message translates to:
  /// **'{count} Metrics Addon'**
  String metricsAddonSubtitle(Object count);

  /// Singular metric count
  ///
  /// In en, this message translates to:
  /// **'{count} Metric'**
  String metricSingular(Object count);

  /// Plural metric count
  ///
  /// In en, this message translates to:
  /// **'{count} Metrics'**
  String metricPlural(Object count);

  /// No description provided for @viewMembershipOptions.
  ///
  /// In en, this message translates to:
  /// **'View Membership Options'**
  String get viewMembershipOptions;

  /// No description provided for @metricExpansionPacksTitle.
  ///
  /// In en, this message translates to:
  /// **'Metric Expansion Packs'**
  String get metricExpansionPacksTitle;

  /// No description provided for @oneTimePurchasesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'One-time purchases — additional metrics forever'**
  String get oneTimePurchasesSubtitle;

  /// No description provided for @unlockGoodPackButton.
  ///
  /// In en, this message translates to:
  /// **'Unlock The Good Pack'**
  String get unlockGoodPackButton;

  /// No description provided for @unlockBadPackButton.
  ///
  /// In en, this message translates to:
  /// **'Unlock The Bad Pack'**
  String get unlockBadPackButton;

  /// No description provided for @unlockUglyPackButton.
  ///
  /// In en, this message translates to:
  /// **'Unlock The Ugly Pack'**
  String get unlockUglyPackButton;

  /// No description provided for @unlockNarcissistPackButton.
  ///
  /// In en, this message translates to:
  /// **'Unlock Narcissist Pack'**
  String get unlockNarcissistPackButton;

  /// No description provided for @unlockSerialKillerPackButton.
  ///
  /// In en, this message translates to:
  /// **'Unlock Serial Killer Pack'**
  String get unlockSerialKillerPackButton;

  /// No description provided for @goodPackBenefit1.
  ///
  /// In en, this message translates to:
  /// **'100 healthy relationship metrics'**
  String get goodPackBenefit1;

  /// No description provided for @goodPackBenefit2.
  ///
  /// In en, this message translates to:
  /// **'Positive communication patterns'**
  String get goodPackBenefit2;

  /// No description provided for @goodPackBenefit3.
  ///
  /// In en, this message translates to:
  /// **'Appreciation, empathy & trust signals'**
  String get goodPackBenefit3;

  /// No description provided for @goodPackBenefit4.
  ///
  /// In en, this message translates to:
  /// **'One-time purchase — yours forever'**
  String get goodPackBenefit4;

  /// No description provided for @goodPackBenefit5.
  ///
  /// In en, this message translates to:
  /// **'Unlocks instantly after purchase'**
  String get goodPackBenefit5;

  /// No description provided for @badPackBenefit1.
  ///
  /// In en, this message translates to:
  /// **'100 warning-sign relationship metrics'**
  String get badPackBenefit1;

  /// No description provided for @badPackBenefit2.
  ///
  /// In en, this message translates to:
  /// **'Spot manipulation & dismissal patterns'**
  String get badPackBenefit2;

  /// No description provided for @badPackBenefit3.
  ///
  /// In en, this message translates to:
  /// **'Guilt-tripping, stonewalling & more'**
  String get badPackBenefit3;

  /// No description provided for @badPackBenefit4.
  ///
  /// In en, this message translates to:
  /// **'One-time purchase — yours forever'**
  String get badPackBenefit4;

  /// No description provided for @badPackBenefit5.
  ///
  /// In en, this message translates to:
  /// **'Unlocks instantly after purchase'**
  String get badPackBenefit5;

  /// No description provided for @uglyPackBenefit1.
  ///
  /// In en, this message translates to:
  /// **'100 severe red-flag abuse metrics'**
  String get uglyPackBenefit1;

  /// No description provided for @uglyPackBenefit2.
  ///
  /// In en, this message translates to:
  /// **'Identify coercion, threats & control'**
  String get uglyPackBenefit2;

  /// No description provided for @uglyPackBenefit3.
  ///
  /// In en, this message translates to:
  /// **'Trauma bonding & isolation indicators'**
  String get uglyPackBenefit3;

  /// No description provided for @uglyPackBenefit4.
  ///
  /// In en, this message translates to:
  /// **'One-time purchase — yours forever'**
  String get uglyPackBenefit4;

  /// No description provided for @uglyPackBenefit5.
  ///
  /// In en, this message translates to:
  /// **'Unlocks instantly after purchase'**
  String get uglyPackBenefit5;

  /// No description provided for @narcissistPackBenefit1.
  ///
  /// In en, this message translates to:
  /// **'50 narcissistic behavior metrics'**
  String get narcissistPackBenefit1;

  /// No description provided for @narcissistPackBenefit2.
  ///
  /// In en, this message translates to:
  /// **'Detect gaslighting & love-bombing'**
  String get narcissistPackBenefit2;

  /// No description provided for @narcissistPackBenefit3.
  ///
  /// In en, this message translates to:
  /// **'Hoovering & devaluation patterns'**
  String get narcissistPackBenefit3;

  /// No description provided for @narcissistPackBenefit4.
  ///
  /// In en, this message translates to:
  /// **'One-time purchase — yours forever'**
  String get narcissistPackBenefit4;

  /// No description provided for @narcissistPackBenefit5.
  ///
  /// In en, this message translates to:
  /// **'Unlocks instantly after purchase'**
  String get narcissistPackBenefit5;

  /// No description provided for @serialKillerPackBenefit1.
  ///
  /// In en, this message translates to:
  /// **'50 extreme danger indicators'**
  String get serialKillerPackBenefit1;

  /// No description provided for @serialKillerPackBenefit2.
  ///
  /// In en, this message translates to:
  /// **'Detect predatory & violent language'**
  String get serialKillerPackBenefit2;

  /// No description provided for @serialKillerPackBenefit3.
  ///
  /// In en, this message translates to:
  /// **'Psychopathy & sadism markers'**
  String get serialKillerPackBenefit3;

  /// No description provided for @serialKillerPackBenefit4.
  ///
  /// In en, this message translates to:
  /// **'One-time purchase — yours forever'**
  String get serialKillerPackBenefit4;

  /// No description provided for @serialKillerPackBenefit5.
  ///
  /// In en, this message translates to:
  /// **'Unlocks instantly after purchase'**
  String get serialKillerPackBenefit5;

  /// No description provided for @allPacksOwned.
  ///
  /// In en, this message translates to:
  /// **'All expansion packs owned!'**
  String get allPacksOwned;

  /// No description provided for @restorePurchases.
  ///
  /// In en, this message translates to:
  /// **'Restore Purchases'**
  String get restorePurchases;

  /// No description provided for @restorePurchasesButton.
  ///
  /// In en, this message translates to:
  /// **'Restore Previous Purchases'**
  String get restorePurchasesButton;

  /// No description provided for @restorePurchasesSuccess.
  ///
  /// In en, this message translates to:
  /// **'Purchases restored successfully!'**
  String get restorePurchasesSuccess;

  /// No description provided for @restorePurchasesError.
  ///
  /// In en, this message translates to:
  /// **'Could not restore purchases. Please try again.'**
  String get restorePurchasesError;

  /// No description provided for @restorePurchasesNoneFound.
  ///
  /// In en, this message translates to:
  /// **'No previous purchases found.'**
  String get restorePurchasesNoneFound;

  /// No description provided for @discordAddonPopupTitle.
  ///
  /// In en, this message translates to:
  /// **'Discord Feature'**
  String get discordAddonPopupTitle;

  /// No description provided for @discordAddonPopupMessage.
  ///
  /// In en, this message translates to:
  /// **'This feature is available as an add-on.'**
  String get discordAddonPopupMessage;

  /// No description provided for @discordAccordionTitle.
  ///
  /// In en, this message translates to:
  /// **'Discord Integration'**
  String get discordAccordionTitle;

  /// No description provided for @discordAccordionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Connect Discord servers'**
  String get discordAccordionSubtitle;

  /// No description provided for @selectDiscord.
  ///
  /// In en, this message translates to:
  /// **'Select Discord'**
  String get selectDiscord;

  /// No description provided for @enableDiscord.
  ///
  /// In en, this message translates to:
  /// **'Enable Discord'**
  String get enableDiscord;

  /// Title for About page
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get aboutTitle;

  /// About page app description
  ///
  /// In en, this message translates to:
  /// **'AIRTA (AI Relationship Toxicity Analyzer) helps you identify unhealthy patterns in your relationships through AI-powered conversation analysis. Our mission is to provide insights that promote healthier, more balanced relationships.'**
  String get aboutDescription;

  /// Section title for contact information
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get contactUs;

  /// Label for support email
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get supportEmail;

  /// No description provided for @supportEmailDesc.
  ///
  /// In en, this message translates to:
  /// **'Get help with using the app'**
  String get supportEmailDesc;

  /// Label for business email
  ///
  /// In en, this message translates to:
  /// **'Business'**
  String get businessEmail;

  /// No description provided for @businessEmailDesc.
  ///
  /// In en, this message translates to:
  /// **'Partnerships and inquiries'**
  String get businessEmailDesc;

  /// Label for privacy email
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get privacyEmail;

  /// No description provided for @privacyEmailDesc.
  ///
  /// In en, this message translates to:
  /// **'Data and privacy questions'**
  String get privacyEmailDesc;

  /// Section title for important links
  ///
  /// In en, this message translates to:
  /// **'Links'**
  String get importantLinks;

  /// Website link label
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website;

  /// Privacy policy link label
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// Terms of service link label
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get termsOfService;

  /// GitHub repository link label
  ///
  /// In en, this message translates to:
  /// **'GitHub'**
  String get github;

  /// No description provided for @allRightsReserved.
  ///
  /// In en, this message translates to:
  /// **'All rights reserved.'**
  String get allRightsReserved;

  /// Title for The Good metrics pack
  ///
  /// In en, this message translates to:
  /// **'The Good'**
  String get packTheGood;

  /// Title for The Bad metrics pack
  ///
  /// In en, this message translates to:
  /// **'The Bad'**
  String get packTheBad;

  /// Title for The Ugly metrics pack
  ///
  /// In en, this message translates to:
  /// **'The Ugly'**
  String get packTheUgly;

  /// Title for The Narcissist metrics pack
  ///
  /// In en, this message translates to:
  /// **'The Narcissist'**
  String get packTheNarcissist;

  /// Subtitle for metrics expansion packs
  ///
  /// In en, this message translates to:
  /// **'Metrics Expansion Pack'**
  String get metricsExpansionPack;

  /// Dialog title for purchasing an item
  ///
  /// In en, this message translates to:
  /// **'Purchase {title}'**
  String purchaseTitle(String title);

  /// Button to purchase item at given price
  ///
  /// In en, this message translates to:
  /// **'Buy for {price}'**
  String buyForPrice(String price);

  /// Dialog title shown while processing purchase
  ///
  /// In en, this message translates to:
  /// **'Processing Purchase...'**
  String get processingPurchase;

  /// Status text while waiting for store confirmation
  ///
  /// In en, this message translates to:
  /// **'Waiting for store confirmation...'**
  String get waitingForStoreConfirmation;

  /// Hint text for metric list
  ///
  /// In en, this message translates to:
  /// **'My Metric List'**
  String get myMetricList;

  /// SnackBar message when bot token is saved
  ///
  /// In en, this message translates to:
  /// **'Bot token saved successfully'**
  String get botTokenSaved;

  /// Error message when saving fails
  ///
  /// In en, this message translates to:
  /// **'Failed to save: {error}'**
  String failedToSaveError(String error);

  /// Status message when connection test is not available
  ///
  /// In en, this message translates to:
  /// **'Connection test not yet implemented'**
  String get connectionTestNotImplemented;

  /// Hint text for Discord bot token input
  ///
  /// In en, this message translates to:
  /// **'Paste your Discord bot token here'**
  String get pasteDiscordBotTokenHint;

  /// Label for bot token field
  ///
  /// In en, this message translates to:
  /// **'Bot Token'**
  String get botTokenLabel;

  /// Button label for bot configuration
  ///
  /// In en, this message translates to:
  /// **'Bot Config'**
  String get botConfigButton;

  /// Placeholder text for custom metric purchase
  ///
  /// In en, this message translates to:
  /// **'Custom metric purchase would start here'**
  String get customMetricPurchasePlaceholder;

  /// Button to configure bot token
  ///
  /// In en, this message translates to:
  /// **'Configure Bot Token'**
  String get configureBotToken;

  /// Button to retry an operation
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retryButton;

  /// Label indicating server owner
  ///
  /// In en, this message translates to:
  /// **'Owner'**
  String get ownerLabel;

  /// Status when no messages are found
  ///
  /// In en, this message translates to:
  /// **'No messages found in this channel'**
  String get noMessagesInChannel;

  /// Error message when import fails
  ///
  /// In en, this message translates to:
  /// **'Failed to import: {error}'**
  String failedToImportError(String error);

  /// Upsell text for Pro membership
  ///
  /// In en, this message translates to:
  /// **'Pro Membership - \$0.99/mo'**
  String get proMembershipUpsell;

  /// Button to unlock feature for price
  ///
  /// In en, this message translates to:
  /// **'Unlock for {price}'**
  String unlockForPrice(String price);

  /// Button to start screenshot capture
  ///
  /// In en, this message translates to:
  /// **'Start Capture'**
  String get startCapture;

  /// Button to finish and process screenshots
  ///
  /// In en, this message translates to:
  /// **'Finish & Process'**
  String get finishAndProcess;

  /// Cancel button
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancelButton;

  /// Button to process screenshots
  ///
  /// In en, this message translates to:
  /// **'Process Screenshots'**
  String get processScreenshots;

  /// Button to start over
  ///
  /// In en, this message translates to:
  /// **'Start Over'**
  String get startOver;

  /// Status while capturing
  ///
  /// In en, this message translates to:
  /// **'Capturing...'**
  String get capturingStatus;

  /// Status when capture is complete
  ///
  /// In en, this message translates to:
  /// **'Capture Complete'**
  String get captureComplete;

  /// Title for error dialog
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get errorDialogTitle;

  /// Error when loading conversation fails
  ///
  /// In en, this message translates to:
  /// **'Failed to load conversation: {error}'**
  String failedToLoadConversation(String error);

  /// Title for conversation selection
  ///
  /// In en, this message translates to:
  /// **'Select Conversation'**
  String get selectConversationTitle;

  /// Title for platform credentials page
  ///
  /// In en, this message translates to:
  /// **'Platform Credentials'**
  String get platformCredentialsTitle;

  /// Tooltip for save credentials button
  ///
  /// In en, this message translates to:
  /// **'Save Credentials'**
  String get saveCredentialsTooltip;

  /// Dialog title for Pro Plus upgrade
  ///
  /// In en, this message translates to:
  /// **'Upgrade to Pro Plus'**
  String get upgradeToProPlusTitle;

  /// Button to upgrade now
  ///
  /// In en, this message translates to:
  /// **'Upgrade Now'**
  String get upgradeNowButton;

  /// Tooltip for language selector
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguageTooltip;

  /// Button to go to next screenshot size
  ///
  /// In en, this message translates to:
  /// **'Next Size'**
  String get nextSizeButton;

  /// Button to start screenshot sequence
  ///
  /// In en, this message translates to:
  /// **'Start Sequence'**
  String get startSequenceButton;

  /// Instruction for next size button
  ///
  /// In en, this message translates to:
  /// **'Click \"Next Size\" for next dimension'**
  String get nextSizeInstruction;

  /// OK button
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get okButton;

  /// Body text when no messages found in date range
  ///
  /// In en, this message translates to:
  /// **'No messages were found in the selected date range. Try adjusting the date range.'**
  String get noMessagesInDateRangeBody;

  /// Success message when platform credentials are saved
  ///
  /// In en, this message translates to:
  /// **'Credentials saved successfully'**
  String get credentialsSavedSuccess;

  /// Error message when saving platform credentials fails
  ///
  /// In en, this message translates to:
  /// **'Error saving credentials: {error}'**
  String errorSavingCredentials(String error);

  /// Security information about credential storage
  ///
  /// In en, this message translates to:
  /// **'Your credentials are stored securely on this device only and are never uploaded to our servers.'**
  String get credentialsSecurityInfo;

  /// Button label while saving is in progress
  ///
  /// In en, this message translates to:
  /// **'Saving...'**
  String get savingButton;

  /// Button label to save all platform credentials
  ///
  /// In en, this message translates to:
  /// **'Save Credentials'**
  String get saveAllCredentials;

  /// Label indicating Pro Plus tier requirement
  ///
  /// In en, this message translates to:
  /// **'Pro+'**
  String get proPlusLabel;

  /// Button to open upgrade/upsell dialog
  ///
  /// In en, this message translates to:
  /// **'Upgrade'**
  String get upgradeButton;

  /// Label for username input field
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get usernameLabel;

  /// Label for password input field
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get passwordLabel;

  /// Body text for upgrade to Pro Plus dialog
  ///
  /// In en, this message translates to:
  /// **'Upgrade to Pro Plus to access third-party platform integrations and advanced features.'**
  String get upgradeToProPlusBody;

  /// Body text when no conversations are found
  ///
  /// In en, this message translates to:
  /// **'No conversations were found. Make sure your credentials are correct and try again.'**
  String get noConversationsFoundBody;

  /// No description provided for @tileMyAccountTitle.
  ///
  /// In en, this message translates to:
  /// **'My Account'**
  String get tileMyAccountTitle;

  /// No description provided for @tileMyAccountDesc.
  ///
  /// In en, this message translates to:
  /// **'Membership, referrals, purchases, sales & developer license'**
  String get tileMyAccountDesc;

  /// No description provided for @tileReferFriendsTitle.
  ///
  /// In en, this message translates to:
  /// **'Refer Friends\nGet FREE Month'**
  String get tileReferFriendsTitle;

  /// No description provided for @tileReferFriendsDesc.
  ///
  /// In en, this message translates to:
  /// **'Refer 5 friends who run a report and earn a free month of Standard!'**
  String get tileReferFriendsDesc;

  /// No description provided for @tileUserPacksTitle.
  ///
  /// In en, this message translates to:
  /// **'User Submitted\nMetric Packs'**
  String get tileUserPacksTitle;

  /// No description provided for @tileUserPacksDesc.
  ///
  /// In en, this message translates to:
  /// **'Browse & purchase community-created metric packs. Earn credits by submitting your own!'**
  String get tileUserPacksDesc;

  /// No description provided for @tileBrowseButton.
  ///
  /// In en, this message translates to:
  /// **'Browse'**
  String get tileBrowseButton;

  /// No description provided for @purchaseDialogCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get purchaseDialogCancel;

  /// No description provided for @installedPacksAccordionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'{count} Metrics — Community Pack'**
  String installedPacksAccordionSubtitle(int count);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'ar',
        'de',
        'en',
        'es',
        'fr',
        'hi',
        'it',
        'ja',
        'ko',
        'nl',
        'pl',
        'pt',
        'ru',
        'tr',
        'uk',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'nl':
      return AppLocalizationsNl();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
