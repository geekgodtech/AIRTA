// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'AI 关系毒性分析器';

  @override
  String get psychologicalMetrics => '心理指标';

  @override
  String get metricsDescription =>
      '选择较少的指标会对这些行为产生更深入、更集中的分析。选择较多的指标会生成更广泛的报告，但每个指标的细节较少。';

  @override
  String get selectSMS => '选择短信 / RCS 聊天';

  @override
  String get selectDiscordChannel => '选择 Discord 频道';

  @override
  String get lightMode => '浅色';

  @override
  String get darkMode => '深色';

  @override
  String get discordSetupTitle => '如何设置 Discord';

  @override
  String get discordSetupDescription => '按照以下步骤在应用中启用 Discord 频道分析:';

  @override
  String get discordStep1Title => '创建 Discord 机器人';

  @override
  String get discordStep1Description =>
      '前往 discord.com/developers，创建新应用程序并添加机器人。复制机器人令牌。';

  @override
  String get discordStep2Title => '启用机器人权限';

  @override
  String get discordStep2Description =>
      '在机器人设置中，启用 \'Message Content Intent\' 和 \'Server Members Intent\'。';

  @override
  String get discordStep3Title => '将机器人邀请到服务器';

  @override
  String get discordStep3Description =>
      '使用 OAuth2 URL 生成器将机器人邀请到您的 Discord 服务器，并授予所需权限。';

  @override
  String get discordStep4Title => '在应用中配置';

  @override
  String get discordStep4Description => '在应用设置中输入您的机器人令牌（如需帮助请联系支持）。';

  @override
  String get discordStep5Title => '选择频道';

  @override
  String get discordStep5Description =>
      '点击 \'选择 Discord 频道\'，选择您的服务器，然后选择要分析的频道。';

  @override
  String get gotIt => '明白了';

  @override
  String get selectFile => '选择文件';

  @override
  String get analyzeSelectedMetrics => '分析所选指标';

  @override
  String get analyze20RandomMetrics => '分析 20 个随机指标';

  @override
  String get membershipOptions => '会员选项';

  @override
  String get free => '免费';

  @override
  String get oneTimeUnlock => '一次性报告解锁';

  @override
  String get standard => '标准';

  @override
  String get discordAddon => 'Discord 附加组件';

  @override
  String get analyze => '分析';

  @override
  String get report => '报告';

  @override
  String get pdfReport => 'PDF 报告';

  @override
  String get openPdf => '打开 PDF';

  @override
  String get sharePdf => '分享 PDF';

  @override
  String get printPdf => '打印 PDF';

  @override
  String get closePdfPreview => '关闭 PDF 预览窗口';

  @override
  String get openPdfPreview => '打开 PDF 预览窗口';

  @override
  String get pdfPreviewDescription => '嵌入式 PDF 窗口初始为关闭状态，以保持报告紧凑。';

  @override
  String get notNow => '暂不';

  @override
  String get unlockThisReport => '解锁此报告 - \$20';

  @override
  String get joinStandard => '加入标准会员 - \$9.99/月';

  @override
  String get instantUnlockTitle => '即时报告解锁 - \$20';

  @override
  String get instantUnlockDescription =>
      '这是一次性购买，仅解锁当前报告。无需订阅。未来的报告将需要单独解锁或会员资格。\n\n继续付款？';

  @override
  String get purchaseFor20 => '以 \$20 购买';

  @override
  String get share => '分享';

  @override
  String get print => '打印';

  @override
  String get save => '保存';

  @override
  String get cancel => '取消';

  @override
  String get ok => '确定';

  @override
  String get loading => '加载中...';

  @override
  String get error => '错误';

  @override
  String get success => '成功';

  @override
  String get conversations => '对话';

  @override
  String get messages => '消息';

  @override
  String get selectConversation => '选择对话';

  @override
  String get selectSmsConversation => '选择短信 / RCS 对话';

  @override
  String get searchConversations => '搜索对话...';

  @override
  String get loadingConversations => '正在加载对话...';

  @override
  String get errorLoadingConversations => '加载对话出错';

  @override
  String get selectConversationToAnalyze => '选择要分析的对话';

  @override
  String get analyzeWithSelectedMetrics => '使用所选指标进行分析';

  @override
  String get loadConversationAndSelectMetric => '加载对话并至少选择一个指标';

  @override
  String get selectAtLeastOneMetric => '运行报告至少需要选择一个指标。';

  @override
  String get spinningMetricWheel => '正在转动指标轮盘...';

  @override
  String get loadConversationToAnalyze => '加载要分析的对话';

  @override
  String get noConversationsFound => '未找到对话';

  @override
  String get permissionsRequired => '需要权限';

  @override
  String get smsPermission => '短信';

  @override
  String get contactsPermission => '联系人';

  @override
  String get smsPermissionDescription => '用于分析您的短信对话中的关系模式';

  @override
  String get contactsPermissionDescription => '用于显示联系人姓名而非电话号码';

  @override
  String get analyzingMessage => '请稍候，您的心理分析正由 AI 生成...';

  @override
  String get analyzingStatus => '正在分析对话...';

  @override
  String get analyzingSubMessage => '请耐心等待，此过程可能需要长达一分钟，具体取决于您的连接速度和所选指标的数量';

  @override
  String get unlockFullReport => '解锁并显示整个报告';

  @override
  String get fullReportLocked => '完整报告已锁定';

  @override
  String get upgradeToUnlock => '升级您的会员资格以解锁包含所有指标和详细见解的完整心理分析报告。';

  @override
  String get language => '语言';

  @override
  String get english => '英语';

  @override
  String get spanish => '西班牙语';

  @override
  String get french => '法语';

  @override
  String get german => '德语';

  @override
  String get italian => '意大利语';

  @override
  String get portuguese => '葡萄牙语';

  @override
  String get dutch => '荷兰语';

  @override
  String get russian => '俄语';

  @override
  String get chinese => '中文';

  @override
  String get japanese => '日语';

  @override
  String get korean => '韩语';

  @override
  String get arabic => '阿拉伯语';

  @override
  String get hindi => '印地语';

  @override
  String get turkish => '土耳其语';

  @override
  String get polish => '波兰语';

  @override
  String get ukrainian => '乌克兰语';

  @override
  String get runAnotherAnalysis => '再进行一次分析？';

  @override
  String get becomeMemberTitle => '成为会员以获取完整分析报告';

  @override
  String get becomeMemberSubtitle => '选择适合您需要分析的对话和报告的访问级别。';

  @override
  String get benefitAnalyzeSms => '分析 SMS 短信';

  @override
  String get benefitReportPreview => '运行报告预览';

  @override
  String get benefitViewPartialReport => '查看约 25% 的报告';

  @override
  String get benefitLockedDetails => '完整报告详情已锁定';

  @override
  String get currentFreeAccess => '当前免费访问';

  @override
  String get benefitUnlockCurrentReport => '解锁当前完整报告';

  @override
  String get benefitNoSubscription => '无需订阅';

  @override
  String get benefitSavePrintShareThis => '保存、打印和分享此报告';

  @override
  String get benefitBestSingleAnalysis => '如果您只需要一次分析，则最适合';

  @override
  String get unlockThisReportShort => '解锁此报告';

  @override
  String get benefitFullSmsReport => '完整 SMS 分析报告';

  @override
  String get benefitSavePrintSharePdf => '保存、打印和分享 PDF 报告';

  @override
  String get benefitTenReports => '每 24 小时 10 份报告';

  @override
  String get benefitBestTextReview => '最适合短信关系审查';

  @override
  String get benefitDateRangeFilter => '按日期范围过滤分析';

  @override
  String get signUpStandard => '注册标准会员';

  @override
  String get benefitAddToStandard => '添加到标准会员';

  @override
  String get benefitAnalyzeDiscord => '分析 Discord 服务器聊天';

  @override
  String get benefitRequiresBot => '需要安装机器人';

  @override
  String get benefitBestGamers => '最适合玩家和 Discord 社区';

  @override
  String get addDiscordAnalysis => '添加 Discord 分析';

  @override
  String get requiresStandardMembership => '需要标准会员';

  @override
  String get comingSoon => '即将推出';

  @override
  String get comingSoonWithNextUpdate => '下次更新即将推出：';

  @override
  String get proMembershipTier => 'Pro 会员等级 - \$19.99';

  @override
  String get proPlusMembershipTier => 'Pro-Plus 会员等级 - \$24.99';

  @override
  String get proGetsLabel => 'Pro 包含：';

  @override
  String get proGetsDescription => '分析所有其他热门短信和社交媒体平台的聊天会话，例如：';

  @override
  String get proPlatformsList =>
      'LinkedIn、WhatsApp、Instagram、Facebook Messenger、Telegram、X (Twitter)、电子邮件和日历';

  @override
  String get proPlusGetsLabel => 'Pro-Plus 包含：';

  @override
  String get proPlusGetsDescription => 'Pro 的所有功能，外加以优惠价格提供的 Discord 附加组件。';

  @override
  String get purchaseSuccessfulUnlocked => '购买成功！报告已解锁。';

  @override
  String get purchaseFailed => '购买失败。请重试。';

  @override
  String get membershipActivated => '会员已激活！';

  @override
  String get dateRangeFilter => '日期范围过滤器';

  @override
  String get dateRangeOptional => '(可选)';

  @override
  String get startDate => '开始日期';

  @override
  String get endDate => '结束日期';

  @override
  String get clear => '清除';

  @override
  String get dateRangeRequiresMembership => '需要标准会员或更高';

  @override
  String selectUpToCount(Object current, Object max) {
    return '最多选择 $max。当前：$current';
  }

  @override
  String get clearSelections => '清除选择';

  @override
  String analyzeRandomMetrics(Object count) {
    return '分析 $count 个随机指标';
  }

  @override
  String get saveSelections => '保存选择';

  @override
  String get loadSelections => '加载选择';

  @override
  String get saveMetricListName => '保存指标列表';

  @override
  String get enterListName => '为此指标列表输入名称:';

  @override
  String get chooseSavedMetrics => '选择保存的指标列表:';

  @override
  String get noSavedLists => '目前没有保存的指标列表可加载。';

  @override
  String get metricListSaved => '指标列表保存成功。';

  @override
  String get metricListLoaded => '指标列表加载成功。';

  @override
  String get filters => '筛选';

  @override
  String get sortBy => '排序方式：';

  @override
  String get recent => '最近';

  @override
  String get name => '名称';

  @override
  String get count => '数量';

  @override
  String get namedOnly => '仅命名';

  @override
  String get minMessages => '最少消息：';

  @override
  String get minimumMessages => '最少消息：';

  @override
  String get executiveSummary => '执行摘要';

  @override
  String get metricScores => '指标得分';

  @override
  String get contextualEvidenceExamples => '上下文证据示例';

  @override
  String get neutralSynthesis => '中立综合';

  @override
  String analysisOfSender(Object sender) {
    return '$sender 分析（发送者）';
  }

  @override
  String analysisOfReceiver(Object receiver) {
    return '$receiver 分析（接收者）';
  }

  @override
  String get finalConclusion => '最终结论';

  @override
  String get metric_1_name => '蔑视';

  @override
  String get metric_1_description => '寻找优越感、厌恶、嘲笑、翻白眼语言或侮辱，这些将一方伴侣置于另一方之下。';

  @override
  String get metric_2_name => '防御性';

  @override
  String get metric_2_description => '追踪反射性自我保护、反击、借口和拒绝考虑对方的投诉。';

  @override
  String get metric_3_name => '筑墙';

  @override
  String get metric_3_description => '识别关闭、退缩、忽视、拒绝回答或结束对话以避免参与。';

  @override
  String get metric_4_name => '批评';

  @override
  String get metric_4_description => '检测对性格或人格的攻击，而不是针对具体行为、需求或事件。';

  @override
  String get metric_5_name => '煤气灯效应指标';

  @override
  String get metric_5_description => '标记试图让人怀疑记忆、感知、理智或其经历合法性的行为。';

  @override
  String get metric_6_name => '推卸责任';

  @override
  String get metric_6_description => '衡量责任是否被重定向到另一方伴侣，而不是直接承认。';

  @override
  String get metric_7_name => '升级模式';

  @override
  String get metric_7_description => '评估语气、指责、强度或威胁是否增加，而不是朝向解决方案。';

  @override
  String get metric_8_name => '修复尝试识别';

  @override
  String get metric_8_description => '检查道歉、幽默、暂停、安抚或和平提议是否被注意到并接受。';

  @override
  String get metric_9_name => '责任语言';

  @override
  String get metric_9_description => '寻找对伤害的明确所有权、具体责任和改变行为的意愿。';

  @override
  String get metric_10_name => '边界尊重';

  @override
  String get metric_10_description => '评估关于时间、隐私、身体、情感或接触的既定限制是否得到尊重。';

  @override
  String get metric_11_name => '强制控制指标';

  @override
  String get metric_11_description => '标记恐吓、限制、监控、依赖或对选择和行动的控制模式。';

  @override
  String get metric_12_name => '威胁语言';

  @override
  String get metric_12_description => '识别涉及安全、抛弃、曝光、报复或惩罚的明确或隐含威胁。';

  @override
  String get metric_13_name => '轻视';

  @override
  String get metric_13_description => '检测敷衍关注、将需求视为不重要或拒绝认真对待痛苦。';

  @override
  String get metric_14_name => '否定';

  @override
  String get metric_14_description => '衡量否认、嘲笑或纠正他人的情绪，而不是承认它们。';

  @override
  String get metric_15_name => '同理心表达';

  @override
  String get metric_15_description => '寻找换位思考、关心、情感识别和对他人经历的关切。';

  @override
  String get metric_16_name => '互惠性';

  @override
  String get metric_16_description => '评估注意力、努力、道歉、妥协和情感支持是否双向流动。';

  @override
  String get metric_17_name => '情感调节';

  @override
  String get metric_17_description => '评估保持脚踏实地、暂停、自我安抚和在没有爆炸性反应的情况下沟通的能力。';

  @override
  String get metric_18_name => '用作伤害的讽刺';

  @override
  String get metric_18_description => '标记用于贬低、惩罚、羞辱或将敌意伪装成幽默的讽刺。';

  @override
  String get metric_19_name => '谩骂';

  @override
  String get metric_19_description => '识别贬义标签、侮辱、针对个人的脏话或基于身份的攻击。';

  @override
  String get metric_20_name => '沉默对待模式';

  @override
  String get metric_20_description => '追踪用作惩罚、控制、回避或撤回联系的沉默。';

  @override
  String get metric_21_name => '嫉妒框架';

  @override
  String get metric_21_description => '评估怀疑、占有欲、指责或嫉妒被呈现为关心的证明。';

  @override
  String get metric_22_name => '孤立压力';

  @override
  String get metric_22_description => '标记将伴侣与朋友、家人、支持系统或外部观点分开的努力。';

  @override
  String get metric_23_name => '财务控制指标';

  @override
  String get metric_23_description => '寻找对金钱、支出、就业、账户访问或财务独立的控制。';

  @override
  String get metric_24_name => '隐私侵犯指标';

  @override
  String get metric_24_description => '检测窥探、密码要求、设备检查、位置跟踪或隐私侵犯。';

  @override
  String get metric_25_name => '道歉的具体性';

  @override
  String get metric_25_description => '衡量道歉是否命名了确切的伤害、影响和未来纠正，而不是保持模糊。';

  @override
  String get metric_26_name => '原谅压力';

  @override
  String get metric_26_description => '标记在修复发生之前要求继续前进、快速原谅或停止讨论伤害的要求。';

  @override
  String get metric_27_name => '最小化';

  @override
  String get metric_27_description => '检测淡化伤害、将严重关切称为戏剧性或减少影响以避免责任。';

  @override
  String get metric_28_name => '投射';

  @override
  String get metric_28_description => '寻找反映说话者自己行为、动机或未解决感觉的指责。';

  @override
  String get metric_29_name => '打断模式';

  @override
  String get metric_29_description => '追踪打断、抢话、拒绝完成或控制对话轮次。';

  @override
  String get metric_30_name => '话题转移';

  @override
  String get metric_30_description => '识别改变话题、提出不相关问题或避免核心关切。';

  @override
  String get metric_31_name => '解决导向';

  @override
  String get metric_31_description => '衡量消息是否旨在解决方案、清晰度、协议和下一步。';

  @override
  String get metric_32_name => '共同解决问题';

  @override
  String get metric_32_description => '评估协作语言、共同责任、头脑风暴和寻找可行妥协的意愿。';

  @override
  String get metric_33_name => '情感淹没';

  @override
  String get metric_33_description => '检测不知所措、恐慌、关闭、螺旋或冲突期间无法处理。';

  @override
  String get metric_34_name => '恐惧反应线索';

  @override
  String get metric_34_description => '寻找安抚、谨慎措辞、恐惧、安全关切或对伴侣反应的恐惧。';

  @override
  String get metric_35_name => '声明的一致性';

  @override
  String get metric_35_description => '评估叙述在消息和时间上是否保持内部一致。';

  @override
  String get metric_36_name => '基于证据的回忆';

  @override
  String get metric_36_description => '检查声明是否引用具体事件、引用、时间线或可观察行为。';

  @override
  String get metric_37_name => '要求退缩模式';

  @override
  String get metric_37_description => '追踪一方伴侣寻求答案或改变，而另一方回避、关闭或退出。';

  @override
  String get metric_38_name => '权力失衡指标';

  @override
  String get metric_38_description => '标记不平等的决策权、对后果的恐惧、依赖、恐吓或单方面控制。';

  @override
  String get metric_39_name => '尊重的分歧';

  @override
  String get metric_39_description => '衡量冲突是否保持尊严、好奇心和分歧而没有贬低。';

  @override
  String get metric_40_name => '破裂和修复循环';

  @override
  String get metric_40_description => '评估冲突是否随后是承认、重新连接和实际修复。';

  @override
  String get metric_41_name => '情感撤回';

  @override
  String get metric_41_description => '检测爱、温暖、性、注意力或安抚被扣留作为惩罚或杠杆。';

  @override
  String get metric_42_name => '公开羞辱参考';

  @override
  String get metric_42_description => '标记在他人面前让伴侣尴尬的威胁、玩笑或行动。';

  @override
  String get metric_43_name => '物质相关冲突线索';

  @override
  String get metric_43_description => '寻找与侵略、不可靠、冲突或伤害相关的酒精或药物使用。';

  @override
  String get metric_44_name => '育儿冲突压力';

  @override
  String get metric_44_description => '识别在冲突或杠杆中使用的孩子、监护权、育儿角色或父母内疚。';

  @override
  String get metric_45_name => '性边界尊重';

  @override
  String get metric_45_description => '评估对同意、压力、拒绝、舒适、时机和性自主权的尊重。';

  @override
  String get metric_46_name => '数字骚扰指标';

  @override
  String get metric_46_description => '追踪重复的不受欢迎消息、垃圾电话、在线压力、监控或基于平台的恐吓。';

  @override
  String get metric_47_name => '监控或监视语言';

  @override
  String get metric_47_description => '标记检查行踪、要求证明、跟踪行为或持续验证。';

  @override
  String get metric_48_name => '未来导向';

  @override
  String get metric_48_description => '衡量伴侣是否讨论未来改进、承诺、计划或建设性方向。';

  @override
  String get metric_49_name => '安全规划信号';

  @override
  String get metric_49_description => '寻找寻求帮助、创造距离、记录伤害或计划身体/情感安全的尝试。';

  @override
  String get metric_50_name => '共同降级尝试';

  @override
  String get metric_50_description => '追踪暂停、平静语言、更柔和的语气、超时以及双方伴侣减少强度的尝试。';

  @override
  String get metric_51_name => '安全依恋线索';

  @override
  String get metric_51_description => '识别信任、直接安抚、情感可用性以及对亲密和独立的舒适感。';

  @override
  String get metric_52_name => '焦虑依恋激活';

  @override
  String get metric_52_description => '标记抗议行为、紧急安抚需求、被抛弃恐惧和对距离的高度敏感。';

  @override
  String get metric_53_name => '回避依恋疏远';

  @override
  String get metric_53_description => '检测情感最小化、独立防御、从脆弱中退缩或对需求的不适。';

  @override
  String get metric_54_name => '混乱依恋信号';

  @override
  String get metric_54_description => '寻找接近-回避循环、恐惧与需求混合、混乱反应或令人困惑的亲密模式。';

  @override
  String get metric_55_name => '情感出价和回应';

  @override
  String get metric_55_description => '衡量对注意力、舒适或连接的邀请以及它们是否被接受或错过。';

  @override
  String get metric_56_name => '远离连接';

  @override
  String get metric_56_description => '标记忽视、驳回或未能回应亲密或支持的出价。';

  @override
  String get metric_57_name => '对抗连接';

  @override
  String get metric_57_description => '检测对情感、脆弱或修复尝试的敌意或惩罚性回应。';

  @override
  String get metric_58_name => '积极情感覆盖';

  @override
  String get metric_58_description => '寻找慷慨、善意、喜爱和通过关怀解读冲突。';

  @override
  String get metric_59_name => '消极情感覆盖';

  @override
  String get metric_59_description => '标记假设恶意、消极解读中性消息和持续敌意框架。';

  @override
  String get metric_60_name => '严厉启动模式';

  @override
  String get metric_60_description => '识别以指责、攻击、蔑视或责备而不是请求开始的对话。';

  @override
  String get metric_61_name => '温和启动模式';

  @override
  String get metric_61_description => '寻找使用感受、需求、具体请求和非指责语言的温和开场。';

  @override
  String get metric_62_name => '生理自我安抚';

  @override
  String get metric_62_description => '评估在继续冲突之前暂停、呼吸、腾出空间或调节身体的尝试。';

  @override
  String get metric_63_name => '冲突回避模式';

  @override
  String get metric_63_description => '追踪重复回避必要话题、不适、分歧或情感诚实。';

  @override
  String get metric_64_name => '易变冲突风格';

  @override
  String get metric_64_description => '检测高强度的直接表达冲突，可能仍包括参与和修复。';

  @override
  String get metric_65_name => '验证冲突风格';

  @override
  String get metric_65_description => '衡量伴侣在分歧时是否承认彼此的观点。';

  @override
  String get metric_66_name => '敌对冲突风格';

  @override
  String get metric_66_description => '标记频繁批评、蔑视、防御、攻击和对抗性框架。';

  @override
  String get metric_67_name => '敌对-疏离模式';

  @override
  String get metric_67_description => '识别冷漠敌意、情感疏离、蔑视和低修复动机。';

  @override
  String get metric_68_name => '妥协意愿';

  @override
  String get metric_68_description => '寻找灵活性、谈判、中间提案和尊重双方需求的牺牲。';

  @override
  String get metric_69_name => '影响接受';

  @override
  String get metric_69_description => '衡量对受伴侣感受、需求或观点影响的开放性。';

  @override
  String get metric_70_name => '僵局冲突信号';

  @override
  String get metric_70_description => '标记与价值观、梦想、身份或慢性不兼容性相关的重复未解决问题。';

  @override
  String get metric_71_name => '可解决问题框架';

  @override
  String get metric_71_description => '检测可导致具体协议的实用、具体问题定义。';

  @override
  String get metric_72_name => '共享意义参考';

  @override
  String get metric_72_description => '寻找创造共享关系故事的价值观、仪式、目标、记忆或身份语言。';

  @override
  String get metric_73_name => '爱情地图意识';

  @override
  String get metric_73_description => '评估对伴侣内心世界、压力源、偏好、恐惧和日常生活的了解。';

  @override
  String get metric_74_name => '喜爱和钦佩';

  @override
  String get metric_74_description => '识别欣赏、尊重、温暖、赞美、感激和积极看法。';

  @override
  String get metric_75_name => '情感劳动失衡';

  @override
  String get metric_75_description => '标记一方伴侣承担不成比例的计划、安抚、记忆、解释或关系维护。';

  @override
  String get metric_76_name => '精神负担驳回';

  @override
  String get metric_76_description => '检测最小化不可见的计划工作、家庭协调、安排或责任跟踪。';

  @override
  String get metric_77_name => '武器化无能线索';

  @override
  String get metric_77_description => '寻找声称无能、困惑或无助以避免公平责任。';

  @override
  String get metric_78_name => '创伤触发敏感性';

  @override
  String get metric_78_description => '衡量对触发因素、创伤反应和谨慎处理脆弱话题的意识。';

  @override
  String get metric_79_name => '过度警惕线索';

  @override
  String get metric_79_description => '标记扫描危险、过度监控语气、对错误的恐惧或持续的情感警觉。';

  @override
  String get metric_80_name => '被抛弃恐惧语言';

  @override
  String get metric_80_description => '检测被留下、被替换、被忽视、被抛弃或情感被遗弃的恐惧。';

  @override
  String get metric_81_name => '寻求安抚模式';

  @override
  String get metric_81_description => '追踪重复请求爱、承诺、安全或持续兴趣的证明。';

  @override
  String get metric_82_name => '追求者-疏远者循环';

  @override
  String get metric_82_description => '识别一方伴侣升级对亲密的追求，而另一方增加距离。';

  @override
  String get metric_83_name => '怨恨积累';

  @override
  String get metric_83_description => '寻找存储的委屈、重复的过去参考、苦涩和未解决的情感债务。';

  @override
  String get metric_84_name => '记分行为';

  @override
  String get metric_84_description => '标记交易性计算错误、恩惠、牺牲或错误以获得杠杆。';

  @override
  String get metric_85_name => '有条件的爱';

  @override
  String get metric_85_description => '检测仅在达到合规时提供的爱、批准、访问或温暖。';

  @override
  String get metric_86_name => '爱情轰炸指标';

  @override
  String get metric_86_description => '标记用于加速依恋或控制的强烈爱、承诺、压力或理想化。';

  @override
  String get metric_87_name => '吸尘尝试';

  @override
  String get metric_87_description => '识别通过内疚、怀旧、承诺、危机或突然的爱将某人拉回的尝试。';

  @override
  String get metric_88_name => 'DARVO模式';

  @override
  String get metric_88_description => '检测在面对伤害时否认、攻击和反转受害者-加害者反应。';

  @override
  String get metric_89_name => '受害者姿态模式';

  @override
  String get metric_89_description => '标记避免责任或重定向对造成伤害注意的重复自我受害者化。';

  @override
  String get metric_90_name => '道德优越性框架';

  @override
  String get metric_90_description => '寻找用于主导冲突的正义、纯洁声明或道德优越性。';

  @override
  String get metric_91_name => '人格暗杀';

  @override
  String get metric_91_description => '检测对身份、正直、心理健康或价值的广泛攻击，而不是具体行为。';

  @override
  String get metric_92_name => '三角化指标';

  @override
  String get metric_92_description => '标记将第三方带入冲突以施压、比较、验证或破坏伴侣。';

  @override
  String get metric_93_name => '社会比较压力';

  @override
  String get metric_93_description => '寻找用于羞辱或胁迫的前任、朋友、其他情侣或理想的比较。';

  @override
  String get metric_94_name => '自主支持';

  @override
  String get metric_94_description => '衡量对独立选择、友谊、目标、边界和个人代理权的尊重。';

  @override
  String get metric_95_name => '同意和选择尊重';

  @override
  String get metric_95_description => '评估决策是否在没有压力、内疚、威胁或操纵的情况下自由做出。';

  @override
  String get metric_96_name => '协作规划';

  @override
  String get metric_96_description => '寻找共享安排、联合决策、协调责任和实际跟进。';

  @override
  String get metric_97_name => '修复跟进';

  @override
  String get metric_97_description => '衡量承诺的更改是否后来反映在行为中，而不仅仅是言语。';

  @override
  String get metric_98_name => '改变行为证据';

  @override
  String get metric_98_description => '检查显示学习、调整或减少有害行为的可观察、重复行动。';

  @override
  String get metric_99_name => '情感安全语言';

  @override
  String get metric_99_description => '识别邀请诚实、降低恐惧、保护尊严和安抚安全表达的语言。';

  @override
  String get metric_100_name => '关系矛盾';

  @override
  String get metric_100_description => '检测不确定性、混合承诺、推拉消息或不明确的继续愿望。';

  @override
  String get unableToOpenConversations => '无法打开对话';

  @override
  String get unableToOpenConversationsBody => '加载对话时出错。请重试。';

  @override
  String get unableToLoadConversationsBody => '无法加载对话。请检查权限并重试。';

  @override
  String get errorLoadingConversationsBody => '加载对话错误。请重试。';

  @override
  String get smsPermissionRequired => '需要 SMS 权限';

  @override
  String get smsPermissionRequiredBody =>
      '要分析 SMS 对话，我们需要读取消息的权限。您的隐私很重要 — 消息仅在本地分析，绝不会存储在我们的服务器上。';

  @override
  String get grantSmsPermission => '授予 SMS 权限';

  @override
  String get noSmsConversationsFound => '未找到 SMS 对话';

  @override
  String get noConversationsMatchSearch => '没有对话匹配您的搜索';

  @override
  String get noSmsMessagesOnDevice => '此设备上没有 SMS 消息';

  @override
  String get tryDifferentSearch => '尝试不同的搜索词';

  @override
  String get clearSearch => '清除搜索';

  @override
  String selectedFile(String filename) {
    return '已选择: $filename';
  }

  @override
  String get invalidFile => '无效文件';

  @override
  String get fileImport => '导入文件';

  @override
  String get fileImportNotImplemented => '此文件类型的文件分析尚未实现。';

  @override
  String get errorPickingFile => '无法打开文件。请重试。';

  @override
  String get readyToCapture => '准备捕获';

  @override
  String get readyToCaptureBody => '现在转到消息应用并开始截屏。\n\n完成后返回此应用并点击\"完成并处理\"。';

  @override
  String get noScreenshotsToProcess => '没有要处理的截图。';

  @override
  String processingScreenshot(int current, int total) {
    return '正在处理截图 $current / $total...';
  }

  @override
  String get noMessagesFound => '未找到消息';

  @override
  String get noMessagesFoundBody => '无法从截图中提取消息。\n\n确保截图清晰显示对话。';

  @override
  String loadedMessages(int count) {
    return '从截图加载了 $count 条消息';
  }

  @override
  String get processingError => '处理错误';

  @override
  String get processingErrorBody => '处理截图时出错。请重试。';

  @override
  String metricListSavedAs(String name) {
    return '您的选择已保存为 \"$name\"。';
  }

  @override
  String metricListLoadedName(String name) {
    return '选择 \"$name\" 已检索并应用。';
  }

  @override
  String conversationLoaded(int count, String name) {
    return '从 $name 加载了 $count 条消息';
  }

  @override
  String get loadButton => '加载';

  @override
  String get photoPermissionRequired => '需要照片库权限才能检测截图。';

  @override
  String get initializingConnection => '正在初始化安全连接...';

  @override
  String get configurationRequired => '需要配置';

  @override
  String get goBack => '返回';

  @override
  String get enableDateRangeFiltering => '启用日期范围过滤';

  @override
  String get clearSelectedDateRange => '清除选定的日期范围';

  @override
  String get largeThreadNoticeTitle => '用户通知';

  @override
  String get largeThreadNoticeBody =>
      '处理异常大的文本线程时，此应用程序中的某些加载屏幕有时可能超过一分半钟。\n\n应用程序不会挂起。如果您看到旋转的状态指示器，应用程序仍在加载。\n\n请在这种情况下保持耐心，因为与其他应用程序相比，加载时间可能会更长，特别是在处理大型数据集（例如包含 50,000 条消息的线程）时。';

  @override
  String get neverShowThisAgain => '不再显示此消息';

  @override
  String loadingConversationWith(String name) {
    return '正在加载对话\n与 $name…';
  }

  @override
  String get iosCaptureInstructions =>
      '1. 打开消息应用并选择对话\n2. 滚动到要分析的最旧消息\n3. 点击下方的\"开始捕获\"\n4. 滚动对话时截取屏幕截图\n5. 完成后点击\"完成并处理\"';

  @override
  String get howToCaptureIosMessages => '如何捕获 iOS 消息';

  @override
  String get deepSeekApiKey => 'DeepSeek API 密钥';

  @override
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis =>
      '输入您的 DeepSeek API 密钥以启用 AI 分析。';

  @override
  String get getYourApiKeyFrom =>
      '从以下位置获取您的 API 密钥：https://platform.deepseek.com';

  @override
  String get apiKey => 'API 密钥';

  @override
  String get skPlaceholder => 'sk-...';

  @override
  String get yourApiKeyIsStoredSecurely => '您的 API 密钥安全地存储在您的设备上，绝不会共享。';

  @override
  String get pleaseEnterApiKey => '请输入 API 密钥';

  @override
  String get apiKeySavedSuccessfully => 'API 密钥保存成功！';

  @override
  String get pleaseBePatientLongerTextThreads => '请耐心等待，较长的文本线程数据集加载需要相当长的时间';

  @override
  String get almostThereBigOne => '即将完成，哇，这个一定很大';

  @override
  String get pleaseBePatientLargeDatasets => '请耐心等待，大型数据集可能导致加载时间超过一分半钟';

  @override
  String continuingToLoadMassiveThread(String name) {
    return '继续加载与 $name 的巨大线程…';
  }

  @override
  String get noMessagesInDateRange => '在所选日期范围内未找到消息。请选择其他日期或清除日期筛选器。';
}
