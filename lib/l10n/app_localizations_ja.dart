// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'AI関係性毒性アナライザー';

  @override
  String get psychologicalMetrics => '心理的指標';

  @override
  String get metricsDescription =>
      '選択する指標が少ないほど、それらの行動についてより深く集中的な分析が得られます。選択する指標が多いほど、指標ごとの詳細は少なくなりますが、より広範なレポートが得られます。';

  @override
  String get selectSMS => 'SMS / RCSチャットを選択';

  @override
  String get selectDiscordChannel => 'Discordチャンネルを選択';

  @override
  String get lightMode => 'ライト';

  @override
  String get darkMode => 'ダーク';

  @override
  String get discordSetupTitle => 'Discordの設定方法';

  @override
  String get discordSetupDescription =>
      'アプリでDiscordチャンネル分析を有効にするには、次の手順に従ってください:';

  @override
  String get discordStep1Title => 'Discordボットを作成';

  @override
  String get discordStep1Description =>
      'discord.com/developersに移動し、新しいアプリケーションを作成してボットを追加します。ボットトークンをコピーします。';

  @override
  String get discordStep2Title => 'ボット権限を有効にする';

  @override
  String get discordStep2Description =>
      'ボット設定で「Message Content Intent」と「Server Members Intent」を有効にします。';

  @override
  String get discordStep3Title => 'ボットをサーバーに招待';

  @override
  String get discordStep3Description =>
      'OAuth2 URLジェネレーターを使用して、必要な権限でボットをDiscordサーバーに招待します。';

  @override
  String get discordStep4Title => 'アプリで設定';

  @override
  String get discordStep4Description =>
      'アプリ設定にボットトークンを入力します（ヘルプが必要な場合はサポートにお問い合わせください）。';

  @override
  String get discordStep5Title => 'チャンネルを選択';

  @override
  String get discordStep5Description =>
      '「Discordチャンネルを選択」をタップし、サーバーを選択してから、分析するチャンネルを選択します。';

  @override
  String get gotIt => '了解';

  @override
  String get selectFile => 'ファイルを選択';

  @override
  String get analyzeSelectedMetrics => '選択した指標を分析';

  @override
  String get analyze20RandomMetrics => '20のランダムな指標を分析';

  @override
  String get membershipOptions => 'メンバーシップオプション';

  @override
  String get free => '無料';

  @override
  String get oneTimeUnlock => 'レポートの一回限りのロック解除';

  @override
  String get standard => 'スタンダード';

  @override
  String get discordAddon => 'Discordアドオン';

  @override
  String get analyze => '分析';

  @override
  String get report => 'レポート';

  @override
  String get pdfReport => 'PDFレポート';

  @override
  String get openPdf => 'PDFを開く';

  @override
  String get sharePdf => 'PDFを共有';

  @override
  String get printPdf => 'PDFを印刷';

  @override
  String get closePdfPreview => 'PDFプレビューウィンドウを閉じる';

  @override
  String get openPdfPreview => 'PDFプレビューウィンドウを開く';

  @override
  String get pdfPreviewDescription =>
      '埋め込まれたPDFウィンドウは、レポートをコンパクトに保つため最初は閉じた状態で始まります。';

  @override
  String get notNow => '後で';

  @override
  String get unlockThisReport => 'このレポートのロックを解除 - \$20';

  @override
  String get joinStandard => 'スタンダードに加入 - \$9.99/月';

  @override
  String get instantUnlockTitle => '即時レポートロック解除 - \$20';

  @override
  String get instantUnlockDescription =>
      'これは現在のレポートのみのロックを解除する一回限りの購入です。サブスクリプションは不要です。今後のレポートには個別のロック解除またはメンバーシップが必要です。\n\n支払いを続行しますか？';

  @override
  String get purchaseFor20 => '\$20で購入';

  @override
  String get share => '共有';

  @override
  String get print => '印刷';

  @override
  String get save => '保存';

  @override
  String get cancel => 'キャンセル';

  @override
  String get ok => 'OK';

  @override
  String get loading => '読み込み中...';

  @override
  String get error => 'エラー';

  @override
  String get success => '成功';

  @override
  String get conversations => '会話';

  @override
  String get messages => 'メッセージ';

  @override
  String get selectConversation => '会話を選択';

  @override
  String get selectSmsConversation => 'SMS / RCSチャットを選択';

  @override
  String get searchConversations => '会話を検索...';

  @override
  String get loadingConversations => '会話を読み込み中...';

  @override
  String get errorLoadingConversations => '会話の読み込みエラー';

  @override
  String get selectConversationToAnalyze => '分析する会話を選択';

  @override
  String get analyzeWithSelectedMetrics => '選択した指標で分析';

  @override
  String get loadConversationAndSelectMetric => '会話を読み込み、少なくとも1つの指標を選択してください';

  @override
  String get selectAtLeastOneMetric => 'レポートを実行するには、少なくとも1つの指標を選択する必要があります。';

  @override
  String get spinningMetricWheel => '指標ホイールを回転中...';

  @override
  String get loadConversationToAnalyze => '分析する会話を読み込む';

  @override
  String get noConversationsFound => '会話が見つかりません';

  @override
  String get permissionsRequired => '権限が必要です';

  @override
  String get smsPermission => 'テキストメッセージ';

  @override
  String get contactsPermission => '連絡先';

  @override
  String get smsPermissionDescription => '関係パターンについてSMS会話を分析するため';

  @override
  String get contactsPermissionDescription => '電話番号の代わりに連絡先名を表示するため';

  @override
  String get analyzingMessage => 'AIが心理分析を生成している間お待ちください...';

  @override
  String get analyzingStatus => '会話を分析中...';

  @override
  String get analyzingSubMessage =>
      'お待ちください。このプロセスは、接続速度と選択した指標の数によって最大1分かかる場合があります';

  @override
  String get unlockFullReport => 'このレポート全体のロックを解除して表示';

  @override
  String get fullReportLocked => '完全なレポートはロックされています';

  @override
  String get upgradeToUnlock =>
      'メンバーシップをアップグレードして、すべての指標と詳細な洞察を含む完全な心理分析レポートのロックを解除してください。';

  @override
  String get language => '言語';

  @override
  String get english => '英語';

  @override
  String get spanish => 'スペイン語';

  @override
  String get french => 'フランス語';

  @override
  String get german => 'ドイツ語';

  @override
  String get italian => 'イタリア語';

  @override
  String get portuguese => 'ポルトガル語';

  @override
  String get dutch => 'オランダ語';

  @override
  String get russian => 'ロシア語';

  @override
  String get chinese => '中国語';

  @override
  String get japanese => '日本語';

  @override
  String get korean => '韓国語';

  @override
  String get arabic => 'アラビア語';

  @override
  String get hindi => 'ヒンディー語';

  @override
  String get turkish => 'トルコ語';

  @override
  String get polish => 'ポーランド語';

  @override
  String get ukrainian => 'ウクライナ語';

  @override
  String get runAnotherAnalysis => '別の分析を実行しますか？';

  @override
  String get becomeMemberTitle => 'メンバーになって完全な分析レポートを取得';

  @override
  String get becomeMemberSubtitle => '分析が必要な会話やレポートに合ったアクセスレベルを選択してください。';

  @override
  String get benefitAnalyzeSms => 'SMSテキストメッセージを分析';

  @override
  String get benefitReportPreview => 'レポートのプレビューを実行';

  @override
  String get benefitViewPartialReport => 'レポートの約25%を表示';

  @override
  String get benefitLockedDetails => '完全なレポートの詳細はロック済み';

  @override
  String get currentFreeAccess => '現在の無料アクセス';

  @override
  String get benefitUnlockCurrentReport => 'この完全なレポートのロックを解除';

  @override
  String get benefitNoSubscription => 'サブスクリプション不要';

  @override
  String get benefitSavePrintShareThis => 'このレポートを保存、印刷、共有';

  @override
  String get benefitBestSingleAnalysis => '分析が1回だけ必要な場合に最適';

  @override
  String get unlockThisReportShort => 'このレポートのロックを解除';

  @override
  String get benefitFullSmsReport => '完全なSMS分析レポート';

  @override
  String get benefitSavePrintSharePdf => 'PDFレポートを保存、印刷、共有';

  @override
  String get benefitTenReports => '24時間ごとに10件のレポート';

  @override
  String get benefitBestTextReview => 'テキストメッセージの関係レビューに最適';

  @override
  String get benefitDateRangeFilter => '日付範囲で分析をフィルタリング';

  @override
  String get signUpStandard => 'スタンダードメンバーシップに登録';

  @override
  String get benefitAddToStandard => 'スタンダードメンバーシップに追加';

  @override
  String get benefitAnalyzeDiscord => 'Discordサーバーのチャットを分析';

  @override
  String get benefitRequiresBot => 'ボットのインストールが必要';

  @override
  String get benefitBestGamers => 'ゲーマーとDiscordコミュニティに最適';

  @override
  String get addDiscordAnalysis => 'Discord分析を追加';

  @override
  String get requiresStandardMembership => 'スタンダードメンバーシップが必要';

  @override
  String get comingSoon => '近日公開';

  @override
  String get comingSoonWithNextUpdate => '次回のアップデートで近日公開：';

  @override
  String get proMembershipTier => 'Proメンバーシップ層 - \$19.99';

  @override
  String get proPlusMembershipTier => 'Pro-Plusメンバーシップ層 - \$24.99';

  @override
  String get proGetsLabel => 'Proの内容：';

  @override
  String get proGetsDescription =>
      '次のような他のすべての人気のメッセージングおよびソーシャルメディアプラットフォームのチャットスレッドを分析：';

  @override
  String get proPlatformsList =>
      'LinkedIn、WhatsApp、Instagram、Facebook Messenger、Telegram、X (Twitter)、メール、カレンダー';

  @override
  String get proPlusGetsLabel => 'Pro-Plusの内容：';

  @override
  String get proPlusGetsDescription => 'Proのすべての機能に加え、割引価格のDiscordアドオン。';

  @override
  String get purchaseSuccessfulUnlocked => '購入成功！レポートのロックが解除されました。';

  @override
  String get purchaseFailed => '購入に失敗しました。もう一度お試しください。';

  @override
  String get membershipActivated => 'メンバーシップが有効になりました！';

  @override
  String get dateRangeFilter => '日付範囲フィルター';

  @override
  String get dateRangeOptional => '(オプション)';

  @override
  String get startDate => '開始日';

  @override
  String get endDate => '終了日';

  @override
  String get clear => 'クリア';

  @override
  String get dateRangeRequiresMembership => 'Standardメンバーシップ以上が必要';

  @override
  String selectUpToCount(Object current, Object max) {
    return '最大$max個選択。現在：$current';
  }

  @override
  String get clearSelections => '選択をクリア';

  @override
  String analyzeRandomMetrics(Object count) {
    return '$count個のランダム指標を分析';
  }

  @override
  String get saveSelections => '選択を保存';

  @override
  String get loadSelections => '選択を読み込み';

  @override
  String get saveMetricListName => 'メトリクスリストを保存';

  @override
  String get enterListName => 'このメトリクスリストの名前を入力:';

  @override
  String get chooseSavedMetrics => '保存されたメトリクスリストを選択:';

  @override
  String get noSavedLists => '現在読み込む保存済みメトリクスリストがありません。';

  @override
  String get metricListSaved => 'メトリクスリストが正常に保存されました。';

  @override
  String get metricListLoaded => 'メトリクスリストが正常に読み込まれました。';

  @override
  String get filters => 'フィルター';

  @override
  String get sortBy => '並べ替え：';

  @override
  String get recent => '最新';

  @override
  String get name => '名前';

  @override
  String get count => '数';

  @override
  String get namedOnly => '名前付きのみ';

  @override
  String get minMessages => '最小メッセージ数：';

  @override
  String get minimumMessages => '最小メッセージ数：';

  @override
  String get executiveSummary => 'エグゼクティブサマリー';

  @override
  String get metricScores => 'メトリックスコア';

  @override
  String get contextualEvidenceExamples => '文脈的証拠の例';

  @override
  String get neutralSynthesis => '中立の総合';

  @override
  String analysisOfSender(Object sender) {
    return '$senderの分析（送信者）';
  }

  @override
  String analysisOfReceiver(Object receiver) {
    return '$receiverの分析（受信者）';
  }

  @override
  String get finalConclusion => '最終結論';

  @override
  String get metric_1_name => '軽蔑';

  @override
  String get metric_1_description =>
      '優越感、嫌悪、嘲笑、目を回す言葉、または一方のパートナーを他方より下に置く侮辱を探します。';

  @override
  String get metric_2_name => '防衛的';

  @override
  String get metric_2_description =>
      '反射的な自己防衛、反撃、言い訳、および相手の苦情を考慮することを拒否することを追跡します。';

  @override
  String get metric_3_name => '壁を作る';

  @override
  String get metric_3_description =>
      '関与を避けるためにシャットダウン、撤退、無視、回答拒否、または会話の終了を特定します。';

  @override
  String get metric_4_name => '批判';

  @override
  String get metric_4_description => '特定の行動、ニーズ、または出来事ではなく、性格または人格への攻撃を検出します。';

  @override
  String get metric_5_name => 'ガスライティングの指標';

  @override
  String get metric_5_description => '誰かが記憶、知覚、正気、または経験の正当性を疑わせる試みをフラグします。';

  @override
  String get metric_6_name => '責任転嫁';

  @override
  String get metric_6_description =>
      '責任が直接認められるのではなく、他方のパートナーにリダイレクトされるかどうかを測定します。';

  @override
  String get metric_7_name => 'エスカレーションパターン';

  @override
  String get metric_7_description =>
      '解決に向かうのではなく、トーン、非難、強度、または脅威が増加するかどうかを評価します。';

  @override
  String get metric_8_name => '修復の試みの認識';

  @override
  String get metric_8_description =>
      '謝罪、ユーモア、一時停止、安心、または平和の提案が認識され受け入れられるかどうかを確認します。';

  @override
  String get metric_9_name => '責任の言語';

  @override
  String get metric_9_description => '害の明確な所有権、特定の責任、および行動を変える意欲を探します。';

  @override
  String get metric_10_name => '境界の尊重';

  @override
  String get metric_10_description =>
      '時間、プライバシー、体、感情、または接触に関する設定された制限が尊重されるかどうかを評価します。';

  @override
  String get metric_11_name => '強制的な支配の指標';

  @override
  String get metric_11_description => '威嚇、制限、監視、依存、または選択と移動の支配のパターンをフラグします。';

  @override
  String get metric_12_name => '脅迫の言語';

  @override
  String get metric_12_description => '安全、放棄、暴露、報復、または罰に関連する明示的または暗黙の脅威を特定します。';

  @override
  String get metric_13_name => '軽視';

  @override
  String get metric_13_description =>
      '懸念を無視し、ニーズを重要でないと扱い、苦痛を真剣に受け取ることを拒否することを検出します。';

  @override
  String get metric_14_name => '無効化';

  @override
  String get metric_14_description => '他者の感情を認めるのではなく、否定、嘲笑、または修正を測定します。';

  @override
  String get metric_15_name => '共感の表現';

  @override
  String get metric_15_description => '視点の取得、ケア、感情の認識、および他者の経験への懸念を探します。';

  @override
  String get metric_16_name => '相互性';

  @override
  String get metric_16_description => '注意、努力、謝罪、妥協、感情的サポートが双方向に流れるかどうかを評価します。';

  @override
  String get metric_17_name => '感情調整';

  @override
  String get metric_17_description =>
      '接地を保ち、一時停止し、自己を落ち着かせ、爆発的な反応性なしにコミュニケーションする能力を評価します。';

  @override
  String get metric_18_name => '害としての皮肉';

  @override
  String get metric_18_description =>
      '軽蔑、罰、屈辱、または敵意をユーモアとして偽装するために使用される皮肉をフラグします。';

  @override
  String get metric_19_name => '名前呼び';

  @override
  String get metric_19_description =>
      '軽蔑的なラベル、侮辱、個人に向けられた冒涜、またはアイデンティティに基づく攻撃を特定します。';

  @override
  String get metric_20_name => '沈黙処理パターン';

  @override
  String get metric_20_description => '罰、支配、回避、または接続の撤回として使用される沈黙を追跡します。';

  @override
  String get metric_21_name => '嫉妬の枠組み';

  @override
  String get metric_21_description => 'ケアの証明として提示される疑念、所有欲、非難、または嫉妬を評価します。';

  @override
  String get metric_22_name => '孤立の圧力';

  @override
  String get metric_22_description =>
      'パートナーを友人、家族、サポートシステム、または外部の視点から分離する努力をフラグします。';

  @override
  String get metric_23_name => '財政支配の指標';

  @override
  String get metric_23_description => 'お金、支出、雇用、アカウントへのアクセス、または財政的独立の支配を探します。';

  @override
  String get metric_24_name => 'プライバシーの侵害の指標';

  @override
  String get metric_24_description =>
      '覗き見、パスワード要求、デバイスチェック、位置追跡、またはプライバシーの侵害を検出します。';

  @override
  String get metric_25_name => '謝罪の具体性';

  @override
  String get metric_25_description =>
      '謝罪が曖昧なままであるのではなく、正確な害、影響、および将来の修正を名前で指定するかどうかを測定します。';

  @override
  String get metric_26_name => '許しの圧力';

  @override
  String get metric_26_description =>
      '修復が発生する前に、先に進み、すぐに許し、または害についての議論を停止する要求をフラグします。';

  @override
  String get metric_27_name => '最小化';

  @override
  String get metric_27_description =>
      '害を軽視し、深刻な懸念をドラマと呼び、影響を減らして責任を回避することを検出します。';

  @override
  String get metric_28_name => '投影';

  @override
  String get metric_28_description => '話し手自身の行動、動機、または未解決の感情を反映する非難を探します。';

  @override
  String get metric_29_name => '中断パターン';

  @override
  String get metric_29_description => '遮断、話し越し、完了の拒否、または会話のターンの制御を追跡します。';

  @override
  String get metric_30_name => 'トピックの転換';

  @override
  String get metric_30_description => '主題の変更、無関係な問題の提起、または中心的な懸念の回避を特定します。';

  @override
  String get metric_31_name => '解決の指向';

  @override
  String get metric_31_description =>
      'メッセージが解決策、明確さ、合意、および次のステップを目指しているかどうかを測定します。';

  @override
  String get metric_32_name => '共同問題解決';

  @override
  String get metric_32_description =>
      '協力的な言語、共有責任、ブレインストーミング、および実行可能な妥協を見つける意欲を評価します。';

  @override
  String get metric_33_name => '感情的な洪水';

  @override
  String get metric_33_description => '圧倒、パニック、シャットダウン、螺旋、または紛争中の処理不能を検出します。';

  @override
  String get metric_34_name => '恐怖反応の手がかり';

  @override
  String get metric_34_description =>
      '宥和、慎重な言葉遣い、恐怖、安全上の懸念、またはパートナーの反応への恐怖を探します。';

  @override
  String get metric_35_name => '主張の一貫性';

  @override
  String get metric_35_description => 'メッセージと時間を通じて説明が内部的に一貫しているかどうかを評価します。';

  @override
  String get metric_36_name => '証拠に基づく記憶';

  @override
  String get metric_36_description =>
      '主張が具体的な出来事、引用、タイムライン、または観察可能な行動を参照しているかどうかを確認します。';

  @override
  String get metric_37_name => '要求撤退パターン';

  @override
  String get metric_37_description =>
      '一方のパートナーが回答または変更を追求し、他方が回避、シャットダウン、または退出することを追跡します。';

  @override
  String get metric_38_name => '力の不均衡の指標';

  @override
  String get metric_38_description => '不平等な決定権、結果への恐怖、依存、威嚇、または一方的な支配をフラグします。';

  @override
  String get metric_39_name => '尊重ある不同意';

  @override
  String get metric_39_description => '紛争が尊厳、好奇心、および不同意を低下させずに維持するかどうかを測定します。';

  @override
  String get metric_40_name => '破壊と修復のサイクル';

  @override
  String get metric_40_description => '紛争が認識、再接続、および実際の修復に続くかどうかを評価します。';

  @override
  String get metric_41_name => '愛情の撤回';

  @override
  String get metric_41_description =>
      '愛、温かさ、セックス、注意、または安心が罰またはてことして差し控えられていることを検出します。';

  @override
  String get metric_42_name => '公的な屈辱の参照';

  @override
  String get metric_42_description => '他者の前でパートナーを恥ずかしくさせる脅威、冗談、または行動をフラグします。';

  @override
  String get metric_43_name => '物質関連の紛争の手がかり';

  @override
  String get metric_43_description => '攻撃性、信頼性、紛争、または害に関連するアルコールまたは薬物の使用を探します。';

  @override
  String get metric_44_name => '育児紛争の圧力';

  @override
  String get metric_44_description =>
      '紛争またはてことして使用される子供、監護権、育児の役割、または親の罪悪感を特定します。';

  @override
  String get metric_45_name => '性的境界の尊重';

  @override
  String get metric_45_description => '同意、圧力、拒否、快適さ、タイミング、および性的自律性への尊重を評価します。';

  @override
  String get metric_46_name => 'デジタルハラスメントの指標';

  @override
  String get metric_46_description =>
      '繰り返される不要なメッセージ、スパムコール、オンライン圧力、監視、またはプラットフォームベースの脅迫を追跡します。';

  @override
  String get metric_47_name => '監視または監視の言語';

  @override
  String get metric_47_description => '居場所の確認、証明の要求、行動の追跡、または継続的な検証をフラグします。';

  @override
  String get metric_48_name => '未来の指向';

  @override
  String get metric_48_description =>
      'パートナーが将来の改善、コミットメント、計画、または建設的な方向について議論するかどうかを測定します。';

  @override
  String get metric_49_name => '安全計画の信号';

  @override
  String get metric_49_description =>
      '助けを求め、距離を作り、害を文書化し、身体的/感情的な安全を計画する試みを探します。';

  @override
  String get metric_50_name => '相互のデエスカレーションの試み';

  @override
  String get metric_50_description =>
      '一時停止、落ち着いた言葉、より柔らかいトーン、タイムアウト、および両方のパートナーが強度を減らす試みを追跡します。';

  @override
  String get metric_51_name => '安全な愛着の手がかり';

  @override
  String get metric_51_description => '信頼、直接的な安心、感情的な可用性、および親密さと独立への快適さを特定します。';

  @override
  String get metric_52_name => '不安な愛着の活性化';

  @override
  String get metric_52_description => '抗議行動、緊急の安心の必要性、放棄の恐怖、および距離への過敏性をフラグします。';

  @override
  String get metric_53_name => '回避的な愛着の距離';

  @override
  String get metric_53_description =>
      '感情的な最小化、独立の防御、脆弱性からの撤退、またはニーズへの不快感を検出します。';

  @override
  String get metric_54_name => '無秩序な愛着の信号';

  @override
  String get metric_54_description =>
      '接近-回避サイクル、ニーズと混ざった恐怖、混乱した反応、または混乱した親密さのパターンを探します。';

  @override
  String get metric_55_name => '感情的な出札と応答';

  @override
  String get metric_55_description =>
      '注意、快適さ、または接続への招待と、それらが受け入れられるか見逃されるかを測定します。';

  @override
  String get metric_56_name => '接続からの離脱';

  @override
  String get metric_56_description => '親密さまたはサポートへの出札を無視、却下、または応答しないことをフラグします。';

  @override
  String get metric_57_name => '接続への対立';

  @override
  String get metric_57_description => '愛情、脆弱性、または修復の試みに対する敵意または罰の反応を検出します。';

  @override
  String get metric_58_name => '肯定的な感情の上書き';

  @override
  String get metric_58_description => '寛大さ、疑いの余地、愛着、およびケアを通じて紛争を解釈することを探します。';

  @override
  String get metric_59_name => '否定的な感情の上書き';

  @override
  String get metric_59_description =>
      '悪意の仮定、中立のメッセージの否定的解釈、および持続的な敵対的な枠組みをフラグします。';

  @override
  String get metric_60_name => '厳しい開始パターン';

  @override
  String get metric_60_description => '要求ではなく、非難、攻撃、軽蔑、または責任で始まる会話を特定します。';

  @override
  String get metric_61_name => 'ソフトな開始パターン';

  @override
  String get metric_61_description =>
      '感情、ニーズ、具体的な要求、および非難のない言語を使用した穏やかな開始を探します。';

  @override
  String get metric_62_name => '生理学的な自己鎮静';

  @override
  String get metric_62_description =>
      '紛争を続ける前に一時停止、呼吸、スペースを取る、または体を調整する試みを評価します。';

  @override
  String get metric_63_name => '紛争回避パターン';

  @override
  String get metric_63_description =>
      '必要なトピック、不快感、不一致、または感情的な誠実さの繰り返される回避を追跡します。';

  @override
  String get metric_64_name => '不安定な紛争スタイル';

  @override
  String get metric_64_description => '関与と修復をまだ含む可能性がある直接的な表現を持つ高強度の紛争を検出します。';

  @override
  String get metric_65_name => '検証する紛争スタイル';

  @override
  String get metric_65_description => 'パートナーが不一致しながら互いの視点を認めるかどうかを測定します。';

  @override
  String get metric_66_name => '敵対的な紛争スタイル';

  @override
  String get metric_66_description => '頻繁な批判、軽蔑、防御、攻撃、および対立的な枠組みをフラグします。';

  @override
  String get metric_67_name => '敵対的-離脱パターン';

  @override
  String get metric_67_description => '冷たい敵意、感情的な離脱、軽蔑、および低い修復動機を特定します。';

  @override
  String get metric_68_name => '妥協の意欲';

  @override
  String get metric_68_description => '柔軟性、交渉、中間の提案、および両方のニーズを尊重する犠牲を探します。';

  @override
  String get metric_69_name => '影響の受容';

  @override
  String get metric_69_description => 'パートナーの感情、ニーズ、または視点に影響されることへの開放性を測定します。';

  @override
  String get metric_70_name => '膠着した紛争の信号';

  @override
  String get metric_70_description =>
      '価値、夢、アイデンティティ、または慢性的な不適合に関連する繰り返される未解決の問題をフラグします。';

  @override
  String get metric_71_name => '解決可能な問題の枠組み';

  @override
  String get metric_71_description => '具体的な合意につながる可能性のある実用的で具体的な問題定義を検出します。';

  @override
  String get metric_72_name => '共有された意味の参照';

  @override
  String get metric_72_description =>
      '共有された関係の物語を作成する価値、儀式、目標、記憶、またはアイデンティティの言語を探します。';

  @override
  String get metric_73_name => '愛のマップの意識';

  @override
  String get metric_73_description =>
      'パートナーの内面世界、ストレス要因、好み、恐怖、および日常生活の知識を評価します。';

  @override
  String get metric_74_name => '愛着と称賛';

  @override
  String get metric_74_description => '感謝、尊重、温かさ、称賛、感謝、および肯定的な見方を特定します。';

  @override
  String get metric_75_name => '感情的労働の不均衡';

  @override
  String get metric_75_description =>
      '不釣り合いな計画、鎮静、記憶、説明、または関係の維持を担うパートナーをフラグします。';

  @override
  String get metric_76_name => '精神的負荷の却下';

  @override
  String get metric_76_description =>
      '見えない計画作業、家庭の調整、スケジューリング、または責任の追跡の最小化を検出します。';

  @override
  String get metric_77_name => '武器化された無能の手がかり';

  @override
  String get metric_77_description => '公平な責任を避けるために無能、混乱、または無力を主張することを探します。';

  @override
  String get metric_78_name => 'トラウマトリガーの感受性';

  @override
  String get metric_78_description => 'トリガー、トラウマ反応、および脆弱なトピックの慎重な扱いへの意識を測定します。';

  @override
  String get metric_79_name => '過度警戒の手がかり';

  @override
  String get metric_79_description =>
      '危険のスキャン、トーンの過度な監視、ミスへの恐怖、または継続的な感情的な警戒をフラグします。';

  @override
  String get metric_80_name => '放棄の恐怖の言語';

  @override
  String get metric_80_description =>
      '残される、置き換えられる、無視される、捨てられる、または感情的に見捨てられる恐怖を検出します。';

  @override
  String get metric_81_name => '安心を求めるパターン';

  @override
  String get metric_81_description =>
      '愛、コミットメント、安全、または継続的な関心の証明の繰り返される要求を追跡します。';

  @override
  String get metric_82_name => '追求者-距離者サイクル';

  @override
  String get metric_82_description => '一方のパートナーが親密さを追求し、他方が距離を増やすことを特定します。';

  @override
  String get metric_83_name => '怨恨の蓄積';

  @override
  String get metric_83_description =>
      '蓄積された不満、繰り返される過去の参照、苦味、および未解決の感情的な借金を探します。';

  @override
  String get metric_84_name => 'スコアキープ行動';

  @override
  String get metric_84_description =>
      'レバレッジを得るための過失、恩恵、犠牲、またはミスの取引的なカウントをフラグします。';

  @override
  String get metric_85_name => '条件付きの愛情';

  @override
  String get metric_85_description =>
      'コンプライアンスが達成された場合にのみ提供される愛、承認、アクセス、または温かさを検出します。';

  @override
  String get metric_86_name => 'ラブボミングの指標';

  @override
  String get metric_86_description =>
      '愛着または支配を加速させるために使用される激しい愛、約束、圧力、または理想化をフラグします。';

  @override
  String get metric_87_name => 'フーバリングの試み';

  @override
  String get metric_87_description =>
      '罪悪感、郷愁、約束、危機、または突然の愛を通じて誰かを引き戻す試みを特定します。';

  @override
  String get metric_88_name => 'DARVOパターン';

  @override
  String get metric_88_description => '害について対峙されたときに否定、攻撃、および被害者-加害者の反転を検出します。';

  @override
  String get metric_89_name => '被害者の立場パターン';

  @override
  String get metric_89_description =>
      '責任を回避するか、引き起こされた害から注意をそらす繰り返される自己被害者化をフラグします。';

  @override
  String get metric_90_name => '道徳的優越性の枠組み';

  @override
  String get metric_90_description => '紛争を支配するために使用される正義、純潔の主張、または道徳的優越性を探します。';

  @override
  String get metric_91_name => '人格暗殺';

  @override
  String get metric_91_description =>
      '特定の行動ではなく、アイデンティティ、誠実性、精神的健康、または価値への広範な攻撃を検出します。';

  @override
  String get metric_92_name => '三角測量の指標';

  @override
  String get metric_92_description =>
      'パートナーに圧力をかけ、比較し、検証し、または不安定にするために第三者を紛争に巻き込むことをフラグします。';

  @override
  String get metric_93_name => '社会的比較の圧力';

  @override
  String get metric_93_description =>
      '恥または強制に使用される元恋人、友人、他のカップル、または理想への比較を探します。';

  @override
  String get metric_94_name => '自律性のサポート';

  @override
  String get metric_94_description =>
      '独立した選択、友情、目標、境界、および個人のエージェンシーへの尊重を測定します。';

  @override
  String get metric_95_name => '同意と選択の尊重';

  @override
  String get metric_95_description => '決定が圧力、罪悪感、脅威、または操作なしに自由に行われるかどうかを評価します。';

  @override
  String get metric_96_name => '協力的な計画';

  @override
  String get metric_96_description =>
      '共有されたスケジューリング、共同決定、調整された責任、および実用的なフォロースルーを探します。';

  @override
  String get metric_97_name => '修復のフォロースルー';

  @override
  String get metric_97_description => '約束された変更が後で行動に反映されるかどうかを測定し、言葉だけではありません。';

  @override
  String get metric_98_name => '変更された行動の証拠';

  @override
  String get metric_98_description =>
      '学習、調整、または有害な行動の減少を示す観察可能で繰り返される行動を確認します。';

  @override
  String get metric_99_name => '感情的安全の言語';

  @override
  String get metric_99_description =>
      '正直さを招き、恐怖を下げ、尊厳を保護し、安全な表現を安心させる言語を特定します。';

  @override
  String get metric_100_name => '関係の矛盾';

  @override
  String get metric_100_description =>
      '不確実性、混合されたコミットメント、プッシュプルメッセージ、または継続する明確でない願望を検出します。';

  @override
  String get unableToOpenConversations => '会話を開けません';

  @override
  String get unableToOpenConversationsBody =>
      '会話の読み込み中にエラーが発生しました。もう一度お試しください。';

  @override
  String get unableToLoadConversationsBody => '会話を読み込めません。権限を確認して、もう一度お試しください。';

  @override
  String get errorLoadingConversationsBody => '会話の読み込みエラー。もう一度お試しください。';

  @override
  String get smsPermissionRequired => 'SMS権限が必要です';

  @override
  String get smsPermissionRequiredBody =>
      'SMS会話を分析するには、メッセージを読み取る権限が必要です。プライバシーは重要です — メッセージはローカルでのみ分析され、サーバーに保存されることはありません。';

  @override
  String get grantSmsPermission => 'SMS権限を許可';

  @override
  String get noSmsConversationsFound => 'SMS会話が見つかりません';

  @override
  String get noConversationsMatchSearch => '検索に一致する会話がありません';

  @override
  String get noSmsMessagesOnDevice => 'このデバイスにSMSメッセージがありません';

  @override
  String get tryDifferentSearch => '別の検索語を試してください';

  @override
  String get clearSearch => '検索をクリア';

  @override
  String selectedFile(String filename) {
    return '選択済み: $filename';
  }

  @override
  String get invalidFile => '無効なファイル';

  @override
  String get fileImport => 'ファイルをインポート';

  @override
  String get fileImportNotImplemented => 'このファイルタイプのファイル解析はまだ実装されていません。';

  @override
  String get errorPickingFile => 'ファイルを開けません。もう一度お試しください。';

  @override
  String get readyToCapture => 'キャプチャ準備完了';

  @override
  String get readyToCaptureBody =>
      '今すぐメッセージアプリに移動してスクリーンショットの撮影を開始してください。\n\n完了したらこのアプリに戻り、「完了して処理」をタップしてください。';

  @override
  String get noScreenshotsToProcess => '処理するスクリーンショットがありません。';

  @override
  String processingScreenshot(int current, int total) {
    return 'スクリーンショット $current / $total を処理中...';
  }

  @override
  String get noMessagesFound => 'メッセージが見つかりません';

  @override
  String get noMessagesFoundBody =>
      'スクリーンショットからメッセージを抽出できませんでした。\n\nスクリーンショットが会話を明確に表示していることを確認してください。';

  @override
  String loadedMessages(int count) {
    return 'スクリーンショットから $count 件のメッセージを読み込みました';
  }

  @override
  String get processingError => '処理エラー';

  @override
  String get processingErrorBody => 'スクリーンショットの処理中にエラーが発生しました。もう一度お試しください。';

  @override
  String metricListSavedAs(String name) {
    return '選択が \"$name\" として保存されました。';
  }

  @override
  String metricListLoadedName(String name) {
    return '選択 \"$name\" が取得され、適用されました。';
  }

  @override
  String conversationLoaded(int count, String name) {
    return '$name から $count 件のメッセージを読み込みました';
  }

  @override
  String get loadButton => '読み込み';

  @override
  String get photoPermissionRequired => 'スクリーンショットを検出するにはフォトライブラリ権限が必要です。';

  @override
  String get initializingConnection => '安全な接続を初期化中...';

  @override
  String get configurationRequired => '設定が必要です';

  @override
  String get goBack => '戻る';

  @override
  String get enableDateRangeFiltering => '日付範囲フィルタリングを有効にする';

  @override
  String get clearSelectedDateRange => '選択した日付範囲をクリア';

  @override
  String get largeThreadNoticeTitle => 'ユーザーへの通知';

  @override
  String get largeThreadNoticeBody =>
      '例外的に大きなテキストスレッドを扱う場合、このアプリの一部の読み込み画面が1分半を超えることがあります。\n\nアプリはフリーズしていません。回転するステータスインジケーターが表示されている場合、アプリはまだ読み込んでいます。\n\nこれらの場合は忍耐強くお待ちください。他のアプリと比較して読み込み時間が長くなる可能性があります。特に50,000件のメッセージがあるスレッドのような大規模なデータセットの場合。';

  @override
  String get neverShowThisAgain => 'このメッセージを再度表示しない';

  @override
  String loadingConversationWith(String name) {
    return '会話を読み込み中\n$name と…';
  }

  @override
  String get iosCaptureInstructions =>
      '1. メッセージアプリを開いて会話を選択します\n2. 分析したい最も古いメッセージまでスクロールします\n3. 下の「キャプチャ開始」をタップします\n4. 会話をスクロールしながらスクリーンショットを撮ります\n5. 完了したら「完了して処理」をタップします';

  @override
  String get howToCaptureIosMessages => 'iOSメッセージのキャプチャ方法';

  @override
  String get deepSeekApiKey => 'DeepSeek APIキー';

  @override
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis =>
      'AI分析を有効にするためにDeepSeek APIキーを入力してください。';

  @override
  String get getYourApiKeyFrom => 'APIキーを取得: https://platform.deepseek.com';

  @override
  String get apiKey => 'APIキー';

  @override
  String get skPlaceholder => 'sk-...';

  @override
  String get yourApiKeyIsStoredSecurely => 'APIキーはデバイスに安全に保存され、共有されることはありません。';

  @override
  String get pleaseEnterApiKey => 'APIキーを入力してください';

  @override
  String get apiKeySavedSuccessfully => 'APIキーが正常に保存されました！';

  @override
  String get pleaseBePatientLongerTextThreads =>
      '忍耐強くお待ちください、長いテキストスレッドのデータセットは読み込みにかなり時間がかかります';

  @override
  String get almostThereBigOne => 'もうすぐ完了、わあ、これは大きかったですね';

  @override
  String get pleaseBePatientLargeDatasets =>
      '忍耐強くお待ちください、大きなデータセットでは読み込み時間が1分半を超える可能性があります';

  @override
  String continuingToLoadMassiveThread(String name) {
    return '巨大なスレッドを $name と共に読み込み中…';
  }

  @override
  String get noMessagesInDateRange =>
      '選択された日付範囲内にメッセージが見つかりませんでした。別の日付を選択するか、日付フィルターをクリアしてください。';
}
