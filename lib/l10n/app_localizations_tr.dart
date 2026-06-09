// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'Yapay Zeka İlişki Toksisite Analizörü';

  @override
  String get psychologicalMetrics => 'Psikolojik Metrikler';

  @override
  String get metricsDescription =>
      'Daha az seçilen metrik, bu davranışların daha derin ve yoğun bir analizini sağlar. Daha fazla seçilen metrik, metrik başına daha az ayrıntıyla daha geniş bir rapor sağlar.';

  @override
  String get selectSMS => 'SMS / RCS Sohbet Seç';

  @override
  String get selectDiscordChannel => 'Discord Kanalı Seç';

  @override
  String get lightMode => 'Açık';

  @override
  String get darkMode => 'Koyu';

  @override
  String get discordSetupTitle => 'Discord Nasıl Ayarlanır';

  @override
  String get discordSetupDescription =>
      'Uygulamada Discord kanal analizini etkinleştirmek için şu adımları izleyin:';

  @override
  String get discordStep1Title => 'Discord Bot Oluştur';

  @override
  String get discordStep1Description =>
      'discord.com/developers adresine gidin, yeni bir uygulama oluşturun ve bir bot ekleyin. Bot token\'ını kopyalayın.';

  @override
  String get discordStep2Title => 'Bot Ayrıcalıklarını Etkinleştir';

  @override
  String get discordStep2Description =>
      'Bot ayarlarında \'Message Content Intent\' ve \'Server Members Intent\' özelliklerini etkinleştirin.';

  @override
  String get discordStep3Title => 'Botu Sunucuya Davet Et';

  @override
  String get discordStep3Description =>
      'Gerekli izinlerle botu Discord sunucunuza davet etmek için OAuth2 URL oluşturucuyu kullanın.';

  @override
  String get discordStep4Title => 'Uygulamada Yapılandır';

  @override
  String get discordStep4Description =>
      'Bot token\'ınızı uygulama ayarlarına girin (yardıma ihtiyacınız varsa desteğe başvurun).';

  @override
  String get discordStep5Title => 'Kanal Seç';

  @override
  String get discordStep5Description =>
      '\'Discord Kanalı Seç\'e dokunun, sunucunuzu seçin, ardından analiz edilecek kanalı seçin.';

  @override
  String get gotIt => 'Anladım';

  @override
  String get selectFile => 'Dosya Seç';

  @override
  String get analyzeSelectedMetrics => 'Seçili metrikleri analiz et';

  @override
  String get analyze20RandomMetrics => '20 rastgele metriği analiz et';

  @override
  String get membershipOptions => 'Üyelik Seçenekleri';

  @override
  String get free => 'Ücretsiz';

  @override
  String get oneTimeUnlock => 'Tek seferlik rapor kilidi açma';

  @override
  String get standard => 'Standart';

  @override
  String get discordAddon => 'Discord Eklentisi';

  @override
  String get analyze => 'Analiz Et';

  @override
  String get report => 'Rapor';

  @override
  String get pdfReport => 'PDF Raporu';

  @override
  String get openPdf => 'PDF Aç';

  @override
  String get sharePdf => 'PDF Paylaş';

  @override
  String get printPdf => 'PDF Yazdır';

  @override
  String get closePdfPreview => 'PDF Önizleme Penceresini Kapat';

  @override
  String get openPdfPreview => 'PDF Önizleme Penceresini Aç';

  @override
  String get pdfPreviewDescription =>
      'Gömülü PDF penceresi, raporu kompakt tutmak için kapalı olarak başlar.';

  @override
  String get notNow => 'Şimdi değil';

  @override
  String get unlockThisReport => 'Bu raporun kilidini aç - \$20';

  @override
  String get joinStandard => 'Standart\'a katıl - \$9.99/ay';

  @override
  String get instantUnlockTitle => 'Anında rapor kilidi açma - \$20';

  @override
  String get instantUnlockDescription =>
      'Bu, yalnızca mevcut raporun kilidini açmak için tek seferlik bir satın alımdır. Abonelik gerekmez. Gelecekteki raporlar ayrı kilit açma işlemleri veya üyelik gerektirecektir.\n\nÖdemeye devam edilsin mi?';

  @override
  String get purchaseFor20 => '\$20\'a satın al';

  @override
  String get share => 'Paylaş';

  @override
  String get print => 'Yazdır';

  @override
  String get save => 'Kaydet';

  @override
  String get cancel => 'İptal';

  @override
  String get ok => 'Tamam';

  @override
  String get loading => 'Yükleniyor...';

  @override
  String get error => 'Hata';

  @override
  String get success => 'Başarılı';

  @override
  String get conversations => 'Konuşmalar';

  @override
  String get messages => 'Mesajlar';

  @override
  String get selectConversation => 'Konuşma seç';

  @override
  String get selectSmsConversation => 'SMS / RCS Sohbet Seç';

  @override
  String get searchConversations => 'Konuşmalarda ara...';

  @override
  String get loadingConversations => 'Konuşmalar yükleniyor...';

  @override
  String get errorLoadingConversations => 'Konuşmaları yükleme hatası';

  @override
  String get selectConversationToAnalyze => 'Analiz etmek için konuşma seçin';

  @override
  String get analyzeWithSelectedMetrics => 'Seçili metriklerle analiz et';

  @override
  String get loadConversationAndSelectMetric =>
      'Bir konuşma yükleyin ve en az bir metrik seçin';

  @override
  String get selectAtLeastOneMetric =>
      'Raporu çalıştırmak için en az bir metrik seçilmelidir.';

  @override
  String get spinningMetricWheel => 'Metrik çarkı döndürülüyor...';

  @override
  String get loadConversationToAnalyze =>
      'Analiz edilecek bir konuşma yükleyin';

  @override
  String get noConversationsFound => 'Konuşma bulunamadı';

  @override
  String get permissionsRequired => 'İzinler Gerekli';

  @override
  String get smsPermission => 'Metin Mesajları';

  @override
  String get contactsPermission => 'Kişiler';

  @override
  String get smsPermissionDescription =>
      'İlişki kalıpları için SMS konuşmalarınızı analiz etmek üzere';

  @override
  String get contactsPermissionDescription =>
      'Telefon numaraları yerine kişi adlarını göstermek için';

  @override
  String get analyzingMessage =>
      'Psikolojik analiziniz yapay zeka tarafından oluşturulurken lütfen bekleyin...';

  @override
  String get analyzingStatus => 'Konuşma analiz ediliyor...';

  @override
  String get analyzingSubMessage =>
      'Lütfen sabırlı olun, bu işlem bağlantı hızınıza ve seçilen metrik miktarına bağlı olarak bir dakikaya kadar sürebilir';

  @override
  String get unlockFullReport => 'Bu raporun tamamının kilidini aç ve göster';

  @override
  String get fullReportLocked => 'Tam Rapor Kilitli';

  @override
  String get upgradeToUnlock =>
      'Tüm metrikler ve ayrıntılı içgörülerle tam psikolojik analiz raporunun kilidini açmak için üyeliğinizi yükseltin.';

  @override
  String get language => 'Dil';

  @override
  String get english => 'İngilizce';

  @override
  String get spanish => 'İspanyolca';

  @override
  String get french => 'Fransızca';

  @override
  String get german => 'Almanca';

  @override
  String get italian => 'İtalyanca';

  @override
  String get portuguese => 'Portekizce';

  @override
  String get dutch => 'Felemenkçe';

  @override
  String get russian => 'Rusça';

  @override
  String get chinese => 'Çince';

  @override
  String get japanese => 'Japonca';

  @override
  String get korean => 'Korece';

  @override
  String get arabic => 'Arapça';

  @override
  String get hindi => 'Hintçe';

  @override
  String get turkish => 'Türkçe';

  @override
  String get polish => 'Lehçe';

  @override
  String get ukrainian => 'Ukraynaca';

  @override
  String get runAnotherAnalysis => 'Başka bir analiz çalıştırılsın mı?';

  @override
  String get becomeMemberTitle => 'Tam analiz raporunu almak için üye olun';

  @override
  String get becomeMemberSubtitle =>
      'Analiz etmeniz gereken konuşmalara ve raporlara uygun erişim düzeyini seçin.';

  @override
  String get benefitAnalyzeSms => 'SMS metin mesajlarını analiz et';

  @override
  String get benefitReportPreview => 'Bir rapor önizlemesi çalıştır';

  @override
  String get benefitViewPartialReport => 'Raporun yaklaşık %25\'ini görüntüle';

  @override
  String get benefitLockedDetails => 'Tam rapor ayrıntıları kilitli';

  @override
  String get currentFreeAccess => 'Mevcut ücretsiz erişim';

  @override
  String get benefitUnlockCurrentReport => 'Bu mevcut tam raporun kilidini aç';

  @override
  String get benefitNoSubscription => 'Abonelik yok';

  @override
  String get benefitSavePrintShareThis => 'Bu raporu kaydet, yazdır ve paylaş';

  @override
  String get benefitBestSingleAnalysis =>
      'Yalnızca bir analize ihtiyacınız varsa en iyisi';

  @override
  String get unlockThisReportShort => 'Bu raporun kilidini aç';

  @override
  String get benefitFullSmsReport => 'Tam SMS analiz raporu';

  @override
  String get benefitSavePrintSharePdf =>
      'PDF raporlarını kaydet, yazdır ve paylaş';

  @override
  String get benefitTenReports => '24 saatlik dönem başına 10 rapor';

  @override
  String get benefitBestTextReview =>
      'Metin mesajı ilişki incelemesi için en iyisi';

  @override
  String get benefitDateRangeFilter => 'Tarih aralığına göre analizi filtrele';

  @override
  String get signUpStandard => 'Standart Üyeliğe kaydol';

  @override
  String get benefitAddToStandard => 'Standart Üyeliğe ekle';

  @override
  String get benefitAnalyzeDiscord => 'Discord sunucu sohbetlerini analiz et';

  @override
  String get benefitRequiresBot => 'Bot kurulumu gerektirir';

  @override
  String get benefitBestGamers =>
      'Oyuncular ve Discord toplulukları için en iyisi';

  @override
  String get addDiscordAnalysis => 'Discord analizi ekle';

  @override
  String get requiresStandardMembership => 'Standart Üyelik gerektirir';

  @override
  String get comingSoon => 'Yakında';

  @override
  String get comingSoonWithNextUpdate => 'Bir sonraki güncellemede yakında:';

  @override
  String get proMembershipTier => 'Pro Üyelik Düzeyi - \$19.99';

  @override
  String get proPlusMembershipTier => 'Pro-Plus Üyelik Düzeyi - \$24.99';

  @override
  String get proGetsLabel => 'Pro şunları içerir:';

  @override
  String get proGetsDescription =>
      'Aşağıdaki gibi diğer tüm popüler mesajlaşma ve sosyal medya platformlarındaki sohbet dizilerini analiz edin:';

  @override
  String get proPlatformsList =>
      'LinkedIn, WhatsApp, Instagram, Facebook Messenger, Telegram, X (Twitter), e-posta ve takvim';

  @override
  String get proPlusGetsLabel => 'Pro-Plus şunları içerir:';

  @override
  String get proPlusGetsDescription =>
      'Pro\'daki her şey, ayrıca indirimli fiyatla Discord eklentisi.';

  @override
  String get purchaseSuccessfulUnlocked =>
      'Satın alma başarılı! Raporun kilidi açıldı.';

  @override
  String get purchaseFailed => 'Satın alma başarısız. Lütfen tekrar deneyin.';

  @override
  String get membershipActivated => 'Üyelik etkinleştirildi!';

  @override
  String get dateRangeFilter => 'Tarih Aralığı Filtresi';

  @override
  String get dateRangeOptional => '(isteğe bağlı)';

  @override
  String get startDate => 'Başlangıç Tarihi';

  @override
  String get endDate => 'Bitiş Tarihi';

  @override
  String get clear => 'Temizle';

  @override
  String get dateRangeRequiresMembership =>
      'Standard üyeliği veya üzeri gerektirir';

  @override
  String selectUpToCount(Object current, Object max) {
    return 'En fazla $max seçin. Şu anki: $current';
  }

  @override
  String get clearSelections => 'Seçimleri temizle';

  @override
  String analyzeRandomMetrics(Object count) {
    return '$count rastgele metrik analiz et';
  }

  @override
  String get saveSelections => 'Seçimleri Kaydet';

  @override
  String get loadSelections => 'Seçimleri Yükle';

  @override
  String get saveMetricListName => 'Metrik Listesini Kaydet';

  @override
  String get enterListName => 'Bu metrik listesi için bir ad girin:';

  @override
  String get chooseSavedMetrics => 'Kaydedilen metrik listesini seçin:';

  @override
  String get noSavedLists =>
      'Şu anda yüklenecek kaydedilmiş metrik listesi yok.';

  @override
  String get metricListSaved => 'Metrik listesi başarıyla kaydedildi.';

  @override
  String get metricListLoaded => 'Metrik listesi başarıyla yüklendi.';

  @override
  String get filters => 'Filtreler';

  @override
  String get sortBy => 'Sırala:';

  @override
  String get recent => 'Son';

  @override
  String get name => 'İsim';

  @override
  String get count => 'Sayı';

  @override
  String get namedOnly => 'Sadece adlandırılmış';

  @override
  String get minMessages => 'Min. mesaj:';

  @override
  String get minimumMessages => 'Minimum mesaj:';

  @override
  String get executiveSummary => 'Yönetici Özeti';

  @override
  String get metricScores => 'Metrik Puanları';

  @override
  String get contextualEvidenceExamples => 'Bağlamsal Kanıt Örnekleri';

  @override
  String get neutralSynthesis => 'Nötr Sentez';

  @override
  String analysisOfSender(Object sender) {
    return '$sender Analizi (Gönderen)';
  }

  @override
  String analysisOfReceiver(Object receiver) {
    return '$receiver Analizi (Alıcı)';
  }

  @override
  String get finalConclusion => 'Sonuç';

  @override
  String get metric_1_name => 'Aşağılama';

  @override
  String get metric_1_description =>
      'Üstünlük, tiksinti, alay, göz devirme dili veya bir partneri diğerinin altına koyan hakaretleri arar.';

  @override
  String get metric_2_name => 'Savunmacılık';

  @override
  String get metric_2_description =>
      'Refleksif kendini koruma, karşı saldırı, mazeretler ve diğer kişinin şikayetini düşünmeyi reddetmeyi izler.';

  @override
  String get metric_3_name => 'Duvar Örücü';

  @override
  String get metric_3_description =>
      'Katılmaktan kaçınmak için kapanma, geri çekilme, yok sayma, cevap vermeyi reddetme veya konuşmaları sonlandırma tanımlar.';

  @override
  String get metric_4_name => 'Eleştiri';

  @override
  String get metric_4_description =>
      'Belirli davranışların, ihtiyaçların veya olayların yerine karakter veya kişiliğe yapılan saldırıları tespit eder.';

  @override
  String get metric_5_name => 'Gaslighting Göstergeleri';

  @override
  String get metric_5_description =>
      'Birinin hafızasını, algısını, aklını veya deneyiminin meşruiyetini sorgulamasına neden olmaya çalışan girişimleri işaretler.';

  @override
  String get metric_6_name => 'Suç Kaydırma';

  @override
  String get metric_6_description =>
      'Sorumluluğun doğrudan kabul edilmesi yerine diğer partnere yönlendirilip yönlendirilmediğini ölçer.';

  @override
  String get metric_7_name => 'Tırmanma Deseni';

  @override
  String get metric_7_description =>
      'Ton, suçlamalar, yoğunluk veya tehditlerin çözüme doğru hareket etmek yerine artıp artmadığını değerlendirir.';

  @override
  String get metric_8_name => 'Onarım Girişimi Tanıma';

  @override
  String get metric_8_description =>
      'Özürler, mizah, duraklar, rahatlama veya barış tekliflerinin farkına varılıp varılmadığını kontrol eder.';

  @override
  String get metric_9_name => 'Sorumluluk Dili';

  @override
  String get metric_9_description =>
      'Zararın net sahipliğini, belirli sorumluluğu ve davranışı değiştirme isteğini arar.';

  @override
  String get metric_10_name => 'Sınır Saygısı';

  @override
  String get metric_10_description =>
      'Zaman, gizlilik, beden, duygular veya temas etrafındaki belirtilen sınırların saygı görip görmediğini değerlendirir.';

  @override
  String get metric_11_name => 'Zorlayıcı Kontrol Göstergeleri';

  @override
  String get metric_11_description =>
      'Tehdit, kısıtlama, izleme, bağımlılık veya seçimler ve hareket üzerinde kontrol desenlerini işaretler.';

  @override
  String get metric_12_name => 'Tehdit Dili';

  @override
  String get metric_12_description =>
      'Güvenlik, terk etme, ifşa, misilleme veya cezayı içeren açık veya dolaylı tehditleri tanımlar.';

  @override
  String get metric_13_name => 'Görmezden Gelme';

  @override
  String get metric_13_description =>
      'Endişeleri görmezden gelme, ihtiyaçları önemsiz olarak ele alma veya sıkıntıyı ciddiye almamayı reddetmeyi tespit eder.';

  @override
  String get metric_14_name => 'Geçersiz Kılma';

  @override
  String get metric_14_description =>
      'Başka bir kişinin duygularını kabul etmek yerine inkar, alay veya düzeltmeyi ölçer.';

  @override
  String get metric_15_name => 'Empati İfadesi';

  @override
  String get metric_15_description =>
      'Perspektif alma, bakım, duygusal tanıma ve diğer kişinin deneyimiyle ilgili endişeyi arar.';

  @override
  String get metric_16_name => 'Karşılıklılık';

  @override
  String get metric_16_description =>
      'Dikkatin, çabanın, özrün, uzlaşmanın ve duygusal desteğin her iki yönde de akıp akmadığını değerlendirir.';

  @override
  String get metric_17_name => 'Duygusal Düzenleme';

  @override
  String get metric_17_description =>
      'Yere bağlı kalma, durma, kendini sakinleştirme ve patlayıcı reaktivite olmadan iletişim kurma yeteneğini değerlendirir.';

  @override
  String get metric_18_name => 'Zarar Olarak Kullanılan İroni';

  @override
  String get metric_18_description =>
      'Küçümsemek, cezalandırmak, aşağılamak veya düşmanlığı mizah olarak gizlemek için kullanılan ironiyi işaretler.';

  @override
  String get metric_19_name => 'İsim Takma';

  @override
  String get metric_19_description =>
      'Aşağılayıcı etiketler, hakaretler, kişiye yönelik küfürler veya kimlik tabanlı saldırıları tanımlar.';

  @override
  String get metric_20_name => 'Sessiz Tedavi Deseni';

  @override
  String get metric_20_description =>
      'Ceza, kontrol, kaçınma veya bağlantı geri çekilmesi olarak kullanılan sessizliği izler.';

  @override
  String get metric_21_name => 'Kıskançlık Çerçevesi';

  @override
  String get metric_21_description =>
      'Şüphe, sahiplenme, suçlamalar veya ilgi kanıtı olarak sunulan kıskançlığı değerlendirir.';

  @override
  String get metric_22_name => 'İzolasyon Baskısı';

  @override
  String get metric_22_description =>
      'Partneri arkadaşlardan, aileden, destek sistemlerinden veya dış bakış açılarından ayırmaya çalışan çabaları işaretler.';

  @override
  String get metric_23_name => 'Finansal Kontrol Göstergeleri';

  @override
  String get metric_23_description =>
      'Para, harcama, istihdam, hesaplara erişim veya finansal bağımsızlık üzerindeki kontrolü arar.';

  @override
  String get metric_24_name => 'Gizlilik İhlali Göstergeleri';

  @override
  String get metric_24_description =>
      'Casusluk, şifre talebi, cihaz kontrolü, konum takibi veya gizlilik ihlallerini tespit eder.';

  @override
  String get metric_25_name => 'Özrün Özgünlüğü';

  @override
  String get metric_25_description =>
      'Özürlerin belirsiz kalmak yerine tam zararı, etkiyi ve gelecekteki düzeltmeyi adlandırıp adlandırmadığını ölçer.';

  @override
  String get metric_26_name => 'Bağışlama Baskısı';

  @override
  String get metric_26_description =>
      'Onarım gerçekleşmeden önce ilerlemeyi, hızlıca bağışlamayı veya zararı tartışmayı bırakmayı talepleri işaretler.';

  @override
  String get metric_27_name => 'Küçümseme';

  @override
  String get metric_27_description =>
      'Zararı küçümsemeyi, ciddi endişeleri dramatik olarak adlandırmayı veya sorumluluktan kaçınmak için etkiyi azaltmayı tespit eder.';

  @override
  String get metric_28_name => 'Yansıtma';

  @override
  String get metric_28_description =>
      'Konuşmacının kendi davranışını, motivasyonlarını veya çözülmemiş duygularını yansıtan suçlamaları arar.';

  @override
  String get metric_29_name => 'Kesme Deseni';

  @override
  String get metric_29_description =>
      'Kesmeyi, sözünü kesmeyi, tamamlamayı reddetmeyi veya konuşma dönüşlerini kontrol etmeyi izler.';

  @override
  String get metric_30_name => 'Konu Sapması';

  @override
  String get metric_30_description =>
      'Konuyu değiştirmeyi, ilgisiz sorunları gündeme getirmeyi veya merkezi endişeden kaçınmayı tanımlar.';

  @override
  String get metric_31_name => 'Çözüm Odaklılık';

  @override
  String get metric_31_description =>
      'Mesajların çözümlere, netliğe, anlaşmalara ve sonraki adımlara doğru hedeflenip hedeflenmediğini ölçer.';

  @override
  String get metric_32_name => 'Ortak Problem Çözme';

  @override
  String get metric_32_description =>
      'İşbirlikçi dili, paylaşılan sorumluluğu, beyin fırtınasını ve çalışabilir uzlaşmalar bulma isteğini değerlendirir.';

  @override
  String get metric_33_name => 'Duygusal Sel';

  @override
  String get metric_33_description =>
      'Çatışma sırasında bunalmayı, paniği, kapanmayı, sarmalamayı veya işleme yeteneksizliği tespit eder.';

  @override
  String get metric_34_name => 'Korku Yanıtı İpuçları';

  @override
  String get metric_34_description =>
      'Yatıştırma, dikkatli kelime seçimi, dehşet, güvenlik endişeleri veya partnerin tepkisinden korkmayı arar.';

  @override
  String get metric_35_name => 'İddiaların Tutarlılığı';

  @override
  String get metric_35_description =>
      'Hesapların mesajlar ve zaman boyunca dahili olarak tutarlı kalıp kalmadığını değerlendirir.';

  @override
  String get metric_36_name => 'Kanıta Dayalı Anımsama';

  @override
  String get metric_36_description =>
      'İddiaların somut olayları, alıntıları, zaman çizelgelerini veya gözlemlenebilir davranışı referans verip vermediğini kontrol eder.';

  @override
  String get metric_37_name => 'Talep Geri Çekme Deseni';

  @override
  String get metric_37_description =>
      'Bir partnerin cevap veya değişiklik peşinde koşarken diğerinin kaçındığını, kapattığını veya çıktığını izler.';

  @override
  String get metric_38_name => 'Güç Dengesizliği Göstergeleri';

  @override
  String get metric_38_description =>
      'Eşitsiz karar gücünü, sonuçlardan korkuyu, bağımlılığı, tehdidi veya tek taraflı kontrolü işaretler.';

  @override
  String get metric_39_name => 'Saygılı Anlaşmazlık';

  @override
  String get metric_39_description =>
      'Çatışmanın aşağılama olmadan onuru, merakı ve anlaşmazlığı koruyup korumadığını ölçer.';

  @override
  String get metric_40_name => 'Kopma ve Onarım Döngüsü';

  @override
  String get metric_40_description =>
      'Çatışmayı tanıma, yeniden bağlanma ve gerçek onarımın takip edip etmediğini değerlendirir.';

  @override
  String get metric_41_name => 'Sevgi Geri Çekme';

  @override
  String get metric_41_description =>
      'Ceza veya kaldıraç olarak sevginin, sıcaklığın, seksin, dikkatin veya rahatlamanın tutulduğunu tespit eder.';

  @override
  String get metric_42_name => 'Kamu Mahcubiyeti Referansları';

  @override
  String get metric_42_description =>
      'Partneri başkalarının önünde utandıran tehditleri, şakaları veya eylemleri işaretler.';

  @override
  String get metric_43_name => 'Madde Bağlı Çatışma İpuçları';

  @override
  String get metric_43_description =>
      'Saldırganlık, güvenilmezlik, çatışma veya zararla bağlantılı alkol veya uyuşturucu kullanımını arar.';

  @override
  String get metric_44_name => 'Ebeveynlik Çatışması Baskısı';

  @override
  String get metric_44_description =>
      'Çatışma veya kaldıraçta kullanılan çocukları, velayeti, ebeveynlik rollerini veya ebeveyn suçluluğunu tanımlar.';

  @override
  String get metric_45_name => 'Cinsel Sınır Saygısı';

  @override
  String get metric_45_description =>
      'Rıza, baskı, reddetme, rahatlık, zamanlama ve cinsel özerkliğe saygıyı değerlendirir.';

  @override
  String get metric_46_name => 'Dijital Taciz Göstergeleri';

  @override
  String get metric_46_description =>
      'Tekrarlanan istenmeyen mesajları, spam çağrıları, çevrimiçi baskıyı, gözetimi veya platform tabanlı tehdidi izler.';

  @override
  String get metric_47_name => 'İzleme veya Gözetleme Dili';

  @override
  String get metric_47_description =>
      'Konum kontrolü, kanıt talebi, davranış takibi veya sürekli doğrulamayı işaretler.';

  @override
  String get metric_48_name => 'Gelecek Odaklılık';

  @override
  String get metric_48_description =>
      'Partnerlerin gelecekteki iyileştirmeyi, taahhütleri, planları veya yapıcı yönü tartışıp tartışmadığını ölçer.';

  @override
  String get metric_49_name => 'Güvenlik Planlama Sinyalleri';

  @override
  String get metric_49_description =>
      'Yardım arama, mesafe oluşturma, zararı belgeleme veya fiziksel/duygusal güvenlik planlama girişimlerini arar.';

  @override
  String get metric_50_name => 'Ortak De-Eskalasyon Girişimleri';

  @override
  String get metric_50_description =>
      'Durakları, sakinleştirici dili, daha yumuşak tonu, zaman aşımını ve her iki partnerin yoğunluğu azaltma girişimlerini izler.';

  @override
  String get metric_51_name => 'Güvenli Bağlanma İpuçları';

  @override
  String get metric_51_description =>
      'Güveni, doğrudan rahatlamayı, duygusal erişilebilirliği ve yakınlık ve bağımsızlıkla rahatlığı tanımlar.';

  @override
  String get metric_52_name => 'Anksiyöz Bağlanma Aktivasyonu';

  @override
  String get metric_52_description =>
      'Protest davranışını, acil rahatlama ihtiyaçlarını, terk etme korkusunu ve mesafeye karşı artmış hassasiyeti işaretler.';

  @override
  String get metric_53_name => 'Kaçıngan Bağlanma Uzaklaşması';

  @override
  String get metric_53_description =>
      'Duygusal küçümsemeyi, bağımsızlık savunmalarını, zayıflıktan geri çekilmeyi veya ihtiyaçlarla rahatsızlığı tespit eder.';

  @override
  String get metric_54_name => 'Düzensiz Bağlanma Sinyalleri';

  @override
  String get metric_54_description =>
      'Yaklaş-kaç döngülerini, ihtiyaçla karışık korkuyu, kaotik reaksiyonları veya kafa karıştırıcı yakınlık desenlerini arar.';

  @override
  String get metric_55_name => 'Duygusal Teklifler ve Yanıtlar';

  @override
  String get metric_55_description =>
      'Dikkat, rahatlık veya bağlantı için davetleri ve bunların kabul edilip edilmediğini veya kaçırıldığını ölçer.';

  @override
  String get metric_56_name => 'Bağlantıdan Uzaklaşma';

  @override
  String get metric_56_description =>
      'Yakınlık veya destek için teklifleri görmezden gelmeyi, reddetmeyi veya yanıt vermeyi başarmamayı işaretler.';

  @override
  String get metric_57_name => 'Bağlantıya Karşı Dönme';

  @override
  String get metric_57_description =>
      'Sevgi, zayıflık veya onarım girişimlerine karşı düşmanca veya cezalandırıcı yanıtları tespit eder.';

  @override
  String get metric_58_name => 'Pozitif Duygu Geçersiz Kılma';

  @override
  String get metric_58_description =>
      'Cömertliği, şüphe faydasını, sevgiyi ve çatışmayı bakım yoluyla yorumlamayı arar.';

  @override
  String get metric_59_name => 'Negatif Duygu Geçersiz Kılma';

  @override
  String get metric_59_description =>
      'Kötü niyet varsaymayı, tarafsız mesajları olumsuz yorumlamayı ve sürekli düşmanca çerçevelendirmeyi işaretler.';

  @override
  String get metric_60_name => 'Sert Başlangıç Deseni';

  @override
  String get metric_60_description =>
      'Bir talep yerine suçlama, saldırı, aşağılama veya suçla başlayan konuşmaları tanımlar.';

  @override
  String get metric_61_name => 'Yumuşak Başlangıç Deseni';

  @override
  String get metric_61_description =>
      'Duyguları, ihtiyaçları, belirli talepleri ve suçlayıcı olmayan dili kullanan nazif açılışları arar.';

  @override
  String get metric_62_name => 'Fizyolojik Kendini Sakinleştirme';

  @override
  String get metric_62_description =>
      'Çatışmaya devam etmeden önce durmayı, nefes almayı, alan almayı veya bedeni düzenleme girişimlerini değerlendirir.';

  @override
  String get metric_63_name => 'Çatışma Kaçınma Deseni';

  @override
  String get metric_63_description =>
      'Gerekli konuların, rahatsızlığın, anlaşmazlığın veya duygusal dürüstlüğün tekrarlanan kaçınmasını izler.';

  @override
  String get metric_64_name => 'Değişken Çatışma Stili';

  @override
  String get metric_64_description =>
      'Hala katılım ve onarım içerebilecek doğrudan ifade ile yüksek yoğunluklu çatışmayı tespit eder.';

  @override
  String get metric_65_name => 'Doğrulayan Çatışma Stili';

  @override
  String get metric_65_description =>
      'Partnerlerin anlaşmazlık sırasında birbirlerinin bakış açısını kabul edip etmediğini ölçer.';

  @override
  String get metric_66_name => 'Düşmanca Çatışma Stili';

  @override
  String get metric_66_description =>
      'Sık eleştiri, aşağılama, savunmacılık, saldırılar ve çatışmacı çerçevelendirmeyi işaretler.';

  @override
  String get metric_67_name => 'Düşmanca-Ayrık Desen';

  @override
  String get metric_67_description =>
      'Soğuk düşmanlığı, duygusal kopmayı, aşağılamayı ve düşük onarım motivasyonunu tanımlar.';

  @override
  String get metric_68_name => 'Uzlaşma İsteği';

  @override
  String get metric_68_description =>
      'Esnekliği, müzakereyi, orta zemin önerilerini ve her iki ihtiyacı da sayan fedakarlıkları arar.';

  @override
  String get metric_69_name => 'Etki Kabulü';

  @override
  String get metric_69_description =>
      'Partnerin duygularından, ihtiyaçlarından veya bakış açısından etkilenmeye açıklığı ölçer.';

  @override
  String get metric_70_name => 'Kilitlenmiş Çatışma Sinyalleri';

  @override
  String get metric_70_description =>
      'Değerlere, rüyalar, kimlik veya kronik uyumsuzluğa bağlı tekrarlanan çözülmemiş sorunları işaretler.';

  @override
  String get metric_71_name => 'Çözülebilir Problem Çerçevesi';

  @override
  String get metric_71_description =>
      'Belirli anlaşmalara yol açabilecek pratik, somut problem tanımlarını tespit eder.';

  @override
  String get metric_72_name => 'Paylaşılan Anlam Referansları';

  @override
  String get metric_72_description =>
      'Paylaşılan bir ilişki hikayesi oluşturan değerleri, ritüelleri, hedefleri, anıları veya kimlik dilini arar.';

  @override
  String get metric_73_name => 'Aşk Haritası Farkındalığı';

  @override
  String get metric_73_description =>
      'Partnerin iç dünyasını, stres faktörlerini, tercihlerini, korkularını ve günlük yaşamını bilgisini değerlendirir.';

  @override
  String get metric_74_name => 'Sevgi ve Hayranlık';

  @override
  String get metric_74_description =>
      'Takdiri, saygıyı, sıcaklığı, iltifatları, minnettarlığı ve olumlu bakışı tanımlar.';

  @override
  String get metric_75_name => 'Duygusal Emek Dengesizliği';

  @override
  String get metric_75_description =>
      'Orantısız planlama, sakinleştirme, hatırlama, açıklama veya ilişki bakımını taşıyan bir partneri işaretler.';

  @override
  String get metric_76_name => 'Zihinsel Yük Görmezden Gelme';

  @override
  String get metric_76_description =>
      'Görünmez planlama işini, ev koordinasyonunu, planlamayı veya sorumluluk takibini küçümsemeyi tespit eder.';

  @override
  String get metric_77_name => 'Silahlandırılmış Yetersizlik İpuçları';

  @override
  String get metric_77_description =>
      'Adil sorumluluktan kaçınmak için yetersizlik, kafa karışıklığı veya çaresizlik iddiasını arar.';

  @override
  String get metric_78_name => 'Travma Tetikleyici Hassasiyeti';

  @override
  String get metric_78_description =>
      'Tetikleyicilerin, travma yanıtlarının ve hassas konuların dikkatli ele alınmasının farkındalığını ölçer.';

  @override
  String get metric_79_name => 'Aşırı Tetikte Olma İpuçları';

  @override
  String get metric_79_description =>
      'Tehdit için taramayı, tonun aşırı izlenmesini, hata korkusunu veya sürekli duygusal uyanıklığı işaretler.';

  @override
  String get metric_80_name => 'Terk Etme Korkusu Dili';

  @override
  String get metric_80_description =>
      'Terk edilme, değiştirilme, görmezden gelinme, atılma veya duygusal olarak terk edilme korkusunu tespit eder.';

  @override
  String get metric_81_name => 'Rahatlama Arama Deseni';

  @override
  String get metric_81_description =>
      'Aşk, taahhüt, güvenlik veya devam eden ilgi kanıtı için tekrarlanan talepleri izler.';

  @override
  String get metric_82_name => 'Kovalayıcı-Uzaklaşan Döngü';

  @override
  String get metric_82_description =>
      'Bir partnerin yakınlık için kovalamayı tırmandırırken diğerinin mesafeyi artırdığını tanımlar.';

  @override
  String get metric_83_name => 'Kırgınlık Birikimi';

  @override
  String get metric_83_description =>
      'Depolanan şikayetleri, tekrarlanan geçmiş referanslarını, acıyı ve çözülmemiş duygusal borcu arar.';

  @override
  String get metric_84_name => 'Puan Tutma Davranışı';

  @override
  String get metric_84_description =>
      'Kaldıraç elde etmek için hataların, iyiliklerin, fedakarlıkların veya hataların işlemeli sayımını işaretler.';

  @override
  String get metric_85_name => 'Koşullu Sevgi';

  @override
  String get metric_85_description =>
      'Sadece uyum sağlandığında sunulan sevgiyi, onayı, erişimi veya sıcaklığı tespit eder.';

  @override
  String get metric_86_name => 'Aşk Bombardımanı Göstergeleri';

  @override
  String get metric_86_description =>
      'Bağlanmayı veya kontrolü hızlandırmak için kullanılan yoğun sevgiyi, vaatleri, baskıyı veya idealizasyonu işaretler.';

  @override
  String get metric_87_name => 'Geri Çekme Girişimleri';

  @override
  String get metric_87_description =>
      'Suçluluk, nostalji, vaatler, krizler veya ani sevgi yoluyla birini geri çekmeye çalışan girişimleri tanımlar.';

  @override
  String get metric_88_name => 'DARVO Deseni';

  @override
  String get metric_88_description =>
      'Zarar hakkında karşı karşıya kalındığında inkar, saldırı ve ters-kurban-suçlu yanıtları tespit eder.';

  @override
  String get metric_89_name => 'Kurban Duruşu Deseni';

  @override
  String get metric_89_description =>
      'Sorumluluktan kaçınan veya neden olunan zarardan dikkati yönlendiren tekrarlanan öz-victimizasyonu işaretler.';

  @override
  String get metric_90_name => 'Ahlaki Üstünlük Çerçevesi';

  @override
  String get metric_90_description =>
      'Çatışmayı domine etmek için kullanılan doğruluğu, saflık iddialarını veya ahlaki üstünlüğü arar.';

  @override
  String get metric_91_name => 'Karakter Suikastı';

  @override
  String get metric_91_description =>
      'Belirli davranış yerine kimlik, dürüstlük, akıl sağlığı veya değere yönelik geniş saldırıları tespit eder.';

  @override
  String get metric_92_name => 'Üçlü İndikatörler';

  @override
  String get metric_92_description =>
      'Partneri baskılamak, karşılaştırmak, doğrulamak veya destabilize etmek için çatışmaya üçüncü tarafları getirmeyi işaretler.';

  @override
  String get metric_93_name => 'Sosyal Karşılaştırma Baskısı';

  @override
  String get metric_93_description =>
      'Utandırmak veya zorlamak için kullanılan eslerle, arkadaşlarla, diğer çiftlerle veya ideallerle karşılaştırmaları arar.';

  @override
  String get metric_94_name => 'Özerklik Desteği';

  @override
  String get metric_94_description =>
      'Bağımsız seçimlere, dostluklara, hedeflere, sınırlara ve kişisel temsile saygıyı ölçer.';

  @override
  String get metric_95_name => 'Rıza ve Seçim Saygısı';

  @override
  String get metric_95_description =>
      'Kararların baskı, suçluluk, tehdit veya manipülasyon olmadan özgürce alınıp alınmadığını değerlendirir.';

  @override
  String get metric_96_name => 'İşbirlikçi Planlama';

  @override
  String get metric_96_description =>
      'Paylaşılan planlamayı, ortak kararları, koordineli sorumlulukları ve pratik takibi arar.';

  @override
  String get metric_97_name => 'Onarım Takibi';

  @override
  String get metric_97_description =>
      'Vaat edilen değişikliklerin daha sonra davranışta yansıtıp yansıtılmadığını, sadece kelimelerde değil, ölçer.';

  @override
  String get metric_98_name => 'Değişmiş Davranış Kanıtı';

  @override
  String get metric_98_description =>
      'Öğrenmeyi, ayarlamayı veya azaltılmış zararlı davranışı gösteren gözlemlenebilir, tekrarlanan eylemleri kontrol eder.';

  @override
  String get metric_99_name => 'Duygusal Güvenlik Dili';

  @override
  String get metric_99_description =>
      'Dürüstlüğü davet eden, korkuyu düşüren, onuru koruyan ve güvenli ifadeyi rahatlatan dili tanımlar.';

  @override
  String get metric_100_name => 'İlişki Belirsizliği';

  @override
  String get metric_100_description =>
      'Belirsizliği, karışık taahhütü, it-çek mesajlaşmasını veya devam etme isteğinin belirsizliğini tespit eder.';

  @override
  String get unableToOpenConversations => 'Konuşmalar açılamıyor';

  @override
  String get unableToOpenConversationsBody =>
      'Konuşmalarınız yüklenirken bir hata oluştu. Lütfen tekrar deneyin.';

  @override
  String get unableToLoadConversationsBody =>
      'Konuşmalar yüklenemiyor. Lütfen izinlerinizi kontrol edin ve tekrar deneyin.';

  @override
  String get errorLoadingConversationsBody =>
      'Konuşma yükleme hatası. Lütfen tekrar deneyin.';

  @override
  String get smsPermissionRequired => 'SMS izni gerekli';

  @override
  String get smsPermissionRequiredBody =>
      'SMS konuşmalarını analiz etmek için mesajlarınızı okuma iznine ihtiyacımız var. Gizliliğiniz önemlidir — mesajlar sadece yerel olarak analiz edilir ve asla sunucularımızda saklanmaz.';

  @override
  String get grantSmsPermission => 'SMS izni ver';

  @override
  String get noSmsConversationsFound => 'SMS konuşması bulunamadı';

  @override
  String get noConversationsMatchSearch => 'Aramanızla eşleşen konuşma yok';

  @override
  String get noSmsMessagesOnDevice => 'Bu cihazda SMS mesajınız yok';

  @override
  String get tryDifferentSearch => 'Farklı bir arama terimi deneyin';

  @override
  String get clearSearch => 'Aramayı temizle';

  @override
  String selectedFile(String filename) {
    return 'Seçilen: $filename';
  }

  @override
  String get invalidFile => 'Geçersiz dosya';

  @override
  String get fileImport => 'Dosya içe aktar';

  @override
  String get fileImportNotImplemented =>
      'Bu dosya türü için dosya analizi henüz uygulanmadı.';

  @override
  String get errorPickingFile => 'Dosya açılamıyor. Lütfen tekrar deneyin.';

  @override
  String get readyToCapture => 'Yakalamaya hazır';

  @override
  String get readyToCaptureBody =>
      'Şimdi Mesajlar uygulamasına gidin ve ekran görüntüsü almaya başlayın.\n\nBittiğinde bu uygulamaya geri dönün ve \"Bitir ve İşle\" düğmesine basın.';

  @override
  String get noScreenshotsToProcess => 'İşlenecek ekran görüntüsü yok.';

  @override
  String processingScreenshot(int current, int total) {
    return 'Ekran görüntüsü $current / $total işleniyor...';
  }

  @override
  String get noMessagesFound => 'Mesaj bulunamadı';

  @override
  String get noMessagesFoundBody =>
      'Ekran görüntülerinden mesaj çıkarılamadı.\n\nEkran görüntülerinin konuşmayı net gösterdiğinden emin olun.';

  @override
  String loadedMessages(int count) {
    return 'Ekran görüntülerinden $count mesaj yüklendi';
  }

  @override
  String get processingError => 'İşleme hatası';

  @override
  String get processingErrorBody =>
      'Ekran görüntüleri işlenirken hata oluştu. Lütfen tekrar deneyin.';

  @override
  String metricListSavedAs(String name) {
    return 'Seçimleriniz \"$name\" olarak kaydedildi.';
  }

  @override
  String metricListLoadedName(String name) {
    return 'Seçimler \"$name\" alındı ve uygulandı.';
  }

  @override
  String conversationLoaded(int count, String name) {
    return '$name üzerinden $count mesaj yüklendi';
  }

  @override
  String get loadButton => 'Yükle';

  @override
  String get photoPermissionRequired =>
      'Ekran görüntülerini algılamak için fotoğraf kitaplığı izni gerekli.';

  @override
  String get initializingConnection => 'Güvenli bağlantı başlatılıyor...';

  @override
  String get configurationRequired => 'Yapılandırma gerekli';

  @override
  String get goBack => 'Geri';

  @override
  String get enableDateRangeFiltering =>
      'Tarih aralığı filtrelemeyi etkinleştir';

  @override
  String get clearSelectedDateRange => 'Seçilen tarih aralığını temizle';

  @override
  String get largeThreadNoticeTitle => 'KULLANICIYA BİLDİRİM';

  @override
  String get largeThreadNoticeBody =>
      'Özellikle büyük metin dizileriyle çalışırken, bu uygulamadaki bazı yükleme ekranları bazen bir buçuk dakikayı aşabilir.\n\nUygulama donmuyor. Dönen bir durum göstergesi görüyorsanız, uygulama hala yükleniyor demektir.\n\nBu durumlarda sabırlı olun, çünkü yükleme süresi diğer uygulamalara göre daha uzun olabilir, özellikle 50.000 mesaj içeren bir dizi gibi büyük bir veri setiyle çalışırken.';

  @override
  String get neverShowThisAgain => 'Bu mesajı tekrar gösterme';

  @override
  String loadingConversationWith(String name) {
    return 'Konuşma yükleniyor\n$name ile…';
  }

  @override
  String get iosCaptureInstructions =>
      '1. Mesajlar uygulamasını açın ve konuşmayı seçin\n2. Analiz etmek istediğiniz en eski mesaja kadar kaydırın\n3. Aşağıdaki \"Yakalamayı Başlat\" düğmesine basın\n4. Konuşmayı kaydırırken ekran görüntüsü alın\n5. Bittiğinde \"Bitir ve İşle\" düğmesine basın';

  @override
  String get howToCaptureIosMessages => 'iOS mesajları nasıl yakalanır';

  @override
  String get deepSeekApiKey => 'DeepSeek API Anahtarı';

  @override
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis =>
      'AI analizini etkinleştirmek için DeepSeek API anahtarınızı girin.';

  @override
  String get getYourApiKeyFrom =>
      'API anahtarınızı şuradan alın: https://platform.deepseek.com';

  @override
  String get apiKey => 'API Anahtarı';

  @override
  String get skPlaceholder => 'sk-...';

  @override
  String get yourApiKeyIsStoredSecurely =>
      'API anahtarınız cihazınızda güvenli bir şekilde saklanır ve asla paylaşılmaz.';

  @override
  String get pleaseEnterApiKey => 'Lütfen bir API anahtarı girin';

  @override
  String get apiKeySavedSuccessfully => 'API anahtarı başarıyla kaydedildi!';

  @override
  String get pleaseBePatientLongerTextThreads =>
      'Lütfen sabırlı olun, daha uzun metin dizisi veri kümeleri yüklenmek için oldukça zaman alır';

  @override
  String get almostThereBigOne =>
      'Neredeyse bitti, Vay canına, bu büyük olmalı';

  @override
  String get pleaseBePatientLargeDatasets =>
      'Lütfen sabırlı olun, büyük veri kümeleri bir buçuk dakikadan fazla yükleme sürelerine neden olabilir';

  @override
  String continuingToLoadMassiveThread(String name) {
    return 'Devam ediyor, $name ile devasa diziyi yükleniyor…';
  }

  @override
  String get noMessagesInDateRange =>
      'Seçilen tarih aralığında mesaj bulunamadı. Lütfen farklı tarihler seçin veya tarih filtresini temizleyin.';

  @override
  String get purchaseCustomMetricTileTitle => 'Özel Metrik Satın Al';

  @override
  String get purchaseCustomMetricTileDescription =>
      'Tek seferlik \$4.99 ücretle, kalıcı olarak diğer metriklerinizin yanına kaydedilen ve gelecekteki herhangi bir analizde kullanılabilen özel bir metrik adı ve tanımı girin. Sınırsız özel metrik satın alın.';

  @override
  String get purchaseCustomMetricConfirmTitle => 'Özel Metrik Satın Al';

  @override
  String get purchaseCustomMetricConfirmBody =>
      'Bir özel metrik slotunun kilidini açmak için \$4.99 (tek seferlik) ücretlendirileceksiniz.\n\nÖzel metrik adınız ve tanımınız kaydedildikten sonra kalıcıdır ve asla değiştirilemez, bu yüzden lütfen dikkatlice seçin.';

  @override
  String get purchaseCustomMetricConfirmButton => 'Satın Al — \$4.99';

  @override
  String get purchaseCustomMetricEnterNameTitle => 'Özel Metrik Adı';

  @override
  String get purchaseCustomMetricEnterNamePrompt =>
      'Özel metriğiniz için ad girin:';

  @override
  String get purchaseCustomMetricNameHint => 'Metrik Adı';

  @override
  String get purchaseCustomMetricConfirmNameTitle => 'Metrik Adını Onayla';

  @override
  String get purchaseCustomMetricConfirmNameYouEntered => 'Girdiniz:\n\n';

  @override
  String get purchaseCustomMetricConfirmNameWarning =>
      '\n\n⚠️  Bu SON ve asla değiştirilemez.';

  @override
  String get purchaseCustomMetricReenterName => 'Hayır — Adı Yeniden Gir';

  @override
  String get purchaseCustomMetricSaveName => 'Tamam — Metrik Adını Kaydet';

  @override
  String purchaseCustomMetricDefineTitleWithName(String name) {
    return 'Tanımla: $name';
  }

  @override
  String purchaseCustomMetricDefinePromptWithName(String name) {
    return 'Özel Metriğinizin anlamını girin: $name';
  }

  @override
  String get purchaseCustomMetricMeaningHint =>
      'Bu metriğin ne anlama geldiğini, hangi davranışları aradığını ve ilişki dinamiklerine nasıl uygulandığını açıklayın...';

  @override
  String get purchaseCustomMetricReenter => 'Hayır — Yeniden Gir';

  @override
  String get purchaseCustomMetricSaveMeaning => 'Tamam — Anlamı Kaydet';

  @override
  String get purchaseCustomMetricPreviewTitle => 'Özel Metriğinizi Önizleyin';

  @override
  String get purchaseCustomMetricPreviewSubtitle =>
      'Kutucuğunuz böyle görünecek:';

  @override
  String get purchaseCustomMetricLastChanceWarning =>
      '⚠️  Fikrinizi değiştirmek için SON ŞANSINIZ.\nOnaylandıktan sonra, ad ve tanım kalıcıdır.';

  @override
  String get purchaseCustomMetricCancelEverything => 'Her Şeyi İptal Et';

  @override
  String get purchaseCustomMetricCommit => 'Özel Metrike Bağlan';

  @override
  String purchaseCustomMetricSuccess(String name) {
    return '✓ \"$name\" metriklerinize eklendi! Artık analiz için seçebilirsiniz.';
  }

  @override
  String get purchaseCustomMetricProcessingTitle => 'Satın Alma İşleniyor...';

  @override
  String get purchaseCustomMetricProcessingBody =>
      'Mağaza onayı bekleniyor.\nLütfen uygulamayı kapatmayın.';

  @override
  String get next => 'Sonraki';

  @override
  String get cancelNotReady => 'İptal — Hazır Değildim';

  @override
  String get packGoodLabel => 'İyi';

  @override
  String get packBadLabel => 'Kötü';

  @override
  String get packUglyLabel => 'Çirkin';

  @override
  String get metric_good_1_name => 'Aktif Dinleme İpuçları';

  @override
  String get metric_good_1_description =>
      'Metinde partnerin bakış açısını anlama, açıklayıcı sorular sorma ve anlaşıldığını gösterme ifadelerini tespit eder.';

  @override
  String get metric_good_2_name => 'Takdir İfadesi';

  @override
  String get metric_good_2_description =>
      'Spesifik minnettarlık, çaba takdiri ve partnerin olumlu niteliklerinin veya eylemlerinin kabulünü belirler.';

  @override
  String get metric_good_3_name => 'Onay Dili';

  @override
  String get metric_good_3_description =>
      'Partnerin duygularını, deneyimlerini, değerini veya ihtiyaç sahibi olma hakkını onaylayan ifadeleri arar.';

  @override
  String get metric_good_4_name => 'İşbirlikçi Ton';

  @override
  String get metric_good_4_description =>
      '\"Biz\" kullanımını, ortak problem çözme dilini ve konuları birlikte ele alınacak paylaşılan zorluklar olarak çerçevelemeyi ölçer.';

  @override
  String get metric_good_5_name => 'Partnere Merak';

  @override
  String get metric_good_5_description =>
      'Partnerin düşünceleri, duyguları, günü, tercihleri veya içsel deneyimi hakkında sorular sormayı izler.';

  @override
  String get metric_good_6_name => 'Kırılganlık İfadesi';

  @override
  String get metric_good_6_description =>
      'Savunmaya geçmeden veya suçlamadan korkuları, güvensizlikleri, ihtiyaçları veya duygusal gerçekleri paylaşmayı belirler.';

  @override
  String get metric_good_7_name => 'Bağlantı Olarak Mizah';

  @override
  String get metric_good_7_description =>
      'Partnerleri bir araya getiren, alay veya küçümseme içermeyen oyunbaz ortak kahkahaları tespit eder.';

  @override
  String get metric_good_8_name => 'Güvence Sunma';

  @override
  String get metric_good_8_description =>
      'Kaygılı partnere rahatlık, güvenlik veya özgüven sağlayan proaktif ifadeleri arar.';

  @override
  String get metric_good_9_name => 'İltifat Sıklığı';

  @override
  String get metric_good_9_description =>
      'Görünüm, karakter, yetenekler veya olumlu eylemler hakkında gerçek, spesifik övgüyü ölçer.';

  @override
  String get metric_good_10_name => 'Duygusal Erişilebilirlik';

  @override
  String get metric_good_10_description =>
      'Partnerin duygusal ihtiyaçlarına duyarlılığı, sıkıntı anında varlığı ve etkileşime girme isteğini değerlendirir.';

  @override
  String get metric_good_11_name => 'Şükran Alışkanlığı';

  @override
  String get metric_good_11_description =>
      'Küçük şeyler, çaba, varlık veya destek için düzenli teşekkür ifadelerini belirler.';

  @override
  String get metric_good_12_name => 'Destekleyici Dil';

  @override
  String get metric_good_12_description =>
      'Yardım teklifleri, cesaretlendirme, partnerin yeteneklerine inanç veya yanında olma ifadelerini izler.';

  @override
  String get metric_good_13_name => 'Nazik Anlaşmazlık';

  @override
  String get metric_good_13_description =>
      'Saygı, merak ve ilişkiyi koruyarak farklı görüşleri ifade etme becerisini ölçer.';

  @override
  String get metric_good_14_name => 'Özür Samimiyeti';

  @override
  String get metric_good_14_description =>
      'Mazeretsiz gerçek pişmanlık, etkinin anlaşılması ve değişim taahhüdünü tespit eder.';

  @override
  String get metric_good_15_name => 'Affetme Kabulü';

  @override
  String get metric_good_15_description =>
      'Geçmiş zararları bırakma, ilerleme ve onarım sonrası güveni yeniden inşa etme isteğini arar.';

  @override
  String get metric_good_16_name => 'Kaliteli Zaman Başlatma';

  @override
  String get metric_good_16_description =>
      'Birlikte kaliteli zaman geçirme, aktivite planlama veya bağlantı anları yaratma tekliflerini belirler.';

  @override
  String get metric_good_17_name => 'Fiziksel Sevgi İpuçları';

  @override
  String get metric_good_17_description =>
      'Dokunma, sarılma, öpme veya fiziksel yakınlıktan bahsetmeleri ilgi ve yakınlık ifadesi olarak izler.';

  @override
  String get metric_good_18_name => 'Paylaşılan Sevinç Tanıma';

  @override
  String get metric_good_18_description =>
      'Partnerin başarılarını, mutluluğunu veya iyi haberlerini gerçek coşkuyla kutlamayı ölçer.';

  @override
  String get metric_good_19_name => 'Çatışma Çözme Çabası';

  @override
  String get metric_good_19_description =>
      'Anlaşmazlık sonrası çözüm bulma, uzlaşma veya barışı yeniden sağlama girişimlerini tanımlar.';

  @override
  String get metric_good_20_name => 'Sabır Göstergesi';

  @override
  String get metric_good_20_description =>
      'Partnerin hızına, zorluklarına, öğrenme eğrisine veya duygusal işleme ihtiyaçlarına karşı toleransı tespit eder.';

  @override
  String get metric_good_21_name => 'Perspektif Alma Dili';

  @override
  String get metric_good_21_description =>
      'Partnerin bakış açısını, bağlamını veya duygusal gerçekliğini anladığını gösteren ifadeleri arar.';

  @override
  String get metric_good_22_name => 'Güvenilirlik Sinyalleri';

  @override
  String get metric_good_22_description =>
      'Vaatleri yerine getirme, tutarlı olma ve güvenilir olma durumunu izler.';

  @override
  String get metric_good_23_name => 'Farklılıklara Saygı';

  @override
  String get metric_good_23_description =>
      'Partnerin benzersiz özelliklerini, tercihlerini, görüşlerini ve varoluş biçimlerini kabul etmeyi ölçer.';

  @override
  String get metric_good_24_name => 'Geri Bildirime Açıklık';

  @override
  String get metric_good_24_description =>
      'Partnerin endişelerine açık olma, eleştiriyi duyma ve gelişme isteğini tanımlar.';

  @override
  String get metric_good_25_name => 'Duyguları Onaylama';

  @override
  String get metric_good_25_description =>
      'Partnerin duygularının gerçek, anlaşılır ve ilgiye değer olduğunun kabul edildiğini tespit eder.';

  @override
  String get metric_good_26_name => 'Teşvik Dili';

  @override
  String get metric_good_26_description =>
      'Güven veren, harekete geçmeye motive eden veya partnerin hedeflerini destekleyen ifadeleri arar.';

  @override
  String get metric_good_27_name => 'Samimi Açıklama';

  @override
  String get metric_good_27_description =>
      'Duygusal bağı derinleştiren kişisel düşünceleri, hayalleri, korkuları veya sırları paylaşmayı tanımlar.';

  @override
  String get metric_good_28_name => 'Uyum Sinyalleri';

  @override
  String get metric_good_28_description =>
      'Partnerin ruh halini, ihtiyaçlarını veya sıkıntısını açıkça söylenmeden fark etmeyi ölçer.';

  @override
  String get metric_good_29_name => 'Olumlu Yeniden Çerçeveleme';

  @override
  String get metric_good_29_description =>
      'Zor durumlarda gümüş astar, büyüme fırsatları veya yapıcı açılar bulmayı tespit eder.';

  @override
  String get metric_good_30_name => 'Bağlılık Dili';

  @override
  String get metric_good_30_description =>
      'Bağlılık, uzun vadeli düşünme ve ilişkinin geleceğine yatırım ifadelerini izler.';

  @override
  String get metric_good_31_name => 'Esneklik Göstergesi';

  @override
  String get metric_good_31_description =>
      'Planları uyarlama, beklentileri ayarlama veya partnerle ortak noktada buluşma isteğini belirler.';

  @override
  String get metric_good_32_name => 'Koruyucu Dil';

  @override
  String get metric_good_32_description =>
      'Partnerin güvenliği, refahı ve çıkarlarının derinden önemsendiğini gösteren ifadeleri arar.';

  @override
  String get metric_good_33_name => 'Dönüm Noktalarını Kutlama';

  @override
  String get metric_good_33_description =>
      'Yıldönümleri, başarılar veya birlikte anlamlı anları tanımayı ölçer.';

  @override
  String get metric_good_34_name => 'Yapıcı Geri Bildirim';

  @override
  String get metric_good_34_description =>
      'Nazik, spesifik ve büyüme odaklı iyileştirme önerileri sunmayı tespit eder.';

  @override
  String get metric_good_35_name => 'Zor Zamanlarda Varlık';

  @override
  String get metric_good_35_description =>
      'Partner zorluk çekerken, yas tutarken veya sorunlarla karşılaşırken ilgili kalmayı belirler.';

  @override
  String get metric_good_36_name => 'Hayranlık İfadesi';

  @override
  String get metric_good_36_description =>
      'Partnerin karakterine, gücüne, zekasına veya dayanıklılığına gerçek saygıyı izler.';

  @override
  String get metric_good_37_name => 'Neşelilik Göstergeleri';

  @override
  String get metric_good_37_description =>
      'Hafif şakalaşmalar, iç şakalar veya bağı güçlendiren eğlenceli etkileşimleri arar.';

  @override
  String get metric_good_38_name => 'Empatik Yansıtma';

  @override
  String get metric_good_38_description =>
      'Partnerin duygularını anlama ve onaylama amacıyla yansıtmayı ölçer.';

  @override
  String get metric_good_39_name => 'Kabul Dili';

  @override
  String get metric_good_39_description =>
      'Partneri kusurlarıyla birlikte olduğu gibi kabul etmeyi, değişim talep etmeden benimsemeyi algılar.';

  @override
  String get metric_good_40_name => 'Destekleyici Varlık';

  @override
  String get metric_good_40_description =>
      'Düzeltmeye çalışmadan, dinleme ve arkadaşlık yoluyla rahatlık sunarak orada olmayı tanımlar.';

  @override
  String get metric_good_41_name => 'Gerçek İlgi';

  @override
  String get metric_good_41_description =>
      'Partnerin hayatı ve endişeleri hakkında takip soruları sormayı ve detayları hatırlamayı izler.';

  @override
  String get metric_good_42_name => 'Karşılıklı Çaba';

  @override
  String get metric_good_42_description =>
      'Her iki partnerin duygusal iş, planlama ve ilişki bakımına eşit katkısını ölçer.';

  @override
  String get metric_good_43_name => 'Bağışlama Dili';

  @override
  String get metric_good_43_description =>
      'Küskünlükleri bırakmayı, ikinci şans vermeyi ve acıyı geride bırakmayı seçmeyi arar.';

  @override
  String get metric_good_44_name => 'Karşılıklı Saygı Sinyalleri';

  @override
  String get metric_good_44_description =>
      'Partnere eşit davranmayı, fikirlerine saygı göstermeyi ve katkılarına değer vermeyi algılar.';

  @override
  String get metric_good_45_name => 'Duygusal Dürüstlük';

  @override
  String get metric_good_45_description =>
      'Manipülasyon, abartı veya stratejik gizleme olmadan duyguların dürüstçe ifade edilmesini tanımlar.';

  @override
  String get metric_good_46_name => 'Destekleyici Dinleme';

  @override
  String get metric_good_46_description =>
      'Partnerin kesintisiz, yargılamadan veya hemen çözüm sunmadan tam olarak ifade etmesine izin vermeyi ölçer.';

  @override
  String get metric_good_47_name => 'Sevgi Dolu Takma Adlar';

  @override
  String get metric_good_47_description =>
      'Sıcaklık ve yakın bağ aktaran sevgi dolu hitap sözcüklerinin kullanımını izler.';

  @override
  String get metric_good_48_name => 'Paylaşılan Kahkaha';

  @override
  String get metric_good_48_description =>
      'Olumlu bağlanma deneyimleri yaratan karşılıklı mizah ve neşe anlarını belirler.';

  @override
  String get metric_good_49_name => 'Düşünceli Jestler';

  @override
  String get metric_good_49_description =>
      'Küçük iyilik eylemlerini, tercihleri hatırlamayı veya partneri mutlu etmek için bir şeyler yapmayı arar.';

  @override
  String get metric_good_50_name => 'Partnere Güven';

  @override
  String get metric_good_50_description =>
      'Partnerin yeteneklerine, potansiyeline ve zorluklarla başa çıkma kapasitesine olan inancı tespit eder.';

  @override
  String get metric_good_51_name => 'Sağlıklı Karşılıklı Bağımlılık';

  @override
  String get metric_good_51_description =>
      'Birliktelik ve bağımsızlık arasındaki dengeyi, birbirlerinin özerkliğini desteklemeyi ölçer.';

  @override
  String get metric_good_52_name => 'Çatışma Yatıştırma';

  @override
  String get metric_good_52_description =>
      'Isınan tartışmaları sakinleştirmek için yumuşak dil, ara verme veya çözüm önermeyi belirler.';

  @override
  String get metric_good_53_name => 'Samimi Özür';

  @override
  String get metric_good_53_description =>
      'Küçümsemeden, savunmaya geçmeden veya suçu kaydırmadan yanlışın tam olarak kabul edilmesini izler.';

  @override
  String get metric_good_54_name => 'Duygusal Destek Sunma';

  @override
  String get metric_good_54_description =>
      'Proaktif kontrolleri, partnerin nasıl olduğunu sormayı ve yardım teklif etmeyi arar.';

  @override
  String get metric_good_55_name => 'Saygılı Sınırlar';

  @override
  String get metric_good_55_description =>
      'Partnerin belirtilen sınırlarına saygı gösterirken kendi sağlıklı sınırlarını korumayı ölçer.';

  @override
  String get metric_good_56_name => 'Olumlu Beklenti';

  @override
  String get metric_good_56_description =>
      'Birlikte geleceğe dair heyecanı, plan yapmayı ve ortak deneyimleri dört gözle beklemeyi tespit eder.';

  @override
  String get metric_good_57_name => 'Dikkat Sinyalleri';

  @override
  String get metric_good_57_description =>
      'Partnerin önemli olduğunu gösteren önemli tarihleri, tercihleri ve detayları hatırlamayı belirler.';

  @override
  String get metric_good_58_name => 'Büyümeyi Teşvik';

  @override
  String get metric_good_58_description =>
      'Partnerin kişisel gelişimini, öğrenmesini ve hedeflerine ulaşmasını desteklemeyi izler.';

  @override
  String get metric_good_59_name => 'Şefkatli Dil';

  @override
  String get metric_good_59_description =>
      'Yumuşaklık ve duygusal sıcaklık ileten nazik, şefkatli kelime seçimlerini arar.';

  @override
  String get metric_good_60_name => 'Karşılıklı Hesap Verebilirlik';

  @override
  String get metric_good_60_description =>
      'Her iki partnerin de eylemlerinin ve etkilerinin sorumluluğunu almasını ölçer.';

  @override
  String get metric_good_61_name => 'Partneri Kutlama';

  @override
  String get metric_good_61_description =>
      'Partnerle ilgili gurur, sevinç veya hayranlığın açıkça veya özel olarak ifade edilmesini tespit eder.';

  @override
  String get metric_good_62_name => 'Tutarlı Sevgi';

  @override
  String get metric_good_62_description =>
      'Performans veya uyuma bağlı olarak değişmeyen düzenli sevgi ifadelerini belirler.';

  @override
  String get metric_good_63_name => 'Duygusal Uyum';

  @override
  String get metric_good_63_description =>
      'Partnerin duygusal durumundaki ince değişimleri algılama ve yanıt vermeyi izler.';

  @override
  String get metric_good_64_name => 'İşbirlikçi Karar Alma';

  @override
  String get metric_good_64_description =>
      'Birlikte seçenekleri tartışmayı ve her iki partnerin ihtiyaçlarını göz önünde bulunduran kararlar almayı ölçer.';

  @override
  String get metric_good_65_name => 'Koşulsuz Güvence';

  @override
  String get metric_good_65_description =>
      'Partnerin bunu hak etmesini beklemeden rahatlık ve güvenlik sunmayı arar.';

  @override
  String get metric_good_66_name => 'Otantik Bağ';

  @override
  String get metric_good_66_description =>
      'Etkileşimlerde gerçek varlığı, samimi paylaşımı ve yapmacıklıktan kurtulmayı tespit eder.';

  @override
  String get metric_good_67_name => 'Karşılıklı Teşvik';

  @override
  String get metric_good_67_description =>
      'Her iki partnerin birbirini teşvik ettiğini ve sadece sonuçları değil çabaları da kutladığını belirler.';

  @override
  String get metric_good_68_name => 'Saygılı Sorgulama';

  @override
  String get metric_good_68_description =>
      'Sorgulama yerine gerçek merakla partnerin bakış açısını sormayı izler.';

  @override
  String get metric_good_69_name => 'Sevgi Dolu Tutarlılık';

  @override
  String get metric_good_69_description =>
      'İyi ve zor zamanlarda aynı şekilde var olmayı, sevgide güvenilir olmayı ölçer.';

  @override
  String get metric_good_70_name => 'Duygusal Karşılıklılık';

  @override
  String get metric_good_70_description =>
      'Her iki partnerin duyguları, ihtiyaçları ve kırılganlıkları dengeli bir şekilde paylaşmasını arar.';

  @override
  String get metric_good_71_name => 'Neşeli Varlık';

  @override
  String get metric_good_71_description =>
      'Partnerin varlığında gerçek mutluluğu ve birlikte geçirilen zamana duyulan heyecanı tespit eder.';

  @override
  String get metric_good_72_name => 'Yapıcı Diyalog';

  @override
  String get metric_good_72_description =>
      'Kazanmaya veya haklı çıkmaya değil, anlayışa yönelen konuşmaları belirler.';

  @override
  String get metric_good_73_name => 'Koruyucu Savunuculuk';

  @override
  String get metric_good_73_description =>
      'Partneri savunma, onu koruma ve iyiliğine öncelik verme davranışlarını izler.';

  @override
  String get metric_good_74_name => 'Bilinçli İletişim';

  @override
  String get metric_good_74_description =>
      'Düşünceli kelime seçimini, konuşmadan önce etkiyi değerlendirmeyi ve kasıtlı mesajlaşmayı ölçer.';

  @override
  String get metric_good_75_name => 'İlişki Yatırımı';

  @override
  String get metric_good_75_description =>
      'İlişkiyi beslemeye ayrılan zaman, enerji ve kaynakları inceler.';

  @override
  String get metric_good_76_name => 'Güvenli Temel Dili';

  @override
  String get metric_good_76_description =>
      'Partnerin keşfetmesine olanak tanıyan istikrar, güvenlik ve temel sunmayı tespit eder.';

  @override
  String get metric_good_77_name => 'Karşılıklı Hayranlık';

  @override
  String get metric_good_77_description =>
      'Her iki partnerin de birbirlerinin niteliklerine saygı ve takdir göstermesini tanımlar.';

  @override
  String get metric_good_78_name => 'Hassas Anlar';

  @override
  String get metric_good_78_description =>
      'Yakınlık ve bağlantının samimi sessiz anlarını yaratmayı veya fark etmeyi izler.';

  @override
  String get metric_good_79_name => 'Samimi Merak';

  @override
  String get metric_good_79_description =>
      'Partnerin düşüncelerini, duygularını ve deneyimlerini anlamaya yönelik gerçek ilgiyi arar.';

  @override
  String get metric_good_80_name => 'Sevgi Dolu Kabul';

  @override
  String get metric_good_80_description =>
      'Partnerin kusurları ve geçmişi de dahil olmak üzere tüm benliğini kucaklamayı tespit eder.';

  @override
  String get metric_good_81_name => 'Karşılıklı Gelişim Desteği';

  @override
  String get metric_good_81_description =>
      'Her iki partnerin de birbirlerinin gelişimini teşvik etmesini ve ilerlemeyi kutlamasını tanımlar.';

  @override
  String get metric_good_82_name => 'Sıcak Ton Göstergeleri';

  @override
  String get metric_good_82_description =>
      'Sevgi dolu dil, nazik ifadeler ve yumuşak iletişim tarzının kullanımını izler.';

  @override
  String get metric_good_83_name => 'Duyarlı Katılım';

  @override
  String get metric_good_83_description =>
      'Partnerin mesajlarına ve duygusal çağrılarına hızlı ve ilgili yanıtları ölçer.';

  @override
  String get metric_good_84_name => 'Paylaşılan Değer Uyumu';

  @override
  String get metric_good_84_description =>
      'Çifti birleştiren ortak inançlara, hedeflere veya yaşam felsefelerine yapılan atıfları arar.';

  @override
  String get metric_good_85_name => 'Koşulsuz Destek';

  @override
  String get metric_good_85_description =>
      'Desteği koşullu hale getirmeden partnerin yanında zorluklarda durmayı tespit eder.';

  @override
  String get metric_good_86_name => 'Samimi Kırılganlık';

  @override
  String get metric_good_86_description =>
      'Duygusal bağları derinleştiren derin korkuları, hayalleri veya güvensizlikleri paylaşmayı tanımlar.';

  @override
  String get metric_good_87_name => 'Karşılıklı Saygı Dili';

  @override
  String get metric_good_87_description =>
      'İletişimde birbirlerinin bakış açılarına, seçimlerine ve özerkliğine saygı göstermeyi izler.';

  @override
  String get metric_good_88_name => 'Olumlu Çerçeveleme';

  @override
  String get metric_good_88_description =>
      'Durumlarda ve partnerde en iyiyi görme, güçlü yönlere odaklanmayı ölçer.';

  @override
  String get metric_good_89_name => 'İşbirlikçi Sorun Çözme';

  @override
  String get metric_good_89_description =>
      'Her iki ortağa da eşit fayda sağlayan çözümler için birlikte çalışmayı arar.';

  @override
  String get metric_good_90_name => 'Duygusal Onaylama';

  @override
  String get metric_good_90_description =>
      'Partnerin duygularının mantıklı ve kabul edilebilir olduğunu onaylamayı tespit eder.';

  @override
  String get metric_good_91_name => 'Tutarlı Nezaket';

  @override
  String get metric_good_91_description =>
      'Partnerin düşünüldüğünü ve değer verildiğini gösteren düzenli küçük ilgi eylemlerini tanımlar.';

  @override
  String get metric_good_92_name => 'Karşılıklı Kutlama';

  @override
  String get metric_good_92_description =>
      'Her iki partnerin de birbirinin başarıları ve sevinçleri hakkında gerçekten mutlu olmasını izler.';

  @override
  String get metric_good_93_name => 'Güvenli Bağlanma Dili';

  @override
  String get metric_good_93_description =>
      'Güven ifade etme, yakınlıkla rahat olma ve ilişkiye güven duymayı ölçer.';

  @override
  String get metric_good_94_name => 'Düşünceli Değerlendirme';

  @override
  String get metric_good_94_description =>
      'Partnerin ihtiyaçları ve duygularını göz önünde bulundurarak kararlar almayı arar.';

  @override
  String get metric_good_95_name => 'Sevgi Dolu Varlık';

  @override
  String get metric_good_95_description =>
      'Tamamen mevcut ve ilgili olmayı, partnerin en önemli olduğunu göstermeyi tespit eder.';

  @override
  String get metric_good_96_name => 'Samimi İlgi Dili';

  @override
  String get metric_good_96_description =>
      'Partnerin iyiliğine yönelik otantik endişe, ilgi ve yatırım ifadelerini izler.';

  @override
  String get metric_good_97_name => 'İlişki Bağlılığı';

  @override
  String get metric_good_97_description =>
      'Ortaklığa bağlılık ve zorlukların üstesinden gelme isteğini ifade etmeyi ölçer.';

  @override
  String get metric_good_98_name => 'Otantik Sevgi İfadesi';

  @override
  String get metric_good_98_description =>
      'Gerçek ve koşulsuz hissedilen otantik, tutarlı sevgi ifadelerini arar.';

  @override
  String get metric_good_99_name => 'Ortak Hedef Belirleme';

  @override
  String get metric_good_99_description =>
      'Partnerlerin birlikte ortak hayaller, öncelikler ve gelecek yönünü işbirliğiyle tanımlamasını belirler.';

  @override
  String get metric_good_100_name => 'Onarım Girişimi Tanıma';

  @override
  String get metric_good_100_description =>
      'Partnerin çatışmayı azaltma ve bağı yeniden kurma girişimlerini fark edip olumlu yanıt vermeyi tespit eder.';

  @override
  String get metric_bad_1_name => 'Pasif Agresyon';

  @override
  String get metric_bad_1_description =>
      'Doğrudan ifade yerine erteleme, unutkanlık, alaycılık veya ince sabotaj yoluyla dolaylı düşmanlığı tespit eder.';

  @override
  String get metric_bad_2_name => 'Suçluluk Silahı';

  @override
  String get metric_bad_2_description =>
      'Kararları manipüle etmek veya sınır koymayı engellemek için suçluluk, utanç veya zorunluluk dili kullanımını tanımlar.';

  @override
  String get metric_bad_3_name => 'Duygusal Şantaj';

  @override
  String get metric_bad_3_description =>
      'Davranışı kontrol etmek veya tartışmayı önlemek için kendine zarar verme, terk etme veya sevgiyi geri çekme tehditlerini işaretler.';

  @override
  String get metric_bad_4_name => 'Kronik Şikayet';

  @override
  String get metric_bad_4_description =>
      'Çözüm aramadan veya işbirlikçi değişiklik yapmadan sürekli olumsuzluk, ruminasyon veya şikayeti izler.';

  @override
  String get metric_bad_5_name => 'Karşılaştırma Utandırması';

  @override
  String get metric_bad_5_description =>
      'Utandırmak veya davranış değişikliğine zorlamak için eski sevgililer, arkadaşlar veya aile ile olumsuz karşılaştırmaları tanımlar.';

  @override
  String get metric_bad_6_name => 'Koşullu Dinleme';

  @override
  String get metric_bad_6_description =>
      'Yalnızca dinleyiciye fayda sağladığında veya kendi gündemine hizmet ettiğinde dinlemeyi, gerçek anlayışı değil, tespit eder.';

  @override
  String get metric_bad_7_name => 'Seçici Hafıza';

  @override
  String get metric_bad_7_description =>
      'Hesap vermekten kaçınmak için sözleri, anlaşmaları veya geçmişteki zararlı davranışları uygun şekilde unutmayı izler.';

  @override
  String get metric_bad_8_name => 'Kriz Yoluyla Dikkat Çekme';

  @override
  String get metric_bad_8_description =>
      'Dikkat veya sempati kazanmak için dramatik tırmanış, kriz yaratma veya abartıyı tanımlar.';

  @override
  String get metric_bad_9_name => 'Sınır Testi';

  @override
  String get metric_bad_9_description =>
      'Belirtilen sınırların uygulanıp uygulanmayacağını belirlemek için tekrarlanan sorgulama veya zorlamayı tespit eder.';

  @override
  String get metric_bad_10_name => 'Bilgi Saklama';

  @override
  String get metric_bad_10_description =>
      'Kontrolü sürdürmek için ilgili gerçeklerin, bağlamın veya şeffaflığın kasıtlı olarak atlanmasını tanımlar.';

  @override
  String get metric_bad_11_name => 'Orantısız Öfke';

  @override
  String get metric_bad_11_description =>
      'Tetikleyici olayın haklı çıkaracağından önemli ölçüde büyük olan öfke tepkilerini izler.';

  @override
  String get metric_bad_12_name => 'Onay Bağımlılığı';

  @override
  String get metric_bad_12_description =>
      'Sürekli onay ihtiyacını, bağlılıkla ilgili tekrarlanan soruları veya bitmeyen sevgi kanıtını işaretler.';

  @override
  String get metric_bad_13_name => 'Konuşma Kaçınması';

  @override
  String get metric_bad_13_description =>
      'Endişelerle ilgilenmeyi reddetmeyi, kaçınma ifadelerini veya önemli tartışmaları kapatmayı tespit eder.';

  @override
  String get metric_bad_14_name => 'Çelişki Örüntüsü';

  @override
  String get metric_bad_14_description =>
      'Kafa karışıklığı veya istikrarsızlık yaratan çelişkili ifadeleri, sözleri veya pozisyonları tanımlar.';

  @override
  String get metric_bad_15_name => 'Etiketleme ile Geçersiz Kılma';

  @override
  String get metric_bad_15_description =>
      'Endişeleri geçersiz kılmak için \"deli\", \"dramatik\", \"paranoyak\" veya \"aşırı tepki veriyor\" olarak etiketlemeyi işaretler.';

  @override
  String get metric_bad_16_name => 'Seçici Empati';

  @override
  String get metric_bad_16_description =>
      'Yalnızca uygun olduğunda veya konuşmacının çıkarlarına hizmet ettiğinde sunulan empatiyi tespit eder.';

  @override
  String get metric_bad_17_name => 'İşlemsel Çerçeveleme';

  @override
  String get metric_bad_17_description =>
      '\"Bana borçlusun\", \"tüm yaptıklarımdan sonra\" veya ilişki eylemlerini borç yaratmak olarak görmeyi tanımlar.';

  @override
  String get metric_bad_18_name => 'Şikayet Geri Dönüşümü';

  @override
  String get metric_bad_18_description =>
      'Eski şikayetleri tekrar tekrar gündeme getirmeyi veya geçmiş zararları mevcut çatışmalarda silah olarak kullanmayı izler.';

  @override
  String get metric_bad_19_name => 'Talep Dili';

  @override
  String get metric_bad_19_description =>
      'Emir, talimat veya ültimatomları, ricalar veya işbirlikçi problem çözme yerine işaretler.';

  @override
  String get metric_bad_20_name => 'Duygusal Ulaşılmazlık';

  @override
  String get metric_bad_20_description =>
      'Duygusal olarak bağlanmayı, hisleri paylaşmayı veya rahatlık sağlamayı sürekli reddetmeyi tespit eder.';

  @override
  String get metric_bad_21_name => 'Düşmanca Yorumlama';

  @override
  String get metric_bad_21_description =>
      'Tarafsız ifadeleri saldırı olarak algılamayı veya belirsiz mesajları düşmanca yorumlamayı tanımlar.';

  @override
  String get metric_bad_22_name => 'Hak Temelli Çerçeveleme';

  @override
  String get metric_bad_22_description =>
      'Konuşmacının özel muamele, ayrıcalık veya öncelik hak ettiğini ima eden dili işaretler.';

  @override
  String get metric_bad_23_name => 'Yardım Kılıfında Eleştiri';

  @override
  String get metric_bad_23_description =>
      '\"Sadece yardım etmeye çalışıyorum\" veya \"kendi iyiliğin için\" diliyle sarılmış eleştiriyi tespit eder.';

  @override
  String get metric_bad_24_name => 'İhmal Örüntüleri';

  @override
  String get metric_bad_24_description =>
      'Duygusal, fiziksel veya ilişkisel ihtiyaçları karşılamada sürekli başarısızlığı tanımlar.';

  @override
  String get metric_bad_25_name => 'Çatışma Ruminasyonu';

  @override
  String get metric_bad_25_description =>
      'Çözüme veya kapanışa ilerlemeden çatışmaları takıntılı bir şekilde tekrar tekrar ele almayı izler.';

  @override
  String get metric_bad_26_name => 'Hassasiyeti Reddetme';

  @override
  String get metric_bad_26_description =>
      'Duyguları geçiştirmek için \"çok hassassın\" veya \"aşırı tepki veriyorsun\" gibi ifadeleri işaretler.';

  @override
  String get metric_bad_27_name => 'Rekabetçi Çerçeveleme';

  @override
  String get metric_bad_27_description =>
      'İlişkiyi, bir partnerin kazanması veya baskın olması gereken bir rekabet olarak çerçevelemeyi tespit eder.';

  @override
  String get metric_bad_28_name => 'Çifte Standart';

  @override
  String get metric_bad_28_description =>
      'Kendine ve partnere farklı kurallar uygulamayı veya beklentileri keyfi olarak değiştirmeyi tanımlar.';

  @override
  String get metric_bad_29_name => 'Sevgiyi Ceza Olarak Kullanma';

  @override
  String get metric_bad_29_description =>
      'Algılanan haksızlıklara misilleme olarak sevgi, ilgi veya iletişimi kesmeyi işaretler.';

  @override
  String get metric_bad_30_name => 'Suç Döndürme';

  @override
  String get metric_bad_30_description =>
      'Sorumluluktan kaçmak için suçu partner, koşullar ve dış etkenler arasında döndürmeyi izler.';

  @override
  String get metric_bad_31_name => 'Retorik Alay';

  @override
  String get metric_bad_31_description =>
      'Anlamak yerine alay etmek için kullanılan retorik veya alaycı soruları tespit eder.';

  @override
  String get metric_bad_32_name => 'Fedakarlık Hatırlatmaları';

  @override
  String get metric_bad_32_description =>
      'Borç ve uyum yaratmak için fedakarlıkları, iyilikleri veya desteği hatırlatmayı tanımlar.';

  @override
  String get metric_bad_33_name => 'Kasıtlı Tırmanma';

  @override
  String get metric_bad_33_description =>
      'Partnerin mantıklı yanıt verme yeteneğini bastırmak için kasıtlı olarak yoğunluğu artırmayı işaretler.';

  @override
  String get metric_bad_34_name => 'Stratejik Kırılganlık';

  @override
  String get metric_bad_34_description =>
      'Duyguları yalnızca manipülasyon veya kontrol amacıyla paylaşmayı tespit eder.';

  @override
  String get metric_bad_35_name => 'Karşı Saldırıyla Yön Değiştirme';

  @override
  String get metric_bad_35_description =>
      'Partnerin endişelerinden uzaklaşmak için ilgisiz konular veya karşı suçlamalar gündeme getirmeyi tanımlar.';

  @override
  String get metric_bad_36_name => 'Üstünlük Dili';

  @override
  String get metric_bad_36_description =>
      'Üstünlük dili, küçümseme veya partneri kendinden aşağı görme çerçevesini işaretler.';

  @override
  String get metric_bad_37_name => 'Çatışma Kaçış Modeli';

  @override
  String get metric_bad_37_description =>
      'Çatışma sırasında konuşmaları terk etme, katılımı reddetme veya mesafe yaratma modelini tespit eder.';

  @override
  String get metric_bad_38_name => 'Olumsuz Önyargı';

  @override
  String get metric_bad_38_description =>
      'Nötr veya olumlu eylemleri sürekli olarak olumsuz veya şüpheli olarak yorumlamayı izler.';

  @override
  String get metric_bad_39_name => 'Sorumluluk Reddi';

  @override
  String get metric_bad_39_description =>
      '\"Yapmak zorundayım\", \"beni yapıyorsun\" veya konuşmacının kişisel sorumluluğunu ortadan kaldıran dili tanımlar.';

  @override
  String get metric_bad_40_name => 'Kontrol Olarak Sessizlik';

  @override
  String get metric_bad_40_description =>
      'Bir ceza veya kontrol biçimi olarak sessizliği veya yanıt vermemeyi işaretler.';

  @override
  String get metric_bad_41_name => 'Gizlilik İkiliği';

  @override
  String get metric_bad_41_description =>
      'Partnerden şeffaflık talep ederken bilgi paylaşmayı reddetmeyi tespit eder.';

  @override
  String get metric_bad_42_name => 'Talep Edilmeyen Sert Geri Bildirim';

  @override
  String get metric_bad_42_description =>
      'Rıza olmadan \"yapıcı\" veya \"yardımcı\" olarak sunulan sert geri bildirimi tanımlar.';

  @override
  String get metric_bad_43_name => 'Koşullu İlgi';

  @override
  String get metric_bad_43_description =>
      'Yalnızca partner konuşmacının beklentilerine uyduğunda sunulan desteği işaretler.';

  @override
  String get metric_bad_44_name => 'Etkiyi İnkar';

  @override
  String get metric_bad_44_description =>
      'Zarar verdikten sonra \"Öyle demek istemedim\" veya \"Çok anlam yüklüyorsun\" ifadelerini tespit eder.';

  @override
  String get metric_bad_45_name => 'Borç Zihniyeti';

  @override
  String get metric_bad_45_description =>
      'Borç yaratmak ve mevcut davranışı kontrol etmek için geçmiş yardım veya desteği gündeme getirmeyi izler.';

  @override
  String get metric_bad_46_name => 'Sorumluluktan Kaçınma';

  @override
  String get metric_bad_46_description =>
      'Eylemlerin sonuçlarının sorumluluğunu almama konusunda tutarlı bir örüntüyü işaretler.';

  @override
  String get metric_bad_47_name => 'İhtiyaçları Reddetme';

  @override
  String get metric_bad_47_description =>
      'Partnerin ihtiyaçlarını zahmetli, mantıksız veya önemsiz olarak değerlendirmeyi tanımlar.';

  @override
  String get metric_bad_48_name => 'Duygusal Manipülasyon';

  @override
  String get metric_bad_48_description =>
      'Sonuçları kontrol etmek veya hesap vermekten kaçınmak için duyguları stratejik olarak kullanmayı işaretler.';

  @override
  String get metric_bad_49_name => 'Yakınlıktan Kaçınma';

  @override
  String get metric_bad_49_description =>
      'Açıklama yapmadan duygusal veya fiziksel yakınlıktan sürekli geri çekilmeyi izler.';

  @override
  String get metric_bad_50_name => 'Gizli Eleştiri';

  @override
  String get metric_bad_50_description =>
      'Şaka, gözlem veya sıradan yorumlar olarak gizlenmiş eleştiriyi tanımlar.';

  @override
  String get metric_bad_51_name => 'Endişeyi Küçümseme';

  @override
  String get metric_bad_51_description =>
      'Partnerin endişelerini önemsiz veya abartılı hale getirmeyi işaretler.';

  @override
  String get metric_bad_52_name => 'Suçluluk Dayatması';

  @override
  String get metric_bad_52_description =>
      'Partnerin beklentilere uymasını sağlamak için suçluluk veya utanç kullanmayı tanımlar.';

  @override
  String get metric_bad_53_name => 'Özür Direnci';

  @override
  String get metric_bad_53_description =>
      'Özür dilemeye direnç, zararı açıklama veya etkiyi kabul etmeyi reddetmeyi izler.';

  @override
  String get metric_bad_54_name => 'Perspektif Reddi';

  @override
  String get metric_bad_54_description =>
      'Partnerin bakış açısını veya deneyimini dikkate almayı veya onaylamayı reddetmeyi işaretler.';

  @override
  String get metric_bad_55_name => 'Duygusal Kısıtlama';

  @override
  String get metric_bad_55_description =>
      'Duygusal ifadeyi veya bağ kurmayı bir kontrol biçimi olarak kasıtlı olarak sınırlamayı tespit eder.';

  @override
  String get metric_bad_56_name => 'Yükümlülük Manipülasyonu';

  @override
  String get metric_bad_56_description =>
      'Geçmişteki desteği veya fedakarlığı kullanarak mevcut kararları manipüle etmeyi işaretler.';

  @override
  String get metric_bad_57_name => 'Gelişime Direnç';

  @override
  String get metric_bad_57_description =>
      'Zararlı davranışı değiştirmeye yönelik taleplere veya gösterilen etkiye rağmen direnci izler.';

  @override
  String get metric_bad_58_name => 'Zarar İnkarı';

  @override
  String get metric_bad_58_description =>
      'Kendi davranışının etkisini kabul etmeyi veya ciddiye almayı reddetmeyi tespit eder.';

  @override
  String get metric_bad_59_name => 'Yüklü Sorular';

  @override
  String get metric_bad_59_description =>
      'Masum sorular veya merak ifadesi olarak gizlenmiş eleştirel niyeti işaretler.';

  @override
  String get metric_bad_60_name => 'Küçümseyici Ton';

  @override
  String get metric_bad_60_description =>
      'Metin kalıpları ve kelime seçimi yoluyla iletilen küçümseyici tutumu veya hor görmeyi tanımlar.';

  @override
  String get metric_bad_61_name => 'Suçluluk Döngüsü';

  @override
  String get metric_bad_61_description =>
      'Mevcut davranışı kontrol etmek için geçmiş destek veya fedakarlık hakkında tekrar tekrar suçluluk duygusu kullanmayı tespit eder.';

  @override
  String get metric_bad_62_name => 'Duygusal Korunaklılık';

  @override
  String get metric_bad_62_description =>
      'Koruyucu bir geri çekilme olarak partnerle duyguları, korkuları veya ihtiyaçları paylaşmayı reddetmeyi izler.';

  @override
  String get metric_bad_63_name => 'Sınır Pazarlığı';

  @override
  String get metric_bad_63_description =>
      'Belirtilen sınırları kesin taahhütler yerine öneri veya pazarlık konusu olarak ele almayı işaretler.';

  @override
  String get metric_bad_64_name => 'Duygusal Yokluk';

  @override
  String get metric_bad_64_description =>
      'Sürekli olarak duygusal destek veya ilgili bir varlık sağlamayı reddetmeyi tespit eder.';

  @override
  String get metric_bad_65_name => 'İyilik Takibi';

  @override
  String get metric_bad_65_description =>
      'İyilik, destek veya fedakarlıkların zihinsel bir puanını tutarak daha sonra kullanmak üzere işaretler.';

  @override
  String get metric_bad_66_name => 'Dürüstlükten Kaçınma';

  @override
  String get metric_bad_66_description =>
      'Gerçeği saklama, gerçekleri atlama veya kasıtlı olarak belirsiz olma modelini tespit eder.';

  @override
  String get metric_bad_67_name => 'Geçerlilik Reddi';

  @override
  String get metric_bad_67_description =>
      'Partnerin duygularını, ihtiyaçlarını veya endişelerini geçersiz veya meşru olmayan olarak ele almayı tanımlar.';

  @override
  String get metric_bad_68_name => 'Tavsiye Kılıklı Eleştiri';

  @override
  String get metric_bad_68_description =>
      'Endişe, tavsiye veya yardımcı bir gözlem olarak sunulan eleştiriyi işaretler.';

  @override
  String get metric_bad_69_name => 'Üstünlük Göstergeleri';

  @override
  String get metric_bad_69_description =>
      'Dilde veya iletişim tarzında üstünlük, alay veya küçümsemeyi tespit eder.';

  @override
  String get metric_bad_70_name => 'Onarım Direnci';

  @override
  String get metric_bad_70_description =>
      'Çatışma sonrası telafi etme, yeniden bağlantı kurma veya yeniden inşa etme konusundaki direnci izler.';

  @override
  String get metric_bad_71_name => 'Çaba Reddi';

  @override
  String get metric_bad_71_description =>
      'Partnerin sorunları iyileştirme veya ele alma girişimlerini küçümsemeyi veya görmezden gelmeyi işaretler.';

  @override
  String get metric_bad_72_name => 'Duygusal Mesafe Modeli';

  @override
  String get metric_bad_72_description =>
      'Uzun vadeli duygusal mesafe veya otantik bir şekilde etkileşime girmeyi reddetme modelini tespit eder.';

  @override
  String get metric_bad_73_name => 'Aşağılık Çerçeveleme';

  @override
  String get metric_bad_73_description =>
      'Partneri aşağı, kusurlu veya tam saygıya layık olmayan biri olarak çerçevelemeyi tanımlar.';

  @override
  String get metric_bad_74_name => 'Geri Bildirim Direnci';

  @override
  String get metric_bad_74_description =>
      'Eleştiri duymaya direnç, dinlemeyi reddetme veya tartışmayı kapatma tespit eder.';

  @override
  String get metric_bad_75_name => 'Endişeyi Reddetme';

  @override
  String get metric_bad_75_description =>
      'Partnerin endişelerini veya korkularını temelsiz veya mantıksız olarak ele almayı tanımlar.';

  @override
  String get metric_bad_76_name => 'Kusur Bulma';

  @override
  String get metric_bad_76_description =>
      'Sürekli kusur bulma, şikayet etme veya partnerin karakterine saldırma örüntüsünü işaretler.';

  @override
  String get metric_bad_77_name => 'Fedakarlık Suçluluk Döngüsü';

  @override
  String get metric_bad_77_description =>
      'Suçluluk yaratmak veya davranışı kontrol etmek için geçmişteki desteği tekrar tekrar gündeme getirmeyi tanımlar.';

  @override
  String get metric_bad_78_name => 'Bağlılık Belirsizliği';

  @override
  String get metric_bad_78_description =>
      'Belirsiz veya kararsız bağlılık dili, karışık sinyaller veya bağlanma isteksizliğini izler.';

  @override
  String get metric_bad_79_name => 'Talebi Reddetme';

  @override
  String get metric_bad_79_description =>
      'Partnerin makul taleplerine yanıt vermeyi görmezden gelme, reddetme veya geciktirmeyi işaretler.';

  @override
  String get metric_bad_80_name => 'Duygusal Kontrol Taktikleri';

  @override
  String get metric_bad_80_description =>
      'Sonuçları kontrol etmek veya hesap vermeyi engellemek için duyguları stratejik olarak kullanmayı tespit eder.';

  @override
  String get metric_bad_81_name => 'Alışveriş Zihniyeti';

  @override
  String get metric_bad_81_description =>
      'İlişkiyi borç, yükümlülük veya alışveriş merceğinden görmeyi işaretler.';

  @override
  String get metric_bad_82_name => 'Kişisel Gelişim Direnci';

  @override
  String get metric_bad_82_description =>
      'Kişisel gelişime, öğrenmeye veya zararlı kalıpları değiştirmeye karşı direnci tespit eder.';

  @override
  String get metric_bad_83_name => 'İyileştirmeyi Reddetme';

  @override
  String get metric_bad_83_description =>
      'Partnerin iyileştirme veya sorunları ele alma çabalarını küçümsemeyi veya reddetmeyi tanımlar.';

  @override
  String get metric_bad_84_name => 'Kronik Eleştiri';

  @override
  String get metric_bad_84_description =>
      'Endişe, yardımseverlik veya ilgi diliyle sarılmış kronik eleştiri kalıbını işaretler.';

  @override
  String get metric_bad_85_name => 'Çözümden Kaçınma';

  @override
  String get metric_bad_85_description =>
      'Kapanıştan, ilerlemekten veya uygulanabilir çözümler bulmaktan kaçınmanın tutarlı kalıbını tespit eder.';

  @override
  String get metric_bad_86_name => 'Suçlama Yönlendirme Kalıbı';

  @override
  String get metric_bad_86_description =>
      'Sorumluluğu dış faktörlere veya partnere yönlendirmenin alışılmış kalıbını işaretler.';

  @override
  String get metric_bad_87_name => 'Küçümseyici Yanıtlar';

  @override
  String get metric_bad_87_description =>
      'Partnerin girdisini, fikirlerini veya önerilerini dikkate almadan reddetme kalıbını tanımlar.';

  @override
  String get metric_bad_88_name => 'Kızgınlık İfadesi';

  @override
  String get metric_bad_88_description =>
      'İletişimde kızgınlık, acılık veya uzun süreli hayal kırıklığı tonunu tespit eder.';

  @override
  String get metric_bad_89_name => 'Kararsız Mesajlaşma';

  @override
  String get metric_bad_89_description =>
      'Bağlılık konusunda karışık mesajlar, devam etme konusunda net olmayan istek veya it-çek dinamiklerini işaretler.';

  @override
  String get metric_bad_90_name => 'Beklenti Kaydırma';

  @override
  String get metric_bad_90_description =>
      'İletişim kurmadan beklentileri değiştirme, ardından partneri bunları karşılamadığı için suçlama durumunu tanımlar.';

  @override
  String get metric_bad_91_name => 'Kaçamak Alışkanlığı';

  @override
  String get metric_bad_91_description =>
      'Doğrudan yanıtlardan kaçınma veya konuşmaları sorumluluktan uzaklaştırma alışkanlığını tespit eder.';

  @override
  String get metric_bad_92_name => 'Nezaketle Manipülasyon';

  @override
  String get metric_bad_92_description =>
      'Yükümlülük yaratmak veya savunmaları düşürmek için stratejik olarak kullanılan abartılı nezaketi işaretler.';

  @override
  String get metric_bad_93_name => 'Kronik Geç Kalma Modeli';

  @override
  String get metric_bad_93_description =>
      'Geç kalma veya bozulan program taahhütleri yoluyla partnerin zamanına sürekli saygısızlığı belirler.';

  @override
  String get metric_bad_94_name => 'İlerlemeyi Küçümseme';

  @override
  String get metric_bad_94_description =>
      'Partnerin gerçek kişisel gelişimini veya iyileşmelerini görmezden gelmeyi veya kabul etmemeyi takip eder.';

  @override
  String get metric_bad_95_name => 'Duygusal Silahlandırma';

  @override
  String get metric_bad_95_description =>
      'Partnerin ifşa ettiği zayıf noktalarını veya korkularını çatışmada onlara karşı kullanmayı tespit eder.';

  @override
  String get metric_bad_96_name => 'Gaz Lambası Benzeri Taktikler';

  @override
  String get metric_bad_96_description =>
      'Tam gaz lambası olmadan kendinden şüphe yaratan ince gerçeklik bozma taktiklerini belirler.';

  @override
  String get metric_bad_97_name => 'Pasif Duvarla Karşılama';

  @override
  String get metric_bad_97_description =>
      'Kaçınma olarak ince geri çekilme, tek heceli yanıtlar veya kopuk varlığı işaretler.';

  @override
  String get metric_bad_98_name => 'Anlatı Kontrolü';

  @override
  String get metric_bad_98_description =>
      'Ne olduğu, nasıl hissedildiği veya ne kastedildiği konusunda tek otorite olmakta ısrar etmeyi tespit eder.';

  @override
  String get metric_bad_99_name => 'Sorumluluktan Kaçma';

  @override
  String get metric_bad_99_description =>
      'Sorumluluğu sürekli olarak dış faktörlere, üçüncü taraflara veya partnerin davranışına yönlendirmeyi takip eder.';

  @override
  String get metric_bad_100_name => 'Duygusal Ulaşılmazlık';

  @override
  String get metric_bad_100_description =>
      'Kronik olarak duygusal yakınlıktan, kırılganlıktan veya partnerin yakınlık ihtiyacı duyduğu anlamlı bağlantıdan kaçınmayı işaretler.';

  @override
  String get metric_ugly_1_name => 'Fiziksel Şiddet Tehditleri';

  @override
  String get metric_ugly_1_description =>
      'Partnere vurma, zarar verme veya fiziksel saldırı tehditlerini açık veya örtülü olarak tespit eder.';

  @override
  String get metric_ugly_2_name => 'Silah Bulundurma Referansları';

  @override
  String get metric_ugly_2_description =>
      'Öfke, kontrol veya zarar verme kapasitesi bağlamında silah, bıçak veya diğer silahlardan bahsedilmesini işaretler.';

  @override
  String get metric_ugly_3_name => 'Boğulma Göstergeleri';

  @override
  String get metric_ugly_3_description =>
      'Boğma, boğaz sıkma, nefessiz bırakma veya asfiksi ile ilgili dil veya referansları tanımlar.';

  @override
  String get metric_ugly_4_name => 'İntihar Tehdidi Silahlaştırması';

  @override
  String get metric_ugly_4_description =>
      'Partneri kontrol etmek, manipüle etmek veya cezalandırmak için kullanılan kendine zarar verme tehditlerini tespit eder.';

  @override
  String get metric_ugly_5_name => 'Cinayet Düşüncesi Dili';

  @override
  String get metric_ugly_5_description =>
      'Partneri öldürme niyeti, planı veya arzusunu ifade eden ifadeleri işaretler.';

  @override
  String get metric_ugly_6_name => 'Ölümcüllük Risk Desenleri';

  @override
  String get metric_ugly_6_description =>
      'Yüksek ölümcüllük uyarı işaretlerini tanımlar: silah erişimi, saplantı, tırmanma ve ayrılık tehditlerinin birleşimi.';

  @override
  String get metric_ugly_7_name => 'Takıntılı Takip Dili';

  @override
  String get metric_ugly_7_description =>
      'Takıntılı konum takibi, takip etme, sürpriz ziyaretler veya ısrarlı istenmeyen kovalamayı tespit eder.';

  @override
  String get metric_ugly_8_name => 'Zorla İzolasyon Uygulaması';

  @override
  String get metric_ugly_8_description =>
      'Tüm aile, arkadaş, iş veya dış teması kesme yönünde agresif talepleri işaretler.';

  @override
  String get metric_ugly_9_name => 'Ekonomik Sabotaj';

  @override
  String get metric_ugly_9_description =>
      'İstihdam, kredi, mali durum veya ekonomik istikrarın kasıtlı olarak yok edilmesini tanımlar.';

  @override
  String get metric_ugly_10_name => 'Üreme Zorlaması';

  @override
  String get metric_ugly_10_description =>
      'Zorla hamilelik, kürtaj baskısı, doğum kontrolüne müdahale veya üreme kontrolünü tespit eder.';

  @override
  String get metric_ugly_11_name => 'Cinsel Zorlama Baskısı';

  @override
  String get metric_ugly_11_description =>
      'Zorla cinsel ilişki, baskı altında cinsel eylemler, reddedildikten sonra baskı veya cinsel ceza dilini işaretler.';

  @override
  String get metric_ugly_12_name => 'Rıza Dışı Cinsel Dil';

  @override
  String get metric_ugly_12_description =>
      'Açık veya örtülü rıza dışı cinsel saldırı tehditlerini veya tanımlarını belirler.';

  @override
  String get metric_ugly_13_name => 'Çocuğa Zarar Tehditleri';

  @override
  String get metric_ugly_13_description =>
      'Partneri cezalandırmak veya koz olarak kullanmak amacıyla çocuklara zarar verme, ihmal veya istismar tehditlerini tespit eder.';

  @override
  String get metric_ugly_14_name => 'Çocuk Velayetini Silah Olarak Kullanma';

  @override
  String get metric_ugly_14_description =>
      'Çocukları alma, erişimi engelleme veya velayeti kontrol mekanizması olarak kullanma tehditlerini işaretler.';

  @override
  String get metric_ugly_15_name => 'Evcil Hayvana Zarar Tehditleri';

  @override
  String get metric_ugly_15_description =>
      'Cezalandırma veya kontrol göstergesi olarak evcil hayvanlara zarar verme, öldürme veya istismar tehditlerini belirler.';

  @override
  String get metric_ugly_16_name => 'Uyku Yoksunluğu Taktikleri';

  @override
  String get metric_ugly_16_description =>
      'Kontrol yöntemi olarak uykunun kasıtlı olarak engellenmesi, sürekli kesinti veya yorgunluğu işaretler.';

  @override
  String get metric_ugly_17_name => 'Hapis Dili';

  @override
  String get metric_ugly_17_description =>
      'Partneri bir yere kilitleme, ayrılmasını engelleme veya bir mekana hapsetme dilini işaretler.';

  @override
  String get metric_ugly_18_name => 'Yırtıcı Hazırlık Dili';

  @override
  String get metric_ugly_18_description =>
      'Savunmaları düşürmek, sahte güven inşa etmek ve ardından partneri sömürmek için sistematik manipülasyonu işaretler.';

  @override
  String get metric_ugly_19_name => 'İnsanlıktan Çıkarma Dili';

  @override
  String get metric_ugly_19_description =>
      'Partnerin bir hayvan, nesne, insan altı veya temel haklara layık olmayan biri olarak tanımlandığını tespit eder.';

  @override
  String get metric_ugly_20_name => 'Narsistik Öfke Yükselmesi';

  @override
  String get metric_ugly_20_description =>
      'Algılanan saygısızlıklar, eleştiriler veya herhangi bir kontrol kaybıyla tetiklenen patlayıcı öfkeyi tespit eder.';

  @override
  String get metric_ugly_21_name => 'Takıntılı Sahiplik İddiaları';

  @override
  String get metric_ugly_21_description =>
      'Partnerin kişiliği üzerinde sahiplik, mülkiyet hakkı veya tam kontrol iddia eden dili işaretler.';

  @override
  String get metric_ugly_22_name => 'Patolojik Yalan Kalıpları';

  @override
  String get metric_ugly_22_description =>
      'Ciddi konularda belirgin bir sebep olmaksızın tutarlı, ayrıntılı veya gereksiz yalanları tanımlar.';

  @override
  String get metric_ugly_23_name => 'İntikam Fantezisi Dili';

  @override
  String get metric_ugly_23_description =>
      'Partnere zarar verme, aşağılama veya yok etme hakkında ayrıntılı fantezileri tanımlar.';

  @override
  String get metric_ugly_24_name => 'İhanet Takıntısı Sabitlenmesi';

  @override
  String get metric_ugly_24_description =>
      'Algılanan sadakatsizliğe odaklanmış takıntılı düşünme, suçlama ve cezalandırmayı tespit eder.';

  @override
  String get metric_ugly_25_name => 'Terk Edilme Panik Saldırganlığı';

  @override
  String get metric_ugly_25_description =>
      'Algılanan terk edilme veya herhangi bir ayrılma girişimine karşı şiddetli veya saldırgan tepkileri işaretler.';

  @override
  String get metric_ugly_26_name => 'Ayrılık Tehdit Yükselmesi';

  @override
  String get metric_ugly_26_description =>
      'Ayrılma veya ayrılık girişimleriyle tetiklenen aşırı tehditleri veya tehlikeli davranışları tanımlar.';

  @override
  String get metric_ugly_27_name => 'Ayrılık Sonrası Taciz Tehditleri';

  @override
  String get metric_ugly_27_description =>
      'İlişki bittikten sonra takip, zarar veya zorla temas tehditlerini işaretler.';

  @override
  String get metric_ugly_28_name => 'Velayet Kaçırma Tehditleri';

  @override
  String get metric_ugly_28_description =>
      'Çocukları alıp diğer ebeveynden kalıcı olarak saklama tehditlerini tanımlar.';

  @override
  String get metric_ugly_29_name => 'Ebeveyn Yabancılaştırma Gündemi';

  @override
  String get metric_ugly_29_description =>
      'Manipülasyon yoluyla çocukları diğer ebeveyne karşı sistematik olarak döndürme girişimlerini işaretler.';

  @override
  String get metric_ugly_30_name => 'Çocuk Tanık Kayıtsızlığı';

  @override
  String get metric_ugly_30_description =>
      'Çocukların istismar, çatışma veya duygusal zarara tanık olmasına kayıtsızlığı tanımlar.';

  @override
  String get metric_ugly_31_name => 'İnsan Ticareti Dili';

  @override
  String get metric_ugly_31_description =>
      'Partneri satma, takas etme veya cinsel olarak sömürme dilini tanımlar.';

  @override
  String get metric_ugly_32_name => 'Kölelik Dili';

  @override
  String get metric_ugly_32_description =>
      'Partneri mülk, köle veya hakları olmayan tamamen sahip olunan kişi olarak ele alan dili tanımlar.';

  @override
  String get metric_ugly_33_name => 'Borç Esareti Tehditleri';

  @override
  String get metric_ugly_33_description =>
      'Üretilmiş borç veya mali yükümlülük yoluyla partneri tuzağa düşürme tehditlerini tespit eder.';

  @override
  String get metric_ugly_34_name => 'Zorla Çalıştırma Talepleri';

  @override
  String get metric_ugly_34_description =>
      'Zarar veya ceza tehdidi altında ücretsiz emek, hizmet veya çalışma taleplerini işaretler.';

  @override
  String get metric_ugly_35_name => 'Sömürü Normalleştirmesi';

  @override
  String get metric_ugly_35_description =>
      'Ağır sömürüyü normal, hak edilmiş, rızaya dayalı veya hatta faydalı olarak çerçevelemeyi tanımlar.';

  @override
  String get metric_ugly_36_name => 'Kırılganlık Hedeflemesi';

  @override
  String get metric_ugly_36_description =>
      'İzole edilmiş, ekonomik olarak bağımlı veya psikolojik olarak savunmasız bireylerin kasıtlı olarak hedef alınmasını tanımlar.';

  @override
  String get metric_ugly_37_name => 'Travma Bağı Mühendisliği';

  @override
  String get metric_ugly_37_description =>
      'Korku-rahatlama döngülerinin kasıtlı olarak yaratılmasını tespit eder; bu döngüler derin duygusal bağımlılık oluşturmak için tasarlanmıştır.';

  @override
  String get metric_ugly_38_name => 'Aralıklı Pekiştirme İstismarı';

  @override
  String get metric_ugly_38_description =>
      'Psikolojik bağımlılık yaratmak için kullanılan öngörülemeyen ödül ve ağır ceza döngülerini işaretler.';

  @override
  String get metric_ugly_39_name => 'Öğrenilmiş Çaresizlik İndüksiyonu';

  @override
  String get metric_ugly_39_description =>
      'Özerklik, kaynaklar ve algılanan kaçış seçeneklerinin sistematik olarak ortadan kaldırılmasını tanımlar.';

  @override
  String get metric_ugly_40_name => 'Kimlik Silme Dili';

  @override
  String get metric_ugly_40_description =>
      'Kişilik, ilgi alanları, görünüm veya temel kimlik duygusundan vazgeçme taleplerini işaretler.';

  @override
  String get metric_ugly_41_name => 'Özerklik Yıkımı';

  @override
  String get metric_ugly_41_description =>
      'Bağımsız düşünce, karar verme veya kişisel özerkliğin sistematik olarak yok edilmesini tespit eder.';

  @override
  String get metric_ugly_42_name => 'Düşünce Kontrol Taktikleri';

  @override
  String get metric_ugly_42_description =>
      'Yalnızca kontrolcü partnerin dikte ettiği şekilde düşünme, inanma veya hissetme taleplerini işaretler.';

  @override
  String get metric_ugly_43_name => 'Duygusal Uyuşukluk Dayatması';

  @override
  String get metric_ugly_43_description =>
      'Duygu göstermenin cezalandırılmasını veya tüm hislerin bastırılmasına yönelik açık talepleri tanımlar.';

  @override
  String get metric_ugly_44_name => 'Karmaşık Travma Oluşturma';

  @override
  String get metric_ugly_44_description =>
      'Kronik istismar yoluyla karmaşık TSSB düzeyinde travma yaratan sistematik kalıpları işaretler.';

  @override
  String get metric_ugly_45_name => 'İhanet Travması Enjeksiyonu';

  @override
  String get metric_ugly_45_description =>
      'Temel güveni ve psikolojik güvenliği parçalamak için tasarlanmış kasıtlı ihaneti tanımlar.';

  @override
  String get metric_ugly_46_name => 'Ahlaki Yaralanma Dili';

  @override
  String get metric_ugly_46_description =>
      'Partneri, kendi derin değerlerini ihlal etmeye veya zararlı eylemlerde bulunmaya zorlayan dili tespit eder.';

  @override
  String get metric_ugly_47_name => 'Varoluşsal Tehdit Dili';

  @override
  String get metric_ugly_47_description =>
      'Partnerin varlığına, temel kimliğine, akıl sağlığına veya yaşama isteğine yönelik tehditleri işaretler.';

  @override
  String get metric_ugly_48_name => 'İntihar Zorlaması Dili';

  @override
  String get metric_ugly_48_description =>
      'Sürekli istismar ve üretilmiş umutsuzluk yoluyla partneri intihar düşüncesine itmeyi tanımlar.';

  @override
  String get metric_ugly_49_name => 'Haklılaştırma Mitolojisi';

  @override
  String get metric_ugly_49_description =>
      'İstismarı gerekli, hak edilmiş veya haklı göstermek için sunulan ayrıntılı uydurma anlatıları tanımlar.';

  @override
  String get metric_ugly_50_name => 'Mağdur Anlatısı Tersine Çevirme';

  @override
  String get metric_ugly_50_description =>
      'İstismarcının, kendi istismarının gerçek mağduru olduğunu iddia ettiği tam tersine çevirmeyi tespit eder.';

  @override
  String get metric_ugly_51_name => 'İstismar Normalleştirme Vaazı';

  @override
  String get metric_ugly_51_description =>
      'İstismarın normal, sağlıklı veya partner için faydalı olduğunu öğretmeyi veya ısrar etmeyi işaretler.';

  @override
  String get metric_ugly_52_name => 'Yırtıcı İdeoloji';

  @override
  String get metric_ugly_52_description =>
      'Partnere yönelik sömürü, tahakküm veya zarar için ideolojik gerekçeyi tanımlar.';

  @override
  String get metric_ugly_53_name => 'Tarikat Lideri Mesajlaşması';

  @override
  String get metric_ugly_53_description =>
      'Partner üzerinde özel bilgi, ilahi hak veya üstün otorite iddia eden mesajları tespit eder.';

  @override
  String get metric_ugly_54_name => 'Hazırlama Zaman Çizelgesi Dili';

  @override
  String get metric_ugly_54_description =>
      'Uzun vadeli bir manipülasyon planına veya bir hazırlama ilerlemesinin tanımlarına yapılan atıfları işaretler.';

  @override
  String get metric_ugly_55_name => 'Kronik Aşağılama Kampanyası';

  @override
  String get metric_ugly_55_description =>
      'Kamuya açık veya özel olarak, öz-değeri yok etmeyi amaçlayan sürekli aşağılama modelini tanımlar.';

  @override
  String get metric_ugly_56_name => 'Güvenli Çıkışı Engelleme';

  @override
  String get metric_ugly_56_description =>
      'Partnerin kaçış yollarına, destek sistemlerine veya güvenlik kaynaklarına erişimini aktif olarak engellemeyi tespit eder.';

  @override
  String get metric_ugly_57_name => 'Belgeye El Koyma Tehditleri';

  @override
  String get metric_ugly_57_description =>
      'Kaçışı önlemek için kimlik belgelerini alma, saklama veya yok etme tehditlerini veya eylemlerini işaretler.';

  @override
  String get metric_ugly_58_name => 'Şiddet İçeren Kıskançlık Modelleri';

  @override
  String get metric_ugly_58_description =>
      'Açık tehditlere, gözetime veya şiddet içeren misillemeye dönüşen kıskançlığı tanımlar.';

  @override
  String get metric_ugly_59_name => 'Öfke Patlaması Modelleri';

  @override
  String get metric_ugly_59_description =>
      'Herhangi bir tetikleyiciyle orantısız olan patlayıcı şiddet patlamalarının tanımlarını veya modellerini tespit eder.';

  @override
  String get metric_ugly_60_name => 'Zorlayıcı Kontrol Tırmanışı';

  @override
  String get metric_ugly_60_description =>
      'Zamanla zorlayıcı kontrol taktiklerinin artan şiddetini ve kapsamını izler.';

  @override
  String get metric_ugly_61_name => 'Korku Temelli Uyum Dili';

  @override
  String get metric_ugly_61_description =>
      'Seçimden ziyade tamamen şiddet veya ağır ceza korkusuyla yönlendirilen uyumu tanımlar.';

  @override
  String get metric_ugly_62_name => 'Ceza Ritüeli Dili';

  @override
  String get metric_ugly_62_description =>
      'Uyum ve kontrolü sağlamak için kullanılan sistematik ceza uygulamalarına atıfları tespit eder.';

  @override
  String get metric_ugly_63_name => 'Aşağılama Ritüeli Göstergeleri';

  @override
  String get metric_ugly_63_description =>
      'Onuru yok etmeyi amaçlayan sistematik aşağılama veya küçük düşürme ritüellerini işaretler.';

  @override
  String get metric_ugly_64_name => 'Rıza Dışı İfşa Tehditleri';

  @override
  String get metric_ugly_64_description =>
      'Rıza dışı mahrem görüntü, özel bilgi veya sır ifşa etme tehditlerini tanımlar.';

  @override
  String get metric_ugly_65_name => 'Görüntü Temelli İstismar Tehditleri';

  @override
  String get metric_ugly_65_description =>
      'İntikam, cezalandırma veya şantaj amacıyla mahrem görüntüleri dağıtma tehditlerini tespit eder.';

  @override
  String get metric_ugly_66_name => 'Mali Tuzak Taktikleri';

  @override
  String get metric_ugly_66_description =>
      'Bağımsız yaşamı imkansız kılan kasıtlı mali bağımlılık yaratma girişimlerini işaretler.';

  @override
  String get metric_ugly_67_name => 'Barınma Tehdit Dili';

  @override
  String get metric_ugly_67_description =>
      'Partneri evsiz bırakma, barınma erişimini engelleme veya konut güvenliğini yok etme tehditlerini tespit eder.';

  @override
  String get metric_ugly_68_name => 'Göçmenlik Statüsü Tehditleri';

  @override
  String get metric_ugly_68_description =>
      'Kontrol amacıyla göçmenlik statüsünü bildirme veya vize sponsorluğunu iptal etme tehditlerini tanımlar.';

  @override
  String get metric_ugly_69_name => 'Dini veya Manevi İstismar';

  @override
  String get metric_ugly_69_description =>
      'Kontrol, cezalandırma veya zarar verme amacıyla dini otorite, doktrin veya manevi tehdit kullanımını tespit eder.';

  @override
  String get metric_ugly_70_name => 'Kültürel Utanç Silahı';

  @override
  String get metric_ugly_70_description =>
      'Cezalandırma amacıyla kültürel veya aile topluluğuna davranışları ifşa etme tehdidini işaretler.';

  @override
  String get metric_ugly_71_name => 'Aileye Zarar Tehditleri';

  @override
  String get metric_ugly_71_description =>
      'Kaldıraç olarak partnerin aile üyelerine, çocuklarına veya sevdiklerine zarar verme tehditlerini tanımlar.';

  @override
  String get metric_ugly_72_name => 'Koordineli Taciz Kampanyası';

  @override
  String get metric_ugly_72_description =>
      'Partneri toplu olarak taciz etmek, takip etmek veya sindirmek için başkalarını organize etmeyi tespit eder.';

  @override
  String get metric_ugly_73_name => 'Sahte Polis Raporu Tehditleri';

  @override
  String get metric_ugly_73_description =>
      'Partnerine karşı sahte polis raporu veya hukuki suçlamalarda bulunma tehditlerini işaretler.';

  @override
  String get metric_ugly_74_name => 'Hukuk Sistemini Silah Olarak Kullanma';

  @override
  String get metric_ugly_74_description =>
      'Hukuki süreçleri, mahkemeleri veya koruma kararlarını taciz silahı olarak kullanmayı tanımlar.';

  @override
  String get metric_ugly_75_name => 'Koruma Kararı İhlali';

  @override
  String get metric_ugly_75_description =>
      'Koruma veya uzaklaştırma kararlarını ihlal etme veya ihlal etmeyi planlama referanslarını tespit eder.';

  @override
  String get metric_ugly_76_name => 'İş Yeri Sabotajı Tehditleri';

  @override
  String get metric_ugly_76_description =>
      'Partnerin geçim kaynağını yok etmek için işveren, iş arkadaşları veya müşterilerle iletişime geçme tehditlerini işaretler.';

  @override
  String get metric_ugly_77_name => 'Sosyal Yok Olma Tehditleri';

  @override
  String get metric_ugly_77_description =>
      'Partnerin itibarını, ilişkilerini ve sosyal statüsünü yok etme tehditlerini tespit eder.';

  @override
  String get metric_ugly_78_name => 'Sistematik Aldatma Kampanyası';

  @override
  String get metric_ugly_78_description =>
      'Partneri finansal veya duygusal olarak sömürmek için tasarlanmış uzun vadeli karmaşık aldatmacayı tanımlar.';

  @override
  String get metric_ugly_79_name => 'Terör Olarak Mal Tahribatı';

  @override
  String get metric_ugly_79_description =>
      'Partnerin malına kasten zarar vermeyi bir yıldırma taktiği olarak tanımlar.';

  @override
  String get metric_ugly_80_name => 'Vekil Terör Olarak Hayvan Zulmü';

  @override
  String get metric_ugly_80_description =>
      'Partnere şiddet kapasitesini göstermek için evcil hayvanlara zarar verme veya tehdit etmeyi tespit eder.';

  @override
  String get metric_ugly_81_name => 'Çocuk Tehlikeye Atma Dili';

  @override
  String get metric_ugly_81_description =>
      'Çocukları tehlikeli durumlara sokma veya bunu koz olarak kullanma tehditlerini işaretler.';

  @override
  String get metric_ugly_82_name => 'Engellilik Temelli Kontrol';

  @override
  String get metric_ugly_82_description =>
      'Partnerin engelliliğini, ilaç, hareket veya bakıma erişimini kontrol ederek sömürmeyi tespit eder.';

  @override
  String get metric_ugly_83_name => 'Kriz Üretilmiş Kontrol';

  @override
  String get metric_ugly_83_description =>
      'Partner bağımlılığını artırmak veya izlemeyi haklı çıkarmak için kasıtlı olarak acil durum veya kriz yaratmayı işaretler.';

  @override
  String get metric_ugly_84_name => 'Acil Servislerden İzolasyon';

  @override
  String get metric_ugly_84_description =>
      'Partnerin polis, ambulans veya kriz hizmetlerini aramasını aktif olarak engellemeyi tanımlar.';

  @override
  String get metric_ugly_85_name => 'Tehdit Tırmanma Yörüngesi';

  @override
  String get metric_ugly_85_description =>
      'Tehditlerin şiddetinde, özgüllüğünde veya sıklığında zamanla ölçülebilir artışı izler.';

  @override
  String get metric_ugly_86_name => 'Ölümcüllük Değerlendirme Göstergeleri';

  @override
  String get metric_ugly_86_description =>
      'Yakın partner cinayeti için en yüksek riskle ilişkili faktör kombinasyonlarını işaretler.';

  @override
  String get metric_ugly_87_name => 'Psikolojik İşkence Taktikleri';

  @override
  String get metric_ugly_87_description =>
      'Partnerin zihinsel istikrarını bozmak için tasarlanmış sürekli psikolojik istismarı tanımlar.';

  @override
  String get metric_ugly_88_name => 'Esaret Dili';

  @override
  String get metric_ugly_88_description =>
      'Partneri esir tutma, ayrılmayı engelleme veya tüm hareketi kontrol etme referanslarını tespit eder.';

  @override
  String get metric_ugly_89_name => 'Hedefli Şiddet Planlaması';

  @override
  String get metric_ugly_89_description =>
      'Partnere yönelik şiddet planlaması, hazırlığı veya geri sayımını belirten herhangi bir dili tespit eder.';

  @override
  String get metric_ugly_90_name => 'Üçüncü Taraf Tehdit Toplama';

  @override
  String get metric_ugly_90_description =>
      'Partneri tehdit etmek veya zarar vermek için arkadaş, aile veya başkalarını toplamayı tanımlar.';

  @override
  String get metric_ugly_91_name => 'İntihar Düşüncesi Sömürüsü';

  @override
  String get metric_ugly_91_description =>
      'Partnerin intihar krizini, yardım aramasını engellemek veya koz olarak kullanma girişimlerini işaretler.';

  @override
  String get metric_ugly_92_name => 'Zehirleme veya İlaç Verme Tehditleri';

  @override
  String get metric_ugly_92_description =>
      'Partnerin yiyecek veya içeceğine ilaç katma, zehirleme veya kurcalama tehditlerini veya referanslarını tespit eder.';

  @override
  String get metric_ugly_93_name => 'İntihar Dışı Kendine Zarar Verme Sömürüsü';

  @override
  String get metric_ugly_93_description =>
      'Partnerin kendine zarar verme davranışını koz, alay veya daha fazla kontrol için kullanma girişimlerini işaretler.';

  @override
  String get metric_ugly_94_name => 'Dissosiyasyon İndükleme Dili';

  @override
  String get metric_ugly_94_description =>
      'Partnerde dissosiyasyon, kopma veya duyarsızlaşmaya neden olmak için tasarlanmış kalıpları tespit eder.';

  @override
  String get metric_ugly_95_name => 'Bilişsel Çarpıtma Yerleştirme';

  @override
  String get metric_ugly_95_description =>
      'Partnerin kendisi, gerçeklik veya kendi akıl sağlığı hakkında yanlış inançların kasıtlı olarak yerleştirilmesini tespit eder.';

  @override
  String get metric_ugly_96_name => 'Tıbbi Bakım Engelleme';

  @override
  String get metric_ugly_96_description =>
      'İlaç, doktor, hastane veya sağlık tedavisine erişimin engellenmesini tespit eder.';

  @override
  String get metric_ugly_97_name => 'Aşırılıkçı Tehdit Dili';

  @override
  String get metric_ugly_97_description =>
      'Partnere karşı kullanılan aşırılıkçı veya şiddet içeren ideolojik çerçevelerden alınmış dili işaretler.';

  @override
  String get metric_ugly_98_name => 'Ayrılık Sonrası Takip Sinyalleri';

  @override
  String get metric_ugly_98_description =>
      'Ayrılık sonrası veya beklentisiyle yapılan tehditleri, gözetleme dilini veya yıldırma taktiklerini tespit eder.';

  @override
  String get metric_ugly_99_name => 'Çocuk Silahlaştırma';

  @override
  String get metric_ugly_99_description =>
      'Çocukları piyon olarak kullanma, velayetle ilgili tehditler veya ebeveyn bağlarını kontrol mekanizması olarak kullanma girişimlerini tanımlar.';

  @override
  String get metric_ugly_100_name => 'Sistematik İnsanlıktan Çıkarma';

  @override
  String get metric_ugly_100_description =>
      'Sürekli olarak partnerin kişiliğini, onurunu veya temel insanlık hakkını elinden alan dili tespit eder.';

  @override
  String get metric_narcissist_1_name => 'Büyüklenmeci Öz-Önem';

  @override
  String get metric_narcissist_1_description =>
      'Gerçekçi kanıtların ötesinde, başarı, yetenek veya statüyle ilgili abartılı iddialar; genellikle bir benzersizlik duygusuyla birlikte.';

  @override
  String get metric_narcissist_2_name => 'Hak Talep Etme';

  @override
  String get metric_narcissist_2_description =>
      'Karşılıklılık olmaksızın özel muamele veya isteklerine otomatik uyum konusunda mantıksız beklentiler.';

  @override
  String get metric_narcissist_3_name => 'Empati Eksikliği';

  @override
  String get metric_narcissist_3_description =>
      'Başkalarının duygularını tanıma veya onaylama konusunda yetersizlik veya isteksizlik; duygusal ihtiyaçları önemsiz olarak reddetme.';

  @override
  String get metric_narcissist_4_name => 'Hayranlık Arayışı';

  @override
  String get metric_narcissist_4_description =>
      'Kırılgan öz saygıyı güçlendirmek için aşırı derecede hayranlık, iltifat veya onay arayışı.';

  @override
  String get metric_narcissist_5_name => 'Üçgenleme Taktikleri';

  @override
  String get metric_narcissist_5_description =>
      'Kıskançlık, rekabet yaratmak veya algıları manipüle etmek için çatışmalara üçüncü bir tarafı dahil etme.';

  @override
  String get metric_narcissist_6_name => 'Yoğun Sevgi Bombardımanı';

  @override
  String get metric_narcissist_6_description =>
      'Kontrolü ele geçirmek ve hedefi idealize etmek için bir ilişkinin başlarında aşırı iltifat, hediye veya ilgi gösterme.';

  @override
  String get metric_narcissist_7_name => 'Değersizleştirici Eleştiri';

  @override
  String get metric_narcissist_7_description =>
      'İdealizasyonun ardından sert eleştiri, küçümseme veya hor görmeye ani geçiş; hedefin öz değerini aşındırma.';

  @override
  String get metric_narcissist_8_name => 'Sessiz Muamele Cezası';

  @override
  String get metric_narcissist_8_description =>
      'Kaygı ve uyum sağlamak için kasıtlı bir ceza olarak iletişimi veya sevgiyi kesme.';

  @override
  String get metric_narcissist_9_name => 'DARVO Suçlama Kaydırması';

  @override
  String get metric_narcissist_9_description =>
      'Sorumluluğu reddetme, suçlayana saldırma ve mağdur-fail rollerini tersine çevirerek hesap vermekten kaçınma.';

  @override
  String get metric_narcissist_10_name => 'Gaz Lambası Gerçeklik Çarpıtması';

  @override
  String get metric_narcissist_10_description =>
      'Hedefin kendi hafızasından veya akıl sağlığından şüphe etmesini sağlamak için gerçekleri, olayları veya duyguları inkar etme veya çarpıtma.';

  @override
  String get metric_narcissist_11_name => 'Eleştiriye Öfke';

  @override
  String get metric_narcissist_11_description =>
      'Yapıcı olsa bile, algılanan herhangi bir hakaret veya geri bildirime karşı yoğun öfke, küçümseme veya misilleme.';

  @override
  String get metric_narcissist_12_name => 'Sınır İhlali';

  @override
  String get metric_narcissist_12_description =>
      'Belirtilen sınırları, mahremiyeti veya kişisel alanı pişmanlık duymadan veya müzakere etmeden görmezden gelme veya ihlal etme.';

  @override
  String get metric_narcissist_13_name => 'Kıskançlık İfadesi';

  @override
  String get metric_narcissist_13_description =>
      'Başkalarının başarılarına veya sahip olduklarına duyulan kıskançlık, genellikle değersizleştirme veya baltalama girişimleriyle birlikte.';

  @override
  String get metric_narcissist_14_name => 'Sömürücü Davranış';

  @override
  String get metric_narcissist_14_description =>
      'Kişisel kazanç, statü veya kaynaklar için başkalarını, onların refahını veya rızasını umursamadan kullanma.';

  @override
  String get metric_narcissist_15_name => 'Ayna Manipülasyonu';

  @override
  String get metric_narcissist_15_description =>
      'Sahte bir uyum oluşturmak ve güven kazanmak için hedefin ilgi alanlarını, değerlerini veya özelliklerini taklit etme.';

  @override
  String get metric_narcissist_16_name => 'Üstünlük İddiaları';

  @override
  String get metric_narcissist_16_description =>
      'Başkalarına karşı doğuştan gelen bir üstünlük olduğunu, genellikle küçümseyici veya aşağılayıcı bir dille ifade etme.';

  @override
  String get metric_narcissist_17_name => 'Fantezi Takıntısı';

  @override
  String get metric_narcissist_17_description =>
      'Gerçekçi olmayan sınırsız başarı, güç, zeka veya ideal aşk hakkında takıntılı konuşma.';

  @override
  String get metric_narcissist_18_name => 'Özel Statü İddiası';

  @override
  String get metric_narcissist_18_description =>
      'Yalnızca yüksek statülü kişiler veya kurumlar tarafından anlaşılabilecekleri veya onlarla ilişki kurabilecekleri inancı.';

  @override
  String get metric_narcissist_19_name => 'Kişilerarası Sömürü';

  @override
  String get metric_narcissist_19_description =>
      'Başkalarının kaynaklarından, zamanından veya duygularından karşılık vermeden veya minnettarlık duymadan faydalanma.';

  @override
  String get metric_narcissist_20_name => 'Pişmanlık Eksikliği';

  @override
  String get metric_narcissist_20_description =>
      'Zarar verdikten sonra suçluluk duymama veya özür dilememe, genellikle eylemlerini hedefin bunu hak ettiği gerekçesiyle haklı çıkarma.';

  @override
  String get metric_narcissist_21_name => 'Rekabetçi Baltalama';

  @override
  String get metric_narcissist_21_description =>
      'Üstün bir konumu korumak için başkalarının başarılarını veya ilişkilerini sabote etme.';

  @override
  String get metric_narcissist_22_name => 'İdealleştirme Aşaması';

  @override
  String get metric_narcissist_22_description =>
      'Bir ilişkinin başlarında aşırı övgü ve hayranlık göstererek hedef kişide gerçekçi olmayan beklentiler oluşturma.';

  @override
  String get metric_narcissist_23_name => 'Değersizleştirme Aşaması';

  @override
  String get metric_narcissist_23_description =>
      'İdealleştirmeden sonra kademeli veya ani eleştiri ve küçümseme ile kafa karışıklığı ve kendinden şüphe duyma yaratma.';

  @override
  String get metric_narcissist_24_name => 'Terk Etme Dürtüsü';

  @override
  String get metric_narcissist_24_description =>
      'Hedef kişi artık narsisistik besin sağlamadığında veya onlara meydan okuduğunda ilişkiyi aniden sonlandırma.';

  @override
  String get metric_narcissist_25_name => 'Geri Çekme Girişimleri';

  @override
  String get metric_narcissist_25_description =>
      'Terk edilmiş hedef kişiyi vaatler, suçluluk veya manipülasyonla yeniden kazanarak narsisistik besin elde etme.';

  @override
  String get metric_narcissist_26_name => 'Kusur Yansıtma';

  @override
  String get metric_narcissist_26_description =>
      'Kendi olumsuz özelliklerini veya davranışlarını başkalarına atfederek öz farkındalıktan kaçınma.';

  @override
  String get metric_narcissist_27_name => 'Suçlulukla Kontrol';

  @override
  String get metric_narcissist_27_description =>
      'Suçluluk uyandıran ifadeler kullanarak başkalarını itaat veya bakım vermeye yönlendirme.';

  @override
  String get metric_narcissist_28_name => 'Duygusal Değişkenlik';

  @override
  String get metric_narcissist_28_description =>
      'Algılanan narsisistik yaralanma ile tetiklenen, çekicilikten öfkeye hızlı ruh hali değişimleri.';

  @override
  String get metric_narcissist_29_name => 'Duyguları Geçersiz Kılma';

  @override
  String get metric_narcissist_29_description =>
      'Başkalarının duygularını aşırı tepki veya mantıksız olarak reddetme veya küçümseme.';

  @override
  String get metric_narcissist_30_name => 'Konuşmaları Tekelleştirme';

  @override
  String get metric_narcissist_30_description =>
      'Kendine odaklı konularla diyaloğa hakim olma, başkalarının sözünü kesme veya katkılarını görmezden gelme.';

  @override
  String get metric_narcissist_31_name => 'İsim Takma ve Aşağılama';

  @override
  String get metric_narcissist_31_description =>
      'Hedefi değersizleştirmek ve kontrol etmek için hakaret, etiket veya küçük düşürücü ifadeler kullanmak.';

  @override
  String get metric_narcissist_32_name => 'Terk Etme Tehditleri';

  @override
  String get metric_narcissist_32_description =>
      'Uyum veya ilgi sağlamak için kaybetme veya reddedilme korkusunu kullanmak.';

  @override
  String get metric_narcissist_33_name => 'Mağdur Rolü Oynama';

  @override
  String get metric_narcissist_33_description =>
      'Sempati uyandırmak ve sorumluluktan kaçmak için kendilerini haksız yere muamele görmüş gibi göstermek.';

  @override
  String get metric_narcissist_34_name => 'Şehitlik Kompleksi';

  @override
  String get metric_narcissist_34_description =>
      'Başkalarında suçluluk ve yükümlülük duygusu yaratmak için aşırı fedakarlık veya acı çekme iddiasında bulunmak.';

  @override
  String get metric_narcissist_35_name => 'Seçici Hafıza';

  @override
  String get metric_narcissist_35_description =>
      'Sorumluluktan kaçmak için sözleri, anlaşmaları veya zararlı eylemleri uygun bir şekilde unutmak.';

  @override
  String get metric_narcissist_36_name => 'İletişim Engelleme';

  @override
  String get metric_narcissist_36_description =>
      'Kontrolü sürdürmek için diyaloğa girmeyi reddetmek, soruları görmezden gelmek veya tartışmaları durdurmak.';

  @override
  String get metric_narcissist_37_name => 'Gelecek Sahtekarlığı';

  @override
  String get metric_narcissist_37_description =>
      'Sahte umut ve bağımlılık yaratmak için ortak gelecek planları hakkında büyük vaatlerde bulunmak.';

  @override
  String get metric_narcissist_38_name => 'Kara Propaganda';

  @override
  String get metric_narcissist_38_description =>
      'Hedefi izole etmek ve itibarını zedelemek için onlar hakkında kötü niyetli söylentiler veya yalanlar yaymak.';

  @override
  String get metric_narcissist_39_name => 'İzolasyon Taktikleri';

  @override
  String get metric_narcissist_39_description =>
      'Bağımlılığı artırmak için arkadaşlar, aile veya destek sistemleriyle teması caydırmak veya engellemek.';

  @override
  String get metric_narcissist_40_name => 'Finansal Sömürü';

  @override
  String get metric_narcissist_40_description =>
      'Kişisel kazanç veya bağımlılık yaratmak için finansal kaynakları manipüle etmek veya kontrol etmek.';

  @override
  String get metric_narcissist_41_name => 'Cinsel Zorlama';

  @override
  String get metric_narcissist_41_description =>
      'Gerçek rıza olmadan cinsel uyum sağlamak için baskı, suçluluk veya manipülasyon kullanma.';

  @override
  String get metric_narcissist_42_name => 'Sınır Testi';

  @override
  String get metric_narcissist_42_description =>
      'Hangi davranışın tolere edildiğini görmek için sürekli sınırları zorlama ve ardından ihlalleri tırmandırma.';

  @override
  String get metric_narcissist_43_name => 'Gaz Lambası İnkârı';

  @override
  String get metric_narcissist_43_description =>
      'Meydana gelen olayları veya ifadeleri düpedüz inkâr ederek hedefin gerçekliği sorgulamasına neden olma.';

  @override
  String get metric_narcissist_44_name => 'Endişeleri Önemsizleştirme';

  @override
  String get metric_narcissist_44_description =>
      'Meşru şikayetleri önemsiz veya aşırı hassas olarak reddetme.';

  @override
  String get metric_narcissist_45_name => 'Suçu Dışsallaştırma';

  @override
  String get metric_narcissist_45_description =>
      'Tüm sorunları ve çatışmaları başkalarına atfetme, asla kişisel hata kabul etmeme.';

  @override
  String get metric_narcissist_46_name => 'Kıskançlık Provokasyonu';

  @override
  String get metric_narcissist_46_description =>
      'Kıskançlık uyandırmak ve duygusal kontrolü sürdürmek için başkalarıyla flört etme veya onları övme.';

  @override
  String get metric_narcissist_47_name => 'Duygusal Şantaj';

  @override
  String get metric_narcissist_47_description =>
      'Kararları ve davranışları manipüle etmek için korku, yükümlülük veya suçluluk kullanma.';

  @override
  String get metric_narcissist_48_name => 'Sahte İçgörü';

  @override
  String get metric_narcissist_48_description =>
      'Reforme olmuş görünmek için öz-farkındalık veya empati taklidi yapma, ardından toksik kalıplara geri dönme.';

  @override
  String get metric_narcissist_49_name => 'Küçümseyici Ton';

  @override
  String get metric_narcissist_49_description =>
      'Başkalarını aşağılamak ve reddetmek için alay, hiciv veya hor gören dil kullanma.';

  @override
  String get metric_narcissist_50_name => 'İntikam Fantezileri';

  @override
  String get metric_narcissist_50_description =>
      'Kendilerine haksızlık edenlere karşı misilleme veya cezalandırma arzularını ifade etme.';

  @override
  String get metric_serial_killer_1_name => 'Yırtıcı Çerçeveleme';

  @override
  String get metric_serial_killer_1_description =>
      'Konuşmacıyı avcı, hedefi ise av olarak konumlandıran dili tespit eder; yırtıcı niyeti gösterir.';

  @override
  String get metric_serial_killer_2_name => 'Empati Eksikliği';

  @override
  String get metric_serial_killer_2_description =>
      'Duygusal rezonans veya başkalarının acısına yönelik ilgi eksikliği gösteren ifadeleri tanımlar; duygusuzluğu işaret eder.';

  @override
  String get metric_serial_killer_3_name => 'İnsanlıktan Çıkarıcı Etiketler';

  @override
  String get metric_serial_killer_3_description =>
      'Kurbanların insanlığını soyutlayan aşağılayıcı terimler veya nesneleştirici etiketlerin kullanımını işaretler.';

  @override
  String get metric_serial_killer_4_name => 'Nesneleştirme İpuçları';

  @override
  String get metric_serial_killer_4_description =>
      'Bireyleri tatmin için araç veya nesne olarak ele alan dili tanır.';

  @override
  String get metric_serial_killer_5_name => 'Kontrol Takıntısı';

  @override
  String get metric_serial_killer_5_description =>
      'Baskınlık, manipülasyon veya uyumu zorlama konusunda takıntılı referansları tespit eder.';

  @override
  String get metric_serial_killer_6_name => 'Heyecan Arayışı Tonu';

  @override
  String get metric_serial_killer_6_description =>
      'Riskli, şiddet içeren veya yırtıcı eylemleri tanımlarken heyecan veya uyarılmayı belirler.';

  @override
  String get metric_serial_killer_7_name => 'Bölümlendirme İşaretleri';

  @override
  String get metric_serial_killer_7_description =>
      'Normal ve şiddet içeren konular arasında ani geçişleri işaretler; psikolojik ayrışmayı gösterir.';

  @override
  String get metric_serial_killer_8_name => 'Kurban Seçimi Sinyalleri';

  @override
  String get metric_serial_killer_8_description =>
      'Belirli savunmasız grupları hedeflemek için kriterler veya tercihleri tespit eder.';

  @override
  String get metric_serial_killer_9_name => 'Sadist Zevk';

  @override
  String get metric_serial_killer_9_description =>
      'Başkalarının acı, korku veya ıstırabından alınan zevki tanır.';

  @override
  String get metric_serial_killer_10_name => 'Manipülatif Zarar';

  @override
  String get metric_serial_killer_10_description =>
      'Başkalarını aldatmak veya zararlı durumlara zorlamak için kullanılan dili tanımlar.';

  @override
  String get metric_serial_killer_11_name => 'Takip Göstergeleri';

  @override
  String get metric_serial_killer_11_description =>
      'Bir hedefin ayrıntılı takibi, gözetlenmesi veya takıntılı izlenmesini işaretler.';

  @override
  String get metric_serial_killer_12_name => 'Hazırlık Dili';

  @override
  String get metric_serial_killer_12_description =>
      'Mağdurları sömürmek veya istismar etmek için kademeli güven inşa etme taktiklerini tespit eder.';

  @override
  String get metric_serial_killer_13_name => 'Şiddet Fantezileri';

  @override
  String get metric_serial_killer_13_description =>
      'Zihinsel bir prova olarak başkalarına zarar verme veya öldürmeye dair canlı betimlemeleri tanımlar.';

  @override
  String get metric_serial_killer_14_name => 'Güç İddiası';

  @override
  String get metric_serial_killer_14_description =>
      'Başkaları üzerinde üstünlük veya kontrol vurgulayan ifadeleri tanır.';

  @override
  String get metric_serial_killer_15_name => 'Pişmanlık Eksikliği';

  @override
  String get metric_serial_killer_15_description =>
      'Zararlı eylemleri tartıştıktan sonra suçluluk veya pişmanlık yokluğunu işaretler.';

  @override
  String get metric_serial_killer_16_name => 'Dışsallaştırma';

  @override
  String get metric_serial_killer_16_description =>
      'Şiddet dürtülerinin sorumluluğunu mağdurlara veya topluma yükleme eğilimini tespit eder.';

  @override
  String get metric_serial_killer_17_name => 'Cinselleştirilmiş Şiddet';

  @override
  String get metric_serial_killer_17_description =>
      'Dilde cinsel ve şiddet temalarının birleşimini tanımlar.';

  @override
  String get metric_serial_killer_18_name => 'İzolasyon Taktikleri';

  @override
  String get metric_serial_killer_18_description =>
      'Bir hedefi destek ağlarından ayırma çabalarını tanır.';

  @override
  String get metric_serial_killer_19_name => 'Gaz Lambası Desenleri';

  @override
  String get metric_serial_killer_19_description =>
      'Gerçekliği çarpıtmak ve mağdurun akıl sağlığını zayıflatmak için tasarlanmış dili işaretler.';

  @override
  String get metric_serial_killer_20_name => 'Tehdit Gizleme';

  @override
  String get metric_serial_killer_20_description =>
      'Gündelik ifadelerin arkasına gizlenmiş ima edilen tehditler veya uyarıları tespit eder.';

  @override
  String get metric_serial_killer_21_name => 'Sahiplenici Dil';

  @override
  String get metric_serial_killer_21_description =>
      'Bir kişi üzerinde sahiplik veya hak iddialarını tanımlar.';

  @override
  String get metric_serial_killer_22_name => 'İntikam Temaları';

  @override
  String get metric_serial_killer_22_description =>
      'Misilleme veya algılanan haksızlıkları cezalandırma takıntısını tanır.';

  @override
  String get metric_serial_killer_23_name => 'Narsistik Büyüklenme';

  @override
  String get metric_serial_killer_23_description =>
      'Abartılı öz-önem ve başkalarının değerini göz ardı etmeyi işaretler.';

  @override
  String get metric_serial_killer_24_name => 'Duygusal Kopukluk';

  @override
  String get metric_serial_killer_24_description =>
      'Travma veya zarar tartışılırken klinik veya mesafeli tonu tespit eder.';

  @override
  String get metric_serial_killer_25_name => 'Yırtıcı Sabır';

  @override
  String get metric_serial_killer_25_description =>
      'Gelecekteki mağduriyet için uzun vadeli planlama dilini tanımlar.';

  @override
  String get metric_serial_killer_26_name => 'Sınır Testi';

  @override
  String get metric_serial_killer_26_description =>
      'Potansiyel kurbanlarda sınırları veya direnci yoklamayı tanır.';

  @override
  String get metric_serial_killer_27_name => 'Zararı Küçümseme';

  @override
  String get metric_serial_killer_27_description =>
      'Şiddetli veya taciz edici eylemlerin ciddiyetini hafife almayı işaretler.';

  @override
  String get metric_serial_killer_28_name => 'Şiddeti Meşrulaştırma';

  @override
  String get metric_serial_killer_28_description =>
      'Başkalarına zarar vermeyi gerekli veya hak edilmiş olarak rasyonalize etmeyi tespit eder.';

  @override
  String get metric_serial_killer_29_name => 'Takıntılı Odaklanma';

  @override
  String get metric_serial_killer_29_description =>
      'Belirli bir kişi veya eylem üzerinde tekrarlayan, sabitlenmiş düşünceleri tanımlar.';

  @override
  String get metric_serial_killer_30_name => 'Soğuk Hesaplama';

  @override
  String get metric_serial_killer_30_description =>
      'Zararlı eylemlerin stratejik, duygusuz planlamasını tanır.';

  @override
  String get metric_serial_killer_31_name => 'Aldatıcı Cazibe';

  @override
  String get metric_serial_killer_31_description =>
      'Manipülasyon amacıyla aşırı övücü veya yaltaklanan dili işaretler.';

  @override
  String get metric_serial_killer_32_name => 'Kurbanı Suçlama';

  @override
  String get metric_serial_killer_32_description =>
      'Hedefe, kendi mağduriyetinin sorumluluğunu yükleme eğilimini tespit eder.';

  @override
  String get metric_serial_killer_33_name => 'Tırmanma Sinyalleri';

  @override
  String get metric_serial_killer_33_description =>
      'Şiddet içeren dilde fanteziden niyete geçişi tanımlar.';

  @override
  String get metric_serial_killer_34_name => 'Parazitik Yönelim';

  @override
  String get metric_serial_killer_34_description =>
      'Başkalarını sömürülecek kaynaklar olarak gören dili tanır.';

  @override
  String get metric_serial_killer_35_name => 'Uyarılma İpuçları';

  @override
  String get metric_serial_killer_35_description =>
      'Şiddet temalarıyla bağlantılı fizyolojik heyecan göstergelerini işaretler.';

  @override
  String get metric_serial_killer_36_name => 'Sadakat Testi';

  @override
  String get metric_serial_killer_36_description =>
      'Suç ortaklarından bağlılık veya gizlilik kanıtı talep eden ifadeleri tespit eder.';

  @override
  String get metric_serial_killer_37_name => 'Ritüelistik Dil';

  @override
  String get metric_serial_killer_37_description =>
      'Şiddet eylemleri etrafında kalıplaşmış, törensel ifadeleri tanımlar.';

  @override
  String get metric_serial_killer_38_name => 'Üstünlük İddiaları';

  @override
  String get metric_serial_killer_38_description =>
      'Ahlaki veya yasal kısıtlamaların üzerinde olduğunu öne süren ifadeleri tanır.';

  @override
  String get metric_serial_killer_39_name => 'Duygusal Boşluk';

  @override
  String get metric_serial_killer_39_description =>
      'Empati gerektiren bağlamlarda duygusal kelimelerin yokluğunu işaretler.';

  @override
  String get metric_serial_killer_40_name => 'Yırtıcı Merak';

  @override
  String get metric_serial_killer_40_description =>
      'Hedefin korkuları veya zayıflıkları hakkında sorgulayıcı soruları tespit eder.';

  @override
  String get metric_serial_killer_41_name => 'Sessizleştirme Tehditleri';

  @override
  String get metric_serial_killer_41_description =>
      'İfşa veya raporlamayı önlemek için yapılan uyarıları tanımlar.';

  @override
  String get metric_serial_killer_42_name =>
      'İnsanlıktan Çıkarıcı Karşılaştırmalar';

  @override
  String get metric_serial_killer_42_description =>
      'İnsanları hayvanlara, nesnelere veya insan altı varlıklara eşitlemeyi tanır.';

  @override
  String get metric_serial_killer_43_name => 'Kontrol Dili';

  @override
  String get metric_serial_killer_43_description =>
      'Başkalarına hükmetmeyi amaçlayan emir veya buyurgan tonları işaretler.';

  @override
  String get metric_serial_killer_44_name => 'Sadist Detay';

  @override
  String get metric_serial_killer_44_description =>
      'Anlatılarda grafik acı veya ıstıraba aşırı odaklanmayı tespit eder.';

  @override
  String get metric_serial_killer_45_name => 'Manipülatif Empati';

  @override
  String get metric_serial_killer_45_description =>
      'Hedefin savunmasını düşürmek için taklit edilen ilgiyi tanımlar.';

  @override
  String get metric_serial_killer_46_name => 'Yırtıcı Bakış';

  @override
  String get metric_serial_killer_46_description =>
      'Hedeflerin yoğun, müdahaleci gözlemini tanımlayan dili tanır.';

  @override
  String get metric_serial_killer_47_name => 'Şiddet Kimliği';

  @override
  String get metric_serial_killer_47_description =>
      'Kendini yırtıcı, katil veya canavar olarak tanımlamayı işaretler.';

  @override
  String get metric_serial_killer_48_name => 'Avın Heyecanı';

  @override
  String get metric_serial_killer_48_description =>
      'Kurbanları takip etme veya izleme sürecindeki heyecanı tespit eder.';

  @override
  String get metric_serial_killer_49_name => 'Zorlayıcı İtiraf';

  @override
  String get metric_serial_killer_49_description =>
      'Psikolojik rahatlama için şiddet eylemlerini ifşa etme dürtülerini tanımlar.';

  @override
  String get metric_serial_killer_50_name => 'Sonluluk Dili';

  @override
  String get metric_serial_killer_50_description =>
      'Hedeflerin sonlandırılması, öldürülmesi veya kalıcı olarak sessizleştirilmesine yapılan atıfları tanır.';

  @override
  String get packNarcissistLabel => 'Narsist';

  @override
  String get packSerialKillerLabel => 'Seri Katil';
}
