// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'AI Relationship Toxicity Analyzer';

  @override
  String get psychologicalMetrics => 'Psychological Metrics';

  @override
  String get metricsDescription =>
      'Fewer selected metrics produce a deeper, more concentrated analysis of those behaviors. More selected metrics produce a broader report with less detail per metric.';

  @override
  String get selectSMS => 'Select SMS / RCS Chat';

  @override
  String get selectDiscordChannel => 'Select Channel';

  @override
  String get lightMode => 'Light';

  @override
  String get darkMode => 'Dark';

  @override
  String get discordSetupTitle => 'How to Set Up Discord';

  @override
  String get discordSetupDescription =>
      'Follow these steps to enable Discord channel analysis in the app:';

  @override
  String get discordStep1Title => 'Create a Discord Bot';

  @override
  String get discordStep1Description =>
      '1. Go to discord.com/developers and click \'New Application\'\n2. Enter a name (e.g., \'AIRTA Bot\') and click Create\n3. In the left sidebar, click \'Bot\'\n4. Click \'Add Bot\' and confirm \'Yes, do it!\'\n5. Under the bot username, click \'Reset Token\' then \'Copy\' to save it\n6. Turn OFF \'Public Bot\' (private use only)\n7. Turn ON \'Message Content Intent\' and \'Server Members Intent\'';

  @override
  String get discordStep2Title => 'Get Your Bot Token';

  @override
  String get discordStep2Description =>
      'In the Bot section (left sidebar), click \'Reset Token\' under the bot username, then click \'Copy\'. This token is your bot\'s password—keep it secret! Paste it into AIRTA\'s Discord settings.';

  @override
  String get discordStep3Title => 'Invite Bot to Your Server';

  @override
  String get discordStep3Description =>
      '1. In the left sidebar, click \'OAuth2\' then \'URL Generator\'\n2. Under \'SCOPES\', check \'bot\'\n3. Under \'BOT PERMISSIONS\', check:\n   • Read Messages/View Channels\n   • Read Message History\n   • Send Messages (optional)\n4. Copy the generated URL at the bottom\n5. Paste it in a new browser tab and select your server\n6. Click \'Authorize\' and complete the CAPTCHA';

  @override
  String get discordStep4Title => 'Enter Token in AIRTA';

  @override
  String get discordStep4Description =>
      'Return to this app, go to Settings → Discord Bot Configuration, paste your bot token, and tap Save. The app will verify your bot can connect to Discord.';

  @override
  String get discordStep5Title => 'Select a Channel to Analyze';

  @override
  String get discordStep5Description =>
      'Back on the main screen, tap \'Select Discord Channel\'. Choose your server from the list, then pick the channel you want to analyze. AIRTA will fetch recent messages and analyze them for relationship toxicity patterns.';

  @override
  String get discordBotConfiguration => 'Bot Configuration';

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
  String get gotIt => 'Got it';

  @override
  String get selectFile => 'Select file';

  @override
  String get analyzeSelectedMetrics => 'Analyze Selected metrics';

  @override
  String get analyze20RandomMetrics => 'Analyze 20 Random metrics';

  @override
  String get membershipOptions => 'Membership Options';

  @override
  String get free => 'Free';

  @override
  String get oneTimeUnlock => 'One-Time Report Unlock';

  @override
  String get standard => 'Standard';

  @override
  String get discordAddon => 'Discord Addon';

  @override
  String get analyze => 'Analyze';

  @override
  String get report => 'Report';

  @override
  String get pdfReport => 'PDF Report';

  @override
  String get openPdf => 'Open PDF';

  @override
  String get sharePdf => 'Share PDF';

  @override
  String get printPdf => 'Print PDF';

  @override
  String get closePdfPreview => 'Close PDF Preview Window';

  @override
  String get openPdfPreview => 'Open PDF Preview Window';

  @override
  String get pdfPreviewDescription =>
      'The embedded PDF window starts closed to keep the report compact.';

  @override
  String get notNow => 'Not now';

  @override
  String get unlockThisReport => 'Unlock This Report - \$20';

  @override
  String get joinStandard => 'Join Standard - \$9.99/mo';

  @override
  String get instantUnlockTitle => 'Instant Report Unlock - \$20';

  @override
  String get instantUnlockDescription =>
      'This is a one-time purchase to unlock the current report only. No subscription required. Future reports will require separate unlocks or a membership.\n\nProceed with payment?';

  @override
  String get purchaseFor20 => 'Purchase for \$20';

  @override
  String get share => 'Share';

  @override
  String get print => 'Print';

  @override
  String get save => 'Save';

  @override
  String get cancel => 'Cancel';

  @override
  String get ok => 'OK';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get success => 'Success';

  @override
  String get conversations => 'Conversations';

  @override
  String get messages => 'Messages';

  @override
  String get selectConversation => 'Select Conversation';

  @override
  String get selectSmsConversation => 'Select SMS / RCS Conversation';

  @override
  String get searchConversations => 'Search conversations...';

  @override
  String get loadingConversations => 'Loading conversations...';

  @override
  String get errorLoadingConversations => 'Error Loading Conversations';

  @override
  String get selectConversationToAnalyze => 'Select conversation to analyze';

  @override
  String get analyzeWithSelectedMetrics => 'Analyze with the selected metrics';

  @override
  String get loadConversationAndSelectMetric =>
      'Load a conversation and select at least one metric';

  @override
  String get selectAtLeastOneMetric =>
      'At least one metric needs to be selected to run the report.';

  @override
  String get spinningMetricWheel => 'Spinning the metric wheel...';

  @override
  String get loadConversationToAnalyze => 'Load a conversation to analyze';

  @override
  String get noConversationsFound => 'No conversations found';

  @override
  String get permissionsRequired => 'Permissions Required';

  @override
  String get smsPermission => 'Text Messages';

  @override
  String get contactsPermission => 'Contacts';

  @override
  String get smsPermissionDescription =>
      'To analyze your SMS conversations for relationship patterns';

  @override
  String get contactsPermissionDescription =>
      'To display contact names instead of phone numbers';

  @override
  String get analyzingMessage =>
      'Stand by while your psychological analysis is generated by AI...';

  @override
  String get analyzingStatus => 'Analyzing conversation...';

  @override
  String get analyzingSubMessage =>
      'Please be patient, this process could take up to a minute depending on your connection speed and the quantity of selected metrics';

  @override
  String get unlockFullReport => 'Unlock and show this entire report';

  @override
  String get fullReportLocked => 'Full Report Locked';

  @override
  String get upgradeToUnlock =>
      'Upgrade your membership to unlock the full psychological analysis report with all metrics and detailed insights.';

  @override
  String get language => 'Language';

  @override
  String get english => 'English';

  @override
  String get spanish => 'Spanish';

  @override
  String get french => 'French';

  @override
  String get german => 'German';

  @override
  String get italian => 'Italian';

  @override
  String get portuguese => 'Portuguese';

  @override
  String get dutch => 'Dutch';

  @override
  String get russian => 'Russian';

  @override
  String get chinese => 'Chinese';

  @override
  String get japanese => 'Japanese';

  @override
  String get korean => 'Korean';

  @override
  String get arabic => 'Arabic';

  @override
  String get hindi => 'Hindi';

  @override
  String get turkish => 'Turkish';

  @override
  String get polish => 'Polish';

  @override
  String get ukrainian => 'Ukrainian';

  @override
  String get runAnotherAnalysis => 'Run another analysis?';

  @override
  String get becomeMemberTitle =>
      'Become a member to get the full analysis report';

  @override
  String get becomeMemberSubtitle =>
      'Choose the access level that matches the conversations and reports you need to analyze.';

  @override
  String get benefitAnalyzeSms => 'Analyze SMS text messages';

  @override
  String get benefitReportPreview => 'Run a report preview';

  @override
  String get benefitViewPartialReport => 'View about 25% of the report';

  @override
  String get benefitLockedDetails => 'Locked full report details';

  @override
  String get currentFreeAccess => 'Current free access';

  @override
  String get benefitUnlockCurrentReport => 'Unlock this current full report';

  @override
  String get benefitNoSubscription => 'No subscription';

  @override
  String get benefitSavePrintShareThis => 'Save, print, and share this report';

  @override
  String get benefitBestSingleAnalysis => 'Best if you only need one analysis';

  @override
  String get unlockThisReportShort => 'Unlock This Report';

  @override
  String get benefitFullSmsReport => 'Full SMS analysis report';

  @override
  String get benefitSavePrintSharePdf => 'Save, print, and share PDF reports';

  @override
  String get benefitTenReports => '10 reports per 24-hour period';

  @override
  String get benefitBestTextReview =>
      'Best for text-message relationship review';

  @override
  String get benefitDateRangeFilter => 'Filter analysis by date range';

  @override
  String get signUpStandard => 'Sign up for Standard Membership';

  @override
  String get benefitAddToStandard => 'Add to Standard membership';

  @override
  String get benefitAnalyzeDiscord => 'Analyze Discord server chats';

  @override
  String get benefitRequiresBot => 'Requires bot installation';

  @override
  String get benefitBestGamers => 'Best for gamers and Discord communities';

  @override
  String get addDiscordAnalysis => 'Add Discord Analysis';

  @override
  String get requiresStandardMembership => 'Requires Standard Membership';

  @override
  String get comingSoon => 'Coming Soon';

  @override
  String get comingSoonWithNextUpdate => 'Coming soon with next update:';

  @override
  String get proMembershipTier => 'Pro Membership Tier - \$19.99';

  @override
  String get proPlusMembershipTier => 'Pro-Plus Membership Tier - \$24.99';

  @override
  String get proGetsLabel => 'Pro gets:';

  @override
  String get proGetsDescription =>
      'Analyze chat threads from all the other popular texting and social media platforms such as:';

  @override
  String get proPlatformsList =>
      'LinkedIn, WhatsApp, Instagram, Facebook Messenger, Telegram, X (Twitter), Email, and Calendar';

  @override
  String get proPlusGetsLabel => 'Pro-Plus gets:';

  @override
  String get proPlusGetsDescription =>
      'Everything in Pro, plus the Discord addon at a reduced price.';

  @override
  String get purchaseSuccessfulUnlocked =>
      'Purchase successful! Report unlocked.';

  @override
  String get purchaseFailed => 'Purchase failed. Please try again.';

  @override
  String get membershipActivated => 'Membership activated!';

  @override
  String get dateRangeFilter => 'Date Range Filter';

  @override
  String get dateRangeOptional => '(optional)';

  @override
  String get startDate => 'Start Date';

  @override
  String get endDate => 'End Date';

  @override
  String get clear => 'Clear';

  @override
  String get dateRangeRequiresMembership =>
      'Requires Standard Membership or higher';

  @override
  String selectUpToCount(Object current, Object max) {
    return 'Select up to $max. Current: $current';
  }

  @override
  String get clearSelections => 'Clear Selections';

  @override
  String analyzeRandomMetrics(Object count) {
    return 'Analyze $count random metrics';
  }

  @override
  String get saveSelections => 'Save Selections';

  @override
  String get loadSelections => 'Load Selections';

  @override
  String get saveMetricListName => 'Save Metric List';

  @override
  String get enterListName => 'Enter a name for this metric list:';

  @override
  String get chooseSavedMetrics => 'Choose saved metrics list:';

  @override
  String get noSavedLists => 'No saved metric lists to load at this time.';

  @override
  String get metricListSaved => 'Metric list saved successfully.';

  @override
  String get metricListLoaded => 'Metric list loaded successfully.';

  @override
  String get filters => 'Filters';

  @override
  String get sortBy => 'Sort by:';

  @override
  String get recent => 'Recent';

  @override
  String get name => 'Name';

  @override
  String get count => 'Count';

  @override
  String get namedOnly => 'Named only';

  @override
  String get minMessages => 'Min messages:';

  @override
  String get minimumMessages => 'Minimum messages:';

  @override
  String get executiveSummary => 'Executive Summary';

  @override
  String get metricScores => 'Metric Scores';

  @override
  String get contextualEvidenceExamples => 'Contextual Evidence Examples';

  @override
  String get neutralSynthesis => 'Neutral Synthesis';

  @override
  String analysisOfSender(Object sender) {
    return 'Analysis of $sender (Sender)';
  }

  @override
  String analysisOfReceiver(Object receiver) {
    return 'Analysis of $receiver (Receiver)';
  }

  @override
  String get finalConclusion => 'Final Conclusion';

  @override
  String get metric_1_name => 'Contempt';

  @override
  String get metric_1_description =>
      'Looks for superiority, disgust, mockery, eye-rolling language, or insults that place one partner beneath the other.';

  @override
  String get metric_2_name => 'Defensiveness';

  @override
  String get metric_2_description =>
      'Tracks reflexive self-protection, counterattacks, excuses, and refusal to consider the other person\'s complaint.';

  @override
  String get metric_3_name => 'Stonewalling';

  @override
  String get metric_3_description =>
      'Identifies shutdown, withdrawal, ignoring, refusal to answer, or ending conversations to avoid engagement.';

  @override
  String get metric_4_name => 'Criticism';

  @override
  String get metric_4_description =>
      'Detects attacks on character or personality instead of specific behaviors, needs, or incidents.';

  @override
  String get metric_5_name => 'Gaslighting Indicators';

  @override
  String get metric_5_description =>
      'Flags attempts to make someone doubt memory, perception, sanity, or the legitimacy of their experience.';

  @override
  String get metric_6_name => 'Blame Shifting';

  @override
  String get metric_6_description =>
      'Measures whether responsibility is redirected onto the other partner instead of being acknowledged directly.';

  @override
  String get metric_7_name => 'Escalation Pattern';

  @override
  String get metric_7_description =>
      'Evaluates whether tone, accusations, intensity, or threats increase instead of moving toward resolution.';

  @override
  String get metric_8_name => 'Repair Attempt Recognition';

  @override
  String get metric_8_description =>
      'Checks whether apologies, humor, pauses, reassurance, or peace offerings are noticed and accepted.';

  @override
  String get metric_9_name => 'Accountability Language';

  @override
  String get metric_9_description =>
      'Looks for clear ownership of harm, specific responsibility, and willingness to change behavior.';

  @override
  String get metric_10_name => 'Boundary Respect';

  @override
  String get metric_10_description =>
      'Assesses whether stated limits around time, privacy, body, emotions, or contact are honored.';

  @override
  String get metric_11_name => 'Coercive Control Indicators';

  @override
  String get metric_11_description =>
      'Flags patterns of intimidation, restriction, monitoring, dependency, or control over choices and movement.';

  @override
  String get metric_12_name => 'Threat Language';

  @override
  String get metric_12_description =>
      'Identifies explicit or implied threats involving safety, abandonment, exposure, retaliation, or punishment.';

  @override
  String get metric_13_name => 'Dismissiveness';

  @override
  String get metric_13_description =>
      'Detects brushing off concerns, treating needs as unimportant, or refusing to take distress seriously.';

  @override
  String get metric_14_name => 'Invalidation';

  @override
  String get metric_14_description =>
      'Measures denial, ridicule, or correction of another person\'s emotions instead of acknowledging them.';

  @override
  String get metric_15_name => 'Empathy Expression';

  @override
  String get metric_15_description =>
      'Looks for perspective-taking, care, emotional recognition, and concern for the other person\'s experience.';

  @override
  String get metric_16_name => 'Reciprocity';

  @override
  String get metric_16_description =>
      'Assesses whether attention, effort, apology, compromise, and emotional support flow both ways.';

  @override
  String get metric_17_name => 'Emotional Regulation';

  @override
  String get metric_17_description =>
      'Evaluates ability to stay grounded, pause, self-soothe, and communicate without explosive reactivity.';

  @override
  String get metric_18_name => 'Sarcasm Used as Harm';

  @override
  String get metric_18_description =>
      'Flags sarcasm used to belittle, punish, humiliate, or disguise hostility as humor.';

  @override
  String get metric_19_name => 'Name Calling';

  @override
  String get metric_19_description =>
      'Identifies derogatory labels, insults, profanity directed at the person, or identity-based attacks.';

  @override
  String get metric_20_name => 'Silent Treatment Pattern';

  @override
  String get metric_20_description =>
      'Tracks silence used as punishment, control, avoidance, or withdrawal of connection.';

  @override
  String get metric_21_name => 'Jealousy Framing';

  @override
  String get metric_21_description =>
      'Evaluates suspicion, possessiveness, accusations, or jealousy presented as proof of care.';

  @override
  String get metric_22_name => 'Isolation Pressure';

  @override
  String get metric_22_description =>
      'Flags efforts to separate a partner from friends, family, support systems, or outside perspectives.';

  @override
  String get metric_23_name => 'Financial Control Indicators';

  @override
  String get metric_23_description =>
      'Looks for control of money, spending, employment, access to accounts, or financial independence.';

  @override
  String get metric_24_name => 'Privacy Invasion Indicators';

  @override
  String get metric_24_description =>
      'Detects snooping, password demands, device checks, location tracking, or privacy violations.';

  @override
  String get metric_25_name => 'Apology Specificity';

  @override
  String get metric_25_description =>
      'Measures whether apologies name the exact harm, impact, and future correction instead of staying vague.';

  @override
  String get metric_26_name => 'Forgiveness Pressure';

  @override
  String get metric_26_description =>
      'Flags demands to move on, forgive quickly, or stop discussing harm before repair occurs.';

  @override
  String get metric_27_name => 'Minimization';

  @override
  String get metric_27_description =>
      'Detects downplaying harm, calling serious concerns dramatic, or reducing impact to avoid responsibility.';

  @override
  String get metric_28_name => 'Projection';

  @override
  String get metric_28_description =>
      'Looks for accusations that mirror the speaker\'s own behavior, motives, or unresolved feelings.';

  @override
  String get metric_29_name => 'Interruption Pattern';

  @override
  String get metric_29_description =>
      'Tracks cutting off, talking over, refusing completion, or controlling conversational turns.';

  @override
  String get metric_30_name => 'Topic Deflection';

  @override
  String get metric_30_description =>
      'Identifies changing the subject, bringing up unrelated issues, or avoiding the central concern.';

  @override
  String get metric_31_name => 'Resolution Orientation';

  @override
  String get metric_31_description =>
      'Measures whether messages aim toward solutions, clarity, agreements, and next steps.';

  @override
  String get metric_32_name => 'Mutual Problem Solving';

  @override
  String get metric_32_description =>
      'Assesses collaborative language, shared responsibility, brainstorming, and willingness to find workable compromises.';

  @override
  String get metric_33_name => 'Emotional Flooding';

  @override
  String get metric_33_description =>
      'Detects overwhelm, panic, shutdown, spiraling, or inability to process during conflict.';

  @override
  String get metric_34_name => 'Fear Response Cues';

  @override
  String get metric_34_description =>
      'Looks for appeasing, careful wording, dread, safety concerns, or fear of the partner\'s reaction.';

  @override
  String get metric_35_name => 'Consistency of Claims';

  @override
  String get metric_35_description =>
      'Evaluates whether accounts remain internally consistent across messages and time.';

  @override
  String get metric_36_name => 'Evidence-Based Recollection';

  @override
  String get metric_36_description =>
      'Checks whether claims reference concrete events, quotes, timelines, or observable behavior.';

  @override
  String get metric_37_name => 'Demand Withdrawal Pattern';

  @override
  String get metric_37_description =>
      'Tracks one partner pursuing answers or change while the other avoids, shuts down, or exits.';

  @override
  String get metric_38_name => 'Power Imbalance Indicators';

  @override
  String get metric_38_description =>
      'Flags unequal decision power, fear of consequences, dependence, intimidation, or unilateral control.';

  @override
  String get metric_39_name => 'Respectful Disagreement';

  @override
  String get metric_39_description =>
      'Measures whether conflict preserves dignity, curiosity, and disagreement without degradation.';

  @override
  String get metric_40_name => 'Rupture and Repair Cycle';

  @override
  String get metric_40_description =>
      'Assesses whether conflict is followed by acknowledgment, reconnection, and actual repair.';

  @override
  String get metric_41_name => 'Affection Withdrawal';

  @override
  String get metric_41_description =>
      'Detects love, warmth, sex, attention, or reassurance being withheld as punishment or leverage.';

  @override
  String get metric_42_name => 'Public Humiliation References';

  @override
  String get metric_42_description =>
      'Flags threats, jokes, or actions that embarrass the partner in front of others.';

  @override
  String get metric_43_name => 'Substance-Linked Conflict Cues';

  @override
  String get metric_43_description =>
      'Looks for alcohol or drug use being tied to aggression, unreliability, conflict, or harm.';

  @override
  String get metric_44_name => 'Parenting Conflict Pressure';

  @override
  String get metric_44_description =>
      'Identifies children, custody, parenting roles, or parental guilt used in conflict or leverage.';

  @override
  String get metric_45_name => 'Sexual Boundary Respect';

  @override
  String get metric_45_description =>
      'Assesses respect for consent, pressure, refusal, comfort, timing, and sexual autonomy.';

  @override
  String get metric_46_name => 'Digital Harassment Indicators';

  @override
  String get metric_46_description =>
      'Tracks repeated unwanted messages, spam calls, online pressure, surveillance, or platform-based intimidation.';

  @override
  String get metric_47_name => 'Monitoring or Surveillance Language';

  @override
  String get metric_47_description =>
      'Flags checking whereabouts, demanding proof, tracking behavior, or constant verification.';

  @override
  String get metric_48_name => 'Future Orientation';

  @override
  String get metric_48_description =>
      'Measures whether partners discuss future improvement, commitments, plans, or constructive direction.';

  @override
  String get metric_49_name => 'Safety Planning Signals';

  @override
  String get metric_49_description =>
      'Looks for attempts to seek help, create distance, document harm, or plan for physical/emotional safety.';

  @override
  String get metric_50_name => 'Mutual De-escalation Attempts';

  @override
  String get metric_50_description =>
      'Tracks pauses, calming language, softer tone, timeouts, and attempts by both partners to reduce intensity.';

  @override
  String get metric_51_name => 'Secure Attachment Cues';

  @override
  String get metric_51_description =>
      'Identifies trust, direct reassurance, emotional availability, and comfort with closeness and independence.';

  @override
  String get metric_52_name => 'Anxious Attachment Activation';

  @override
  String get metric_52_description =>
      'Flags protest behavior, urgent reassurance needs, abandonment fear, and heightened sensitivity to distance.';

  @override
  String get metric_53_name => 'Avoidant Attachment Distancing';

  @override
  String get metric_53_description =>
      'Detects emotional minimization, independence defenses, withdrawal from vulnerability, or discomfort with needs.';

  @override
  String get metric_54_name => 'Disorganized Attachment Signals';

  @override
  String get metric_54_description =>
      'Looks for approach-avoid cycles, fear mixed with need, chaotic reactions, or confusing intimacy patterns.';

  @override
  String get metric_55_name => 'Emotional Bids and Responses';

  @override
  String get metric_55_description =>
      'Measures invitations for attention, comfort, or connection and whether they are accepted or missed.';

  @override
  String get metric_56_name => 'Turning Away from Connection';

  @override
  String get metric_56_description =>
      'Flags ignoring, dismissing, or failing to respond to bids for closeness or support.';

  @override
  String get metric_57_name => 'Turning Against Connection';

  @override
  String get metric_57_description =>
      'Detects hostile or punishing responses to attempts at affection, vulnerability, or repair.';

  @override
  String get metric_58_name => 'Positive Sentiment Override';

  @override
  String get metric_58_description =>
      'Looks for generosity, benefit-of-the-doubt, fondness, and interpreting conflict through care.';

  @override
  String get metric_59_name => 'Negative Sentiment Override';

  @override
  String get metric_59_description =>
      'Flags assuming bad intent, interpreting neutral messages negatively, and persistent hostile framing.';

  @override
  String get metric_60_name => 'Harsh Startup Pattern';

  @override
  String get metric_60_description =>
      'Identifies conversations that begin with accusation, attack, contempt, or blame rather than a request.';

  @override
  String get metric_61_name => 'Soft Startup Pattern';

  @override
  String get metric_61_description =>
      'Looks for gentle openings using feelings, needs, specific requests, and non-accusatory language.';

  @override
  String get metric_62_name => 'Physiological Self-Soothing';

  @override
  String get metric_62_description =>
      'Assesses attempts to pause, breathe, take space, or regulate the body before continuing conflict.';

  @override
  String get metric_63_name => 'Conflict Avoidance Pattern';

  @override
  String get metric_63_description =>
      'Tracks repeated avoidance of necessary topics, discomfort, disagreement, or emotional honesty.';

  @override
  String get metric_64_name => 'Volatile Conflict Style';

  @override
  String get metric_64_description =>
      'Detects high-intensity conflict with direct expression that may still include engagement and repair.';

  @override
  String get metric_65_name => 'Validating Conflict Style';

  @override
  String get metric_65_description =>
      'Measures whether partners acknowledge each other\'s perspective while disagreeing.';

  @override
  String get metric_66_name => 'Hostile Conflict Style';

  @override
  String get metric_66_description =>
      'Flags frequent criticism, contempt, defensiveness, attacks, and adversarial framing.';

  @override
  String get metric_67_name => 'Hostile-Detached Pattern';

  @override
  String get metric_67_description =>
      'Identifies cold hostility, emotional disengagement, contempt, and low repair motivation.';

  @override
  String get metric_68_name => 'Compromise Willingness';

  @override
  String get metric_68_description =>
      'Looks for flexibility, negotiation, middle-ground proposals, and sacrifices that respect both needs.';

  @override
  String get metric_69_name => 'Influence Acceptance';

  @override
  String get metric_69_description =>
      'Measures openness to being affected by the partner\'s feelings, needs, or perspective.';

  @override
  String get metric_70_name => 'Gridlocked Conflict Signals';

  @override
  String get metric_70_description =>
      'Flags repeated unsolved issues tied to values, dreams, identity, or chronic incompatibility.';

  @override
  String get metric_71_name => 'Solvable Problem Framing';

  @override
  String get metric_71_description =>
      'Detects practical, concrete problem definitions that can lead to specific agreements.';

  @override
  String get metric_72_name => 'Shared Meaning References';

  @override
  String get metric_72_description =>
      'Looks for values, rituals, goals, memories, or identity language that creates a shared relationship story.';

  @override
  String get metric_73_name => 'Love Map Awareness';

  @override
  String get metric_73_description =>
      'Assesses knowledge of the partner\'s inner world, stressors, preferences, fears, and daily life.';

  @override
  String get metric_74_name => 'Fondness and Admiration';

  @override
  String get metric_74_description =>
      'Identifies appreciation, respect, warmth, compliments, gratitude, and positive regard.';

  @override
  String get metric_75_name => 'Emotional Labor Imbalance';

  @override
  String get metric_75_description =>
      'Flags one partner carrying disproportionate planning, soothing, remembering, explaining, or relationship maintenance.';

  @override
  String get metric_76_name => 'Mental Load Dismissal';

  @override
  String get metric_76_description =>
      'Detects minimizing invisible planning work, household coordination, scheduling, or responsibility tracking.';

  @override
  String get metric_77_name => 'Weaponized Incompetence Cues';

  @override
  String get metric_77_description =>
      'Looks for claiming inability, confusion, or helplessness to avoid fair responsibility.';

  @override
  String get metric_78_name => 'Trauma Trigger Sensitivity';

  @override
  String get metric_78_description =>
      'Measures awareness of triggers, trauma responses, and careful handling of vulnerable topics.';

  @override
  String get metric_79_name => 'Hypervigilance Cues';

  @override
  String get metric_79_description =>
      'Flags scanning for danger, over-monitoring tone, fear of mistakes, or constant emotional alertness.';

  @override
  String get metric_80_name => 'Abandonment Fear Language';

  @override
  String get metric_80_description =>
      'Detects fear of being left, replaced, ignored, discarded, or emotionally deserted.';

  @override
  String get metric_81_name => 'Reassurance Seeking Pattern';

  @override
  String get metric_81_description =>
      'Tracks repeated requests for proof of love, commitment, safety, or continued interest.';

  @override
  String get metric_82_name => 'Pursuer-Distancer Cycle';

  @override
  String get metric_82_description =>
      'Identifies one partner escalating pursuit for closeness while the other increases distance.';

  @override
  String get metric_83_name => 'Resentment Accumulation';

  @override
  String get metric_83_description =>
      'Looks for stored grievances, repeated past references, bitterness, and unresolved emotional debt.';

  @override
  String get metric_84_name => 'Scorekeeping Behavior';

  @override
  String get metric_84_description =>
      'Flags transactional counting of faults, favors, sacrifices, or mistakes to gain leverage.';

  @override
  String get metric_85_name => 'Conditional Affection';

  @override
  String get metric_85_description =>
      'Detects love, approval, access, or warmth offered only when compliance is achieved.';

  @override
  String get metric_86_name => 'Love Bombing Indicators';

  @override
  String get metric_86_description =>
      'Flags intense affection, promises, pressure, or idealization used to accelerate attachment or control.';

  @override
  String get metric_87_name => 'Hoovering Attempts';

  @override
  String get metric_87_description =>
      'Identifies attempts to pull someone back through guilt, nostalgia, promises, crises, or sudden affection.';

  @override
  String get metric_88_name => 'DARVO Pattern';

  @override
  String get metric_88_description =>
      'Detects deny, attack, and reverse-victim-offender responses when confronted about harm.';

  @override
  String get metric_89_name => 'Victim Stance Pattern';

  @override
  String get metric_89_description =>
      'Flags recurring self-victimization that avoids accountability or redirects attention from harm caused.';

  @override
  String get metric_90_name => 'Moral Superiority Framing';

  @override
  String get metric_90_description =>
      'Looks for righteousness, purity claims, or ethical superiority used to dominate conflict.';

  @override
  String get metric_91_name => 'Character Assassination';

  @override
  String get metric_91_description =>
      'Detects broad attacks on identity, integrity, mental health, or worth rather than specific behavior.';

  @override
  String get metric_92_name => 'Triangulation Indicators';

  @override
  String get metric_92_description =>
      'Flags bringing third parties into conflict to pressure, compare, validate, or destabilize the partner.';

  @override
  String get metric_93_name => 'Social Comparison Pressure';

  @override
  String get metric_93_description =>
      'Looks for comparisons to exes, friends, other couples, or ideals used to shame or coerce.';

  @override
  String get metric_94_name => 'Autonomy Support';

  @override
  String get metric_94_description =>
      'Measures respect for independent choices, friendships, goals, boundaries, and personal agency.';

  @override
  String get metric_95_name => 'Consent and Choice Respect';

  @override
  String get metric_95_description =>
      'Assesses whether decisions are freely made without pressure, guilt, threats, or manipulation.';

  @override
  String get metric_96_name => 'Collaborative Planning';

  @override
  String get metric_96_description =>
      'Looks for shared scheduling, joint decisions, coordinated responsibilities, and practical follow-through.';

  @override
  String get metric_97_name => 'Repair Follow-Through';

  @override
  String get metric_97_description =>
      'Measures whether promised changes are later reflected in behavior, not just words.';

  @override
  String get metric_98_name => 'Changed Behavior Evidence';

  @override
  String get metric_98_description =>
      'Checks for observable, repeated actions showing learning, adjustment, or reduced harmful behavior.';

  @override
  String get metric_99_name => 'Emotional Safety Language';

  @override
  String get metric_99_description =>
      'Identifies language that invites honesty, lowers fear, protects dignity, and reassures safe expression.';

  @override
  String get metric_100_name => 'Relationship Ambivalence';

  @override
  String get metric_100_description =>
      'Detects uncertainty, mixed commitment, push-pull messaging, or unclear desire to continue.';

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

  @override
  String get iosCaptureInstructions =>
      '1. Open the Messages app and select the conversation\n2. Scroll to the oldest message you want to analyze\n3. Tap \"Start Capture\" below\n4. Take screenshots as you scroll through the conversation\n5. When done, tap \"Finish & Process\"';

  @override
  String get howToCaptureIosMessages => 'How to Capture iOS Messages';

  @override
  String get deepSeekApiKey => 'DeepSeek API Key';

  @override
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis =>
      'Enter your DeepSeek API key to enable AI analysis.';

  @override
  String get getYourApiKeyFrom =>
      'Get your API key from: https://platform.deepseek.com';

  @override
  String get apiKey => 'API Key';

  @override
  String get skPlaceholder => 'sk-...';

  @override
  String get yourApiKeyIsStoredSecurely =>
      'Your API key is stored securely on your device and never shared.';

  @override
  String get pleaseEnterApiKey => 'Please enter an API key';

  @override
  String get apiKeySavedSuccessfully => 'API key saved successfully!';

  @override
  String get pleaseBePatientLongerTextThreads =>
      'Please be patient, Longer text thread datasets take quite a while to load';

  @override
  String get almostThereBigOne =>
      'Almost there, Wow this must have been a big one';

  @override
  String get pleaseBePatientLargeDatasets =>
      'Please be patient, large datasets could result in loading times greater than a minute and a half';

  @override
  String continuingToLoadMassiveThread(String name) {
    return 'Continuing to load the massive thread with $name…';
  }

  @override
  String get noMessagesInDateRange => 'No Messages Found in Date Range';

  @override
  String get purchaseCustomMetricTileTitle => 'Purchase Custom Metric';

  @override
  String get purchaseCustomMetricTileDescription =>
      'For a one-time fee of \$4.99, enter a custom metric name and definition saved permanently alongside your other metrics for use in any future analysis. Purchase unlimited custom metrics.';

  @override
  String get purchaseCustomMetricConfirmTitle => 'Purchase Custom Metric';

  @override
  String get purchaseCustomMetricConfirmBody =>
      'You will be charged \$4.99 (one-time) to unlock one custom metric slot.\n\nYour custom metric name and definition are permanent and cannot ever be changed once saved, so please choose carefully.';

  @override
  String get purchaseCustomMetricConfirmButton => 'Purchase — \$4.99';

  @override
  String get purchaseCustomMetricEnterNameTitle => 'Custom Metric Name';

  @override
  String get purchaseCustomMetricEnterNamePrompt =>
      'Enter the name for your custom metric:';

  @override
  String get purchaseCustomMetricNameHint => 'Metric Name';

  @override
  String get purchaseCustomMetricConfirmNameTitle => 'Confirm Metric Name';

  @override
  String get purchaseCustomMetricConfirmNameYouEntered => 'You entered:\n\n';

  @override
  String get purchaseCustomMetricConfirmNameWarning =>
      '\n\n⚠️  This is FINAL and can NEVER be changed.';

  @override
  String get purchaseCustomMetricReenterName => 'Oops — Re-Enter Name';

  @override
  String get purchaseCustomMetricSaveName => 'OK — Save Metric Name';

  @override
  String purchaseCustomMetricDefineTitleWithName(String name) {
    return 'Define: $name';
  }

  @override
  String purchaseCustomMetricDefinePromptWithName(String name) {
    return 'Input the meaning of your Custom Metric: $name';
  }

  @override
  String get purchaseCustomMetricMeaningHint =>
      'Describe what this metric means, what behaviors it looks for, and how it applies to relationship dynamics...';

  @override
  String get purchaseCustomMetricReenter => 'Oops — Re-Enter';

  @override
  String get purchaseCustomMetricSaveMeaning => 'OK — Save Meaning';

  @override
  String get purchaseCustomMetricPreviewTitle => 'Preview Your Custom Metric';

  @override
  String get purchaseCustomMetricPreviewSubtitle =>
      'This is how your tile will look:';

  @override
  String get purchaseCustomMetricLastChanceWarning =>
      '⚠️  This is your LAST CHANCE to change your mind.\nOnce committed, the name and definition are permanent.';

  @override
  String get purchaseCustomMetricCancelEverything => 'Cancel Everything';

  @override
  String get purchaseCustomMetricCommit => 'Commit to Custom Metric';

  @override
  String purchaseCustomMetricSuccess(String name) {
    return '✓ \"$name\" added to your metrics! You can now select it for analysis.';
  }

  @override
  String get purchaseCustomMetricProcessingTitle => 'Processing Purchase...';

  @override
  String get purchaseCustomMetricProcessingBody =>
      'Waiting for store confirmation.\nPlease do not close the app.';

  @override
  String get next => 'Next';

  @override
  String get cancelNotReady => 'Cancel — I Wasn\'t Ready';

  @override
  String get packGoodLabel => 'The Good';

  @override
  String get packBadLabel => 'The Bad';

  @override
  String get packUglyLabel => 'The Ugly';

  @override
  String get metric_good_1_name => 'Active Listening Cues';

  @override
  String get metric_good_1_description =>
      'Detects paraphrasing, clarifying questions, and demonstrated understanding of the partner\'s perspective in text.';

  @override
  String get metric_good_2_name => 'Appreciation Expression';

  @override
  String get metric_good_2_description =>
      'Identifies specific gratitude, recognition of effort, and acknowledgment of partner\'s positive qualities or actions.';

  @override
  String get metric_good_3_name => 'Affirmation Language';

  @override
  String get metric_good_3_description =>
      'Looks for statements that validate the partner\'s feelings, experiences, worth, or right to have needs.';

  @override
  String get metric_good_4_name => 'Collaborative Tone';

  @override
  String get metric_good_4_description =>
      'Measures use of \"we,\" joint problem-solving language, and framing issues as shared challenges to address together.';

  @override
  String get metric_good_5_name => 'Curiosity About Partner';

  @override
  String get metric_good_5_description =>
      'Tracks asking questions about the partner\'s thoughts, feelings, day, preferences, or inner experience.';

  @override
  String get metric_good_6_name => 'Vulnerability Expression';

  @override
  String get metric_good_6_description =>
      'Identifies sharing fears, insecurities, needs, or emotional truths without defensiveness or blame.';

  @override
  String get metric_good_7_name => 'Humor as Connection';

  @override
  String get metric_good_7_description =>
      'Detects playful shared laughter that brings partners together rather than mocking or belittling.';

  @override
  String get metric_good_8_name => 'Reassurance Offering';

  @override
  String get metric_good_8_description =>
      'Looks for proactive statements that provide comfort, security, or confidence to the anxious partner.';

  @override
  String get metric_good_9_name => 'Compliment Frequency';

  @override
  String get metric_good_9_description =>
      'Measures genuine specific praise about appearance, character, abilities, or positive actions.';

  @override
  String get metric_good_10_name => 'Emotional Availability';

  @override
  String get metric_good_10_description =>
      'Assesses responsiveness to the partner\'s emotional needs, presence during distress, and willingness to engage.';

  @override
  String get metric_good_11_name => 'Gratitude Habit';

  @override
  String get metric_good_11_description =>
      'Identifies regular expressions of thanks for small things, effort, presence, or support.';

  @override
  String get metric_good_12_name => 'Supportive Language';

  @override
  String get metric_good_12_description =>
      'Tracks statements offering help, encouragement, belief in the partner\'s abilities, or standing beside them.';

  @override
  String get metric_good_13_name => 'Gentle Disagreement';

  @override
  String get metric_good_13_description =>
      'Measures ability to express different views while preserving respect, curiosity, and the relationship.';

  @override
  String get metric_good_14_name => 'Apology Sincerity';

  @override
  String get metric_good_14_description =>
      'Detects genuine remorse, understanding of impact, and commitment to change without excuses.';

  @override
  String get metric_good_15_name => 'Forgiveness Acceptance';

  @override
  String get metric_good_15_description =>
      'Looks for willingness to let go of past harm, move forward, and rebuild trust after repair.';

  @override
  String get metric_good_16_name => 'Quality Time Initiation';

  @override
  String get metric_good_16_description =>
      'Identifies offers to spend focused time together, plan activities, or create connection moments.';

  @override
  String get metric_good_17_name => 'Physical Affection Cues';

  @override
  String get metric_good_17_description =>
      'Tracks mentions of touch, hugs, kisses, or physical closeness as expressions of care and intimacy.';

  @override
  String get metric_good_18_name => 'Shared Joy Recognition';

  @override
  String get metric_good_18_description =>
      'Measures celebrating partner\'s wins, achievements, happiness, or good news with genuine enthusiasm.';

  @override
  String get metric_good_19_name => 'Conflict Resolution Effort';

  @override
  String get metric_good_19_description =>
      'Identifies attempts to find solutions, compromise, or restore peace after disagreement.';

  @override
  String get metric_good_20_name => 'Patience Demonstration';

  @override
  String get metric_good_20_description =>
      'Detects tolerance for partner\'s pace, struggles, learning curve, or emotional processing needs.';

  @override
  String get metric_good_21_name => 'Perspective-Taking Language';

  @override
  String get metric_good_21_description =>
      'Looks for statements showing understanding of the partner\'s viewpoint, context, or emotional reality.';

  @override
  String get metric_good_22_name => 'Reliability Signals';

  @override
  String get metric_good_22_description =>
      'Tracks following through on promises, showing up consistently, and being dependable.';

  @override
  String get metric_good_23_name => 'Respect for Differences';

  @override
  String get metric_good_23_description =>
      'Measures acceptance of partner\'s unique traits, preferences, opinions, and ways of being.';

  @override
  String get metric_good_24_name => 'Openness to Feedback';

  @override
  String get metric_good_24_description =>
      'Identifies receptiveness to partner\'s concerns, willingness to hear criticism, and desire to improve.';

  @override
  String get metric_good_25_name => 'Validation of Emotions';

  @override
  String get metric_good_25_description =>
      'Detects acknowledgment that the partner\'s feelings are real, understandable, and worthy of attention.';

  @override
  String get metric_good_26_name => 'Encouragement Language';

  @override
  String get metric_good_26_description =>
      'Looks for statements that inspire confidence, motivate action, or support the partner\'s goals.';

  @override
  String get metric_good_27_name => 'Intimate Disclosure';

  @override
  String get metric_good_27_description =>
      'Identifies sharing personal thoughts, dreams, fears, or secrets that deepen emotional connection.';

  @override
  String get metric_good_28_name => 'Attunement Signals';

  @override
  String get metric_good_28_description =>
      'Measures noticing the partner\'s mood, needs, or distress without being told explicitly.';

  @override
  String get metric_good_29_name => 'Positive Reframing';

  @override
  String get metric_good_29_description =>
      'Detects finding silver linings, growth opportunities, or constructive angles in difficult situations.';

  @override
  String get metric_good_30_name => 'Commitment Language';

  @override
  String get metric_good_30_description =>
      'Tracks expressions of dedication, long-term thinking, and investment in the relationship\'s future.';

  @override
  String get metric_good_31_name => 'Flexibility Demonstration';

  @override
  String get metric_good_31_description =>
      'Identifies willingness to adapt plans, adjust expectations, or meet the partner halfway.';

  @override
  String get metric_good_32_name => 'Protective Language';

  @override
  String get metric_good_32_description =>
      'Looks for statements showing the partner\'s safety, wellbeing, and interests matter deeply.';

  @override
  String get metric_good_33_name => 'Celebration of Milestones';

  @override
  String get metric_good_33_description =>
      'Measures acknowledging anniversaries, achievements, or meaningful moments together.';

  @override
  String get metric_good_34_name => 'Constructive Feedback';

  @override
  String get metric_good_34_description =>
      'Detects offering suggestions for improvement that are kind, specific, and growth-focused.';

  @override
  String get metric_good_35_name => 'Presence During Hardship';

  @override
  String get metric_good_35_description =>
      'Identifies staying engaged when the partner is struggling, grieving, or facing challenges.';

  @override
  String get metric_good_36_name => 'Admiration Expression';

  @override
  String get metric_good_36_description =>
      'Tracks genuine respect for the partner\'s character, strength, intelligence, or resilience.';

  @override
  String get metric_good_37_name => 'Playfulness Indicators';

  @override
  String get metric_good_37_description =>
      'Looks for lighthearted teasing, inside jokes, or fun interactions that strengthen bonding.';

  @override
  String get metric_good_38_name => 'Empathic Mirroring';

  @override
  String get metric_good_38_description =>
      'Measures reflecting back the partner\'s emotions to show understanding and validation.';

  @override
  String get metric_good_39_name => 'Acceptance Language';

  @override
  String get metric_good_39_description =>
      'Detects embracing the partner as they are, including flaws, without demanding change.';

  @override
  String get metric_good_40_name => 'Supportive Presence';

  @override
  String get metric_good_40_description =>
      'Identifies being there without fixing, offering comfort through listening and companionship.';

  @override
  String get metric_good_41_name => 'Genuine Interest';

  @override
  String get metric_good_41_description =>
      'Tracks asking follow-up questions and remembering details about the partner\'s life and concerns.';

  @override
  String get metric_good_42_name => 'Reciprocal Effort';

  @override
  String get metric_good_42_description =>
      'Measures both partners contributing equally to emotional work, planning, and relationship maintenance.';

  @override
  String get metric_good_43_name => 'Forgiveness Language';

  @override
  String get metric_good_43_description =>
      'Looks for releasing grudges, offering second chances, and choosing to move past hurt.';

  @override
  String get metric_good_44_name => 'Mutual Respect Signals';

  @override
  String get metric_good_44_description =>
      'Detects treating the partner as an equal, honoring their opinions, and valuing their input.';

  @override
  String get metric_good_45_name => 'Emotional Honesty';

  @override
  String get metric_good_45_description =>
      'Identifies truthful expression of feelings without manipulation, exaggeration, or strategic withholding.';

  @override
  String get metric_good_46_name => 'Supportive Listening';

  @override
  String get metric_good_46_description =>
      'Measures allowing the partner to fully express without interrupting, judging, or immediately problem-solving.';

  @override
  String get metric_good_47_name => 'Affectionate Nicknames';

  @override
  String get metric_good_47_description =>
      'Tracks use of loving terms of endearment that convey warmth and intimate connection.';

  @override
  String get metric_good_48_name => 'Shared Laughter';

  @override
  String get metric_good_48_description =>
      'Identifies moments of mutual humor and joy that create positive bonding experiences.';

  @override
  String get metric_good_49_name => 'Thoughtful Gestures';

  @override
  String get metric_good_49_description =>
      'Looks for small acts of kindness, remembering preferences, or doing things to make partner happy.';

  @override
  String get metric_good_50_name => 'Confidence in Partner';

  @override
  String get metric_good_50_description =>
      'Detects belief in the partner\'s abilities, potential, and capacity to handle challenges.';

  @override
  String get metric_good_51_name => 'Healthy Interdependence';

  @override
  String get metric_good_51_description =>
      'Measures balance between togetherness and independence, supporting each other\'s autonomy.';

  @override
  String get metric_good_52_name => 'Conflict De-escalation';

  @override
  String get metric_good_52_description =>
      'Identifies soft language, breaks, or solution-offering to calm heated discussions.';

  @override
  String get metric_good_53_name => 'Genuine Apology';

  @override
  String get metric_good_53_description =>
      'Tracks full acknowledgment of wrongdoing without minimizing, defending, or shifting blame.';

  @override
  String get metric_good_54_name => 'Emotional Support Offers';

  @override
  String get metric_good_54_description =>
      'Looks for proactive check-ins, asking how the partner is doing, and offering help.';

  @override
  String get metric_good_55_name => 'Respectful Boundaries';

  @override
  String get metric_good_55_description =>
      'Measures honoring the partner\'s stated limits while maintaining own healthy boundaries.';

  @override
  String get metric_good_56_name => 'Positive Anticipation';

  @override
  String get metric_good_56_description =>
      'Detects excitement about the future together, planning ahead, and looking forward to shared experiences.';

  @override
  String get metric_good_57_name => 'Attentiveness Signals';

  @override
  String get metric_good_57_description =>
      'Identifies remembering important dates, preferences, and details that show the partner matters.';

  @override
  String get metric_good_58_name => 'Encouraging Growth';

  @override
  String get metric_good_58_description =>
      'Tracks supporting the partner\'s personal development, learning, and pursuit of goals.';

  @override
  String get metric_good_59_name => 'Tender Language';

  @override
  String get metric_good_59_description =>
      'Looks for soft, caring word choices that convey gentleness and emotional warmth.';

  @override
  String get metric_good_60_name => 'Mutual Accountability';

  @override
  String get metric_good_60_description =>
      'Measures both partners taking responsibility for their actions and their impact.';

  @override
  String get metric_good_61_name => 'Celebration of Partner';

  @override
  String get metric_good_61_description =>
      'Detects publicly or privately expressing pride, joy, or admiration for the partner.';

  @override
  String get metric_good_62_name => 'Consistent Affection';

  @override
  String get metric_good_62_description =>
      'Identifies regular expressions of love that do not fluctuate based on performance or compliance.';

  @override
  String get metric_good_63_name => 'Emotional Attunement';

  @override
  String get metric_good_63_description =>
      'Tracks sensing and responding to subtle shifts in the partner\'s emotional state.';

  @override
  String get metric_good_64_name => 'Collaborative Decision-Making';

  @override
  String get metric_good_64_description =>
      'Measures discussing options together and making choices that consider both partners\' needs.';

  @override
  String get metric_good_65_name => 'Reassurance Without Demand';

  @override
  String get metric_good_65_description =>
      'Looks for offering comfort and security without requiring the partner to earn it.';

  @override
  String get metric_good_66_name => 'Authentic Connection';

  @override
  String get metric_good_66_description =>
      'Detects genuine presence, real sharing, and dropping pretense in interactions.';

  @override
  String get metric_good_67_name => 'Mutual Encouragement';

  @override
  String get metric_good_67_description =>
      'Identifies both partners cheering each other on and celebrating efforts not just outcomes.';

  @override
  String get metric_good_68_name => 'Respectful Questioning';

  @override
  String get metric_good_68_description =>
      'Tracks asking about the partner\'s perspective with genuine curiosity rather than interrogation.';

  @override
  String get metric_good_69_name => 'Loving Consistency';

  @override
  String get metric_good_69_description =>
      'Measures showing up the same way in good times and hard times, reliable in affection.';

  @override
  String get metric_good_70_name => 'Emotional Reciprocity';

  @override
  String get metric_good_70_description =>
      'Looks for both partners sharing feelings, needs, and vulnerabilities in balanced ways.';

  @override
  String get metric_good_71_name => 'Joyful Presence';

  @override
  String get metric_good_71_description =>
      'Detects genuine happiness in the partner\'s company and enthusiasm for time together.';

  @override
  String get metric_good_72_name => 'Constructive Dialogue';

  @override
  String get metric_good_72_description =>
      'Identifies conversations that move toward understanding rather than winning or proving right.';

  @override
  String get metric_good_73_name => 'Protective Advocacy';

  @override
  String get metric_good_73_description =>
      'Tracks standing up for the partner, defending them, and prioritizing their wellbeing.';

  @override
  String get metric_good_74_name => 'Mindful Communication';

  @override
  String get metric_good_74_description =>
      'Measures thoughtful word choice, considering impact before speaking, and intentional messaging.';

  @override
  String get metric_good_75_name => 'Relationship Investment';

  @override
  String get metric_good_75_description =>
      'Looks for time, energy, and resources devoted to nurturing the partnership.';

  @override
  String get metric_good_76_name => 'Secure Base Language';

  @override
  String get metric_good_76_description =>
      'Detects offering stability, safety, and a foundation from which the partner can explore.';

  @override
  String get metric_good_77_name => 'Mutual Admiration';

  @override
  String get metric_good_77_description =>
      'Identifies both partners expressing respect and appreciation for each other\'s qualities.';

  @override
  String get metric_good_78_name => 'Tender Moments';

  @override
  String get metric_good_78_description =>
      'Tracks creating or recognizing intimate quiet moments of connection and closeness.';

  @override
  String get metric_good_79_name => 'Genuine Curiosity';

  @override
  String get metric_good_79_description =>
      'Looks for authentic interest in understanding the partner\'s thoughts, feelings, and experiences.';

  @override
  String get metric_good_80_name => 'Loving Acceptance';

  @override
  String get metric_good_80_description =>
      'Detects embracing the partner\'s whole self, including imperfections and past.';

  @override
  String get metric_good_81_name => 'Mutual Growth Support';

  @override
  String get metric_good_81_description =>
      'Identifies both partners encouraging each other\'s development and celebrating progress.';

  @override
  String get metric_good_82_name => 'Warm Tone Indicators';

  @override
  String get metric_good_82_description =>
      'Tracks use of affectionate language, kind phrasing, and gentle communication style.';

  @override
  String get metric_good_83_name => 'Responsive Engagement';

  @override
  String get metric_good_83_description =>
      'Measures quick, engaged responses to the partner\'s messages and emotional bids.';

  @override
  String get metric_good_84_name => 'Shared Values Alignment';

  @override
  String get metric_good_84_description =>
      'Looks for references to common beliefs, goals, or life philosophies that unite the couple.';

  @override
  String get metric_good_85_name => 'Unconditional Support';

  @override
  String get metric_good_85_description =>
      'Detects standing by the partner through difficulties without making support conditional.';

  @override
  String get metric_good_86_name => 'Intimate Vulnerability';

  @override
  String get metric_good_86_description =>
      'Identifies sharing deep fears, dreams, or insecurities that deepen emotional bonds.';

  @override
  String get metric_good_87_name => 'Mutual Respect Language';

  @override
  String get metric_good_87_description =>
      'Tracks honoring each other\'s perspectives, choices, and autonomy in communication.';

  @override
  String get metric_good_88_name => 'Positive Framing';

  @override
  String get metric_good_88_description =>
      'Measures seeing the best in situations and the partner, focusing on strengths.';

  @override
  String get metric_good_89_name => 'Collaborative Problem Solving';

  @override
  String get metric_good_89_description =>
      'Looks for working together toward solutions that benefit both partners equally.';

  @override
  String get metric_good_90_name => 'Emotional Validation';

  @override
  String get metric_good_90_description =>
      'Detects confirming that the partner\'s feelings make sense and are acceptable.';

  @override
  String get metric_good_91_name => 'Consistent Kindness';

  @override
  String get metric_good_91_description =>
      'Identifies regular small acts of care that show the partner is thought of and valued.';

  @override
  String get metric_good_92_name => 'Mutual Celebration';

  @override
  String get metric_good_92_description =>
      'Tracks both partners genuinely happy about each other\'s successes and joys.';

  @override
  String get metric_good_93_name => 'Secure Attachment Language';

  @override
  String get metric_good_93_description =>
      'Measures expressing trust, comfort with intimacy, and confidence in the relationship.';

  @override
  String get metric_good_94_name => 'Thoughtful Consideration';

  @override
  String get metric_good_94_description =>
      'Looks for making decisions with the partner\'s needs and feelings in mind.';

  @override
  String get metric_good_95_name => 'Loving Presence';

  @override
  String get metric_good_95_description =>
      'Detects being fully present and engaged, showing the partner they matter most.';

  @override
  String get metric_good_96_name => 'Genuine Care Language';

  @override
  String get metric_good_96_description =>
      'Tracks authentic expressions of concern, care, and investment in the partner\'s wellbeing.';

  @override
  String get metric_good_97_name => 'Relationship Commitment';

  @override
  String get metric_good_97_description =>
      'Measures expressing dedication to the partnership and willingness to work through challenges.';

  @override
  String get metric_good_98_name => 'Authentic Love Expression';

  @override
  String get metric_good_98_description =>
      'Looks for genuine consistent expressions of love that feel real and unconditional.';

  @override
  String get metric_good_99_name => 'Mutual Goal Setting';

  @override
  String get metric_good_99_description =>
      'Identifies partners collaboratively defining shared dreams, priorities, and direction for their future together.';

  @override
  String get metric_good_100_name => 'Repair Attempt Recognition';

  @override
  String get metric_good_100_description =>
      'Detects noticing and positively responding to the partner\'s bids to de-escalate conflict and restore connection.';

  @override
  String get metric_bad_1_name => 'Passive Aggression';

  @override
  String get metric_bad_1_description =>
      'Detects indirect hostility through procrastination, forgetfulness, sarcasm, or subtle sabotage instead of direct expression.';

  @override
  String get metric_bad_2_name => 'Guilt Weaponization';

  @override
  String get metric_bad_2_description =>
      'Identifies using guilt, shame, or obligation language to manipulate decisions or prevent boundary-setting.';

  @override
  String get metric_bad_3_name => 'Emotional Blackmail';

  @override
  String get metric_bad_3_description =>
      'Flags threats of self-harm, abandonment, or withdrawal of love to control behavior or prevent discussion.';

  @override
  String get metric_bad_4_name => 'Chronic Complaining';

  @override
  String get metric_bad_4_description =>
      'Tracks persistent negativity, rumination, or complaint without seeking solutions or collaborative change.';

  @override
  String get metric_bad_5_name => 'Comparison Shaming';

  @override
  String get metric_bad_5_description =>
      'Identifies unfavorable comparisons to exes, friends, or family to shame or coerce behavior change.';

  @override
  String get metric_bad_6_name => 'Conditional Listening';

  @override
  String get metric_bad_6_description =>
      'Detects listening only when it benefits the listener or serves their agenda rather than genuine understanding.';

  @override
  String get metric_bad_7_name => 'Selective Memory';

  @override
  String get metric_bad_7_description =>
      'Tracks convenient forgetting of promises, agreements, or past harmful behavior to avoid accountability.';

  @override
  String get metric_bad_8_name => 'Attention Seeking Through Crisis';

  @override
  String get metric_bad_8_description =>
      'Identifies dramatic escalation, crisis creation, or exaggeration to gain focus or sympathy.';

  @override
  String get metric_bad_9_name => 'Boundary Testing';

  @override
  String get metric_bad_9_description =>
      'Detects repeated probing or pushing of stated limits to determine if they will be enforced.';

  @override
  String get metric_bad_10_name => 'Withholding Information';

  @override
  String get metric_bad_10_description =>
      'Identifies deliberate omission of relevant facts, context, or transparency to maintain control.';

  @override
  String get metric_bad_11_name => 'Disproportionate Anger';

  @override
  String get metric_bad_11_description =>
      'Tracks anger responses that are significantly larger than the triggering incident warrants.';

  @override
  String get metric_bad_12_name => 'Reassurance Addiction';

  @override
  String get metric_bad_12_description =>
      'Flags constant need for validation, repeated questions about commitment, or endless proof of love.';

  @override
  String get metric_bad_13_name => 'Conversation Avoidance';

  @override
  String get metric_bad_13_description =>
      'Detects refusal to engage with concerns, avoidance phrases, or shutting down important discussions.';

  @override
  String get metric_bad_14_name => 'Contradiction Pattern';

  @override
  String get metric_bad_14_description =>
      'Identifies contradictory statements, promises, or positions that create confusion or destabilization.';

  @override
  String get metric_bad_15_name => 'Dismissal Through Labeling';

  @override
  String get metric_bad_15_description =>
      'Flags labeling concerns as \"crazy,\" \"dramatic,\" \"paranoid,\" or \"overreacting\" to invalidate them.';

  @override
  String get metric_bad_16_name => 'Selective Empathy';

  @override
  String get metric_bad_16_description =>
      'Detects empathy offered only when convenient or when it serves the speaker\'s interests.';

  @override
  String get metric_bad_17_name => 'Transactional Framing';

  @override
  String get metric_bad_17_description =>
      'Identifies \"you owe me,\" \"after all I\'ve done,\" or viewing relationship acts as creating debt.';

  @override
  String get metric_bad_18_name => 'Grievance Recycling';

  @override
  String get metric_bad_18_description =>
      'Tracks bringing up old grievances repeatedly or using past harm as ammunition in current conflicts.';

  @override
  String get metric_bad_19_name => 'Demand Language';

  @override
  String get metric_bad_19_description =>
      'Flags imperatives, commands, or ultimatums rather than requests or collaborative problem-solving.';

  @override
  String get metric_bad_20_name => 'Emotional Unavailability';

  @override
  String get metric_bad_20_description =>
      'Detects consistent refusal to engage emotionally, share feelings, or provide comfort.';

  @override
  String get metric_bad_21_name => 'Hostile Interpretation';

  @override
  String get metric_bad_21_description =>
      'Identifies taking neutral statements as attacks or interpreting ambiguous messages as hostile.';

  @override
  String get metric_bad_22_name => 'Entitlement Framing';

  @override
  String get metric_bad_22_description =>
      'Flags language suggesting the speaker deserves special treatment, exceptions, or priority.';

  @override
  String get metric_bad_23_name => 'Criticism Disguised as Help';

  @override
  String get metric_bad_23_description =>
      'Detects criticism wrapped in \"I\'m just trying to help\" or \"for your own good\" language.';

  @override
  String get metric_bad_24_name => 'Neglect Patterns';

  @override
  String get metric_bad_24_description =>
      'Identifies consistent failure to meet emotional, physical, or relational needs.';

  @override
  String get metric_bad_25_name => 'Conflict Rumination';

  @override
  String get metric_bad_25_description =>
      'Tracks obsessive rehashing of conflicts without moving toward resolution or closure.';

  @override
  String get metric_bad_26_name => 'Sensitivity Dismissal';

  @override
  String get metric_bad_26_description =>
      'Flags statements like \"you\'re too sensitive\" or \"you\'re overreacting\" to dismiss feelings.';

  @override
  String get metric_bad_27_name => 'Competitive Framing';

  @override
  String get metric_bad_27_description =>
      'Detects framing relationship as a competition where one partner must win or dominate.';

  @override
  String get metric_bad_28_name => 'Double Standards';

  @override
  String get metric_bad_28_description =>
      'Identifies applying different rules to self versus partner or changing expectations arbitrarily.';

  @override
  String get metric_bad_29_name => 'Affection as Punishment';

  @override
  String get metric_bad_29_description =>
      'Flags removing affection, attention, or communication as retaliation for perceived wrongs.';

  @override
  String get metric_bad_30_name => 'Blame Rotation';

  @override
  String get metric_bad_30_description =>
      'Tracks rotating blame between partner, circumstances, and external factors to avoid accountability.';

  @override
  String get metric_bad_31_name => 'Rhetorical Mockery';

  @override
  String get metric_bad_31_description =>
      'Detects rhetorical or sarcastic questions used to mock rather than understand.';

  @override
  String get metric_bad_32_name => 'Sacrifice Reminders';

  @override
  String get metric_bad_32_description =>
      'Identifies reminding partner of sacrifices, favors, or support to create debt and compliance.';

  @override
  String get metric_bad_33_name => 'Deliberate Escalation';

  @override
  String get metric_bad_33_description =>
      'Flags deliberately escalating intensity to overwhelm partner\'s ability to respond rationally.';

  @override
  String get metric_bad_34_name => 'Strategic Vulnerability';

  @override
  String get metric_bad_34_description =>
      'Detects sharing emotions only when it serves manipulation or control purposes.';

  @override
  String get metric_bad_35_name => 'Deflection Through Counterattack';

  @override
  String get metric_bad_35_description =>
      'Identifies turning focus away from partner\'s concerns by raising unrelated issues or countercharges.';

  @override
  String get metric_bad_36_name => 'Superiority Language';

  @override
  String get metric_bad_36_description =>
      'Flags superiority language, condescension, or framing partner as beneath them.';

  @override
  String get metric_bad_37_name => 'Conflict Exit Pattern';

  @override
  String get metric_bad_37_description =>
      'Detects pattern of leaving conversations, refusing to engage, or creating distance during conflict.';

  @override
  String get metric_bad_38_name => 'Negative Bias';

  @override
  String get metric_bad_38_description =>
      'Tracks consistently interpreting neutral or positive actions as negative or suspicious.';

  @override
  String get metric_bad_39_name => 'Agency Denial';

  @override
  String get metric_bad_39_description =>
      'Identifies \"I have to,\" \"you make me,\" or language removing personal agency from the speaker.';

  @override
  String get metric_bad_40_name => 'Silence as Control';

  @override
  String get metric_bad_40_description =>
      'Flags using silence or non-response as a form of punishment or control.';

  @override
  String get metric_bad_41_name => 'Privacy Hypocrisy';

  @override
  String get metric_bad_41_description =>
      'Detects refusing to share information while demanding transparency from the partner.';

  @override
  String get metric_bad_42_name => 'Unsolicited Harsh Feedback';

  @override
  String get metric_bad_42_description =>
      'Identifies harsh feedback presented as \"constructive\" or \"helpful\" without consent.';

  @override
  String get metric_bad_43_name => 'Conditional Care';

  @override
  String get metric_bad_43_description =>
      'Flags support offered only when partner complies with speaker\'s expectations.';

  @override
  String get metric_bad_44_name => 'Impact Denial';

  @override
  String get metric_bad_44_description =>
      'Detects \"I didn\'t mean it that way\" or \"you\'re reading too much into it\" after causing harm.';

  @override
  String get metric_bad_45_name => 'Debt Mentality';

  @override
  String get metric_bad_45_description =>
      'Tracks bringing up past help or support to create debt and control current behavior.';

  @override
  String get metric_bad_46_name => 'Responsibility Evasion';

  @override
  String get metric_bad_46_description =>
      'Flags consistent pattern of not taking responsibility for the impact of actions.';

  @override
  String get metric_bad_47_name => 'Needs Dismissal';

  @override
  String get metric_bad_47_description =>
      'Identifies treating partner\'s needs as inconvenient, unreasonable, or unimportant.';

  @override
  String get metric_bad_48_name => 'Emotional Manipulation';

  @override
  String get metric_bad_48_description =>
      'Flags using emotions strategically to control outcomes or prevent accountability.';

  @override
  String get metric_bad_49_name => 'Intimacy Avoidance';

  @override
  String get metric_bad_49_description =>
      'Tracks consistent withdrawal from emotional or physical closeness without explanation.';

  @override
  String get metric_bad_50_name => 'Veiled Criticism';

  @override
  String get metric_bad_50_description =>
      'Identifies criticism disguised as jokes, observations, or casual comments.';

  @override
  String get metric_bad_51_name => 'Concern Minimization';

  @override
  String get metric_bad_51_description =>
      'Flags reducing partner\'s concerns to insignificance or exaggeration.';

  @override
  String get metric_bad_52_name => 'Guilt Enforcement';

  @override
  String get metric_bad_52_description =>
      'Identifies using guilt or shame to ensure partner complies with expectations.';

  @override
  String get metric_bad_53_name => 'Apology Resistance';

  @override
  String get metric_bad_53_description =>
      'Tracks resistance to apologizing, explaining away harm, or refusing to acknowledge impact.';

  @override
  String get metric_bad_54_name => 'Perspective Rejection';

  @override
  String get metric_bad_54_description =>
      'Flags refusing to consider or validate partner\'s viewpoint or experience.';

  @override
  String get metric_bad_55_name => 'Emotional Rationing';

  @override
  String get metric_bad_55_description =>
      'Detects deliberately limiting emotional expression or connection as a form of control.';

  @override
  String get metric_bad_56_name => 'Obligation Manipulation';

  @override
  String get metric_bad_56_description =>
      'Flags using past support or sacrifice to manipulate current decisions.';

  @override
  String get metric_bad_57_name => 'Resistance to Growth';

  @override
  String get metric_bad_57_description =>
      'Tracks resistance to modifying harmful behavior despite requests or demonstrated impact.';

  @override
  String get metric_bad_58_name => 'Harm Denial';

  @override
  String get metric_bad_58_description =>
      'Detects refusing to acknowledge or take seriously the impact of one\'s own behavior.';

  @override
  String get metric_bad_59_name => 'Loaded Questions';

  @override
  String get metric_bad_59_description =>
      'Flags critical intent disguised as innocent questions or expressions of curiosity.';

  @override
  String get metric_bad_60_name => 'Contemptuous Tone';

  @override
  String get metric_bad_60_description =>
      'Identifies dismissive attitude or disdain conveyed through text patterns and word choice.';

  @override
  String get metric_bad_61_name => 'Guilt Trip Cycling';

  @override
  String get metric_bad_61_description =>
      'Detects repeatedly using guilt about past support or sacrifice to control current behavior.';

  @override
  String get metric_bad_62_name => 'Emotional Guardedness';

  @override
  String get metric_bad_62_description =>
      'Tracks refusing to share emotions, fears, or needs with partner as protective withholding.';

  @override
  String get metric_bad_63_name => 'Boundary Negotiation';

  @override
  String get metric_bad_63_description =>
      'Flags treating stated limits as suggestions or negotiable rather than firm commitments.';

  @override
  String get metric_bad_64_name => 'Emotional Absence';

  @override
  String get metric_bad_64_description =>
      'Detects consistent refusal to provide emotional support or engaged presence.';

  @override
  String get metric_bad_65_name => 'Favor Tracking';

  @override
  String get metric_bad_65_description =>
      'Flags keeping mental score of favors, support, or sacrifices for later leverage.';

  @override
  String get metric_bad_66_name => 'Honesty Avoidance';

  @override
  String get metric_bad_66_description =>
      'Detects pattern of withholding truth, omitting facts, or being deliberately vague.';

  @override
  String get metric_bad_67_name => 'Validity Denial';

  @override
  String get metric_bad_67_description =>
      'Identifies treating partner\'s feelings, needs, or concerns as invalid or illegitimate.';

  @override
  String get metric_bad_68_name => 'Advice Disguised Criticism';

  @override
  String get metric_bad_68_description =>
      'Flags criticism presented as concern, advice, or a helpful observation.';

  @override
  String get metric_bad_69_name => 'Superiority Indicators';

  @override
  String get metric_bad_69_description =>
      'Detects superiority, mockery, or disdain in language or communication style.';

  @override
  String get metric_bad_70_name => 'Repair Resistance';

  @override
  String get metric_bad_70_description =>
      'Tracks resistance to making amends, reconnecting, or rebuilding after conflict.';

  @override
  String get metric_bad_71_name => 'Effort Dismissal';

  @override
  String get metric_bad_71_description =>
      'Flags minimizing or ignoring partner\'s attempts to improve or address issues.';

  @override
  String get metric_bad_72_name => 'Emotional Distance Pattern';

  @override
  String get metric_bad_72_description =>
      'Detects long-term pattern of emotional distance or refusal to engage authentically.';

  @override
  String get metric_bad_73_name => 'Inferiority Framing';

  @override
  String get metric_bad_73_description =>
      'Identifies framing partner as inferior, flawed, or unworthy of full respect.';

  @override
  String get metric_bad_74_name => 'Feedback Resistance';

  @override
  String get metric_bad_74_description =>
      'Detects resistance to hearing criticism, refusing to listen, or shutting down discussion.';

  @override
  String get metric_bad_75_name => 'Worry Dismissal';

  @override
  String get metric_bad_75_description =>
      'Identifies treating partner\'s worries or fears as unfounded or irrational.';

  @override
  String get metric_bad_76_name => 'Fault Finding';

  @override
  String get metric_bad_76_description =>
      'Flags chronic pattern of finding fault, complaining about, or attacking partner\'s character.';

  @override
  String get metric_bad_77_name => 'Sacrifice Guilt Cycling';

  @override
  String get metric_bad_77_description =>
      'Identifies repeatedly bringing up past support to create guilt or control behavior.';

  @override
  String get metric_bad_78_name => 'Commitment Ambiguity';

  @override
  String get metric_bad_78_description =>
      'Tracks unclear or wavering commitment language, mixed signals, or reluctance to commit.';

  @override
  String get metric_bad_79_name => 'Request Dismissal';

  @override
  String get metric_bad_79_description =>
      'Flags ignoring, refusing, or delaying response to partner\'s reasonable requests.';

  @override
  String get metric_bad_80_name => 'Emotional Control Tactics';

  @override
  String get metric_bad_80_description =>
      'Detects strategic use of emotions to control outcomes or prevent accountability.';

  @override
  String get metric_bad_81_name => 'Exchange Mentality';

  @override
  String get metric_bad_81_description =>
      'Flags viewing relationship through lens of debt, obligation, or transactional exchange.';

  @override
  String get metric_bad_82_name => 'Personal Development Resistance';

  @override
  String get metric_bad_82_description =>
      'Detects resistance to personal development, learning, or changing harmful patterns.';

  @override
  String get metric_bad_83_name => 'Improvement Rejection';

  @override
  String get metric_bad_83_description =>
      'Identifies minimizing or rejecting partner\'s efforts to improve or address issues.';

  @override
  String get metric_bad_84_name => 'Chronic Criticism';

  @override
  String get metric_bad_84_description =>
      'Flags chronic pattern of criticism wrapped in concern, helpfulness, or care language.';

  @override
  String get metric_bad_85_name => 'Solution Avoidance';

  @override
  String get metric_bad_85_description =>
      'Detects consistent pattern of avoiding closure, moving forward, or finding workable solutions.';

  @override
  String get metric_bad_86_name => 'Blame Deflection Pattern';

  @override
  String get metric_bad_86_description =>
      'Flags habitual pattern of redirecting responsibility to external factors or the partner.';

  @override
  String get metric_bad_87_name => 'Dismissive Responses';

  @override
  String get metric_bad_87_description =>
      'Identifies pattern of dismissing partner\'s input, ideas, or suggestions without consideration.';

  @override
  String get metric_bad_88_name => 'Resentment Expression';

  @override
  String get metric_bad_88_description =>
      'Detects tone of resentment, bitterness, or long-held frustration in communication.';

  @override
  String get metric_bad_89_name => 'Ambivalent Messaging';

  @override
  String get metric_bad_89_description =>
      'Flags mixed messages about commitment, unclear desire to continue, or push-pull dynamics.';

  @override
  String get metric_bad_90_name => 'Expectation Shifting';

  @override
  String get metric_bad_90_description =>
      'Identifies changing expectations without communication, then blaming partner for not meeting them.';

  @override
  String get metric_bad_91_name => 'Deflection Habit';

  @override
  String get metric_bad_91_description =>
      'Detects habitual avoidance of direct answers or redirection of conversations away from accountability.';

  @override
  String get metric_bad_92_name => 'Manipulation Through Kindness';

  @override
  String get metric_bad_92_description =>
      'Flags exaggerated generosity used strategically to create obligation or lower defenses.';

  @override
  String get metric_bad_93_name => 'Chronic Lateness Pattern';

  @override
  String get metric_bad_93_description =>
      'Identifies consistent disregard for partner\'s time through lateness or broken scheduling commitments.';

  @override
  String get metric_bad_94_name => 'Progress Minimization';

  @override
  String get metric_bad_94_description =>
      'Tracks dismissing or failing to acknowledge the partner\'s genuine personal growth or improvements.';

  @override
  String get metric_bad_95_name => 'Emotional Weaponizing';

  @override
  String get metric_bad_95_description =>
      'Detects using partner\'s disclosed vulnerabilities or fears against them in conflict.';

  @override
  String get metric_bad_96_name => 'Gaslighting-Adjacent Tactics';

  @override
  String get metric_bad_96_description =>
      'Identifies subtle reality-distorting tactics that create self-doubt without full gaslighting.';

  @override
  String get metric_bad_97_name => 'Passive Stonewalling';

  @override
  String get metric_bad_97_description =>
      'Flags subtle disengagement, monosyllabic responses, or checked-out presence as avoidance.';

  @override
  String get metric_bad_98_name => 'Narrative Control';

  @override
  String get metric_bad_98_description =>
      'Detects insisting on being the sole authority on what happened, how it felt, or what was meant.';

  @override
  String get metric_bad_99_name => 'Responsibility Deflection';

  @override
  String get metric_bad_99_description =>
      'Tracks consistently redirecting accountability onto external factors, third parties, or the partner\'s behavior.';

  @override
  String get metric_bad_100_name => 'Emotional Unavailability';

  @override
  String get metric_bad_100_description =>
      'Flags chronic withdrawal from emotional intimacy, vulnerability, or meaningful connection when the partner needs closeness.';

  @override
  String get metric_ugly_1_name => 'Physical Violence Threats';

  @override
  String get metric_ugly_1_description =>
      'Detects explicit or veiled threats of hitting, harming, or physical assault against the partner.';

  @override
  String get metric_ugly_2_name => 'Weapon Possession References';

  @override
  String get metric_ugly_2_description =>
      'Flags mentions of guns, knives, or weapons in the context of anger, control, or capability to harm.';

  @override
  String get metric_ugly_3_name => 'Strangulation Indicators';

  @override
  String get metric_ugly_3_description =>
      'Identifies choking, throat-grabbing, suffocation, or asphyxiation language or references.';

  @override
  String get metric_ugly_4_name => 'Suicide Threat Weaponization';

  @override
  String get metric_ugly_4_description =>
      'Detects threats of self-harm used to control, manipulate, or punish the partner.';

  @override
  String get metric_ugly_5_name => 'Homicide Ideation Language';

  @override
  String get metric_ugly_5_description =>
      'Flags statements expressing intent, planning, or desire to kill the partner.';

  @override
  String get metric_ugly_6_name => 'Lethality Risk Patterns';

  @override
  String get metric_ugly_6_description =>
      'Identifies high-lethality warning signs: weapon access, obsession, escalation, and separation threats combined.';

  @override
  String get metric_ugly_7_name => 'Stalking Obsession Language';

  @override
  String get metric_ugly_7_description =>
      'Detects obsessive location monitoring, following, surprise visits, or persistent unwanted pursuit.';

  @override
  String get metric_ugly_8_name => 'Forced Isolation Enforcement';

  @override
  String get metric_ugly_8_description =>
      'Flags aggressive demands to cut off all family, friends, work, or outside contact.';

  @override
  String get metric_ugly_9_name => 'Economic Sabotage';

  @override
  String get metric_ugly_9_description =>
      'Identifies deliberate destruction of employment, credit, finances, or economic stability.';

  @override
  String get metric_ugly_10_name => 'Reproductive Coercion';

  @override
  String get metric_ugly_10_description =>
      'Detects forced pregnancy, abortion pressure, contraception tampering, or reproductive control.';

  @override
  String get metric_ugly_11_name => 'Sexual Coercion Pressure';

  @override
  String get metric_ugly_11_description =>
      'Flags forced sex, coerced sexual acts, pressure after refusal, or sexual punishment language.';

  @override
  String get metric_ugly_12_name => 'Non-Consensual Sexual Language';

  @override
  String get metric_ugly_12_description =>
      'Identifies explicit or implicit non-consensual sexual assault threats or descriptions.';

  @override
  String get metric_ugly_13_name => 'Child Harm Threats';

  @override
  String get metric_ugly_13_description =>
      'Detects threats to harm, neglect, or abuse children as leverage or punishment against the partner.';

  @override
  String get metric_ugly_14_name => 'Child Custody Weaponization';

  @override
  String get metric_ugly_14_description =>
      'Flags threats to take children, deny access, or use custody as a control mechanism.';

  @override
  String get metric_ugly_15_name => 'Pet Harm Threats';

  @override
  String get metric_ugly_15_description =>
      'Identifies threats to hurt, kill, or abuse pets as punishment or to demonstrate control.';

  @override
  String get metric_ugly_16_name => 'Sleep Deprivation Tactics';

  @override
  String get metric_ugly_16_description =>
      'Flags deliberate prevention of sleep, constant interruption, or exhaustion as a control method.';

  @override
  String get metric_ugly_17_name => 'Confinement Language';

  @override
  String get metric_ugly_17_description =>
      'Flags locking in, preventing departure, or confining the partner to a location.';

  @override
  String get metric_ugly_18_name => 'Predatory Grooming Language';

  @override
  String get metric_ugly_18_description =>
      'Flags systematic manipulation to lower defenses, build false trust, then exploit the partner.';

  @override
  String get metric_ugly_19_name => 'Dehumanization Language';

  @override
  String get metric_ugly_19_description =>
      'Detects describing partner as an animal, object, subhuman, or unworthy of basic rights.';

  @override
  String get metric_ugly_20_name => 'Narcissistic Rage Escalation';

  @override
  String get metric_ugly_20_description =>
      'Detects explosive anger triggered by perceived slights, criticism, or any loss of control.';

  @override
  String get metric_ugly_21_name => 'Obsessive Possession Claims';

  @override
  String get metric_ugly_21_description =>
      'Flags language claiming ownership, property rights, or total control over the partner\'s person.';

  @override
  String get metric_ugly_22_name => 'Pathological Lying Patterns';

  @override
  String get metric_ugly_22_description =>
      'Identifies consistent, elaborate, or unnecessary lies about serious matters without apparent reason.';

  @override
  String get metric_ugly_23_name => 'Revenge Fantasy Language';

  @override
  String get metric_ugly_23_description =>
      'Identifies detailed fantasies about harming, humiliating, or destroying the partner.';

  @override
  String get metric_ugly_24_name => 'Betrayal Obsession Fixation';

  @override
  String get metric_ugly_24_description =>
      'Detects obsessive rumination, accusation, and punishment focused on perceived infidelity.';

  @override
  String get metric_ugly_25_name => 'Abandonment Panic Aggression';

  @override
  String get metric_ugly_25_description =>
      'Flags violent or aggressive responses to perceived abandonment or any separation attempt.';

  @override
  String get metric_ugly_26_name => 'Separation Threat Escalation';

  @override
  String get metric_ugly_26_description =>
      'Identifies extreme threats or dangerous behaviors triggered by breakup or separation attempts.';

  @override
  String get metric_ugly_27_name => 'Post-Separation Harassment Threats';

  @override
  String get metric_ugly_27_description =>
      'Flags threats of stalking, harm, or forced contact after the relationship ends.';

  @override
  String get metric_ugly_28_name => 'Custody Kidnapping Threats';

  @override
  String get metric_ugly_28_description =>
      'Identifies threats to take children and flee or hide them permanently from the other parent.';

  @override
  String get metric_ugly_29_name => 'Parental Alienation Agenda';

  @override
  String get metric_ugly_29_description =>
      'Flags systematic attempts to turn children against the other parent through manipulation.';

  @override
  String get metric_ugly_30_name => 'Child Witness Indifference';

  @override
  String get metric_ugly_30_description =>
      'Identifies disregard for children witnessing abuse, conflict, or emotional harm.';

  @override
  String get metric_ugly_31_name => 'Human Trafficking Language';

  @override
  String get metric_ugly_31_description =>
      'Identifies language suggesting selling, trading, or sexually exploiting the partner.';

  @override
  String get metric_ugly_32_name => 'Slavery Language';

  @override
  String get metric_ugly_32_description =>
      'Identifies language treating partner as property, slave, or wholly owned person without rights.';

  @override
  String get metric_ugly_33_name => 'Debt Bondage Threats';

  @override
  String get metric_ugly_33_description =>
      'Detects threats to trap partner through manufactured debt or financial obligation.';

  @override
  String get metric_ugly_34_name => 'Forced Labor Demands';

  @override
  String get metric_ugly_34_description =>
      'Flags demands for unpaid labor, servitude, or work under threat of harm or punishment.';

  @override
  String get metric_ugly_35_name => 'Exploitation Normalization';

  @override
  String get metric_ugly_35_description =>
      'Identifies framing severe exploitation as normal, deserved, consensual, or even beneficial.';

  @override
  String get metric_ugly_36_name => 'Vulnerability Targeting';

  @override
  String get metric_ugly_36_description =>
      'Identifies deliberate targeting of isolated, economically dependent, or psychologically vulnerable individuals.';

  @override
  String get metric_ugly_37_name => 'Trauma Bonding Engineering';

  @override
  String get metric_ugly_37_description =>
      'Detects deliberate creation of fear-relief cycles designed to create deep emotional dependency.';

  @override
  String get metric_ugly_38_name => 'Intermittent Reinforcement Abuse';

  @override
  String get metric_ugly_38_description =>
      'Flags unpredictable cycles of reward and severe punishment used to create psychological addiction.';

  @override
  String get metric_ugly_39_name => 'Learned Helplessness Induction';

  @override
  String get metric_ugly_39_description =>
      'Identifies systematic removal of agency, resources, and perceived escape options.';

  @override
  String get metric_ugly_40_name => 'Identity Erasure Language';

  @override
  String get metric_ugly_40_description =>
      'Flags demands to abandon personality, interests, appearance, or core sense of identity.';

  @override
  String get metric_ugly_41_name => 'Autonomy Annihilation';

  @override
  String get metric_ugly_41_description =>
      'Detects systematic elimination of independent thought, decision-making, or personal agency.';

  @override
  String get metric_ugly_42_name => 'Thought Control Tactics';

  @override
  String get metric_ugly_42_description =>
      'Flags demands to think, believe, or feel only as the controlling partner dictates.';

  @override
  String get metric_ugly_43_name => 'Emotional Numbness Enforcement';

  @override
  String get metric_ugly_43_description =>
      'Identifies punishment for showing emotions or explicit demands to suppress all feelings.';

  @override
  String get metric_ugly_44_name => 'Complex Trauma Creation';

  @override
  String get metric_ugly_44_description =>
      'Flags systematic patterns creating complex PTSD-level trauma through chronic abuse.';

  @override
  String get metric_ugly_45_name => 'Betrayal Trauma Infliction';

  @override
  String get metric_ugly_45_description =>
      'Identifies deliberate betrayal designed to shatter foundational trust and psychological safety.';

  @override
  String get metric_ugly_46_name => 'Moral Injury Language';

  @override
  String get metric_ugly_46_description =>
      'Detects forcing partner to violate their own deeply held values or commit harmful acts.';

  @override
  String get metric_ugly_47_name => 'Existential Threat Language';

  @override
  String get metric_ugly_47_description =>
      'Flags threats to partner\'s existence, core identity, sanity, or will to live.';

  @override
  String get metric_ugly_48_name => 'Suicide Coercion Language';

  @override
  String get metric_ugly_48_description =>
      'Identifies pushing partner toward suicidal ideation through sustained abuse and manufactured hopelessness.';

  @override
  String get metric_ugly_49_name => 'Justification Mythology';

  @override
  String get metric_ugly_49_description =>
      'Identifies elaborate invented narratives presented to justify abuse as necessary, deserved, or righteous.';

  @override
  String get metric_ugly_50_name => 'Victim Narrative Inversion';

  @override
  String get metric_ugly_50_description =>
      'Detects complete reversal where the abuser claims to be the real victim of their own abuse.';

  @override
  String get metric_ugly_51_name => 'Abuse Normalization Preaching';

  @override
  String get metric_ugly_51_description =>
      'Flags teaching or insisting that abuse is normal, healthy, or beneficial for the partner.';

  @override
  String get metric_ugly_52_name => 'Predatory Ideology';

  @override
  String get metric_ugly_52_description =>
      'Identifies ideological justification for exploitation, dominance, or harm toward the partner.';

  @override
  String get metric_ugly_53_name => 'Cult Leader Messaging';

  @override
  String get metric_ugly_53_description =>
      'Detects messaging claiming special knowledge, divine right, or superior authority over the partner.';

  @override
  String get metric_ugly_54_name => 'Grooming Timeline Language';

  @override
  String get metric_ugly_54_description =>
      'Flags references to a long-term manipulation plan or descriptions of a grooming progression.';

  @override
  String get metric_ugly_55_name => 'Chronic Humiliation Campaign';

  @override
  String get metric_ugly_55_description =>
      'Identifies sustained pattern of public or private humiliation designed to destroy self-worth.';

  @override
  String get metric_ugly_56_name => 'Safety Exit Blocking';

  @override
  String get metric_ugly_56_description =>
      'Detects actively preventing the partner from accessing escape routes, support systems, or safety resources.';

  @override
  String get metric_ugly_57_name => 'Document Confiscation Threats';

  @override
  String get metric_ugly_57_description =>
      'Flags threats or actions to take, hide, or destroy identity documents to prevent escape.';

  @override
  String get metric_ugly_58_name => 'Violent Jealousy Patterns';

  @override
  String get metric_ugly_58_description =>
      'Identifies jealousy that has escalated to explicit threats, surveillance, or violent retaliation.';

  @override
  String get metric_ugly_59_name => 'Rage Explosion Patterns';

  @override
  String get metric_ugly_59_description =>
      'Detects descriptions or patterns of explosive violent outbursts disproportionate to any trigger.';

  @override
  String get metric_ugly_60_name => 'Coercive Control Escalation';

  @override
  String get metric_ugly_60_description =>
      'Tracks increasing severity and breadth of coercive control tactics over time.';

  @override
  String get metric_ugly_61_name => 'Fear-Based Compliance Language';

  @override
  String get metric_ugly_61_description =>
      'Identifies compliance driven entirely by fear of violence or severe punishment rather than choice.';

  @override
  String get metric_ugly_62_name => 'Punishment Ritual Language';

  @override
  String get metric_ugly_62_description =>
      'Detects references to systematic punishment practices used to enforce compliance and control.';

  @override
  String get metric_ugly_63_name => 'Degradation Ritual Indicators';

  @override
  String get metric_ugly_63_description =>
      'Flags systematic degradation or humiliation rituals designed to destroy dignity.';

  @override
  String get metric_ugly_64_name => 'Non-Consensual Exposure Threats';

  @override
  String get metric_ugly_64_description =>
      'Identifies threats to expose intimate images, private information, or secrets without consent.';

  @override
  String get metric_ugly_65_name => 'Image-Based Abuse Threats';

  @override
  String get metric_ugly_65_description =>
      'Detects threats to distribute intimate images as revenge, punishment, or blackmail.';

  @override
  String get metric_ugly_66_name => 'Financial Entrapment Tactics';

  @override
  String get metric_ugly_66_description =>
      'Flags deliberate creation of financial dependency making independent survival impossible.';

  @override
  String get metric_ugly_67_name => 'Housing Threat Language';

  @override
  String get metric_ugly_67_description =>
      'Detects threats to make partner homeless, remove housing access, or destroy shelter security.';

  @override
  String get metric_ugly_68_name => 'Immigration Status Threats';

  @override
  String get metric_ugly_68_description =>
      'Identifies threats to report immigration status or revoke visa sponsorship as control.';

  @override
  String get metric_ugly_69_name => 'Religious or Spiritual Abuse';

  @override
  String get metric_ugly_69_description =>
      'Detects using religious authority, doctrine, or spiritual threat to control, punish, or harm.';

  @override
  String get metric_ugly_70_name => 'Cultural Shame Weaponization';

  @override
  String get metric_ugly_70_description =>
      'Flags threatening to expose behaviors to cultural or family community as punishment.';

  @override
  String get metric_ugly_71_name => 'Family Harm Threats';

  @override
  String get metric_ugly_71_description =>
      'Identifies threats to harm partner\'s family members, children, or loved ones as leverage.';

  @override
  String get metric_ugly_72_name => 'Coordinated Harassment Campaign';

  @override
  String get metric_ugly_72_description =>
      'Detects organizing others to collectively harass, stalk, or intimidate the partner.';

  @override
  String get metric_ugly_73_name => 'False Police Report Threats';

  @override
  String get metric_ugly_73_description =>
      'Flags threatening to make false police reports or legal accusations against the partner.';

  @override
  String get metric_ugly_74_name => 'Legal System Weaponization';

  @override
  String get metric_ugly_74_description =>
      'Identifies using legal processes, courts, or protective orders as weapons of harassment.';

  @override
  String get metric_ugly_75_name => 'Restraining Order Violation';

  @override
  String get metric_ugly_75_description =>
      'Detects references to violating or planning to violate protective or no-contact orders.';

  @override
  String get metric_ugly_76_name => 'Workplace Sabotage Threats';

  @override
  String get metric_ugly_76_description =>
      'Flags threats to contact employer, colleagues, or clients to destroy partner\'s livelihood.';

  @override
  String get metric_ugly_77_name => 'Social Annihilation Threats';

  @override
  String get metric_ugly_77_description =>
      'Detects threats to destroy partner\'s reputation, relationships, and social standing.';

  @override
  String get metric_ugly_78_name => 'Systematic Deception Campaign';

  @override
  String get metric_ugly_78_description =>
      'Identifies long-term elaborate deception designed to exploit the partner financially or emotionally.';

  @override
  String get metric_ugly_79_name => 'Property Destruction as Terror';

  @override
  String get metric_ugly_79_description =>
      'Identifies deliberate destruction of partner\'s property as an intimidation tactic.';

  @override
  String get metric_ugly_80_name => 'Animal Cruelty as Proxy Terror';

  @override
  String get metric_ugly_80_description =>
      'Detects harming or threatening pets to demonstrate capacity for violence to partner.';

  @override
  String get metric_ugly_81_name => 'Child Endangerment Language';

  @override
  String get metric_ugly_81_description =>
      'Flags placing children in dangerous situations or threatening to do so as leverage.';

  @override
  String get metric_ugly_82_name => 'Disability-Based Control';

  @override
  String get metric_ugly_82_description =>
      'Detects exploiting partner\'s disability by controlling access to medication, mobility, or care.';

  @override
  String get metric_ugly_83_name => 'Crisis Manufactured Control';

  @override
  String get metric_ugly_83_description =>
      'Flags deliberately creating emergencies or crises to increase partner dependency or justify monitoring.';

  @override
  String get metric_ugly_84_name => 'Isolation from Emergency Services';

  @override
  String get metric_ugly_84_description =>
      'Identifies actively preventing partner from calling police, ambulance, or crisis services.';

  @override
  String get metric_ugly_85_name => 'Threat Escalation Trajectory';

  @override
  String get metric_ugly_85_description =>
      'Tracks measurable increase in severity, specificity, or frequency of threats over time.';

  @override
  String get metric_ugly_86_name => 'Lethality Assessment Indicators';

  @override
  String get metric_ugly_86_description =>
      'Flags combinations of factors associated with highest risk of intimate partner homicide.';

  @override
  String get metric_ugly_87_name => 'Psychological Torture Tactics';

  @override
  String get metric_ugly_87_description =>
      'Identifies sustained psychological abuse designed to break the partner\'s mental stability.';

  @override
  String get metric_ugly_88_name => 'Captivity Language';

  @override
  String get metric_ugly_88_description =>
      'Detects references to holding partner captive, preventing departure, or controlling all movement.';

  @override
  String get metric_ugly_89_name => 'Targeted Violence Planning';

  @override
  String get metric_ugly_89_description =>
      'Detects any language indicating planning, preparation, or countdown to violence against partner.';

  @override
  String get metric_ugly_90_name => 'Third Party Threat Recruitment';

  @override
  String get metric_ugly_90_description =>
      'Identifies recruiting friends, family, or others to threaten or harm the partner.';

  @override
  String get metric_ugly_91_name => 'Suicidal Ideation Exploitation';

  @override
  String get metric_ugly_91_description =>
      'Flags exploiting partner\'s suicidal crisis as leverage or to prevent them seeking help.';

  @override
  String get metric_ugly_92_name => 'Poisoning or Drugging Threats';

  @override
  String get metric_ugly_92_description =>
      'Detects threats or references to drugging, poisoning, or tampering with partner\'s food or drink.';

  @override
  String get metric_ugly_93_name => 'Non-Suicidal Self-Harm Exploitation';

  @override
  String get metric_ugly_93_description =>
      'Flags exploiting partner\'s self-harm behavior as leverage, mockery, or further control.';

  @override
  String get metric_ugly_94_name => 'Dissociation Induction Language';

  @override
  String get metric_ugly_94_description =>
      'Detects patterns designed to cause dissociation, detachment, or depersonalization in the partner.';

  @override
  String get metric_ugly_95_name => 'Cognitive Distortion Implanting';

  @override
  String get metric_ugly_95_description =>
      'Detects deliberate installation of false beliefs about self, reality, or the partner\'s own sanity.';

  @override
  String get metric_ugly_96_name => 'Medical Care Obstruction';

  @override
  String get metric_ugly_96_description =>
      'Detects preventing access to medication, doctors, hospitals, or health treatment.';

  @override
  String get metric_ugly_97_name => 'Extremist Threat Language';

  @override
  String get metric_ugly_97_description =>
      'Flags language borrowed from extremist or violent ideological frameworks applied toward the partner.';

  @override
  String get metric_ugly_98_name => 'Post-Separation Stalking Signals';

  @override
  String get metric_ugly_98_description =>
      'Detects threats, surveillance language, or intimidation tactics following or anticipating a breakup.';

  @override
  String get metric_ugly_99_name => 'Child Weaponization';

  @override
  String get metric_ugly_99_description =>
      'Identifies using children as pawns, threats regarding custody, or leveraging parental bonds as control mechanisms.';

  @override
  String get metric_ugly_100_name => 'Systematic Dehumanization';

  @override
  String get metric_ugly_100_description =>
      'Detects sustained language that strips the partner of personhood, dignity, or their right to basic humanity.';

  @override
  String get metric_narcissist_1_name => 'Grandiose Self-Importance';

  @override
  String get metric_narcissist_1_description =>
      'Exaggerated claims of achievements, talents, or status beyond realistic evidence, often with a sense of uniqueness.';

  @override
  String get metric_narcissist_2_name => 'Entitlement Demands';

  @override
  String get metric_narcissist_2_description =>
      'Unreasonable expectations of special treatment or automatic compliance with their wishes without reciprocity.';

  @override
  String get metric_narcissist_3_name => 'Empathy Deficit';

  @override
  String get metric_narcissist_3_description =>
      'Inability or unwillingness to recognize or validate others\' feelings, dismissing emotional needs as irrelevant.';

  @override
  String get metric_narcissist_4_name => 'Supply-Seeking Praise';

  @override
  String get metric_narcissist_4_description =>
      'Excessive fishing for admiration, compliments, or validation to bolster fragile self-esteem.';

  @override
  String get metric_narcissist_5_name => 'Triangulation Tactics';

  @override
  String get metric_narcissist_5_description =>
      'Introducing a third party into conflicts to create jealousy, competition, or manipulate perceptions.';

  @override
  String get metric_narcissist_6_name => 'Love Bombing Intensity';

  @override
  String get metric_narcissist_6_description =>
      'Overwhelming flattery, gifts, or attention early in a relationship to gain control and idealize the target.';

  @override
  String get metric_narcissist_7_name => 'Devaluation Criticism';

  @override
  String get metric_narcissist_7_description =>
      'Sudden shift to harsh criticism, belittling, or contempt after idealization, eroding the target\'s self-worth.';

  @override
  String get metric_narcissist_8_name => 'Silent Treatment Punishment';

  @override
  String get metric_narcissist_8_description =>
      'Withholding communication or affection as a deliberate punishment to induce anxiety and compliance.';

  @override
  String get metric_narcissist_9_name => 'DARVO Blame Shift';

  @override
  String get metric_narcissist_9_description =>
      'Denying responsibility, attacking the accuser, and reversing victim-offender roles to evade accountability.';

  @override
  String get metric_narcissist_10_name => 'Gaslighting Reality Distortion';

  @override
  String get metric_narcissist_10_description =>
      'Denying or twisting facts, events, or feelings to make the target doubt their own memory or sanity.';

  @override
  String get metric_narcissist_11_name => 'Rage at Criticism';

  @override
  String get metric_narcissist_11_description =>
      'Intense anger, contempt, or retaliation in response to any perceived slight or feedback, even if constructive.';

  @override
  String get metric_narcissist_12_name => 'Boundary Violation';

  @override
  String get metric_narcissist_12_description =>
      'Ignoring or overriding stated limits, privacy, or personal space without remorse or negotiation.';

  @override
  String get metric_narcissist_13_name => 'Envy Expression';

  @override
  String get metric_narcissist_13_description =>
      'Resentment of others\' successes or possessions, often accompanied by devaluation or attempts to undermine.';

  @override
  String get metric_narcissist_14_name => 'Exploitative Behavior';

  @override
  String get metric_narcissist_14_description =>
      'Using others for personal gain, status, or resources without regard for their well-being or consent.';

  @override
  String get metric_narcissist_15_name => 'Mirroring Manipulation';

  @override
  String get metric_narcissist_15_description =>
      'Imitating the target\'s interests, values, or traits to create false rapport and gain trust.';

  @override
  String get metric_narcissist_16_name => 'Superiority Claims';

  @override
  String get metric_narcissist_16_description =>
      'Asserting inherent superiority over others, often with condescending or dismissive language.';

  @override
  String get metric_narcissist_17_name => 'Fantasy Preoccupation';

  @override
  String get metric_narcissist_17_description =>
      'Obsessive talk about unlimited success, power, brilliance, or ideal love that is unrealistic.';

  @override
  String get metric_narcissist_18_name => 'Special Status Assertion';

  @override
  String get metric_narcissist_18_description =>
      'Belief that they can only be understood by or associate with high-status people or institutions.';

  @override
  String get metric_narcissist_19_name => 'Interpersonal Exploitation';

  @override
  String get metric_narcissist_19_description =>
      'Taking advantage of others\' resources, time, or emotions without reciprocation or gratitude.';

  @override
  String get metric_narcissist_20_name => 'Lack of Remorse';

  @override
  String get metric_narcissist_20_description =>
      'Absence of guilt or apology after causing harm, often justifying actions as deserved by the target.';

  @override
  String get metric_narcissist_21_name => 'Competitive Undermining';

  @override
  String get metric_narcissist_21_description =>
      'Sabotaging others\' achievements or relationships to maintain a superior position.';

  @override
  String get metric_narcissist_22_name => 'Idealization Phase';

  @override
  String get metric_narcissist_22_description =>
      'Excessive praise and adoration early in a relationship, setting unrealistic expectations for the target.';

  @override
  String get metric_narcissist_23_name => 'Devaluation Phase';

  @override
  String get metric_narcissist_23_description =>
      'Gradual or sudden criticism and contempt after idealization, creating confusion and self-doubt.';

  @override
  String get metric_narcissist_24_name => 'Discard Impulse';

  @override
  String get metric_narcissist_24_description =>
      'Abruptly ending relationships when the target no longer provides narcissistic supply or challenges them.';

  @override
  String get metric_narcissist_25_name => 'Hoovering Attempts';

  @override
  String get metric_narcissist_25_description =>
      'Re-engaging a discarded target with promises, guilt, or manipulation to regain supply.';

  @override
  String get metric_narcissist_26_name => 'Projection of Flaws';

  @override
  String get metric_narcissist_26_description =>
      'Accusing others of their own negative traits or behaviors to avoid self-awareness.';

  @override
  String get metric_narcissist_27_name => 'Control Through Guilt';

  @override
  String get metric_narcissist_27_description =>
      'Using guilt-inducing statements to manipulate others into compliance or caretaking.';

  @override
  String get metric_narcissist_28_name => 'Emotional Volatility';

  @override
  String get metric_narcissist_28_description =>
      'Rapid mood swings from charm to rage, often triggered by perceived narcissistic injury.';

  @override
  String get metric_narcissist_29_name => 'Invalidation of Feelings';

  @override
  String get metric_narcissist_29_description =>
      'Dismissing or minimizing others\' emotions as overreactions or irrational.';

  @override
  String get metric_narcissist_30_name => 'Monopolizing Conversations';

  @override
  String get metric_narcissist_30_description =>
      'Dominating dialogue with self-focused topics, interrupting, or ignoring others\' input.';

  @override
  String get metric_narcissist_31_name => 'Name-Calling Derogation';

  @override
  String get metric_narcissist_31_description =>
      'Using insults, labels, or demeaning terms to devalue and control the target.';

  @override
  String get metric_narcissist_32_name => 'Threats of Abandonment';

  @override
  String get metric_narcissist_32_description =>
      'Using fear of loss or rejection to coerce compliance or attention.';

  @override
  String get metric_narcissist_33_name => 'Playing the Victim';

  @override
  String get metric_narcissist_33_description =>
      'Portraying themselves as unfairly treated to elicit sympathy and deflect accountability.';

  @override
  String get metric_narcissist_34_name => 'Martyr Complex';

  @override
  String get metric_narcissist_34_description =>
      'Claiming excessive sacrifice or suffering to induce guilt and obligation in others.';

  @override
  String get metric_narcissist_35_name => 'Selective Memory';

  @override
  String get metric_narcissist_35_description =>
      'Conveniently forgetting promises, agreements, or harmful actions to avoid responsibility.';

  @override
  String get metric_narcissist_36_name => 'Stonewalling Communication';

  @override
  String get metric_narcissist_36_description =>
      'Refusing to engage in dialogue, ignoring questions, or shutting down discussions to maintain control.';

  @override
  String get metric_narcissist_37_name => 'Future Faking';

  @override
  String get metric_narcissist_37_description =>
      'Making grandiose promises about shared future plans to create false hope and dependency.';

  @override
  String get metric_narcissist_38_name => 'Smear Campaign';

  @override
  String get metric_narcissist_38_description =>
      'Spreading malicious rumors or lies about the target to isolate them and damage reputation.';

  @override
  String get metric_narcissist_39_name => 'Isolation Tactics';

  @override
  String get metric_narcissist_39_description =>
      'Discouraging or preventing contact with friends, family, or support systems to increase dependence.';

  @override
  String get metric_narcissist_40_name => 'Financial Exploitation';

  @override
  String get metric_narcissist_40_description =>
      'Manipulating or controlling financial resources for personal gain or to create dependency.';

  @override
  String get metric_narcissist_41_name => 'Sexual Coercion';

  @override
  String get metric_narcissist_41_description =>
      'Using pressure, guilt, or manipulation to obtain sexual compliance without genuine consent.';

  @override
  String get metric_narcissist_42_name => 'Boundary Testing';

  @override
  String get metric_narcissist_42_description =>
      'Repeatedly pushing limits to see what behavior is tolerated, then escalating violations.';

  @override
  String get metric_narcissist_43_name => 'Gaslighting Denial';

  @override
  String get metric_narcissist_43_description =>
      'Flatly denying events or statements that occurred, causing the target to question reality.';

  @override
  String get metric_narcissist_44_name => 'Trivializing Concerns';

  @override
  String get metric_narcissist_44_description =>
      'Dismissing legitimate complaints as unimportant or overly sensitive.';

  @override
  String get metric_narcissist_45_name => 'Blame Externalization';

  @override
  String get metric_narcissist_45_description =>
      'Attributing all problems and conflicts to others, never accepting personal fault.';

  @override
  String get metric_narcissist_46_name => 'Jealousy Provocation';

  @override
  String get metric_narcissist_46_description =>
      'Flirting with or praising others to incite jealousy and maintain emotional control.';

  @override
  String get metric_narcissist_47_name => 'Emotional Blackmail';

  @override
  String get metric_narcissist_47_description =>
      'Using fear, obligation, or guilt to manipulate decisions and behavior.';

  @override
  String get metric_narcissist_48_name => 'Pseudo-Insight';

  @override
  String get metric_narcissist_48_description =>
      'Feigning self-awareness or empathy to appear reformed, then reverting to toxic patterns.';

  @override
  String get metric_narcissist_49_name => 'Contemptuous Tone';

  @override
  String get metric_narcissist_49_description =>
      'Using sarcasm, mockery, or disdainful language to degrade and dismiss others.';

  @override
  String get metric_narcissist_50_name => 'Revenge Fantasies';

  @override
  String get metric_narcissist_50_description =>
      'Expressing desires for retaliation or punishment against those who have slighted them.';

  @override
  String get metric_serial_killer_1_name => 'Predatory Framing';

  @override
  String get metric_serial_killer_1_description =>
      'Detects language that positions the speaker as a hunter and the target as prey, indicating predatory intent.';

  @override
  String get metric_serial_killer_2_name => 'Empathy Deficit';

  @override
  String get metric_serial_killer_2_description =>
      'Identifies statements lacking emotional resonance or concern for others\' suffering, suggesting callousness.';

  @override
  String get metric_serial_killer_3_name => 'Dehumanizing Labels';

  @override
  String get metric_serial_killer_3_description =>
      'Flags use of derogatory terms or objectifying labels that strip victims of humanity.';

  @override
  String get metric_serial_killer_4_name => 'Objectification Cues';

  @override
  String get metric_serial_killer_4_description =>
      'Recognizes language treating individuals as tools or objects for gratification.';

  @override
  String get metric_serial_killer_5_name => 'Control Fixation';

  @override
  String get metric_serial_killer_5_description =>
      'Detects obsessive references to dominance, manipulation, or enforcing compliance.';

  @override
  String get metric_serial_killer_6_name => 'Thrill-Seeking Tone';

  @override
  String get metric_serial_killer_6_description =>
      'Identifies excitement or arousal in describing risky, violent, or predatory acts.';

  @override
  String get metric_serial_killer_7_name => 'Compartmentalization Markers';

  @override
  String get metric_serial_killer_7_description =>
      'Flags abrupt shifts between normal and violent topics, indicating psychological separation.';

  @override
  String get metric_serial_killer_8_name => 'Victim Selection Signals';

  @override
  String get metric_serial_killer_8_description =>
      'Detects criteria or preferences for targeting specific vulnerable groups.';

  @override
  String get metric_serial_killer_9_name => 'Sadistic Enjoyment';

  @override
  String get metric_serial_killer_9_description =>
      'Recognizes pleasure derived from others\' pain, fear, or suffering.';

  @override
  String get metric_serial_killer_10_name => 'Manipulative Harm';

  @override
  String get metric_serial_killer_10_description =>
      'Identifies language used to deceive or coerce others into harmful situations.';

  @override
  String get metric_serial_killer_11_name => 'Stalking Indicators';

  @override
  String get metric_serial_killer_11_description =>
      'Flags detailed tracking, surveillance, or obsessive monitoring of a target.';

  @override
  String get metric_serial_killer_12_name => 'Grooming Language';

  @override
  String get metric_serial_killer_12_description =>
      'Detects gradual trust-building tactics to exploit or abuse victims.';

  @override
  String get metric_serial_killer_13_name => 'Violent Fantasizing';

  @override
  String get metric_serial_killer_13_description =>
      'Identifies vivid descriptions of harming or killing others as a mental rehearsal.';

  @override
  String get metric_serial_killer_14_name => 'Power Assertion';

  @override
  String get metric_serial_killer_14_description =>
      'Recognizes statements emphasizing superiority or control over others.';

  @override
  String get metric_serial_killer_15_name => 'Lack of Remorse';

  @override
  String get metric_serial_killer_15_description =>
      'Flags absence of guilt or regret after discussing harmful actions.';

  @override
  String get metric_serial_killer_16_name => 'Blame Externalization';

  @override
  String get metric_serial_killer_16_description =>
      'Detects shifting responsibility for violent urges onto victims or society.';

  @override
  String get metric_serial_killer_17_name => 'Sexualized Violence';

  @override
  String get metric_serial_killer_17_description =>
      'Identifies merging of sexual and violent themes in language.';

  @override
  String get metric_serial_killer_18_name => 'Isolation Tactics';

  @override
  String get metric_serial_killer_18_description =>
      'Recognizes efforts to separate a target from support networks.';

  @override
  String get metric_serial_killer_19_name => 'Gaslighting Patterns';

  @override
  String get metric_serial_killer_19_description =>
      'Flags language designed to distort reality and undermine a victim\'s sanity.';

  @override
  String get metric_serial_killer_20_name => 'Threat Veiling';

  @override
  String get metric_serial_killer_20_description =>
      'Detects implied threats or warnings masked as casual statements.';

  @override
  String get metric_serial_killer_21_name => 'Possessive Language';

  @override
  String get metric_serial_killer_21_description =>
      'Identifies claims of ownership or entitlement over another person.';

  @override
  String get metric_serial_killer_22_name => 'Revenge Themes';

  @override
  String get metric_serial_killer_22_description =>
      'Recognizes fixation on retaliation or punishing perceived wrongs.';

  @override
  String get metric_serial_killer_23_name => 'Narcissistic Grandeur';

  @override
  String get metric_serial_killer_23_description =>
      'Flags exaggerated self-importance and disregard for others\' worth.';

  @override
  String get metric_serial_killer_24_name => 'Emotional Detachment';

  @override
  String get metric_serial_killer_24_description =>
      'Detects clinical or distant tone when discussing trauma or harm.';

  @override
  String get metric_serial_killer_25_name => 'Predatory Patience';

  @override
  String get metric_serial_killer_25_description =>
      'Identifies long-term planning language for future victimization.';

  @override
  String get metric_serial_killer_26_name => 'Boundary Testing';

  @override
  String get metric_serial_killer_26_description =>
      'Recognizes probing for limits or resistance in potential victims.';

  @override
  String get metric_serial_killer_27_name => 'Minimization of Harm';

  @override
  String get metric_serial_killer_27_description =>
      'Flags downplaying the severity of violent or abusive acts.';

  @override
  String get metric_serial_killer_28_name => 'Justification of Violence';

  @override
  String get metric_serial_killer_28_description =>
      'Detects rationalizations for harming others as necessary or deserved.';

  @override
  String get metric_serial_killer_29_name => 'Obsessive Focus';

  @override
  String get metric_serial_killer_29_description =>
      'Identifies repetitive, fixated thoughts on a specific person or act.';

  @override
  String get metric_serial_killer_30_name => 'Cold Calculation';

  @override
  String get metric_serial_killer_30_description =>
      'Recognizes strategic, emotionless planning of harmful actions.';

  @override
  String get metric_serial_killer_31_name => 'Deceptive Charm';

  @override
  String get metric_serial_killer_31_description =>
      'Flags overly flattering or ingratiating language to manipulate.';

  @override
  String get metric_serial_killer_32_name => 'Victim Blaming';

  @override
  String get metric_serial_killer_32_description =>
      'Detects attributing fault to the target for their own victimization.';

  @override
  String get metric_serial_killer_33_name => 'Escalation Signals';

  @override
  String get metric_serial_killer_33_description =>
      'Identifies progression from fantasy to intent in violent language.';

  @override
  String get metric_serial_killer_34_name => 'Parasitic Orientation';

  @override
  String get metric_serial_killer_34_description =>
      'Recognizes language treating others as resources to exploit.';

  @override
  String get metric_serial_killer_35_name => 'Arousal Cues';

  @override
  String get metric_serial_killer_35_description =>
      'Flags physiological excitement indicators linked to violent themes.';

  @override
  String get metric_serial_killer_36_name => 'Testing Loyalty';

  @override
  String get metric_serial_killer_36_description =>
      'Detects demands for proof of allegiance or secrecy from accomplices.';

  @override
  String get metric_serial_killer_37_name => 'Ritualistic Language';

  @override
  String get metric_serial_killer_37_description =>
      'Identifies patterned, ceremonial phrasing around violent acts.';

  @override
  String get metric_serial_killer_38_name => 'Superiority Claims';

  @override
  String get metric_serial_killer_38_description =>
      'Recognizes assertions of being above moral or legal constraints.';

  @override
  String get metric_serial_killer_39_name => 'Emotional Vacuum';

  @override
  String get metric_serial_killer_39_description =>
      'Flags absence of emotional words in contexts requiring empathy.';

  @override
  String get metric_serial_killer_40_name => 'Predatory Curiosity';

  @override
  String get metric_serial_killer_40_description =>
      'Detects probing questions about a target\'s fears or vulnerabilities.';

  @override
  String get metric_serial_killer_41_name => 'Silencing Threats';

  @override
  String get metric_serial_killer_41_description =>
      'Identifies warnings to prevent disclosure or reporting.';

  @override
  String get metric_serial_killer_42_name => 'Dehumanizing Comparisons';

  @override
  String get metric_serial_killer_42_description =>
      'Recognizes equating people to animals, objects, or subhuman entities.';

  @override
  String get metric_serial_killer_43_name => 'Control Language';

  @override
  String get metric_serial_killer_43_description =>
      'Flags imperative or commanding tones aimed at dominating others.';

  @override
  String get metric_serial_killer_44_name => 'Sadistic Detail';

  @override
  String get metric_serial_killer_44_description =>
      'Detects excessive focus on graphic pain or suffering in narratives.';

  @override
  String get metric_serial_killer_45_name => 'Manipulative Empathy';

  @override
  String get metric_serial_killer_45_description =>
      'Identifies feigned concern to lower a target\'s defenses.';

  @override
  String get metric_serial_killer_46_name => 'Predatory Gaze';

  @override
  String get metric_serial_killer_46_description =>
      'Recognizes language describing intense, invasive observation of targets.';

  @override
  String get metric_serial_killer_47_name => 'Violent Identity';

  @override
  String get metric_serial_killer_47_description =>
      'Flags self-identification as a predator, killer, or monster.';

  @override
  String get metric_serial_killer_48_name => 'Thrill of the Hunt';

  @override
  String get metric_serial_killer_48_description =>
      'Detects excitement in the process of stalking or pursuing victims.';

  @override
  String get metric_serial_killer_49_name => 'Compulsive Confession';

  @override
  String get metric_serial_killer_49_description =>
      'Identifies urges to disclose violent acts for psychological relief.';

  @override
  String get metric_serial_killer_50_name => 'Finality Language';

  @override
  String get metric_serial_killer_50_description =>
      'Recognizes references to ending, killing, or permanent silencing of targets.';

  @override
  String get packNarcissistLabel => 'The Narcissist';

  @override
  String get packSerialKillerLabel => 'The Serial Killer';

  @override
  String get expansionPacksPurchased => 'Expansion Packs Purchased:';

  @override
  String get expansionPacksStillAvailable => 'Expansion Packs Still Available';

  @override
  String get metricsOwned => 'Metrics owned';

  @override
  String get metricsStillAvailable => 'Metrics Still Available';

  @override
  String get getMore => 'Get more!';

  @override
  String get standardPackTitle => 'Standard Pack';

  @override
  String get goodPackTitle => 'The Good Pack';

  @override
  String get badPackTitle => 'The Bad Pack';

  @override
  String get uglyPackTitle => 'The Ugly Pack';

  @override
  String get narcissistPackTitle => 'Narcissist Pack';

  @override
  String get serialKillerPackTitle => 'Serial Killer Pack';

  @override
  String get customMetricsTitle => 'Custom Metrics';

  @override
  String metricsCountSubtitle(Object count) {
    return '$count Metrics';
  }

  @override
  String metricsAddonSubtitle(Object count) {
    return '$count Metrics Addon';
  }

  @override
  String metricSingular(Object count) {
    return '$count Metric';
  }

  @override
  String metricPlural(Object count) {
    return '$count Metrics';
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
  String get allPacksOwned => 'All expansion packs owned!';

  @override
  String get restorePurchases => 'Restore Purchases';

  @override
  String get restorePurchasesButton => 'Restore Previous Purchases';

  @override
  String get restorePurchasesSuccess => 'Purchases restored successfully!';

  @override
  String get restorePurchasesError =>
      'Could not restore purchases. Please try again.';

  @override
  String get restorePurchasesNoneFound => 'No previous purchases found.';

  @override
  String get discordAddonPopupTitle => 'Discord Feature';

  @override
  String get discordAddonPopupMessage =>
      'This feature is available as an add-on.';

  @override
  String get discordAccordionTitle => 'Discord Integration';

  @override
  String get discordAccordionSubtitle => 'Connect Discord servers';

  @override
  String get selectDiscord => 'Select Discord';

  @override
  String get enableDiscord => 'Enable Discord';

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
  String get packTheGood => 'The Good';

  @override
  String get packTheBad => 'The Bad';

  @override
  String get packTheUgly => 'The Ugly';

  @override
  String get packTheNarcissist => 'The Narcissist';

  @override
  String get metricsExpansionPack => 'Metrics Expansion Pack';

  @override
  String purchaseTitle(String title) {
    return 'Purchase $title';
  }

  @override
  String buyForPrice(String price) {
    return 'Buy for $price';
  }

  @override
  String get processingPurchase => 'Processing Purchase...';

  @override
  String get waitingForStoreConfirmation => 'Waiting for store confirmation...';

  @override
  String get myMetricList => 'My Metric List';

  @override
  String get botTokenSaved => 'Bot token saved successfully';

  @override
  String failedToSaveError(String error) {
    return 'Failed to save: $error';
  }

  @override
  String get connectionTestNotImplemented =>
      'Connection test not yet implemented';

  @override
  String get pasteDiscordBotTokenHint => 'Paste your Discord bot token here';

  @override
  String get botTokenLabel => 'Bot Token';

  @override
  String get botConfigButton => 'Bot Config';

  @override
  String get customMetricPurchasePlaceholder =>
      'Custom metric purchase would start here';

  @override
  String get configureBotToken => 'Configure Bot Token';

  @override
  String get retryButton => 'Retry';

  @override
  String get ownerLabel => 'Owner';

  @override
  String get noMessagesInChannel => 'No messages found in this channel';

  @override
  String failedToImportError(String error) {
    return 'Failed to import: $error';
  }

  @override
  String get proMembershipUpsell => 'Pro Membership - \$0.99/mo';

  @override
  String unlockForPrice(String price) {
    return 'Unlock for $price';
  }

  @override
  String get startCapture => 'Start Capture';

  @override
  String get finishAndProcess => 'Finish & Process';

  @override
  String get cancelButton => 'Cancel';

  @override
  String get processScreenshots => 'Process Screenshots';

  @override
  String get startOver => 'Start Over';

  @override
  String get capturingStatus => 'Capturing...';

  @override
  String get captureComplete => 'Capture Complete';

  @override
  String get errorDialogTitle => 'Error';

  @override
  String failedToLoadConversation(String error) {
    return 'Failed to load conversation: $error';
  }

  @override
  String get selectConversationTitle => 'Select Conversation';

  @override
  String get platformCredentialsTitle => 'Platform Credentials';

  @override
  String get saveCredentialsTooltip => 'Save Credentials';

  @override
  String get upgradeToProPlusTitle => 'Upgrade to Pro Plus';

  @override
  String get upgradeNowButton => 'Upgrade Now';

  @override
  String get selectLanguageTooltip => 'Select Language';

  @override
  String get nextSizeButton => 'Next Size';

  @override
  String get startSequenceButton => 'Start Sequence';

  @override
  String get nextSizeInstruction => 'Click \"Next Size\" for next dimension';

  @override
  String get okButton => 'OK';

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
  String get tileMyAccountTitle => 'My Account';

  @override
  String get tileMyAccountDesc =>
      'Membership, referrals, purchases, sales & developer license';

  @override
  String get tileReferFriendsTitle => 'Refer Friends\nGet FREE Month';

  @override
  String get tileReferFriendsDesc =>
      'Refer 5 friends who run a report and earn a free month of Standard!';

  @override
  String get tileUserPacksTitle => 'User Submitted\nMetric Packs';

  @override
  String get tileUserPacksDesc =>
      'Browse & purchase community-created metric packs. Earn credits by submitting your own!';

  @override
  String get tileBrowseButton => 'Browse';

  @override
  String get purchaseDialogCancel => 'Cancel';

  @override
  String installedPacksAccordionSubtitle(int count) {
    return '$count Metrics — Community Pack';
  }
}
