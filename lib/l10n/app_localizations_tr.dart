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
  String get gotIt => 'Got it';

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
}
