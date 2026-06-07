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

  /// Button to dismiss dialog
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

  /// No description provided for @gotIt.
  ///
  /// In en, this message translates to:
  /// **'Got it'**
  String get gotIt;

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
