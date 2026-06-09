// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Analyseur de Toxicité Relationnelle IA';

  @override
  String get psychologicalMetrics => 'Métriques Psychologiques';

  @override
  String get metricsDescription =>
      'Moins de métriques sélectionnées produisent une analyse plus profonde et concentrée de ces comportements. Plus de métriques sélectionnées produisent un rapport plus large avec moins de détails par métrique.';

  @override
  String get selectSMS => 'Sélectionner SMS / RCS Chat';

  @override
  String get selectDiscordChannel => 'Sélectionner Canal Discord';

  @override
  String get lightMode => 'Clair';

  @override
  String get darkMode => 'Sombre';

  @override
  String get discordSetupTitle => 'Comment Configurer Discord';

  @override
  String get discordSetupDescription =>
      'Suivez ces étapes pour activer l\'analyse des canaux Discord dans l\'application:';

  @override
  String get discordStep1Title => 'Créer un Bot Discord';

  @override
  String get discordStep1Description =>
      'Allez sur discord.com/developers, créez une nouvelle application et ajoutez un bot. Copiez le token du bot.';

  @override
  String get discordStep2Title => 'Activer les Privilèges du Bot';

  @override
  String get discordStep2Description =>
      'Dans les paramètres du bot, activez \'Message Content Intent\' et \'Server Members Intent\'.';

  @override
  String get discordStep3Title => 'Inviter le Bot au Serveur';

  @override
  String get discordStep3Description =>
      'Utilisez le générateur d\'URL OAuth2 pour inviter le bot à votre serveur Discord avec les permissions nécessaires.';

  @override
  String get discordStep4Title => 'Configurer dans l\'Application';

  @override
  String get discordStep4Description =>
      'Entrez votre token de bot dans les paramètres de l\'application (contactez le support si vous avez besoin d\'aide).';

  @override
  String get discordStep5Title => 'Sélectionner un Canal';

  @override
  String get discordStep5Description =>
      'Appuyez sur \'Sélectionner Canal Discord\', choisissez votre serveur, puis sélectionnez le canal à analyser.';

  @override
  String get gotIt => 'Compris';

  @override
  String get selectFile => 'Sélectionner fichier';

  @override
  String get analyzeSelectedMetrics => 'Analyser les métriques sélectionnées';

  @override
  String get analyze20RandomMetrics => 'Analyser 20 métriques aléatoires';

  @override
  String get membershipOptions => 'Options d\'adhésion';

  @override
  String get free => 'Gratuit';

  @override
  String get oneTimeUnlock => 'Déverrouillage unique du rapport';

  @override
  String get standard => 'Standard';

  @override
  String get discordAddon => 'Extension Discord';

  @override
  String get analyze => 'Analyser';

  @override
  String get report => 'Rapport';

  @override
  String get pdfReport => 'Rapport PDF';

  @override
  String get openPdf => 'Ouvrir le PDF';

  @override
  String get sharePdf => 'Partager le PDF';

  @override
  String get printPdf => 'Imprimer le PDF';

  @override
  String get closePdfPreview => 'Fermer la fenêtre d\'aperçu PDF';

  @override
  String get openPdfPreview => 'Ouvrir la fenêtre d\'aperçu PDF';

  @override
  String get pdfPreviewDescription =>
      'La fenêtre PDF intégrée démarre fermée pour garder le rapport compact.';

  @override
  String get notNow => 'Pas maintenant';

  @override
  String get unlockThisReport => 'Déverrouiller ce rapport - \$20';

  @override
  String get joinStandard => 'Rejoindre Standard - \$9.99/mois';

  @override
  String get instantUnlockTitle =>
      'Déverrouillage instantané du rapport - \$20';

  @override
  String get instantUnlockDescription =>
      'Ceci est un achat unique pour déverrouiller uniquement le rapport actuel. Aucun abonnement requis. Les futurs rapports nécessiteront des déverrouillages séparés ou un abonnement.\n\nProcéder au paiement ?';

  @override
  String get purchaseFor20 => 'Acheter pour \$20';

  @override
  String get share => 'Partager';

  @override
  String get print => 'Imprimer';

  @override
  String get save => 'Enregistrer';

  @override
  String get cancel => 'Annuler';

  @override
  String get ok => 'OK';

  @override
  String get loading => 'Chargement...';

  @override
  String get error => 'Erreur';

  @override
  String get success => 'Succès';

  @override
  String get conversations => 'Conversations';

  @override
  String get messages => 'Messages';

  @override
  String get selectConversation => 'Sélectionner une conversation';

  @override
  String get selectSmsConversation => 'Sélectionner SMS / RCS Chat';

  @override
  String get searchConversations => 'Rechercher des conversations...';

  @override
  String get loadingConversations => 'Chargement des conversations...';

  @override
  String get errorLoadingConversations =>
      'Erreur lors du chargement des conversations';

  @override
  String get selectConversationToAnalyze =>
      'Sélectionner une conversation à analyser';

  @override
  String get analyzeWithSelectedMetrics =>
      'Analyser avec les métriques sélectionnées';

  @override
  String get loadConversationAndSelectMetric =>
      'Chargez une conversation et sélectionnez au moins une métrique';

  @override
  String get selectAtLeastOneMetric =>
      'Au moins une métrique doit être sélectionnée pour exécuter le rapport.';

  @override
  String get spinningMetricWheel => 'Tourne la roue des métriques...';

  @override
  String get loadConversationToAnalyze =>
      'Chargez une conversation pour analyser';

  @override
  String get noConversationsFound => 'Aucune conversation trouvée';

  @override
  String get permissionsRequired => 'Autorisations requises';

  @override
  String get smsPermission => 'Messages texte';

  @override
  String get contactsPermission => 'Contacts';

  @override
  String get smsPermissionDescription =>
      'Pour analyser vos conversations SMS pour les modèles de relation';

  @override
  String get contactsPermissionDescription =>
      'Pour afficher les noms des contacts au lieu des numéros de téléphone';

  @override
  String get analyzingMessage =>
      'Veuillez patienter pendant que votre analyse psychologique est générée par l\'IA...';

  @override
  String get analyzingStatus => 'Analyse de la conversation...';

  @override
  String get analyzingSubMessage =>
      'Veuillez patienter, ce processus peut prendre jusqu\'à une minute selon votre vitesse de connexion et la quantité de métriques sélectionnées';

  @override
  String get unlockFullReport => 'Déverrouiller et afficher tout ce rapport';

  @override
  String get fullReportLocked => 'Rapport complet verrouillé';

  @override
  String get upgradeToUnlock =>
      'Mettez à niveau votre adhésion pour déverrouiller le rapport complet d\'analyse psychologique avec toutes les métriques et informations détaillées.';

  @override
  String get language => 'Langue';

  @override
  String get english => 'Anglais';

  @override
  String get spanish => 'Espagnol';

  @override
  String get french => 'Français';

  @override
  String get german => 'Allemand';

  @override
  String get italian => 'Italien';

  @override
  String get portuguese => 'Portugais';

  @override
  String get dutch => 'Néerlandais';

  @override
  String get russian => 'Russe';

  @override
  String get chinese => 'Chinois';

  @override
  String get japanese => 'Japonais';

  @override
  String get korean => 'Coréen';

  @override
  String get arabic => 'Arabe';

  @override
  String get hindi => 'Hindi';

  @override
  String get turkish => 'Turc';

  @override
  String get polish => 'Polonais';

  @override
  String get ukrainian => 'Ukrainien';

  @override
  String get runAnotherAnalysis => 'Lancer une autre analyse ?';

  @override
  String get becomeMemberTitle =>
      'Devenez membre pour obtenir le rapport d\'analyse complet';

  @override
  String get becomeMemberSubtitle =>
      'Choisissez le niveau d\'accès qui correspond aux conversations et rapports que vous devez analyser.';

  @override
  String get benefitAnalyzeSms => 'Analyser les messages SMS';

  @override
  String get benefitReportPreview => 'Lancer un aperçu du rapport';

  @override
  String get benefitViewPartialReport => 'Voir environ 25 % du rapport';

  @override
  String get benefitLockedDetails => 'Détails du rapport complet verrouillés';

  @override
  String get currentFreeAccess => 'Accès gratuit actuel';

  @override
  String get benefitUnlockCurrentReport =>
      'Déverrouiller ce rapport complet actuel';

  @override
  String get benefitNoSubscription => 'Sans abonnement';

  @override
  String get benefitSavePrintShareThis =>
      'Enregistrer, imprimer et partager ce rapport';

  @override
  String get benefitBestSingleAnalysis =>
      'Idéal si vous n\'avez besoin que d\'une seule analyse';

  @override
  String get unlockThisReportShort => 'Déverrouiller ce rapport';

  @override
  String get benefitFullSmsReport => 'Rapport d\'analyse SMS complet';

  @override
  String get benefitSavePrintSharePdf =>
      'Enregistrer, imprimer et partager des rapports PDF';

  @override
  String get benefitTenReports => '10 rapports par période de 24 heures';

  @override
  String get benefitBestTextReview =>
      'Idéal pour l\'examen des relations par SMS';

  @override
  String get benefitDateRangeFilter => 'Filtrer l\'analyse par plage de dates';

  @override
  String get signUpStandard => 'S\'inscrire à l\'abonnement Standard';

  @override
  String get benefitAddToStandard => 'Ajouter à l\'abonnement Standard';

  @override
  String get benefitAnalyzeDiscord =>
      'Analyser les conversations des serveurs Discord';

  @override
  String get benefitRequiresBot => 'Nécessite l\'installation du bot';

  @override
  String get benefitBestGamers =>
      'Idéal pour les joueurs et les communautés Discord';

  @override
  String get addDiscordAnalysis => 'Ajouter l\'analyse Discord';

  @override
  String get requiresStandardMembership => 'Nécessite l\'abonnement Standard';

  @override
  String get comingSoon => 'Bientôt disponible';

  @override
  String get comingSoonWithNextUpdate =>
      'Bientôt disponible avec la prochaine mise à jour :';

  @override
  String get proMembershipTier => 'Niveau d\'abonnement Pro - \$19.99';

  @override
  String get proPlusMembershipTier => 'Niveau d\'abonnement Pro-Plus - \$24.99';

  @override
  String get proGetsLabel => 'Pro comprend :';

  @override
  String get proGetsDescription =>
      'Analysez les fils de discussion de toutes les autres plateformes populaires de messagerie et de médias sociaux telles que :';

  @override
  String get proPlatformsList =>
      'LinkedIn, WhatsApp, Instagram, Facebook Messenger, Telegram, X (Twitter), e-mail et calendrier';

  @override
  String get proPlusGetsLabel => 'Pro-Plus comprend :';

  @override
  String get proPlusGetsDescription =>
      'Tout ce que propose Pro, plus l\'extension Discord à prix réduit.';

  @override
  String get purchaseSuccessfulUnlocked =>
      'Achat réussi ! Rapport déverrouillé.';

  @override
  String get purchaseFailed => 'L\'achat a échoué. Veuillez réessayer.';

  @override
  String get membershipActivated => 'Abonnement activ!';

  @override
  String get dateRangeFilter => 'Filtre de Plage de Dates';

  @override
  String get dateRangeOptional => '(optionnel)';

  @override
  String get startDate => 'Date de Début';

  @override
  String get endDate => 'Date de Fin';

  @override
  String get clear => 'Effacer';

  @override
  String get dateRangeRequiresMembership =>
      'Nécessite l\'abonnement Standard ou supérieur';

  @override
  String selectUpToCount(Object current, Object max) {
    return 'Sélectionner jusqu\'à $max. Actuel : $current';
  }

  @override
  String get clearSelections => 'Effacer les sélections';

  @override
  String analyzeRandomMetrics(Object count) {
    return 'Analyser $count métriques aléatoires';
  }

  @override
  String get saveSelections => 'Enregistrer les Sélections';

  @override
  String get loadSelections => 'Charger les Sélections';

  @override
  String get saveMetricListName => 'Enregistrer la Liste de Métriques';

  @override
  String get enterListName => 'Entrez un nom pour cette liste de métriques:';

  @override
  String get chooseSavedMetrics =>
      'Choisissez la liste de métriques enregistrée:';

  @override
  String get noSavedLists =>
      'Aucune liste de métriques enregistrée à charger pour le moment.';

  @override
  String get metricListSaved => 'Liste de métriques enregistrée avec succès.';

  @override
  String get metricListLoaded => 'Liste de métriques chargée avec succès.';

  @override
  String get filters => 'Filtres';

  @override
  String get sortBy => 'Trier par:';

  @override
  String get recent => 'Récent';

  @override
  String get name => 'Nom';

  @override
  String get count => 'Nombre';

  @override
  String get namedOnly => 'Nom uniquement';

  @override
  String get minMessages => 'Min. messages:';

  @override
  String get minimumMessages => 'Minimum de messages:';

  @override
  String get executiveSummary => 'Résumé Exécutif';

  @override
  String get metricScores => 'Scores des Métriques';

  @override
  String get contextualEvidenceExamples => 'Exemples de Preuves Contextuelles';

  @override
  String get neutralSynthesis => 'Synthèse Neutre';

  @override
  String analysisOfSender(Object sender) {
    return 'Analyse de $sender (Expéditeur)';
  }

  @override
  String analysisOfReceiver(Object receiver) {
    return 'Analyse de $receiver (Destinataire)';
  }

  @override
  String get finalConclusion => 'Conclusion Finale';

  @override
  String get metric_1_name => 'Mépris';

  @override
  String get metric_1_description =>
      'Recherche la supériorité, le dégoût, la moquerie, le langage de roulage des yeux ou les insultes qui placent un partenaire en dessous de l\'autre.';

  @override
  String get metric_2_name => 'Défensive';

  @override
  String get metric_2_description =>
      'Suit l\'autoprotection réflexe, les contre-attaques, les excuses et le refus de considérer la plainte de l\'autre personne.';

  @override
  String get metric_3_name => 'Blocage';

  @override
  String get metric_3_description =>
      'Identifie l\'arrêt, le retrait, l\'ignorance, le refus de répondre ou la fin des conversations pour éviter l\'engagement.';

  @override
  String get metric_4_name => 'Critique';

  @override
  String get metric_4_description =>
      'Détecte les attaques sur le caractère ou la personnalité au lieu de comportements, besoins ou incidents spécifiques.';

  @override
  String get metric_5_name => 'Indicateurs de Gaslighting';

  @override
  String get metric_5_description =>
      'Signale les tentatives de faire douter quelqu\'un de sa mémoire, perception, santé mentale ou légitimité de son expérience.';

  @override
  String get metric_6_name => 'Transfert de Blâme';

  @override
  String get metric_6_description =>
      'Mesure si la responsabilité est redirigée vers l\'autre partenaire au lieu d\'être reconnue directement.';

  @override
  String get metric_7_name => 'Motif d\'Escalade';

  @override
  String get metric_7_description =>
      'Évalue si le ton, les accusations, l\'intensité ou les menaces augmentent au lieu de se diriger vers une résolution.';

  @override
  String get metric_8_name => 'Reconnaissance des Tentatives de Réparation';

  @override
  String get metric_8_description =>
      'Vérifie si les excuses, l\'humour, les pauses, la réassurance ou les offres de paix sont remarquées et acceptées.';

  @override
  String get metric_9_name => 'Langage de Responsabilité';

  @override
  String get metric_9_description =>
      'Recherche une propriété claire du préjudice, une responsabilité spécifique et la volonté de changer le comportement.';

  @override
  String get metric_10_name => 'Respect des Limites';

  @override
  String get metric_10_description =>
      'Évalue si les limites énoncées autour du temps, de la vie privée, du corps, des émotions ou du contact sont respectées.';

  @override
  String get metric_11_name => 'Indicateurs de Contrôle Coercitif';

  @override
  String get metric_11_description =>
      'Signale les modèles d\'intimidation, de restriction, de surveillance, de dépendance ou de contrôle sur les choix et les mouvements.';

  @override
  String get metric_12_name => 'Langage de Menace';

  @override
  String get metric_12_description =>
      'Identifie les menaces explicites ou implicites impliquant la sécurité, l\'abandon, l\'exposition, la représaille ou la punition.';

  @override
  String get metric_13_name => 'Dédain';

  @override
  String get metric_13_description =>
      'Détecte le rejet des préoccupations, le traitement des besoins comme sans importance ou le refus de prendre la détresse au sérieux.';

  @override
  String get metric_14_name => 'Invalidation';

  @override
  String get metric_14_description =>
      'Mesure le déni, la moquerie ou la correction des émotions d\'une autre personne au lieu de les reconnaître.';

  @override
  String get metric_15_name => 'Expression d\'Empathie';

  @override
  String get metric_15_description =>
      'Recherche la prise de perspective, le soin, la reconnaissance émotionnelle et la préoccupation pour l\'expérience de l\'autre personne.';

  @override
  String get metric_16_name => 'Réciprocité';

  @override
  String get metric_16_description =>
      'Évalue si l\'attention, l\'effort, les excuses, le compromis et le soutien émotionnel circulent dans les deux sens.';

  @override
  String get metric_17_name => 'Régulation Émotionnelle';

  @override
  String get metric_17_description =>
      'Évalue la capacité de rester ancré, de faire une pause, de s\'apaiser et de communiquer sans réactivité explosive.';

  @override
  String get metric_18_name => 'Sarcasme Utilisé comme Dommage';

  @override
  String get metric_18_description =>
      'Signale le sarcasme utilisé pour rabaisser, punir, humilier ou déguiser l\'hostilité comme humour.';

  @override
  String get metric_19_name => 'Injures';

  @override
  String get metric_19_description =>
      'Identifie les étiquettes dérogatoires, les insultes, le blasphème dirigé contre la personne ou les attaques basées sur l\'identité.';

  @override
  String get metric_20_name => 'Motif de Traitement Silencieux';

  @override
  String get metric_20_description =>
      'Suit le silence utilisé comme punition, contrôle, évitement ou retrait de connexion.';

  @override
  String get metric_21_name => 'Cadre de Jalousie';

  @override
  String get metric_21_description =>
      'Évalue la suspicion, la possessivité, les accusations ou la jalousie présentées comme preuve de soin.';

  @override
  String get metric_22_name => 'Pression d\'Isolation';

  @override
  String get metric_22_description =>
      'Signale les efforts pour séparer un partenaire des amis, de la famille, des systèmes de soutien ou des perspectives extérieures.';

  @override
  String get metric_23_name => 'Indicateurs de Contrôle Financier';

  @override
  String get metric_23_description =>
      'Recherche le contrôle de l\'argent, des dépenses, de l\'emploi, de l\'accès aux comptes ou de l\'indépendance financière.';

  @override
  String get metric_24_name => 'Indicateurs d\'Invasion de la Vie Privée';

  @override
  String get metric_24_description =>
      'Détecte l\'espionnage, les demandes de mots de passe, les vérifications d\'appareils, le suivi de localisation ou les violations de la vie privée.';

  @override
  String get metric_25_name => 'Spécificité des Excuses';

  @override
  String get metric_25_description =>
      'Mesure si les excuses nomment le préjudice exact, l\'impact et la correction future au lieu de rester vagues.';

  @override
  String get metric_26_name => 'Pression de Pardon';

  @override
  String get metric_26_description =>
      'Signale les demandes de passer à autre chose, de pardonner rapidement ou d\'arrêter de discuter du préjudice avant la réparation.';

  @override
  String get metric_27_name => 'Minimisation';

  @override
  String get metric_27_description =>
      'Détecte la minimisation du préjudice, l\'appel des préoccupations sérieuses dramatiques ou la réduction de l\'impact pour éviter la responsabilité.';

  @override
  String get metric_28_name => 'Projection';

  @override
  String get metric_28_description =>
      'Recherche les accusations qui reflètent le propre comportement, les motifs ou les sentiments non résolus du locuteur.';

  @override
  String get metric_29_name => 'Motif d\'Interruption';

  @override
  String get metric_29_description =>
      'Suit les coupures, le fait de parler par-dessus, le refus de terminer ou le contrôle des tours de conversation.';

  @override
  String get metric_30_name => 'Déviation de Sujet';

  @override
  String get metric_30_description =>
      'Identifie le changement de sujet, l\'introduction de problèmes non liés ou l\'évitement de la préoccupation centrale.';

  @override
  String get metric_31_name => 'Orientation vers la Résolution';

  @override
  String get metric_31_description =>
      'Mesure si les messages visent des solutions, de la clarté, des accords et les prochaines étapes.';

  @override
  String get metric_32_name => 'Résolution Mutuelle de Problèmes';

  @override
  String get metric_32_description =>
      'Évalue le langage collaboratif, la responsabilité partagée, le brainstorming et la volonté de trouver des compromis viables.';

  @override
  String get metric_33_name => 'Inondation Émotionnelle';

  @override
  String get metric_33_description =>
      'Détecte le débordement, la panique, l\'arrêt, la spirale ou l\'incapacité de traiter pendant le conflit.';

  @override
  String get metric_34_name => 'Indices de Réponse de Peur';

  @override
  String get metric_34_description =>
      'Recherche l\'apaisement, un choix de mots prudent, la crainte, les préoccupations de sécurité ou la peur de la réaction du partenaire.';

  @override
  String get metric_35_name => 'Cohérence des Affirmations';

  @override
  String get metric_35_description =>
      'Évalue si les récits restent cohérents en interne à travers les messages et le temps.';

  @override
  String get metric_36_name => 'Souvenir Basé sur des Preuves';

  @override
  String get metric_36_description =>
      'Vérifie si les affirmations font référence à des événements concrets, des citations, des chronologies ou un comportement observable.';

  @override
  String get metric_37_name => 'Motif de Demande et de Retrait';

  @override
  String get metric_37_description =>
      'Suit un partenaire cherchant des réponses ou un changement pendant que l\'autre évite, se ferme ou sort.';

  @override
  String get metric_38_name => 'Indicateurs de Déséquilibre de Pouvoir';

  @override
  String get metric_38_description =>
      'Signale un pouvoir de décision inégal, la peur des conséquences, la dépendance, l\'intimidation ou le contrôle unilatéral.';

  @override
  String get metric_39_name => 'Désaccord Respectueux';

  @override
  String get metric_39_description =>
      'Mesure si le conflit préserve la dignité, la curiosité et le désaccord sans dégradation.';

  @override
  String get metric_40_name => 'Cycle de Rupture et Réparation';

  @override
  String get metric_40_description =>
      'Évalue si le conflit est suivi d\'une reconnaissance, d\'une reconnexion et d\'une réparation réelle.';

  @override
  String get metric_41_name => 'Retrait d\'Affection';

  @override
  String get metric_41_description =>
      'Détecte l\'amour, la chaleur, le sexe, l\'attention ou la réassurance retenus comme punition ou levier.';

  @override
  String get metric_42_name => 'Références d\'Humiliation Publique';

  @override
  String get metric_42_description =>
      'Signale les menaces, les blagues ou les actions qui embarrassent le partenaire devant les autres.';

  @override
  String get metric_43_name => 'Indices de Conflit Lié aux Substances';

  @override
  String get metric_43_description =>
      'Recherche l\'utilisation d\'alcool ou de drogues liée à l\'agression, au manque de fiabilité, au conflit ou au préjudice.';

  @override
  String get metric_44_name => 'Pression de Conflit Parental';

  @override
  String get metric_44_description =>
      'Identifie les enfants, la garde, les rôles parentaux ou la culpabilité parentale utilisés dans le conflit ou comme levier.';

  @override
  String get metric_45_name => 'Respect des Limites Sexuelles';

  @override
  String get metric_45_description =>
      'Évalue le respect du consentement, de la pression, du refus, du confort, du timing et de l\'autonomie sexuelle.';

  @override
  String get metric_46_name => 'Indicateurs de Harcèlement Numérique';

  @override
  String get metric_46_description =>
      'Suit les messages indésirables répétés, les appels spam, la pression en ligne, la surveillance ou l\'intimidation basée sur les plateformes.';

  @override
  String get metric_47_name => 'Langage de Surveillance';

  @override
  String get metric_47_description =>
      'Signale la vérification des allées et venues, la demande de preuves, le suivi du comportement ou la vérification constante.';

  @override
  String get metric_48_name => 'Orientation Future';

  @override
  String get metric_48_description =>
      'Mesure si les partenaires discutent d\'amélioration future, d\'engagements, de plans ou d\'une direction constructive.';

  @override
  String get metric_49_name => 'Signaux de Planification de Sécurité';

  @override
  String get metric_49_description =>
      'Recherche les tentatives de chercher de l\'aide, de créer une distance, de documenter le préjudice ou de planifier la sécurité physique/émotionnelle.';

  @override
  String get metric_50_name => 'Tentatives Mutuelles de Désescalade';

  @override
  String get metric_50_description =>
      'Suit les pauses, le langage apaisant, un ton plus doux, les temps morts et les tentatives des deux partenaires pour réduire l\'intensité.';

  @override
  String get metric_51_name => 'Indices d\'Attachement Sécurisé';

  @override
  String get metric_51_description =>
      'Identifie la confiance, la réassurance directe, la disponibilité émotionnelle et le confort avec la proximité et l\'indépendance.';

  @override
  String get metric_52_name => 'Activation de l\'Attachement Anxieux';

  @override
  String get metric_52_description =>
      'Signale le comportement de protestation, les besoins urgents de réassurance, la peur de l\'abandon et une sensibilité accrue à la distance.';

  @override
  String get metric_53_name => 'Distanciation de l\'Attachement Évitant';

  @override
  String get metric_53_description =>
      'Détecte la minimisation émotionnelle, les défenses d\'indépendance, le retrait de la vulnérabilité ou l\'inconfort avec les besoins.';

  @override
  String get metric_54_name => 'Signaux d\'Attachement Désorganisé';

  @override
  String get metric_54_description =>
      'Recherche les cycles d\'approche-évitement, la peur mélangée au besoin, les réactions chaotiques ou les modèles d\'intimité confus.';

  @override
  String get metric_55_name => 'Offres Émotionnelles et Réponses';

  @override
  String get metric_55_description =>
      'Mesure les invitations pour l\'attention, le confort ou la connexion et si elles sont acceptées ou manquées.';

  @override
  String get metric_56_name => 'Se Détourner de la Connexion';

  @override
  String get metric_56_description =>
      'Signale l\'ignorance, le rejet ou l\'échec à répondre aux offres de proximité ou de soutien.';

  @override
  String get metric_57_name => 'Se Retourner Contre la Connexion';

  @override
  String get metric_57_description =>
      'Détecte les réponses hostiles ou punitives aux tentatives d\'affection, de vulnérabilité ou de réparation.';

  @override
  String get metric_58_name => 'Primauté du Sentiment Positif';

  @override
  String get metric_58_description =>
      'Recherche la générosité, le bénéfice du doute, l\'affection et l\'interprétation du conflit à travers le soin.';

  @override
  String get metric_59_name => 'Primauté du Sentiment Négatif';

  @override
  String get metric_59_description =>
      'Signale l\'hypothèse de mauvaises intentions, l\'interprétation négative des messages neutres et le cadre hostile persistant.';

  @override
  String get metric_60_name => 'Motif de Départ Dur';

  @override
  String get metric_60_description =>
      'Identifie les conversations qui commencent par une accusation, une attaque, le mépris ou le blâme plutôt qu\'une demande.';

  @override
  String get metric_61_name => 'Motif de Départ Doux';

  @override
  String get metric_61_description =>
      'Recherche des ouvertures douces utilisant des sentiments, des besoins, des demandes spécifiques et un langage non accusatoire.';

  @override
  String get metric_62_name => 'Auto-apaisement Physiologique';

  @override
  String get metric_62_description =>
      'Évalue les tentatives de faire une pause, de respirer, de prendre de l\'espace ou de réguler le corps avant de continuer le conflit.';

  @override
  String get metric_63_name => 'Motif d\'Évitement de Conflit';

  @override
  String get metric_63_description =>
      'Suit l\'évitement répété de sujets nécessaires, de l\'inconfort, du désaccord ou de l\'honnêteté émotionnelle.';

  @override
  String get metric_64_name => 'Style de Conflit Volatile';

  @override
  String get metric_64_description =>
      'Détecte un conflit de haute intensité avec une expression directe qui peut encore inclure l\'engagement et la réparation.';

  @override
  String get metric_65_name => 'Style de Conflit Validant';

  @override
  String get metric_65_description =>
      'Mesure si les partenaires reconnaissent la perspective de l\'autre tout en étant en désaccord.';

  @override
  String get metric_66_name => 'Style de Conflit Hostile';

  @override
  String get metric_66_description =>
      'Signale la critique fréquente, le mépris, la défensive, les attaques et le cadre adversarial.';

  @override
  String get metric_67_name => 'Motif Hostile-Détaché';

  @override
  String get metric_67_description =>
      'Identifie l\'hostilité froide, le désengagement émotionnel, le mépris et une faible motivation de réparation.';

  @override
  String get metric_68_name => 'Volonté de Compromis';

  @override
  String get metric_68_description =>
      'Recherche la flexibilité, la négociation, les propositions de terrain d\'entente et les sacrifices qui respectent les deux besoins.';

  @override
  String get metric_69_name => 'Acceptation de l\'Influence';

  @override
  String get metric_69_description =>
      'Mesure l\'ouverture à être affecté par les sentiments, les besoins ou la perspective du partenaire.';

  @override
  String get metric_70_name => 'Signaux de Conflit Bloqué';

  @override
  String get metric_70_description =>
      'Signale des problèmes non résolus répétés liés aux valeurs, aux rêves, à l\'identité ou à l\'incompatibilité chronique.';

  @override
  String get metric_71_name => 'Cadre de Problème Soluble';

  @override
  String get metric_71_description =>
      'Détecte des définitions de problèmes pratiques et concrètes qui peuvent mener à des accords spécifiques.';

  @override
  String get metric_72_name => 'Références de Sens Partagé';

  @override
  String get metric_72_description =>
      'Recherche les valeurs, les rituels, les objectifs, les souvenirs ou le langage d\'identité qui crée une histoire de relation partagée.';

  @override
  String get metric_73_name => 'Conscience de la Carte d\'Amour';

  @override
  String get metric_73_description =>
      'Évalue la connaissance du monde intérieur, des facteurs de stress, des préférences, des peurs et de la vie quotidienne du partenaire.';

  @override
  String get metric_74_name => 'Affection et Admiration';

  @override
  String get metric_74_description =>
      'Identifie l\'appréciation, le respect, la chaleur, les compliments, la gratitude et le regard positif.';

  @override
  String get metric_75_name => 'Déséquilibre du Travail Émotionnel';

  @override
  String get metric_75_description =>
      'Signale un partenaire portant une planification disproportionnée, l\'apaisement, le souvenir, l\'explication ou l\'entretien de la relation.';

  @override
  String get metric_76_name => 'Rejet de la Charge Mentale';

  @override
  String get metric_76_description =>
      'Détecte la minimisation du travail de planification invisible, la coordination ménagère, la planification ou le suivi des responsabilités.';

  @override
  String get metric_77_name => 'Indices d\'Incompétence Armée';

  @override
  String get metric_77_description =>
      'Recherche les revendications d\'incapacité, de confusion ou d\'impuissance pour éviter une responsabilité équitable.';

  @override
  String get metric_78_name => 'Sensibilité aux Déclencheurs de Trauma';

  @override
  String get metric_78_description =>
      'Mesure la conscience des déclencheurs, des réponses au trauma et la manipulation prudente des sujets vulnérables.';

  @override
  String get metric_79_name => 'Indices d\'Hypervigilance';

  @override
  String get metric_79_description =>
      'Signale la recherche de danger, la surveillance excessive du ton, la peur des erreurs ou l\'alerte émotionnelle constante.';

  @override
  String get metric_80_name => 'Langage de Peur de l\'Abandon';

  @override
  String get metric_80_description =>
      'Détecte la peur d\'être laissé, remplacé, ignoré, rejeté ou abandonné émotionnellement.';

  @override
  String get metric_81_name => 'Motif de Recherche de Réassurance';

  @override
  String get metric_81_description =>
      'Suit les demandes répétées de preuve d\'amour, d\'engagement, de sécurité ou d\'intérêt continu.';

  @override
  String get metric_82_name => 'Cycle Poursuivant-Distant';

  @override
  String get metric_82_description =>
      'Identifie un partenaire qui intensifie la poursuite de proximité pendant que l\'autre augmente la distance.';

  @override
  String get metric_83_name => 'Accumulation de Ressentiment';

  @override
  String get metric_83_description =>
      'Recherche les griefs stockés, les références répétées au passé, l\'amertume et la dette émotionnelle non résolue.';

  @override
  String get metric_84_name => 'Comportement de Comptage de Points';

  @override
  String get metric_84_description =>
      'Signale le comptage transactionnel des fautes, des faveurs, des sacrifices ou des erreurs pour gagner un levier.';

  @override
  String get metric_85_name => 'Affection Conditionnelle';

  @override
  String get metric_85_description =>
      'Détecte l\'amour, l\'approbation, l\'accès ou la chaleur offerts uniquement lorsque la conformité est atteinte.';

  @override
  String get metric_86_name => 'Indicateurs de Love Bombing';

  @override
  String get metric_86_description =>
      'Signale l\'affection intense, les promesses, la pression ou l\'idéalisation utilisées pour accélérer l\'attachement ou le contrôle.';

  @override
  String get metric_87_name => 'Tentatives de Hoovering';

  @override
  String get metric_87_description =>
      'Identifie les tentatives de ramener quelqu\'un par la culpabilité, la nostalgie, les promesses, les crises ou l\'affection soudaine.';

  @override
  String get metric_88_name => 'Motif DARVO';

  @override
  String get metric_88_description =>
      'Détecte les réponses de nier, attaquer et inverser victime-auteur lorsqu\'on est confronté à un préjudice.';

  @override
  String get metric_89_name => 'Motif de Posture de Victime';

  @override
  String get metric_89_description =>
      'Signale l\'auto-victimisation récurrente qui évite la responsabilité ou redirige l\'attention du préjudice causé.';

  @override
  String get metric_90_name => 'Cadre de Supériorité Morale';

  @override
  String get metric_90_description =>
      'Recherche la droiture, les revendications de pureté ou la supériorité éthique utilisées pour dominer le conflit.';

  @override
  String get metric_91_name => 'Assassinat de Caractère';

  @override
  String get metric_91_description =>
      'Détecte des attaques larges sur l\'identité, l\'intégrité, la santé mentale ou la valeur plutôt que sur un comportement spécifique.';

  @override
  String get metric_92_name => 'Indicateurs de Triangulation';

  @override
  String get metric_92_description =>
      'Signale l\'introduction de tiers dans le conflit pour presser, comparer, valider ou déstabiliser le partenaire.';

  @override
  String get metric_93_name => 'Pression de Comparaison Sociale';

  @override
  String get metric_93_description =>
      'Recherche les comparaisons avec des ex, des amis, d\'autres couples ou des idéaux utilisés pour honte ou contraindre.';

  @override
  String get metric_94_name => 'Soutien de l\'Autonomie';

  @override
  String get metric_94_description =>
      'Mesure le respect des choix indépendants, des amitiés, des objectifs, des limites et de l\'agence personnelle.';

  @override
  String get metric_95_name => 'Respect du Consentement et du Choix';

  @override
  String get metric_95_description =>
      'Évalue si les décisions sont prises librement sans pression, culpabilité, menaces ou manipulation.';

  @override
  String get metric_96_name => 'Planification Collaborative';

  @override
  String get metric_96_description =>
      'Recherche la planification partagée, les décisions conjointes, les responsabilités coordonnées et le suivi pratique.';

  @override
  String get metric_97_name => 'Suivi de Réparation';

  @override
  String get metric_97_description =>
      'Mesure si les changements promis sont ensuite reflétés dans le comportement, pas seulement dans les mots.';

  @override
  String get metric_98_name => 'Preuve de Comportement Changé';

  @override
  String get metric_98_description =>
      'Vérifie les actions observables et répétées montrant l\'apprentissage, l\'ajustement ou le comportement nocif réduit.';

  @override
  String get metric_99_name => 'Langage de Sécurité Émotionnelle';

  @override
  String get metric_99_description =>
      'Identifie le langage qui invite à l\'honnêteté, réduit la peur, protège la dignité et rassure sur l\'expression sûre.';

  @override
  String get metric_100_name => 'Ambivalence Relationnelle';

  @override
  String get metric_100_description =>
      'Détecte l\'incertitude, l\'engagement mixte, les messages de tirer-pousser ou le désir peu clair de continuer.';

  @override
  String get unableToOpenConversations =>
      'Impossible d\'ouvrir les conversations';

  @override
  String get unableToOpenConversationsBody =>
      'Une erreur s\'est produite lors du chargement de vos conversations. Veuillez réessayer.';

  @override
  String get unableToLoadConversationsBody =>
      'Impossible de charger les conversations. Veuillez vérifier vos autorisations et réessayer.';

  @override
  String get errorLoadingConversationsBody =>
      'Erreur lors du chargement des conversations. Veuillez réessayer.';

  @override
  String get smsPermissionRequired => 'Permission SMS requise';

  @override
  String get smsPermissionRequiredBody =>
      'Pour analyser les conversations SMS, nous avons besoin de la permission de lire vos messages. Votre confidentialité est importante — les messages sont uniquement analysés localement et ne sont jamais stockés sur nos serveurs.';

  @override
  String get grantSmsPermission => 'Accorder la permission SMS';

  @override
  String get noSmsConversationsFound => 'Aucune conversation SMS trouvée';

  @override
  String get noConversationsMatchSearch =>
      'Aucune conversation ne correspond à votre recherche';

  @override
  String get noSmsMessagesOnDevice =>
      'Vous n\'avez pas de messages SMS sur cet appareil';

  @override
  String get tryDifferentSearch => 'Essayez un terme de recherche différent';

  @override
  String get clearSearch => 'Effacer la recherche';

  @override
  String selectedFile(String filename) {
    return 'Sélectionné: $filename';
  }

  @override
  String get invalidFile => 'Fichier invalide';

  @override
  String get fileImport => 'Importation de fichier';

  @override
  String get fileImportNotImplemented =>
      'L\'analyse de fichiers n\'est pas encore implémentée pour ce type de fichier.';

  @override
  String get errorPickingFile =>
      'Impossible d\'ouvrir le fichier. Veuillez réessayer.';

  @override
  String get readyToCapture => 'Prêt à capturer';

  @override
  String get readyToCaptureBody =>
      'Passez maintenant à l\'application Messages et commencez à prendre des captures d\'écran.\n\nRevenez à cette application lorsque vous avez terminé et appuyez sur \"Terminer et traiter\".';

  @override
  String get noScreenshotsToProcess => 'Aucune capture d\'écran à traiter.';

  @override
  String processingScreenshot(int current, int total) {
    return 'Traitement de la capture $current sur $total...';
  }

  @override
  String get noMessagesFound => 'Aucun message trouvé';

  @override
  String get noMessagesFoundBody =>
      'Impossible d\'extraire des messages des captures d\'écran.\n\nAssurez-vous que les captures d\'écran montrent clairement la conversation.';

  @override
  String loadedMessages(int count) {
    return '$count messages chargés depuis les captures d\'écran';
  }

  @override
  String get processingError => 'Erreur de traitement';

  @override
  String get processingErrorBody =>
      'Erreur lors du traitement des captures d\'écran. Veuillez réessayer.';

  @override
  String metricListSavedAs(String name) {
    return 'Vos sélections ont été sauvegardées sous \"$name\".';
  }

  @override
  String metricListLoadedName(String name) {
    return 'Les sélections \"$name\" ont été récupérées et appliquées.';
  }

  @override
  String conversationLoaded(int count, String name) {
    return '$count messages chargés depuis $name';
  }

  @override
  String get loadButton => 'Charger';

  @override
  String get photoPermissionRequired =>
      'L\'autorisation de la bibliothèque de photos est requise pour détecter les captures d\'écran.';

  @override
  String get initializingConnection =>
      'Initialisation de la connexion sécurisée...';

  @override
  String get configurationRequired => 'Configuration requise';

  @override
  String get goBack => 'Retour';

  @override
  String get enableDateRangeFiltering =>
      'Activer le filtrage par plage de dates';

  @override
  String get clearSelectedDateRange => 'Effacer la plage de dates sélectionnée';

  @override
  String get largeThreadNoticeTitle => 'AVIS À L\'UTILISATEUR';

  @override
  String get largeThreadNoticeBody =>
      'Lors du traitement de fils de discussion exceptionnellement volumineux, certains écrans de chargement de cette application pourraient dépasser une minute et demie.\n\nL\'application ne se bloque pas. Si vous voyez un indicateur de statut en rotation, l\'application est toujours en cours de chargement.\n\nVeuillez être patient dans ces cas, car le temps de chargement pourrait être plus long que d\'habitude par rapport à d\'autres applications, surtout pour un ensemble de données volumineux comme un fil avec 50 000 messages.';

  @override
  String get neverShowThisAgain => 'Ne plus afficher ce message';

  @override
  String loadingConversationWith(String name) {
    return 'Chargement de la conversation\navec $name…';
  }

  @override
  String get iosCaptureInstructions =>
      '1. Ouvrez l\'application Messages et sélectionnez la conversation\n2. Faites défiler jusqu\'au message le plus ancien que vous souhaitez analyser\n3. Appuyez sur \"Démarrer la capture\" ci-dessous\n4. Prenez des captures d\'écran tout en faisant défiler la conversation\n5. Une fois terminé, appuyez sur \"Terminer et traiter\"';

  @override
  String get howToCaptureIosMessages => 'Comment capturer les messages iOS';

  @override
  String get deepSeekApiKey => 'Clé API DeepSeek';

  @override
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis =>
      'Entrez votre clé API DeepSeek pour activer l\'analyse IA.';

  @override
  String get getYourApiKeyFrom =>
      'Obtenez votre clé API sur : https://platform.deepseek.com';

  @override
  String get apiKey => 'Clé API';

  @override
  String get skPlaceholder => 'sk-...';

  @override
  String get yourApiKeyIsStoredSecurely =>
      'Votre clé API est stockée en toute sécurité sur votre appareil et n\'est jamais partagée.';

  @override
  String get pleaseEnterApiKey => 'Veuillez entrer une clé API';

  @override
  String get apiKeySavedSuccessfully => 'Clé API enregistrée avec succès !';

  @override
  String get pleaseBePatientLongerTextThreads =>
      'Soyez patient, les ensembles de données de fils de texte plus longs prennent assez de temps à charger';

  @override
  String get almostThereBigOne =>
      'Presque terminé, Wow, celui-ci doit avoir été grand';

  @override
  String get pleaseBePatientLargeDatasets =>
      'Soyez patient, les grands ensembles de données pourraient entraîner des temps de charge supérieurs à une minute et demie';

  @override
  String continuingToLoadMassiveThread(String name) {
    return 'Continuant à charger le fil massif avec $name…';
  }

  @override
  String get noMessagesInDateRange =>
      'Aucun message trouvé dans la plage de dates sélectionnée. Veuillez sélectionner des dates différentes ou effacer le filtre de date.';

  @override
  String get purchaseCustomMetricTileTitle =>
      'Acheter une métrique personnalisée';

  @override
  String get purchaseCustomMetricTileDescription =>
      'Pour un paiement unique de \$4.99, saisissez un nom et une définition de métrique personnalisée enregistrés définitivement avec vos autres métriques pour toute analyse future. Achetez des métriques personnalisées illimitées.';

  @override
  String get purchaseCustomMetricConfirmTitle =>
      'Acheter une métrique personnalisée';

  @override
  String get purchaseCustomMetricConfirmBody =>
      'Vous serez facturé \$4.99 (paiement unique) pour déverrouiller un emplacement de métrique personnalisée.\n\nLe nom et la définition de votre métrique personnalisée sont permanents et ne pourront jamais être modifiés une fois enregistrés, alors choisissez avec soin.';

  @override
  String get purchaseCustomMetricConfirmButton => 'Acheter — \$4.99';

  @override
  String get purchaseCustomMetricEnterNameTitle =>
      'Nom de la métrique personnalisée';

  @override
  String get purchaseCustomMetricEnterNamePrompt =>
      'Entrez le nom de votre métrique personnalisée :';

  @override
  String get purchaseCustomMetricNameHint => 'Nom de la métrique';

  @override
  String get purchaseCustomMetricConfirmNameTitle =>
      'Confirmer le nom de la métrique';

  @override
  String get purchaseCustomMetricConfirmNameYouEntered =>
      'Vous avez saisi :\n\n';

  @override
  String get purchaseCustomMetricConfirmNameWarning =>
      '\n\n⚠️  C\'est DÉFINITIF et ne pourra JAMAIS être modifié.';

  @override
  String get purchaseCustomMetricReenterName => 'Oups — Re-saisir le nom';

  @override
  String get purchaseCustomMetricSaveName => 'OK — Enregistrer le nom';

  @override
  String purchaseCustomMetricDefineTitleWithName(String name) {
    return 'Définir : $name';
  }

  @override
  String purchaseCustomMetricDefinePromptWithName(String name) {
    return 'Saisissez la signification de votre métrique personnalisée : $name';
  }

  @override
  String get purchaseCustomMetricMeaningHint =>
      'Décrivez ce que cette métrique signifie, quels comportements elle recherche et comment elle s\'applique à la dynamique relationnelle...';

  @override
  String get purchaseCustomMetricReenter => 'Oups — Re-saisir';

  @override
  String get purchaseCustomMetricSaveMeaning =>
      'OK — Enregistrer la signification';

  @override
  String get purchaseCustomMetricPreviewTitle =>
      'Aperçu de votre métrique personnalisée';

  @override
  String get purchaseCustomMetricPreviewSubtitle =>
      'Voici à quoi ressemblera votre tuile :';

  @override
  String get purchaseCustomMetricLastChanceWarning =>
      '⚠️  C\'est votre DERNIÈRE CHANCE de changer d\'avis.\nUne fois engagé, le nom et la définition sont permanents.';

  @override
  String get purchaseCustomMetricCancelEverything => 'Tout annuler';

  @override
  String get purchaseCustomMetricCommit =>
      'S\'engager sur la métrique personnalisée';

  @override
  String purchaseCustomMetricSuccess(String name) {
    return '✓ \"$name\" ajouté à vos métriques ! Vous pouvez maintenant la sélectionner pour analyse.';
  }

  @override
  String get purchaseCustomMetricProcessingTitle => 'Traitement de l\'achat...';

  @override
  String get purchaseCustomMetricProcessingBody =>
      'En attente de confirmation du magasin.\nVeuillez ne pas fermer l\'application.';

  @override
  String get next => 'Suivant';

  @override
  String get cancelNotReady => 'Annuler — Je n\'étais pas prêt(e)';

  @override
  String get packGoodLabel => 'Le Bon';

  @override
  String get packBadLabel => 'La Brute';

  @override
  String get packUglyLabel => 'Le Truand';

  @override
  String get metric_good_1_name => 'Indices d\'écoute active';

  @override
  String get metric_good_1_description =>
      'Détecte la reformulation, les questions de clarification et la compréhension démontrée du point de vue du partenaire dans le texte.';

  @override
  String get metric_good_2_name => 'Expression d\'appréciation';

  @override
  String get metric_good_2_description =>
      'Identifie les expressions de gratitude spécifiques, la reconnaissance des efforts et l\'appréciation des qualités ou actions positives du partenaire.';

  @override
  String get metric_good_3_name => 'Langage d\'Affirmation';

  @override
  String get metric_good_3_description =>
      'Recherche les déclarations qui valident les sentiments, expériences, valeur ou droit aux besoins du partenaire.';

  @override
  String get metric_good_4_name => 'Ton collaboratif';

  @override
  String get metric_good_4_description =>
      'Mesure l\'utilisation du « nous », d\'un langage de résolution conjointe des problèmes, et la présentation des enjeux comme des défis à relever ensemble.';

  @override
  String get metric_good_5_name => 'Curiosité envers le partenaire';

  @override
  String get metric_good_5_description =>
      'Suit les questions sur les pensées, les sentiments, la journée, les préférences ou l\'expérience intérieure du partenaire.';

  @override
  String get metric_good_6_name => 'Expression de la vulnérabilité';

  @override
  String get metric_good_6_description =>
      'Identifie le partage des peurs, insécurités, besoins ou vérités émotionnelles sans défense ni blâme.';

  @override
  String get metric_good_7_name => 'Humour comme lien';

  @override
  String get metric_good_7_description =>
      'Détecte un rire partagé et ludique qui rapproche les partenaires, sans moquerie ni dénigrement.';

  @override
  String get metric_good_8_name => 'Offre de réassurance';

  @override
  String get metric_good_8_description =>
      'Recherche les déclarations proactives qui apportent réconfort, sécurité ou confiance au partenaire anxieux.';

  @override
  String get metric_good_9_name => 'Fréquence des Compliments';

  @override
  String get metric_good_9_description =>
      'Mesure les compliments spécifiques et sincères sur l\'apparence, le caractère, les capacités ou les actions positives.';

  @override
  String get metric_good_10_name => 'Disponibilité émotionnelle';

  @override
  String get metric_good_10_description =>
      'Évalue la réceptivité aux besoins émotionnels du partenaire, la présence en détresse et la volonté de s\'engager.';

  @override
  String get metric_good_11_name => 'Habitude de gratitude';

  @override
  String get metric_good_11_description =>
      'Identifie les expressions régulières de remerciements pour les petites choses, les efforts, la présence ou le soutien.';

  @override
  String get metric_good_12_name => 'Langage de soutien';

  @override
  String get metric_good_12_description =>
      'Suit les déclarations offrant de l\'aide, des encouragements, la croyance dans les capacités du partenaire ou le fait de se tenir à ses côtés.';

  @override
  String get metric_good_13_name => 'Désaccord doux';

  @override
  String get metric_good_13_description =>
      'Mesure la capacité à exprimer des opinions différentes tout en préservant le respect, la curiosité et la relation.';

  @override
  String get metric_good_14_name => 'Sincérité des excuses';

  @override
  String get metric_good_14_description =>
      'Détecte les remords sincères, la compréhension de l\'impact et l\'engagement à changer sans excuses.';

  @override
  String get metric_good_15_name => 'Acceptation du pardon';

  @override
  String get metric_good_15_description =>
      'Recherche la volonté de laisser aller les blessures passées, d\'avancer et de reconstruire la confiance après une réparation.';

  @override
  String get metric_good_16_name => 'Initiation de temps de qualité';

  @override
  String get metric_good_16_description =>
      'Identifie les offres de passer du temps concentré ensemble, de planifier des activités ou de créer des moments de connexion.';

  @override
  String get metric_good_17_name => 'Indices d\'affection physique';

  @override
  String get metric_good_17_description =>
      'Suit les mentions de toucher, câlins, baisers ou proximité physique comme expressions de soin et d\'intimité.';

  @override
  String get metric_good_18_name => 'Reconnaissance de la joie partagée';

  @override
  String get metric_good_18_description =>
      'Mesure la célébration des victoires, réalisations, bonheur ou bonnes nouvelles du partenaire avec un enthousiasme sincère.';

  @override
  String get metric_good_19_name => 'Effort de résolution de conflit';

  @override
  String get metric_good_19_description =>
      'Identifie les tentatives de trouver des solutions, de faire des compromis ou de rétablir la paix après un désaccord.';

  @override
  String get metric_good_20_name => 'Démonstration de patience';

  @override
  String get metric_good_20_description =>
      'Détecte la tolérance au rythme, aux difficultés, à la courbe d\'apprentissage ou aux besoins de traitement émotionnel du partenaire.';

  @override
  String get metric_good_21_name => 'Langage de prise de perspective';

  @override
  String get metric_good_21_description =>
      'Recherche des déclarations montrant la compréhension du point de vue, du contexte ou de la réalité émotionnelle du partenaire.';

  @override
  String get metric_good_22_name => 'Signaux de fiabilité';

  @override
  String get metric_good_22_description =>
      'Suit le respect des promesses, la constance et la fiabilité.';

  @override
  String get metric_good_23_name => 'Respect des différences';

  @override
  String get metric_good_23_description =>
      'Mesure l\'acceptation des traits uniques, des préférences, des opinions et des manières d\'être du partenaire.';

  @override
  String get metric_good_24_name => 'Ouverture aux retours';

  @override
  String get metric_good_24_description =>
      'Identifie la réceptivité aux préoccupations du partenaire, la volonté d\'entendre les critiques et le désir de s\'améliorer.';

  @override
  String get metric_good_25_name => 'Validation des émotions';

  @override
  String get metric_good_25_description =>
      'Détecte la reconnaissance que les sentiments du partenaire sont réels, compréhensibles et dignes d\'attention.';

  @override
  String get metric_good_26_name => 'Langage d\'encouragement';

  @override
  String get metric_good_26_description =>
      'Recherche des déclarations qui inspirent confiance, motivent l\'action ou soutiennent les objectifs du partenaire.';

  @override
  String get metric_good_27_name => 'Divulgation intime';

  @override
  String get metric_good_27_description =>
      'Identifie le partage de pensées personnelles, de rêves, de peurs ou de secrets qui approfondissent la connexion émotionnelle.';

  @override
  String get metric_good_28_name => 'Signaux d\'accordage';

  @override
  String get metric_good_28_description =>
      'Mesure la capacité à remarquer l\'humeur, les besoins ou la détresse du partenaire sans qu\'il soit nécessaire de les exprimer explicitement.';

  @override
  String get metric_good_29_name => 'Recadrage positif';

  @override
  String get metric_good_29_description =>
      'Détecte la recherche d\'aspects positifs, d\'opportunités de croissance ou d\'angles constructifs dans les situations difficiles.';

  @override
  String get metric_good_30_name => 'Langage d\'engagement';

  @override
  String get metric_good_30_description =>
      'Suit les expressions de dévouement, de vision à long terme et d\'investissement dans l\'avenir de la relation.';

  @override
  String get metric_good_31_name => 'Démonstration de flexibilité';

  @override
  String get metric_good_31_description =>
      'Identifie la volonté d\'adapter les plans, d\'ajuster les attentes ou de rencontrer le partenaire à mi-chemin.';

  @override
  String get metric_good_32_name => 'Langage protecteur';

  @override
  String get metric_good_32_description =>
      'Recherche les déclarations montrant que la sécurité, le bien-être et les intérêts du partenaire comptent profondément.';

  @override
  String get metric_good_33_name => 'Célébration des jalons';

  @override
  String get metric_good_33_description =>
      'Mesure la reconnaissance des anniversaires, des réalisations ou des moments significatifs partagés.';

  @override
  String get metric_good_34_name => 'Feedback constructif';

  @override
  String get metric_good_34_description =>
      'Détecte les suggestions d\'amélioration qui sont bienveillantes, spécifiques et axées sur la croissance.';

  @override
  String get metric_good_35_name => 'Présence dans l\'épreuve';

  @override
  String get metric_good_35_description =>
      'Identifie le maintien de l\'engagement lorsque le partenaire traverse des difficultés, un deuil ou des défis.';

  @override
  String get metric_good_36_name => 'Expression d\'admiration';

  @override
  String get metric_good_36_description =>
      'Suit le respect sincère pour le caractère, la force, l\'intelligence ou la résilience du partenaire.';

  @override
  String get metric_good_37_name => 'Indicateurs de Ludisme';

  @override
  String get metric_good_37_description =>
      'Recherche les taquineries légères, les blagues internes ou les interactions amusantes qui renforcent les liens.';

  @override
  String get metric_good_38_name => 'Miroir Empathique';

  @override
  String get metric_good_38_description =>
      'Mesure le fait de refléter les émotions du partenaire pour montrer compréhension et validation.';

  @override
  String get metric_good_39_name => 'Langage d\'Acceptation';

  @override
  String get metric_good_39_description =>
      'Détecte l\'acceptation du partenaire tel qu\'il est, y compris ses défauts, sans exiger de changement.';

  @override
  String get metric_good_40_name => 'Présence Soutenante';

  @override
  String get metric_good_40_description =>
      'Identifie la présence sans chercher à réparer, offrant du réconfort par l\'écoute et la compagnie.';

  @override
  String get metric_good_41_name => 'Intérêt Sincère';

  @override
  String get metric_good_41_description =>
      'Suit les questions de suivi et la mémorisation des détails sur la vie et les préoccupations du partenaire.';

  @override
  String get metric_good_42_name => 'Effort Réciproque';

  @override
  String get metric_good_42_description =>
      'Mesure la contribution égale des deux partenaires au travail émotionnel, à la planification et à l\'entretien de la relation.';

  @override
  String get metric_good_43_name => 'Langage de Pardon';

  @override
  String get metric_good_43_description =>
      'Recherche le lâcher-prise des rancunes, l\'offre de secondes chances et le choix de dépasser la blessure.';

  @override
  String get metric_good_44_name => 'Signes de Respect Mutuel';

  @override
  String get metric_good_44_description =>
      'Détecte le traitement du partenaire comme un égal, le respect de ses opinions et la valorisation de sa contribution.';

  @override
  String get metric_good_45_name => 'Honnêteté Émotionnelle';

  @override
  String get metric_good_45_description =>
      'Identifie l\'expression honnête des sentiments sans manipulation, exagération ou rétention stratégique.';

  @override
  String get metric_good_46_name => 'Écoute bienveillante';

  @override
  String get metric_good_46_description =>
      'Mesure la capacité à laisser le partenaire s\'exprimer pleinement sans l\'interrompre, le juger ou chercher immédiatement une solution.';

  @override
  String get metric_good_47_name => 'Surnoms affectueux';

  @override
  String get metric_good_47_description =>
      'Repère l\'utilisation de surnoms affectueux qui transmettent chaleur et connexion intime.';

  @override
  String get metric_good_48_name => 'Rire partagé';

  @override
  String get metric_good_48_description =>
      'Identifie les moments d\'humour et de joie partagés qui créent des liens positifs.';

  @override
  String get metric_good_49_name => 'Gestes attentionnés';

  @override
  String get metric_good_49_description =>
      'Recherche les petits gestes de gentillesse, le fait de se souvenir des préférences ou d\'agir pour faire plaisir au partenaire.';

  @override
  String get metric_good_50_name => 'Confiance dans le partenaire';

  @override
  String get metric_good_50_description =>
      'Détecte la croyance dans les capacités, le potentiel et la capacité du partenaire à relever les défis.';

  @override
  String get metric_good_51_name => 'Interdépendance saine';

  @override
  String get metric_good_51_description =>
      'Mesure l\'équilibre entre la proximité et l\'indépendance, en soutenant l\'autonomie de chacun.';

  @override
  String get metric_good_52_name => 'Désescalade des conflits';

  @override
  String get metric_good_52_description =>
      'Identifie un langage doux, des pauses ou des propositions de solution pour apaiser les discussions animées.';

  @override
  String get metric_good_53_name => 'Excuses sincères';

  @override
  String get metric_good_53_description =>
      'Repère la reconnaissance complète d\'une erreur sans minimisation, défense ou rejet de la faute.';

  @override
  String get metric_good_54_name => 'Offres de soutien émotionnel';

  @override
  String get metric_good_54_description =>
      'Recherche les vérifications proactives, les demandes sur l\'état du partenaire et les offres d\'aide.';

  @override
  String get metric_good_55_name => 'Limites respectueuses';

  @override
  String get metric_good_55_description =>
      'Mesure le respect des limites énoncées par le partenaire tout en maintenant ses propres limites saines.';

  @override
  String get metric_good_56_name => 'Anticipation positive';

  @override
  String get metric_good_56_description =>
      'Détecte l\'enthousiasme pour l\'avenir ensemble, la planification et l\'impatience de partager des expériences.';

  @override
  String get metric_good_57_name => 'Signes d\'attention';

  @override
  String get metric_good_57_description =>
      'Identifie la mémorisation des dates importantes, des préférences et des détails qui montrent que le partenaire compte.';

  @override
  String get metric_good_58_name => 'Encouragement à grandir';

  @override
  String get metric_good_58_description =>
      'Suit le soutien au développement personnel, à l\'apprentissage et à la poursuite des objectifs du partenaire.';

  @override
  String get metric_good_59_name => 'Langage tendre';

  @override
  String get metric_good_59_description =>
      'Recherche des choix de mots doux et attentionnés qui transmettent de la tendresse et de la chaleur émotionnelle.';

  @override
  String get metric_good_60_name => 'Responsabilité mutuelle';

  @override
  String get metric_good_60_description =>
      'Mesure la prise de responsabilité des deux partenaires pour leurs actions et leur impact.';

  @override
  String get metric_good_61_name => 'Célébration du partenaire';

  @override
  String get metric_good_61_description =>
      'Détecte l\'expression publique ou privée de fierté, de joie ou d\'admiration pour le partenaire.';

  @override
  String get metric_good_62_name => 'Affection constante';

  @override
  String get metric_good_62_description =>
      'Identifie les expressions régulières d\'amour qui ne fluctuent pas en fonction de la performance ou de la conformité.';

  @override
  String get metric_good_63_name => 'Accord émotionnel';

  @override
  String get metric_good_63_description =>
      'Suit la perception et la réponse aux changements subtils de l\'état émotionnel du partenaire.';

  @override
  String get metric_good_64_name => 'Prise de décision collaborative';

  @override
  String get metric_good_64_description =>
      'Mesure la discussion des options ensemble et la prise de décisions qui tiennent compte des besoins des deux partenaires.';

  @override
  String get metric_good_65_name => 'Réassurance sans exigence';

  @override
  String get metric_good_65_description =>
      'Recherche l\'offre de réconfort et de sécurité sans exiger que le partenaire le mérite.';

  @override
  String get metric_good_66_name => 'Connexion authentique';

  @override
  String get metric_good_66_description =>
      'Détecte la présence authentique, le partage réel et l\'abandon des faux-semblants dans les interactions.';

  @override
  String get metric_good_67_name => 'Encouragement mutuel';

  @override
  String get metric_good_67_description =>
      'Identifie les deux partenaires qui s\'encouragent mutuellement et célèbrent les efforts, pas seulement les résultats.';

  @override
  String get metric_good_68_name => 'Questionnement respectueux';

  @override
  String get metric_good_68_description =>
      'Suit le fait de demander le point de vue du partenaire avec une curiosité sincère plutôt qu\'un interrogatoire.';

  @override
  String get metric_good_69_name => 'Cohérence aimante';

  @override
  String get metric_good_69_description =>
      'Mesure le fait de se montrer de la même manière dans les bons moments et les moments difficiles, fiable dans l\'affection.';

  @override
  String get metric_good_70_name => 'Réciprocité émotionnelle';

  @override
  String get metric_good_70_description =>
      'Recherche les deux partenaires partageant leurs sentiments, besoins et vulnérabilités de manière équilibrée.';

  @override
  String get metric_good_71_name => 'Présence joyeuse';

  @override
  String get metric_good_71_description =>
      'Détecte le bonheur authentique en compagnie du partenaire et l\'enthousiasme pour le temps passé ensemble.';

  @override
  String get metric_good_72_name => 'Dialogue constructif';

  @override
  String get metric_good_72_description =>
      'Identifie les conversations qui tendent vers la compréhension plutôt que vers la victoire ou la preuve d\'avoir raison.';

  @override
  String get metric_good_73_name => 'Défense protectrice';

  @override
  String get metric_good_73_description =>
      'Mesure la défense du partenaire, sa protection et la priorisation de son bien-être.';

  @override
  String get metric_good_74_name => 'Communication consciente';

  @override
  String get metric_good_74_description =>
      'Évalue le choix réfléchi des mots, la considération de l\'impact avant de parler et la communication intentionnelle.';

  @override
  String get metric_good_75_name => 'Investissement relationnel';

  @override
  String get metric_good_75_description =>
      'Recherche le temps, l\'énergie et les ressources consacrés à nourrir la relation.';

  @override
  String get metric_good_76_name => 'Langage de base sécurisante';

  @override
  String get metric_good_76_description =>
      'Détecte l\'offre de stabilité, de sécurité et d\'une base à partir de laquelle le partenaire peut explorer.';

  @override
  String get metric_good_77_name => 'Admiration mutuelle';

  @override
  String get metric_good_77_description =>
      'Identifie les deux partenaires exprimant respect et appréciation pour les qualités de l\'autre.';

  @override
  String get metric_good_78_name => 'Moments tendres';

  @override
  String get metric_good_78_description =>
      'Mesure la création ou la reconnaissance de moments intimes et silencieux de connexion et de proximité.';

  @override
  String get metric_good_79_name => 'Curiosité sincère';

  @override
  String get metric_good_79_description =>
      'Recherche un intérêt authentique à comprendre les pensées, sentiments et expériences du partenaire.';

  @override
  String get metric_good_80_name => 'Acceptation aimante';

  @override
  String get metric_good_80_description =>
      'Détecte l\'acceptation de l\'être entier du partenaire, y compris ses imperfections et son passé.';

  @override
  String get metric_good_81_name => 'Soutien mutuel à la croissance';

  @override
  String get metric_good_81_description =>
      'Identifie les deux partenaires s\'encourageant mutuellement dans leur développement et célébrant les progrès.';

  @override
  String get metric_good_82_name => 'Indicateurs de ton chaleureux';

  @override
  String get metric_good_82_description =>
      'Suit l\'utilisation d\'un langage affectueux, de formulations aimables et d\'un style de communication doux.';

  @override
  String get metric_good_83_name => 'Engagement réactif';

  @override
  String get metric_good_83_description =>
      'Mesure les réponses rapides et engagées aux messages et aux sollicitations émotionnelles du partenaire.';

  @override
  String get metric_good_84_name => 'Alignement des valeurs partagées';

  @override
  String get metric_good_84_description =>
      'Recherche les références à des croyances, objectifs ou philosophies de vie communs qui unissent le couple.';

  @override
  String get metric_good_85_name => 'Soutien inconditionnel';

  @override
  String get metric_good_85_description =>
      'Détecte le fait de soutenir le partenaire dans les difficultés sans conditionner ce soutien.';

  @override
  String get metric_good_86_name => 'Vulnérabilité intime';

  @override
  String get metric_good_86_description =>
      'Identifie le partage de peurs profondes, de rêves ou d\'insécurités qui renforcent les liens émotionnels.';

  @override
  String get metric_good_87_name => 'Langage de respect mutuel';

  @override
  String get metric_good_87_description =>
      'Suit le respect des perspectives, choix et autonomie de chacun dans la communication.';

  @override
  String get metric_good_88_name => 'Cadrage positif';

  @override
  String get metric_good_88_description =>
      'Mesure la capacité à voir le meilleur dans les situations et chez le partenaire, en se concentrant sur les forces.';

  @override
  String get metric_good_89_name => 'Résolution collaborative de problèmes';

  @override
  String get metric_good_89_description =>
      'Recherche la collaboration vers des solutions qui profitent également aux deux partenaires.';

  @override
  String get metric_good_90_name => 'Validation émotionnelle';

  @override
  String get metric_good_90_description =>
      'Détecte la confirmation que les sentiments du partenaire sont compréhensibles et acceptables.';

  @override
  String get metric_good_91_name => 'Gentillesse Constante';

  @override
  String get metric_good_91_description =>
      'Identifie les petits gestes d\'attention réguliers qui montrent que le partenaire est pensé et valorisé.';

  @override
  String get metric_good_92_name => 'Célébration Mutuelle';

  @override
  String get metric_good_92_description =>
      'Mesure la joie authentique des deux partenaires face aux succès et aux bonheurs de l\'autre.';

  @override
  String get metric_good_93_name => 'Langage d\'Attachement Sécurisé';

  @override
  String get metric_good_93_description =>
      'Évalue l\'expression de la confiance, du confort avec l\'intimité et de la confiance dans la relation.';

  @override
  String get metric_good_94_name => 'Considération Réfléchie';

  @override
  String get metric_good_94_description =>
      'Recherche les décisions prises en tenant compte des besoins et des sentiments du partenaire.';

  @override
  String get metric_good_95_name => 'Présence Aimante';

  @override
  String get metric_good_95_description =>
      'Détecte une présence pleine et engagée, montrant au partenaire qu\'il est la priorité.';

  @override
  String get metric_good_96_name => 'Langage de Soin Authentique';

  @override
  String get metric_good_96_description =>
      'Mesure les expressions authentiques de préoccupation, d\'attention et d\'investissement dans le bien-être du partenaire.';

  @override
  String get metric_good_97_name => 'Engagement Relationnel';

  @override
  String get metric_good_97_description =>
      'Évalue l\'expression de l\'engagement envers le partenariat et la volonté de surmonter les défis.';

  @override
  String get metric_good_98_name => 'Expression d\'Amour Authentique';

  @override
  String get metric_good_98_description =>
      'Recherche des expressions d\'amour authentiques et constantes, qui semblent réelles et inconditionnelles.';

  @override
  String get metric_good_99_name => 'Définition d\'Objectifs Mutuels';

  @override
  String get metric_good_99_description =>
      'Identifie les partenaires qui définissent ensemble leurs rêves, priorités et orientations pour leur avenir commun.';

  @override
  String get metric_good_100_name =>
      'Reconnaissance des tentatives de réparation';

  @override
  String get metric_good_100_description =>
      'Détecte le fait de remarquer et de répondre positivement aux tentatives de rapprochement du partenaire pour désamorcer un conflit et rétablir la connexion.';

  @override
  String get metric_bad_1_name => 'Agressivité passive';

  @override
  String get metric_bad_1_description =>
      'Détecte l\'hostilité indirecte par la procrastination, l\'oubli, le sarcasme ou le sabotage subtil au lieu d\'une expression directe.';

  @override
  String get metric_bad_2_name => 'Instrumentalisation de la culpabilité';

  @override
  String get metric_bad_2_description =>
      'Identifie l\'utilisation de la culpabilité, de la honte ou d\'un langage d\'obligation pour manipuler les décisions ou empêcher la fixation de limites.';

  @override
  String get metric_bad_3_name => 'Chantage affectif';

  @override
  String get metric_bad_3_description =>
      'Signale les menaces d\'automutilation, d\'abandon ou de retrait d\'affection pour contrôler le comportement ou empêcher la discussion.';

  @override
  String get metric_bad_4_name => 'Plainte chronique';

  @override
  String get metric_bad_4_description =>
      'Suit une négativité persistante, des ruminations ou des plaintes sans recherche de solutions ou de changement collaboratif.';

  @override
  String get metric_bad_5_name => 'Honte par comparaison';

  @override
  String get metric_bad_5_description =>
      'Identifie les comparaisons défavorables avec les ex, amis ou famille pour faire honte ou contraindre un changement de comportement.';

  @override
  String get metric_bad_6_name => 'Écoute conditionnelle';

  @override
  String get metric_bad_6_description =>
      'Détecte une écoute uniquement lorsque cela profite à l\'auditeur ou sert son agenda plutôt qu\'une compréhension authentique.';

  @override
  String get metric_bad_7_name => 'Mémoire sélective';

  @override
  String get metric_bad_7_description =>
      'Suit l\'oubli opportun de promesses, d\'accords ou de comportements nuisibles passés pour éviter la responsabilité.';

  @override
  String get metric_bad_8_name => 'Recherche d\'attention par la crise';

  @override
  String get metric_bad_8_description =>
      'Identifie une escalade dramatique, la création de crises ou l\'exagération pour attirer l\'attention ou la sympathie.';

  @override
  String get metric_bad_9_name => 'Test des limites';

  @override
  String get metric_bad_9_description =>
      'Détecte des sondages ou pressions répétés sur les limites déclarées pour déterminer si elles seront appliquées.';

  @override
  String get metric_bad_10_name => 'Rétention d\'informations';

  @override
  String get metric_bad_10_description =>
      'Identifie l\'omission délibérée de faits, de contexte ou de transparence pour maintenir le contrôle.';

  @override
  String get metric_bad_11_name => 'Colère disproportionnée';

  @override
  String get metric_bad_11_description =>
      'Repère les réactions de colère nettement disproportionnées par rapport à l\'incident déclencheur.';

  @override
  String get metric_bad_12_name => 'Addiction à la réassurance';

  @override
  String get metric_bad_12_description =>
      'Signale un besoin constant de validation, des questions répétées sur l\'engagement ou une quête incessante de preuves d\'amour.';

  @override
  String get metric_bad_13_name => 'Évitement des conversations';

  @override
  String get metric_bad_13_description =>
      'Détecte le refus de s\'engager dans les préoccupations, les phrases d\'évitement ou la fermeture des discussions importantes.';

  @override
  String get metric_bad_14_name => 'Schéma de contradiction';

  @override
  String get metric_bad_14_description =>
      'Identifie des déclarations, promesses ou positions contradictoires qui créent confusion ou déstabilisation.';

  @override
  String get metric_bad_15_name => 'Invalidation par étiquetage';

  @override
  String get metric_bad_15_description =>
      'Signale le fait d\'étiqueter les préoccupations comme « folles », « dramatiques », « paranoïaques » ou « exagérées » pour les invalider.';

  @override
  String get metric_bad_16_name => 'Empathie sélective';

  @override
  String get metric_bad_16_description =>
      'Détecte l\'empathie offerte uniquement lorsque cela est pratique ou sert les intérêts de l\'orateur.';

  @override
  String get metric_bad_17_name => 'Cadrage transactionnel';

  @override
  String get metric_bad_17_description =>
      'Identifie les expressions comme « tu me dois », « après tout ce que j\'ai fait » ou le fait de considérer les actes relationnels comme créant une dette.';

  @override
  String get metric_bad_18_name => 'Recyclage des griefs';

  @override
  String get metric_bad_18_description =>
      'Repère le fait de ressasser d\'anciens griefs ou d\'utiliser des blessures passées comme munitions dans les conflits actuels.';

  @override
  String get metric_bad_19_name => 'Langage d\'exigence';

  @override
  String get metric_bad_19_description =>
      'Signale les impératifs, ordres ou ultimatums plutôt que les demandes ou la résolution collaborative de problèmes.';

  @override
  String get metric_bad_20_name => 'Indisponibilité émotionnelle';

  @override
  String get metric_bad_20_description =>
      'Détecte un refus constant de s\'engager émotionnellement, de partager ses sentiments ou d\'offrir du réconfort.';

  @override
  String get metric_bad_21_name => 'Interprétation hostile';

  @override
  String get metric_bad_21_description =>
      'Identifie le fait de prendre des déclarations neutres comme des attaques ou d\'interpréter des messages ambigus comme hostiles.';

  @override
  String get metric_bad_22_name => 'Cadrage de droit';

  @override
  String get metric_bad_22_description =>
      'Signale un langage suggérant que le locuteur mérite un traitement spécial, des exceptions ou une priorité.';

  @override
  String get metric_bad_23_name => 'Critique déguisée en aide';

  @override
  String get metric_bad_23_description =>
      'Détecte les critiques enveloppées dans un langage du type « j\'essaie juste d\'aider » ou « pour ton bien ».';

  @override
  String get metric_bad_24_name => 'Schémas de négligence';

  @override
  String get metric_bad_24_description =>
      'Identifie un échec constant à répondre aux besoins émotionnels, physiques ou relationnels.';

  @override
  String get metric_bad_25_name => 'Rumination conflictuelle';

  @override
  String get metric_bad_25_description =>
      'Suit le ressassement obsessionnel des conflits sans avancer vers une résolution ou une clôture.';

  @override
  String get metric_bad_26_name => 'Rejet de la sensibilité';

  @override
  String get metric_bad_26_description =>
      'Signale des déclarations comme « tu es trop sensible » ou « tu exagères » pour minimiser les sentiments.';

  @override
  String get metric_bad_27_name => 'Cadrage compétitif';

  @override
  String get metric_bad_27_description =>
      'Détecte le cadrage de la relation comme une compétition où un partenaire doit gagner ou dominer.';

  @override
  String get metric_bad_28_name => 'Deux poids, deux mesures';

  @override
  String get metric_bad_28_description =>
      'Identifie l\'application de règles différentes pour soi-même et pour le partenaire, ou la modification arbitraire des attentes.';

  @override
  String get metric_bad_29_name => 'Affection comme punition';

  @override
  String get metric_bad_29_description =>
      'Signale le retrait d\'affection, d\'attention ou de communication en représailles à des torts perçus.';

  @override
  String get metric_bad_30_name => 'Rotation du blâme';

  @override
  String get metric_bad_30_description =>
      'Suit la rotation du blâme entre le partenaire, les circonstances et les facteurs externes pour éviter la responsabilité.';

  @override
  String get metric_bad_31_name => 'Moquerie rhétorique';

  @override
  String get metric_bad_31_description =>
      'Détecte les questions rhétoriques ou sarcastiques utilisées pour se moquer plutôt que pour comprendre.';

  @override
  String get metric_bad_32_name => 'Rappels de sacrifices';

  @override
  String get metric_bad_32_description =>
      'Identifie le rappel au partenaire des sacrifices, faveurs ou soutiens pour créer une dette et une conformité.';

  @override
  String get metric_bad_33_name => 'Escalade délibérée';

  @override
  String get metric_bad_33_description =>
      'Signale l\'escalade délibérée de l\'intensité pour submerger la capacité du partenaire à répondre rationnellement.';

  @override
  String get metric_bad_34_name => 'Vulnérabilité stratégique';

  @override
  String get metric_bad_34_description =>
      'Détecte le partage d\'émotions uniquement lorsqu\'il sert des fins de manipulation ou de contrôle.';

  @override
  String get metric_bad_35_name => 'Détournement par contre-attaque';

  @override
  String get metric_bad_35_description =>
      'Identifie le détournement de l\'attention des préoccupations du partenaire en soulevant des problèmes non liés ou des contre-accusations.';

  @override
  String get metric_bad_36_name => 'Langage de supériorité';

  @override
  String get metric_bad_36_description =>
      'Signale un langage de supériorité, de condescendance ou le fait de présenter le partenaire comme inférieur.';

  @override
  String get metric_bad_37_name => 'Schéma de sortie de conflit';

  @override
  String get metric_bad_37_description =>
      'Détecte un schéma d\'abandon des conversations, de refus d\'engagement ou de création de distance pendant un conflit.';

  @override
  String get metric_bad_38_name => 'Biais négatif';

  @override
  String get metric_bad_38_description =>
      'Identifie l\'interprétation systématique d\'actions neutres ou positives comme négatives ou suspectes.';

  @override
  String get metric_bad_39_name => 'Déni d\'agence';

  @override
  String get metric_bad_39_description =>
      'Repère les expressions comme « je dois », « tu me fais » ou tout langage retirant l\'agence personnelle du locuteur.';

  @override
  String get metric_bad_40_name => 'Silence comme contrôle';

  @override
  String get metric_bad_40_description =>
      'Repère l\'utilisation du silence ou de la non-réponse comme forme de punition ou de contrôle.';

  @override
  String get metric_bad_41_name => 'Hypocrisie de la vie privée';

  @override
  String get metric_bad_41_description =>
      'Détecte le refus de partager des informations tout en exigeant la transparence du partenaire.';

  @override
  String get metric_bad_42_name => 'Retour critique non sollicité';

  @override
  String get metric_bad_42_description =>
      'Identifie des critiques sévères présentées comme « constructives » ou « utiles » sans consentement.';

  @override
  String get metric_bad_43_name => 'Soin conditionnel';

  @override
  String get metric_bad_43_description =>
      'Signale un soutien offert uniquement lorsque le partenaire se conforme aux attentes du locuteur.';

  @override
  String get metric_bad_44_name => 'Déni d\'impact';

  @override
  String get metric_bad_44_description =>
      'Détecte les phrases comme « je ne le pensais pas comme ça » ou « tu interprètes trop » après avoir causé un préjudice.';

  @override
  String get metric_bad_45_name => 'Mentalité de dette';

  @override
  String get metric_bad_45_description =>
      'Identifie le fait de rappeler une aide ou un soutien passé pour créer une dette et contrôler le comportement actuel.';

  @override
  String get metric_bad_46_name => 'Évitement de responsabilité';

  @override
  String get metric_bad_46_description =>
      'Signale un schéma constant de non-responsabilité quant à l\'impact des actions.';

  @override
  String get metric_bad_47_name => 'Rejet des besoins';

  @override
  String get metric_bad_47_description =>
      'Identifie le traitement des besoins du partenaire comme gênants, déraisonnables ou sans importance.';

  @override
  String get metric_bad_48_name => 'Manipulation émotionnelle';

  @override
  String get metric_bad_48_description =>
      'Signale l\'utilisation stratégique des émotions pour contrôler les résultats ou éviter la responsabilité.';

  @override
  String get metric_bad_49_name => 'Évitement de l\'intimité';

  @override
  String get metric_bad_49_description =>
      'Suit un retrait constant de la proximité émotionnelle ou physique sans explication.';

  @override
  String get metric_bad_50_name => 'Critique voilée';

  @override
  String get metric_bad_50_description =>
      'Identifie les critiques déguisées en blagues, observations ou commentaires anodins.';

  @override
  String get metric_bad_51_name => 'Minimisation des préoccupations';

  @override
  String get metric_bad_51_description =>
      'Signale la réduction des préoccupations du partenaire à l\'insignifiance ou à l\'exagération.';

  @override
  String get metric_bad_52_name => 'Imposition par la culpabilité';

  @override
  String get metric_bad_52_description =>
      'Identifie l\'utilisation de la culpabilité ou de la honte pour assurer la conformité du partenaire aux attentes.';

  @override
  String get metric_bad_53_name => 'Résistance aux excuses';

  @override
  String get metric_bad_53_description =>
      'Suit la résistance à s\'excuser, à minimiser le préjudice ou à refuser de reconnaître l\'impact.';

  @override
  String get metric_bad_54_name => 'Rejet de perspective';

  @override
  String get metric_bad_54_description =>
      'Signale le refus de considérer ou de valider le point de vue ou l\'expérience du partenaire.';

  @override
  String get metric_bad_55_name => 'Rationnement émotionnel';

  @override
  String get metric_bad_55_description =>
      'Détecte la limitation délibérée de l\'expression émotionnelle ou de la connexion comme forme de contrôle.';

  @override
  String get metric_bad_56_name => 'Manipulation par obligation';

  @override
  String get metric_bad_56_description =>
      'Signale l\'utilisation du soutien ou du sacrifice passé pour manipuler les décisions actuelles.';

  @override
  String get metric_bad_57_name => 'Résistance à l\'évolution';

  @override
  String get metric_bad_57_description =>
      'Suit la résistance à modifier un comportement nuisible malgré les demandes ou l\'impact démontré.';

  @override
  String get metric_bad_58_name => 'Déni du préjudice';

  @override
  String get metric_bad_58_description =>
      'Détecte le refus de reconnaître ou de prendre au sérieux l\'impact de son propre comportement.';

  @override
  String get metric_bad_59_name => 'Questions piégées';

  @override
  String get metric_bad_59_description =>
      'Signale une intention critique déguisée en questions innocentes ou en expressions de curiosité.';

  @override
  String get metric_bad_60_name => 'Ton méprisant';

  @override
  String get metric_bad_60_description =>
      'Identifie une attitude dédaigneuse ou du mépris véhiculé par les schémas textuels et le choix des mots.';

  @override
  String get metric_bad_61_name => 'Cycle de culpabilisation';

  @override
  String get metric_bad_61_description =>
      'Détecte l\'utilisation répétée de la culpabilité liée au soutien ou au sacrifice passé pour contrôler le comportement actuel.';

  @override
  String get metric_bad_62_name => 'Réserve émotionnelle';

  @override
  String get metric_bad_62_description =>
      'Suit le refus de partager ses émotions, peurs ou besoins avec son partenaire comme une rétention protectrice.';

  @override
  String get metric_bad_63_name => 'Négociation des limites';

  @override
  String get metric_bad_63_description =>
      'Signale le traitement des limites énoncées comme des suggestions ou des éléments négociables plutôt que des engagements fermes.';

  @override
  String get metric_bad_64_name => 'Absence émotionnelle';

  @override
  String get metric_bad_64_description =>
      'Détecte un refus constant d\'offrir un soutien émotionnel ou une présence engagée.';

  @override
  String get metric_bad_65_name => 'Comptabilité des faveurs';

  @override
  String get metric_bad_65_description =>
      'Signale le fait de garder un score mental des faveurs, du soutien ou des sacrifices pour les utiliser plus tard.';

  @override
  String get metric_bad_66_name => 'Évitement de l\'honnêteté';

  @override
  String get metric_bad_66_description =>
      'Détecte un schéma de rétention de la vérité, d\'omission de faits ou de flou délibéré.';

  @override
  String get metric_bad_67_name => 'Déni de validité';

  @override
  String get metric_bad_67_description =>
      'Identifie le traitement des sentiments, besoins ou préoccupations du partenaire comme invalides ou illégitimes.';

  @override
  String get metric_bad_68_name => 'Critique déguisée en conseil';

  @override
  String get metric_bad_68_description =>
      'Signale les critiques présentées comme de l\'inquiétude, des conseils ou une observation utile.';

  @override
  String get metric_bad_69_name => 'Indicateurs de supériorité';

  @override
  String get metric_bad_69_description =>
      'Détecte la supériorité, la moquerie ou le mépris dans le langage ou le style de communication.';

  @override
  String get metric_bad_70_name => 'Résistance à la réparation';

  @override
  String get metric_bad_70_description =>
      'Suit la résistance à faire amende honorable, à renouer ou à reconstruire après un conflit.';

  @override
  String get metric_bad_71_name => 'Rejet des efforts';

  @override
  String get metric_bad_71_description =>
      'Signale la minimisation ou l\'ignorance des tentatives du partenaire de s\'améliorer ou de résoudre les problèmes.';

  @override
  String get metric_bad_72_name => 'Schéma de distance émotionnelle';

  @override
  String get metric_bad_72_description =>
      'Détecte un schéma à long terme de distance émotionnelle ou de refus d\'engagement authentique.';

  @override
  String get metric_bad_73_name => 'Cadrage d\'infériorité';

  @override
  String get metric_bad_73_description =>
      'Identifie le fait de présenter le partenaire comme inférieur, imparfait ou indigne de respect total.';

  @override
  String get metric_bad_74_name => 'Résistance aux retours';

  @override
  String get metric_bad_74_description =>
      'Détecte la résistance à entendre les critiques, le refus d\'écouter ou l\'arrêt de la discussion.';

  @override
  String get metric_bad_75_name => 'Rejet des inquiétudes';

  @override
  String get metric_bad_75_description =>
      'Identifie le fait de traiter les inquiétudes ou les peurs du partenaire comme infondées ou irrationnelles.';

  @override
  String get metric_bad_76_name => 'Recherche de défauts';

  @override
  String get metric_bad_76_description =>
      'Signale un schéma chronique de recherche de défauts, de plaintes ou d\'attaques du caractère du partenaire.';

  @override
  String get metric_bad_77_name => 'Cycle de culpabilité par sacrifice';

  @override
  String get metric_bad_77_description =>
      'Identifie le fait de rappeler constamment le soutien passé pour créer de la culpabilité ou contrôler le comportement.';

  @override
  String get metric_bad_78_name => 'Ambiguïté d\'engagement';

  @override
  String get metric_bad_78_description =>
      'Suit un langage d\'engagement flou ou hésitant, des signaux contradictoires ou une réticence à s\'engager.';

  @override
  String get metric_bad_79_name => 'Rejet de demande';

  @override
  String get metric_bad_79_description =>
      'Signale le fait d\'ignorer, de refuser ou de retarder la réponse aux demandes raisonnables du partenaire.';

  @override
  String get metric_bad_80_name => 'Tactiques de contrôle émotionnel';

  @override
  String get metric_bad_80_description =>
      'Détecte l\'utilisation stratégique des émotions pour contrôler les résultats ou empêcher la responsabilisation.';

  @override
  String get metric_bad_81_name => 'Mentalité d\'échange';

  @override
  String get metric_bad_81_description =>
      'Signale le fait de voir la relation à travers le prisme de la dette, de l\'obligation ou de l\'échange transactionnel.';

  @override
  String get metric_bad_82_name => 'Résistance au développement personnel';

  @override
  String get metric_bad_82_description =>
      'Détecte une résistance au développement personnel, à l\'apprentissage ou au changement de schémas nuisibles.';

  @override
  String get metric_bad_83_name => 'Rejet de l\'amélioration';

  @override
  String get metric_bad_83_description =>
      'Identifie la minimisation ou le rejet des efforts du partenaire pour s\'améliorer ou résoudre des problèmes.';

  @override
  String get metric_bad_84_name => 'Critique chronique';

  @override
  String get metric_bad_84_description =>
      'Signale un schéma chronique de critique enveloppée dans un langage de préoccupation, d\'aide ou d\'attention.';

  @override
  String get metric_bad_85_name => 'Évitement des solutions';

  @override
  String get metric_bad_85_description =>
      'Détecte un schéma constant d\'évitement de la clôture, de l\'avancement ou de la recherche de solutions réalisables.';

  @override
  String get metric_bad_86_name => 'Déviation de la responsabilité';

  @override
  String get metric_bad_86_description =>
      'Signale un schéma habituel de redirection de la responsabilité vers des facteurs externes ou le partenaire.';

  @override
  String get metric_bad_87_name => 'Réponses dédaigneuses';

  @override
  String get metric_bad_87_description =>
      'Identifie un schéma de rejet des contributions, idées ou suggestions du partenaire sans considération.';

  @override
  String get metric_bad_88_name => 'Expression de ressentiment';

  @override
  String get metric_bad_88_description =>
      'Détecte un ton de ressentiment, d\'amertume ou de frustration de longue date dans la communication.';

  @override
  String get metric_bad_89_name => 'Messages ambivalents';

  @override
  String get metric_bad_89_description =>
      'Signale des messages ambigus sur l\'engagement, un désir peu clair de continuer ou des dynamiques de poussée-traction.';

  @override
  String get metric_bad_90_name => 'Changement d\'attentes';

  @override
  String get metric_bad_90_description =>
      'Identifie le changement d\'attentes sans communication, puis le blâme du partenaire pour ne pas les avoir satisfaites.';

  @override
  String get metric_bad_91_name => 'Habitude de déviation';

  @override
  String get metric_bad_91_description =>
      'Détecte l\'évitement habituel des réponses directes ou la redirection des conversations loin de la responsabilité.';

  @override
  String get metric_bad_92_name => 'Manipulation par la gentillesse';

  @override
  String get metric_bad_92_description =>
      'Signale une générosité exagérée utilisée stratégiquement pour créer une obligation ou abaisser les défenses.';

  @override
  String get metric_bad_93_name => 'Retards chroniques';

  @override
  String get metric_bad_93_description =>
      'Identifie un mépris constant du temps du partenaire par des retards ou des engagements non tenus.';

  @override
  String get metric_bad_94_name => 'Minimisation des progrès';

  @override
  String get metric_bad_94_description =>
      'Suit le fait de minimiser ou de ne pas reconnaître la croissance personnelle ou les améliorations du partenaire.';

  @override
  String get metric_bad_95_name => 'Armement émotionnel';

  @override
  String get metric_bad_95_description =>
      'Détecte l\'utilisation des vulnérabilités ou peurs révélées du partenaire contre lui lors de conflits.';

  @override
  String get metric_bad_96_name => 'Tactiques proches du gaslighting';

  @override
  String get metric_bad_96_description =>
      'Identifie des tactiques subtiles de distorsion de la réalité qui créent un doute de soi sans gaslighting complet.';

  @override
  String get metric_bad_97_name => 'Mur de pierre passif';

  @override
  String get metric_bad_97_description =>
      'Signale un désengagement subtil, des réponses monosyllabiques ou une présence absente comme évitement.';

  @override
  String get metric_bad_98_name => 'Contrôle narratif';

  @override
  String get metric_bad_98_description =>
      'Détecte l\'insistance à être la seule autorité sur ce qui s\'est passé, comment cela s\'est ressenti ou ce qui a été signifié.';

  @override
  String get metric_bad_99_name => 'Déviation de responsabilité';

  @override
  String get metric_bad_99_description =>
      'Suit la redirection constante de la responsabilité vers des facteurs externes, des tiers ou le comportement du partenaire.';

  @override
  String get metric_bad_100_name => 'Indisponibilité émotionnelle';

  @override
  String get metric_bad_100_description =>
      'Signale un retrait chronique de l\'intimité émotionnelle, de la vulnérabilité ou d\'une connexion significative lorsque le partenaire a besoin de proximité.';

  @override
  String get metric_ugly_1_name => 'Menaces de violence physique';

  @override
  String get metric_ugly_1_description =>
      'Détecte les menaces explicites ou voilées de frapper, de blesser ou d\'agresser physiquement le partenaire.';

  @override
  String get metric_ugly_2_name => 'Références à la possession d\'armes';

  @override
  String get metric_ugly_2_description =>
      'Signale les mentions d\'armes à feu, de couteaux ou d\'armes dans un contexte de colère, de contrôle ou de capacité à nuire.';

  @override
  String get metric_ugly_3_name => 'Indicateurs de strangulation';

  @override
  String get metric_ugly_3_description =>
      'Identifie les mentions ou références à l\'étranglement, à la prise à la gorge, à la suffocation ou à l\'asphyxie.';

  @override
  String get metric_ugly_4_name =>
      'Instrumentalisation de la menace suicidaire';

  @override
  String get metric_ugly_4_description =>
      'Détecte les menaces d\'automutilation utilisées pour contrôler, manipuler ou punir le partenaire.';

  @override
  String get metric_ugly_5_name => 'Langage d\'idéation homicide';

  @override
  String get metric_ugly_5_description =>
      'Signale des déclarations exprimant l\'intention, la planification ou le désir de tuer le partenaire.';

  @override
  String get metric_ugly_6_name => 'Schémas de risque de létalité';

  @override
  String get metric_ugly_6_description =>
      'Identifie les signes de danger de létalité élevée : accès aux armes, obsession, escalade et menaces de séparation combinés.';

  @override
  String get metric_ugly_7_name => 'Langage d\'obsession de harcèlement';

  @override
  String get metric_ugly_7_description =>
      'Détecte la surveillance obsessionnelle de la localisation, le suivi, les visites surprises ou la poursuite persistante non désirée.';

  @override
  String get metric_ugly_8_name => 'Application de l\'isolement forcé';

  @override
  String get metric_ugly_8_description =>
      'Signale les demandes agressives de couper tout contact avec la famille, les amis, le travail ou l\'extérieur.';

  @override
  String get metric_ugly_9_name => 'Sabotage Économique';

  @override
  String get metric_ugly_9_description =>
      'Identifie la destruction délibérée de l\'emploi, du crédit, des finances ou de la stabilité économique.';

  @override
  String get metric_ugly_10_name => 'Coercition Reproductive';

  @override
  String get metric_ugly_10_description =>
      'Détecte la grossesse forcée, la pression à l\'avortement, la falsification de la contraception ou le contrôle reproductif.';

  @override
  String get metric_ugly_11_name => 'Pression de Coercition Sexuelle';

  @override
  String get metric_ugly_11_description =>
      'Signale les rapports sexuels forcés, les actes sexuels contraints, la pression après un refus ou le langage de punition sexuelle.';

  @override
  String get metric_ugly_12_name => 'Langage Sexuel Non Consenti';

  @override
  String get metric_ugly_12_description =>
      'Identifie les menaces ou descriptions explicites ou implicites d\'agression sexuelle non consentie.';

  @override
  String get metric_ugly_13_name => 'Menaces de Préjudice à l\'Enfant';

  @override
  String get metric_ugly_13_description =>
      'Détecte les menaces de nuire, négliger ou abuser des enfants comme levier ou punition contre le partenaire.';

  @override
  String get metric_ugly_14_name => 'Armement de la Garde d\'Enfants';

  @override
  String get metric_ugly_14_description =>
      'Signale les menaces d\'emmener les enfants, de refuser l\'accès ou d\'utiliser la garde comme mécanisme de contrôle.';

  @override
  String get metric_ugly_15_name => 'Menaces de Préjudice aux Animaux';

  @override
  String get metric_ugly_15_description =>
      'Identifie les menaces de blesser, tuer ou abuser des animaux de compagnie comme punition ou pour démontrer le contrôle.';

  @override
  String get metric_ugly_16_name => 'Tactiques de Privation de Sommeil';

  @override
  String get metric_ugly_16_description =>
      'Signale la privation délibérée de sommeil, l\'interruption constante ou l\'épuisement comme méthode de contrôle.';

  @override
  String get metric_ugly_17_name => 'Langage de Confinement';

  @override
  String get metric_ugly_17_description =>
      'Signale l\'enfermement, l\'empêchement de partir ou la confinement du partenaire dans un lieu.';

  @override
  String get metric_ugly_18_name => 'Langage de Manipulation Prédatrice';

  @override
  String get metric_ugly_18_description =>
      'Signale la manipulation systématique pour abaisser les défenses, construire une fausse confiance, puis exploiter le partenaire.';

  @override
  String get metric_ugly_19_name => 'Langage de déshumanisation';

  @override
  String get metric_ugly_19_description =>
      'Détecte la description du partenaire comme un animal, un objet, un sous-humain ou indigne de droits fondamentaux.';

  @override
  String get metric_ugly_20_name => 'Escalade de rage narcissique';

  @override
  String get metric_ugly_20_description =>
      'Détecte une colère explosive déclenchée par des offenses perçues, des critiques ou toute perte de contrôle.';

  @override
  String get metric_ugly_21_name =>
      'Revendications de possession obsessionnelle';

  @override
  String get metric_ugly_21_description =>
      'Signale un langage revendiquant la propriété, des droits de possession ou un contrôle total sur la personne du partenaire.';

  @override
  String get metric_ugly_22_name => 'Schémas de mensonge pathologique';

  @override
  String get metric_ugly_22_description =>
      'Identifie des mensonges cohérents, élaborés ou inutiles sur des sujets graves sans raison apparente.';

  @override
  String get metric_ugly_23_name => 'Langage de fantasme de vengeance';

  @override
  String get metric_ugly_23_description =>
      'Identifie des fantasmes détaillés sur le fait de nuire, d\'humilier ou de détruire le partenaire.';

  @override
  String get metric_ugly_24_name => 'Fixation obsessionnelle sur la trahison';

  @override
  String get metric_ugly_24_description =>
      'Détecte une rumination obsessionnelle, des accusations et des punitions centrées sur une infidélité perçue.';

  @override
  String get metric_ugly_25_name => 'Agressivité de panique d\'abandon';

  @override
  String get metric_ugly_25_description =>
      'Signale des réponses violentes ou agressives à un abandon perçu ou à toute tentative de séparation.';

  @override
  String get metric_ugly_26_name => 'Escalade de menace de séparation';

  @override
  String get metric_ugly_26_description =>
      'Identifie des menaces extrêmes ou des comportements dangereux déclenchés par des tentatives de rupture ou de séparation.';

  @override
  String get metric_ugly_27_name => 'Menaces de harcèlement post-séparation';

  @override
  String get metric_ugly_27_description =>
      'Signale des menaces de harcèlement, de préjudice ou de contact forcé après la fin de la relation.';

  @override
  String get metric_ugly_28_name => 'Menaces d\'enlèvement parental';

  @override
  String get metric_ugly_28_description =>
      'Identifie les menaces d\'emmener les enfants et de fuir ou de les cacher définitivement à l\'autre parent.';

  @override
  String get metric_ugly_29_name => 'Programme d\'aliénation parentale';

  @override
  String get metric_ugly_29_description =>
      'Signale les tentatives systématiques de retourner les enfants contre l\'autre parent par la manipulation.';

  @override
  String get metric_ugly_30_name => 'Indifférence face aux témoins enfants';

  @override
  String get metric_ugly_30_description =>
      'Identifie le mépris du fait que les enfants soient témoins de maltraitance, de conflits ou de préjudices émotionnels.';

  @override
  String get metric_ugly_31_name => 'Langage de traite des êtres humains';

  @override
  String get metric_ugly_31_description =>
      'Identifie un langage suggérant la vente, l\'échange ou l\'exploitation sexuelle du partenaire.';

  @override
  String get metric_ugly_32_name => 'Langage d\'esclavage';

  @override
  String get metric_ugly_32_description =>
      'Identifie un langage traitant le partenaire comme une propriété, un esclave ou une personne sans droits.';

  @override
  String get metric_ugly_33_name => 'Menaces de servitude pour dettes';

  @override
  String get metric_ugly_33_description =>
      'Détecte les menaces de piéger le partenaire par des dettes fabriquées ou des obligations financières.';

  @override
  String get metric_ugly_34_name => 'Exigences de travail forcé';

  @override
  String get metric_ugly_34_description =>
      'Signale les demandes de travail non rémunéré, de servitude ou de travail sous menace de préjudice ou de punition.';

  @override
  String get metric_ugly_35_name => 'Normalisation de l\'exploitation';

  @override
  String get metric_ugly_35_description =>
      'Identifie la présentation d\'une exploitation grave comme normale, méritée, consensuelle ou même bénéfique.';

  @override
  String get metric_ugly_36_name => 'Ciblage de la vulnérabilité';

  @override
  String get metric_ugly_36_description =>
      'Identifie le ciblage délibéré de personnes isolées, économiquement dépendantes ou psychologiquement vulnérables.';

  @override
  String get metric_ugly_37_name => 'Ingénierie du lien traumatique';

  @override
  String get metric_ugly_37_description =>
      'Détecte la création délibérée de cycles peur-soulagement conçus pour créer une dépendance émotionnelle profonde.';

  @override
  String get metric_ugly_38_name => 'Abus par renforcement intermittent';

  @override
  String get metric_ugly_38_description =>
      'Signale des cycles imprévisibles de récompense et de punition sévère utilisés pour créer une dépendance psychologique.';

  @override
  String get metric_ugly_39_name => 'Induction d\'impuissance apprise';

  @override
  String get metric_ugly_39_description =>
      'Identifie le retrait systématique de l\'autonomie, des ressources et des options de fuite perçues.';

  @override
  String get metric_ugly_40_name => 'Langage d\'effacement identitaire';

  @override
  String get metric_ugly_40_description =>
      'Signale les demandes d\'abandon de la personnalité, des intérêts, de l\'apparence ou du noyau identitaire.';

  @override
  String get metric_ugly_41_name => 'Annihilation de l\'autonomie';

  @override
  String get metric_ugly_41_description =>
      'Détecte l\'élimination systématique de la pensée indépendante, de la prise de décision ou de l\'autonomie personnelle.';

  @override
  String get metric_ugly_42_name => 'Tactiques de contrôle de la pensée';

  @override
  String get metric_ugly_42_description =>
      'Signale les demandes de penser, croire ou ressentir uniquement selon les directives du partenaire contrôlant.';

  @override
  String get metric_ugly_43_name =>
      'Imposition de l\'engourdissement émotionnel';

  @override
  String get metric_ugly_43_description =>
      'Identifie la punition pour avoir montré des émotions ou les demandes explicites de supprimer tous les sentiments.';

  @override
  String get metric_ugly_44_name => 'Création de traumatisme complexe';

  @override
  String get metric_ugly_44_description =>
      'Signale des schémas systématiques créant un traumatisme de niveau ESPT complexe par abus chronique.';

  @override
  String get metric_ugly_45_name => 'Infliction de traumatisme par trahison';

  @override
  String get metric_ugly_45_description =>
      'Identifie une trahison délibérée conçue pour briser la confiance fondamentale et la sécurité psychologique.';

  @override
  String get metric_ugly_46_name => 'Langage de blessure morale';

  @override
  String get metric_ugly_46_description =>
      'Détecte le fait de forcer le partenaire à violer ses valeurs profondes ou à commettre des actes nuisibles.';

  @override
  String get metric_ugly_47_name => 'Langage de menace existentielle';

  @override
  String get metric_ugly_47_description =>
      'Signale les menaces à l\'existence, à l\'identité fondamentale, à la santé mentale ou à la volonté de vivre du partenaire.';

  @override
  String get metric_ugly_48_name => 'Langage de coercition suicidaire';

  @override
  String get metric_ugly_48_description =>
      'Identifie la poussée du partenaire vers des idées suicidaires par un abus soutenu et un désespoir fabriqué.';

  @override
  String get metric_ugly_49_name => 'Mythologie de justification';

  @override
  String get metric_ugly_49_description =>
      'Identifie des récits élaborés inventés pour justifier l\'abus comme nécessaire, mérité ou juste.';

  @override
  String get metric_ugly_50_name => 'Inversion du récit victimaire';

  @override
  String get metric_ugly_50_description =>
      'Détecte un renversement complet où l\'agresseur prétend être la véritable victime de son propre abus.';

  @override
  String get metric_ugly_51_name => 'Prêche de normalisation de l\'abus';

  @override
  String get metric_ugly_51_description =>
      'Signale le fait d\'enseigner ou d\'insister sur le fait que l\'abus est normal, sain ou bénéfique pour le partenaire.';

  @override
  String get metric_ugly_52_name => 'Idéologie prédatrice';

  @override
  String get metric_ugly_52_description =>
      'Identifie une justification idéologique pour l\'exploitation, la domination ou le préjudice envers le partenaire.';

  @override
  String get metric_ugly_53_name => 'Discours de chef de secte';

  @override
  String get metric_ugly_53_description =>
      'Détecte les messages revendiquant un savoir spécial, un droit divin ou une autorité supérieure sur le partenaire.';

  @override
  String get metric_ugly_54_name => 'Langage de chronologie d\'emprise';

  @override
  String get metric_ugly_54_description =>
      'Signale les références à un plan de manipulation à long terme ou des descriptions d\'une progression de l\'emprise.';

  @override
  String get metric_ugly_55_name => 'Campagne d\'humiliation chronique';

  @override
  String get metric_ugly_55_description =>
      'Identifie un schéma soutenu d\'humiliation publique ou privée visant à détruire l\'estime de soi.';

  @override
  String get metric_ugly_56_name => 'Blocage des issues de sécurité';

  @override
  String get metric_ugly_56_description =>
      'Détecte le fait d\'empêcher activement le partenaire d\'accéder aux voies de fuite, aux systèmes de soutien ou aux ressources de sécurité.';

  @override
  String get metric_ugly_57_name => 'Menaces de confiscation de documents';

  @override
  String get metric_ugly_57_description =>
      'Signale les menaces ou actions visant à prendre, cacher ou détruire les documents d\'identité pour empêcher la fuite.';

  @override
  String get metric_ugly_58_name => 'Schémas de jalousie violente';

  @override
  String get metric_ugly_58_description =>
      'Identifie une jalousie ayant dégénéré en menaces explicites, surveillance ou représailles violentes.';

  @override
  String get metric_ugly_59_name => 'Schémas d\'explosion de rage';

  @override
  String get metric_ugly_59_description =>
      'Détecte des descriptions ou schémas d\'explosions violentes disproportionnées par rapport à tout déclencheur.';

  @override
  String get metric_ugly_60_name => 'Escalade du contrôle coercitif';

  @override
  String get metric_ugly_60_description =>
      'Suit l\'augmentation de la sévérité et de l\'étendue des tactiques de contrôle coercitif au fil du temps.';

  @override
  String get metric_ugly_61_name => 'Langage de conformité basé sur la peur';

  @override
  String get metric_ugly_61_description =>
      'Identifie une conformité motivée entièrement par la peur de la violence ou de punitions sévères plutôt que par un choix.';

  @override
  String get metric_ugly_62_name => 'Langage de rituel de punition';

  @override
  String get metric_ugly_62_description =>
      'Détecte les références à des pratiques de punition systématiques utilisées pour imposer la conformité et le contrôle.';

  @override
  String get metric_ugly_63_name => 'Indicateurs de rituel de dégradation';

  @override
  String get metric_ugly_63_description =>
      'Signale des rituels de dégradation ou d\'humiliation systématiques conçus pour détruire la dignité.';

  @override
  String get metric_ugly_64_name => 'Menaces de divulgation non consentie';

  @override
  String get metric_ugly_64_description =>
      'Identifie les menaces de divulguer des images intimes, des informations privées ou des secrets sans consentement.';

  @override
  String get metric_ugly_65_name => 'Menaces d\'abus basé sur l\'image';

  @override
  String get metric_ugly_65_description =>
      'Détecte les menaces de distribuer des images intimes par vengeance, punition ou chantage.';

  @override
  String get metric_ugly_66_name => 'Pièges financiers';

  @override
  String get metric_ugly_66_description =>
      'Signale la création délibérée d\'une dépendance financière rendant la survie indépendante impossible.';

  @override
  String get metric_ugly_67_name => 'Menaces liées au logement';

  @override
  String get metric_ugly_67_description =>
      'Détecte les menaces de rendre le partenaire sans-abri, de supprimer l\'accès au logement ou de détruire la sécurité du domicile.';

  @override
  String get metric_ugly_68_name => 'Menaces liées au statut d\'immigration';

  @override
  String get metric_ugly_68_description =>
      'Identifie les menaces de signaler le statut d\'immigration ou de révoquer le parrainage de visa comme moyen de contrôle.';

  @override
  String get metric_ugly_69_name => 'Abus religieux ou spirituel';

  @override
  String get metric_ugly_69_description =>
      'Détecte l\'utilisation de l\'autorité religieuse, de la doctrine ou de la menace spirituelle pour contrôler, punir ou nuire.';

  @override
  String get metric_ugly_70_name =>
      'Instrumentalisation de la honte culturelle';

  @override
  String get metric_ugly_70_description =>
      'Signale la menace d\'exposer des comportements à la communauté culturelle ou familiale comme punition.';

  @override
  String get metric_ugly_71_name => 'Menaces de préjudice familial';

  @override
  String get metric_ugly_71_description =>
      'Identifie les menaces de nuire aux membres de la famille, aux enfants ou aux proches du partenaire comme moyen de pression.';

  @override
  String get metric_ugly_72_name => 'Campagne de harcèlement coordonné';

  @override
  String get metric_ugly_72_description =>
      'Détecte l\'organisation d\'autres personnes pour harceler, traquer ou intimider collectivement le partenaire.';

  @override
  String get metric_ugly_73_name => 'Menaces de faux rapports de police';

  @override
  String get metric_ugly_73_description =>
      'Signale les menaces de déposer de faux rapports de police ou des accusations légales contre le partenaire.';

  @override
  String get metric_ugly_74_name => 'Instrumentalisation du système juridique';

  @override
  String get metric_ugly_74_description =>
      'Identifie l\'utilisation des procédures légales, des tribunaux ou des ordonnances de protection comme armes de harcèlement.';

  @override
  String get metric_ugly_75_name => 'Violation d\'ordonnance restrictive';

  @override
  String get metric_ugly_75_description =>
      'Détecte les références à la violation ou à la planification de violation des ordonnances de protection ou de non-contact.';

  @override
  String get metric_ugly_76_name => 'Menaces de sabotage professionnel';

  @override
  String get metric_ugly_76_description =>
      'Signale les menaces de contacter l\'employeur, les collègues ou les clients pour détruire les moyens de subsistance du partenaire.';

  @override
  String get metric_ugly_77_name => 'Menaces d\'annihilation sociale';

  @override
  String get metric_ugly_77_description =>
      'Détecte les menaces de détruire la réputation, les relations et le statut social du partenaire.';

  @override
  String get metric_ugly_78_name => 'Campagne de tromperie systématique';

  @override
  String get metric_ugly_78_description =>
      'Identifie une tromperie élaborée à long terme conçue pour exploiter financièrement ou émotionnellement le partenaire.';

  @override
  String get metric_ugly_79_name => 'Destruction de biens comme terreur';

  @override
  String get metric_ugly_79_description =>
      'Identifie la destruction délibérée des biens du partenaire comme tactique d\'intimidation.';

  @override
  String get metric_ugly_80_name =>
      'Cruauté envers les animaux comme terreur par procuration';

  @override
  String get metric_ugly_80_description =>
      'Détecte le fait de blesser ou menacer des animaux pour démontrer la capacité de violence envers le partenaire.';

  @override
  String get metric_ugly_81_name => 'Langage de mise en danger d\'enfant';

  @override
  String get metric_ugly_81_description =>
      'Signale le fait de placer des enfants dans des situations dangereuses ou de menacer de le faire comme moyen de pression.';

  @override
  String get metric_ugly_82_name => 'Contrôle basé sur le handicap';

  @override
  String get metric_ugly_82_description =>
      'Détecte l\'exploitation du handicap du partenaire en contrôlant l\'accès aux médicaments, à la mobilité ou aux soins.';

  @override
  String get metric_ugly_83_name => 'Contrôle par crise fabriquée';

  @override
  String get metric_ugly_83_description =>
      'Signale la création délibérée d\'urgences ou de crises pour accroître la dépendance du partenaire ou justifier une surveillance.';

  @override
  String get metric_ugly_84_name => 'Isolement des services d\'urgence';

  @override
  String get metric_ugly_84_description =>
      'Identifie l\'empêchement actif du partenaire d\'appeler la police, les ambulances ou les services d\'urgence.';

  @override
  String get metric_ugly_85_name => 'Trajectoire d\'escalade des menaces';

  @override
  String get metric_ugly_85_description =>
      'Mesure l\'augmentation mesurable de la gravité, de la spécificité ou de la fréquence des menaces au fil du temps.';

  @override
  String get metric_ugly_86_name => 'Indicateurs d\'évaluation de létalité';

  @override
  String get metric_ugly_86_description =>
      'Signale les combinaisons de facteurs associés au risque le plus élevé d\'homicide conjugal.';

  @override
  String get metric_ugly_87_name => 'Tactiques de torture psychologique';

  @override
  String get metric_ugly_87_description =>
      'Identifie les abus psychologiques soutenus visant à briser la stabilité mentale du partenaire.';

  @override
  String get metric_ugly_88_name => 'Langage de captivité';

  @override
  String get metric_ugly_88_description =>
      'Détecte les références à la captivité du partenaire, à l\'empêchement de départ ou au contrôle de tous les mouvements.';

  @override
  String get metric_ugly_89_name => 'Planification de violence ciblée';

  @override
  String get metric_ugly_89_description =>
      'Détecte tout langage indiquant une planification, une préparation ou un compte à rebours vers la violence contre le partenaire.';

  @override
  String get metric_ugly_90_name => 'Recrutement de menaces par tiers';

  @override
  String get metric_ugly_90_description =>
      'Identifie le recrutement d\'amis, de famille ou d\'autres personnes pour menacer ou nuire au partenaire.';

  @override
  String get metric_ugly_91_name => 'Exploitation des Idées Suicidaires';

  @override
  String get metric_ugly_91_description =>
      'Signale l\'exploitation de la crise suicidaire du partenaire comme levier ou pour l\'empêcher de chercher de l\'aide.';

  @override
  String get metric_ugly_92_name => 'Menaces d\'Empoisonnement ou de Drogue';

  @override
  String get metric_ugly_92_description =>
      'Détecte les menaces ou références à l\'administration de drogues, au poison ou à la falsification de la nourriture ou des boissons du partenaire.';

  @override
  String get metric_ugly_93_name =>
      'Exploitation de l\'Automutilation Non Suicidaire';

  @override
  String get metric_ugly_93_description =>
      'Signale l\'exploitation de l\'automutilation du partenaire comme levier, moquerie ou moyen de contrôle supplémentaire.';

  @override
  String get metric_ugly_94_name => 'Langage d\'Induction de Dissociation';

  @override
  String get metric_ugly_94_description =>
      'Détecte les schémas conçus pour provoquer une dissociation, un détachement ou une dépersonnalisation chez le partenaire.';

  @override
  String get metric_ugly_95_name => 'Implantation de Distorsions Cognitives';

  @override
  String get metric_ugly_95_description =>
      'Détecte l\'installation délibérée de fausses croyances sur soi, la réalité ou la santé mentale du partenaire.';

  @override
  String get metric_ugly_96_name => 'Obstruction aux Soins Médicaux';

  @override
  String get metric_ugly_96_description =>
      'Détecte l\'empêchement d\'accès aux médicaments, médecins, hôpitaux ou traitements de santé.';

  @override
  String get metric_ugly_97_name => 'Langage de Menace Extrémiste';

  @override
  String get metric_ugly_97_description =>
      'Signale un langage emprunté à des cadres idéologiques extrémistes ou violents appliqué au partenaire.';

  @override
  String get metric_ugly_98_name => 'Signaux de Harcèlement Post-Séparation';

  @override
  String get metric_ugly_98_description =>
      'Détecte les menaces, le langage de surveillance ou les tactiques d\'intimidation après ou en prévision d\'une rupture.';

  @override
  String get metric_ugly_99_name => 'Instrumentalisation des Enfants';

  @override
  String get metric_ugly_99_description =>
      'Identifie l\'utilisation des enfants comme otages, les menaces concernant la garde ou l\'exploitation des liens parentaux comme mécanismes de contrôle.';

  @override
  String get metric_ugly_100_name => 'Déshumanisation Systématique';

  @override
  String get metric_ugly_100_description =>
      'Détecte un langage soutenu qui prive le partenaire de sa personnalité, de sa dignité ou de son droit à l\'humanité fondamentale.';

  @override
  String get metric_narcissist_1_name => 'Importance personnelle grandiose';

  @override
  String get metric_narcissist_1_description =>
      'Affirmations exagérées de réalisations, de talents ou de statut au-delà des preuves réalistes, souvent avec un sentiment d\'unicité.';

  @override
  String get metric_narcissist_2_name => 'Exigences de droit';

  @override
  String get metric_narcissist_2_description =>
      'Attentes déraisonnables de traitement spécial ou de conformité automatique à leurs souhaits sans réciprocité.';

  @override
  String get metric_narcissist_3_name => 'Déficit d\'empathie';

  @override
  String get metric_narcissist_3_description =>
      'Incapacité ou refus de reconnaître ou de valider les sentiments des autres, rejetant les besoins émotionnels comme non pertinents.';

  @override
  String get metric_narcissist_4_name => 'Recherche d\'admiration';

  @override
  String get metric_narcissist_4_description =>
      'Quête excessive d\'admiration, de compliments ou de validation pour renforcer une estime de soi fragile.';

  @override
  String get metric_narcissist_5_name => 'Tactiques de triangulation';

  @override
  String get metric_narcissist_5_description =>
      'Introduction d\'un tiers dans les conflits pour créer de la jalousie, de la compétition ou manipuler les perceptions.';

  @override
  String get metric_narcissist_6_name => 'Intensité du love bombing';

  @override
  String get metric_narcissist_6_description =>
      'Flatterie, cadeaux ou attention écrasants au début d\'une relation pour prendre le contrôle et idéaliser la cible.';

  @override
  String get metric_narcissist_7_name => 'Critique de dévaluation';

  @override
  String get metric_narcissist_7_description =>
      'Passage soudain à des critiques sévères, des rabaissements ou du mépris après l\'idéalisation, érodant l\'estime de soi de la cible.';

  @override
  String get metric_narcissist_8_name => 'Punition par silence';

  @override
  String get metric_narcissist_8_description =>
      'Retrait délibéré de la communication ou de l\'affection comme punition pour induire anxiété et conformité.';

  @override
  String get metric_narcissist_9_name => 'Renversement de blâme DARVO';

  @override
  String get metric_narcissist_9_description =>
      'Nier la responsabilité, attaquer l\'accusateur et inverser les rôles victime-agresseur pour échapper à la responsabilité.';

  @override
  String get metric_narcissist_10_name =>
      'Distorsion de réalité par gaslighting';

  @override
  String get metric_narcissist_10_description =>
      'Nier ou déformer les faits, événements ou sentiments pour faire douter la cible de sa propre mémoire ou santé mentale.';

  @override
  String get metric_narcissist_11_name => 'Colère face à la critique';

  @override
  String get metric_narcissist_11_description =>
      'Réaction intense de colère, de mépris ou de représailles en réponse à toute critique ou remarque perçue, même constructive.';

  @override
  String get metric_narcissist_12_name => 'Violation des limites';

  @override
  String get metric_narcissist_12_description =>
      'Ignorer ou outrepasser les limites établies, la vie privée ou l\'espace personnel sans remords ni négociation.';

  @override
  String get metric_narcissist_13_name => 'Expression d\'envie';

  @override
  String get metric_narcissist_13_description =>
      'Ressentiment envers les succès ou les possessions d\'autrui, souvent accompagné de dévalorisation ou de tentatives de saper.';

  @override
  String get metric_narcissist_14_name => 'Comportement exploiteur';

  @override
  String get metric_narcissist_14_description =>
      'Utiliser les autres pour un gain personnel, un statut ou des ressources sans se soucier de leur bien-être ou de leur consentement.';

  @override
  String get metric_narcissist_15_name => 'Manipulation par miroir';

  @override
  String get metric_narcissist_15_description =>
      'Imiter les intérêts, les valeurs ou les traits de la cible pour créer un faux rapport et gagner sa confiance.';

  @override
  String get metric_narcissist_16_name => 'Affirmations de supériorité';

  @override
  String get metric_narcissist_16_description =>
      'Affirmer une supériorité inhérente sur les autres, souvent avec un langage condescendant ou méprisant.';

  @override
  String get metric_narcissist_17_name => 'Préoccupation fantasmatique';

  @override
  String get metric_narcissist_17_description =>
      'Discours obsessionnel sur un succès, un pouvoir, un génie ou un amour idéal illimités et irréalistes.';

  @override
  String get metric_narcissist_18_name => 'Affirmation de statut spécial';

  @override
  String get metric_narcissist_18_description =>
      'Croyance qu\'ils ne peuvent être compris que par ou associés à des personnes ou institutions de haut statut.';

  @override
  String get metric_narcissist_19_name => 'Exploitation interpersonnelle';

  @override
  String get metric_narcissist_19_description =>
      'Profiter des ressources, du temps ou des émotions des autres sans réciprocité ni gratitude.';

  @override
  String get metric_narcissist_20_name => 'Absence de remords';

  @override
  String get metric_narcissist_20_description =>
      'Absence de culpabilité ou d\'excuses après avoir causé du tort, justifiant souvent les actions comme méritées par la cible.';

  @override
  String get metric_narcissist_21_name => 'Sapement Compétitif';

  @override
  String get metric_narcissist_21_description =>
      'Saboter les réalisations ou les relations des autres pour maintenir une position supérieure.';

  @override
  String get metric_narcissist_22_name => 'Phase d\'Idéalisation';

  @override
  String get metric_narcissist_22_description =>
      'Éloges et adoration excessifs au début d\'une relation, créant des attentes irréalistes chez la cible.';

  @override
  String get metric_narcissist_23_name => 'Phase de Dévalorisation';

  @override
  String get metric_narcissist_23_description =>
      'Critiques et mépris progressifs ou soudains après l\'idéalisation, provoquant confusion et doute de soi.';

  @override
  String get metric_narcissist_24_name => 'Impulsion de Rejet';

  @override
  String get metric_narcissist_24_description =>
      'Mettre fin brusquement aux relations lorsque la cible ne fournit plus de source narcissique ou la défie.';

  @override
  String get metric_narcissist_25_name => 'Tentatives de Hoovering';

  @override
  String get metric_narcissist_25_description =>
      'Réengager une cible rejetée avec des promesses, de la culpabilité ou de la manipulation pour regagner une source.';

  @override
  String get metric_narcissist_26_name => 'Projection des Défauts';

  @override
  String get metric_narcissist_26_description =>
      'Accuser les autres de leurs propres traits ou comportements négatifs pour éviter la conscience de soi.';

  @override
  String get metric_narcissist_27_name => 'Contrôle par la Culpabilité';

  @override
  String get metric_narcissist_27_description =>
      'Utiliser des déclarations induisant de la culpabilité pour manipuler les autres à se conformer ou à prendre soin.';

  @override
  String get metric_narcissist_28_name => 'Volatilité Émotionnelle';

  @override
  String get metric_narcissist_28_description =>
      'Sautes d\'humeur rapides du charme à la rage, souvent déclenchées par une blessure narcissique perçue.';

  @override
  String get metric_narcissist_29_name => 'Invalidation des Sentiments';

  @override
  String get metric_narcissist_29_description =>
      'Rejeter ou minimiser les émotions des autres comme des réactions excessives ou irrationnelles.';

  @override
  String get metric_narcissist_30_name => 'Monopolisation des Conversations';

  @override
  String get metric_narcissist_30_description =>
      'Dominer le dialogue avec des sujets centrés sur soi, interrompre ou ignorer les contributions des autres.';

  @override
  String get metric_narcissist_31_name => 'Dénigrement par Injures';

  @override
  String get metric_narcissist_31_description =>
      'Utiliser des insultes, des étiquettes ou des termes dégradants pour dévaloriser et contrôler la cible.';

  @override
  String get metric_narcissist_32_name => 'Menaces d\'Abandon';

  @override
  String get metric_narcissist_32_description =>
      'Utiliser la peur de la perte ou du rejet pour contraindre à la conformité ou attirer l\'attention.';

  @override
  String get metric_narcissist_33_name => 'Jeu de la Victime';

  @override
  String get metric_narcissist_33_description =>
      'Se présenter comme injustement traité pour susciter la sympathie et détourner la responsabilité.';

  @override
  String get metric_narcissist_34_name => 'Complexe du Martyr';

  @override
  String get metric_narcissist_34_description =>
      'Revendiquer un sacrifice ou une souffrance excessive pour induire de la culpabilité et de l\'obligation chez les autres.';

  @override
  String get metric_narcissist_35_name => 'Mémoire Sélective';

  @override
  String get metric_narcissist_35_description =>
      'Oublier commodément les promesses, accords ou actions nuisibles pour éviter la responsabilité.';

  @override
  String get metric_narcissist_36_name => 'Mur de Silence';

  @override
  String get metric_narcissist_36_description =>
      'Refuser de s\'engager dans le dialogue, ignorer les questions ou interrompre les discussions pour maintenir le contrôle.';

  @override
  String get metric_narcissist_37_name => 'Promesses Illusoires';

  @override
  String get metric_narcissist_37_description =>
      'Faire des promesses grandioses sur des projets futurs communs pour créer un faux espoir et une dépendance.';

  @override
  String get metric_narcissist_38_name => 'Campagne de Dénigrement';

  @override
  String get metric_narcissist_38_description =>
      'Répandre des rumeurs malveillantes ou des mensonges sur la cible pour l\'isoler et nuire à sa réputation.';

  @override
  String get metric_narcissist_39_name => 'Tactiques d\'Isolement';

  @override
  String get metric_narcissist_39_description =>
      'Décourager ou empêcher le contact avec les amis, la famille ou les systèmes de soutien pour accroître la dépendance.';

  @override
  String get metric_narcissist_40_name => 'Exploitation Financière';

  @override
  String get metric_narcissist_40_description =>
      'Manipuler ou contrôler les ressources financières pour un gain personnel ou créer une dépendance.';

  @override
  String get metric_narcissist_41_name => 'Coercition sexuelle';

  @override
  String get metric_narcissist_41_description =>
      'Utiliser la pression, la culpabilité ou la manipulation pour obtenir une soumission sexuelle sans consentement véritable.';

  @override
  String get metric_narcissist_42_name => 'Test des limites';

  @override
  String get metric_narcissist_42_description =>
      'Repousser constamment les limites pour voir quel comportement est toléré, puis escalader les violations.';

  @override
  String get metric_narcissist_43_name => 'Déni par gaslighting';

  @override
  String get metric_narcissist_43_description =>
      'Nier catégoriquement des événements ou des déclarations qui ont eu lieu, amenant la cible à douter de la réalité.';

  @override
  String get metric_narcissist_44_name => 'Minimisation des préoccupations';

  @override
  String get metric_narcissist_44_description =>
      'Rejeter les plaintes légitimes comme étant sans importance ou excessivement sensibles.';

  @override
  String get metric_narcissist_45_name => 'Externalisation du blâme';

  @override
  String get metric_narcissist_45_description =>
      'Attribuer tous les problèmes et conflits aux autres, sans jamais accepter la faute personnelle.';

  @override
  String get metric_narcissist_46_name => 'Provocation de la jalousie';

  @override
  String get metric_narcissist_46_description =>
      'Flirter avec ou louer les autres pour susciter la jalousie et maintenir un contrôle émotionnel.';

  @override
  String get metric_narcissist_47_name => 'Chantage émotionnel';

  @override
  String get metric_narcissist_47_description =>
      'Utiliser la peur, l\'obligation ou la culpabilité pour manipuler les décisions et les comportements.';

  @override
  String get metric_narcissist_48_name => 'Pseudo-introspection';

  @override
  String get metric_narcissist_48_description =>
      'Feindre la conscience de soi ou l\'empathie pour paraître réformé, puis revenir à des schémas toxiques.';

  @override
  String get metric_narcissist_49_name => 'Ton méprisant';

  @override
  String get metric_narcissist_49_description =>
      'Utiliser le sarcasme, la moquerie ou un langage dédaigneux pour dégrader et rejeter les autres.';

  @override
  String get metric_narcissist_50_name => 'Fantasmes de vengeance';

  @override
  String get metric_narcissist_50_description =>
      'Exprimer des désirs de représailles ou de punition envers ceux qui les ont offensés.';

  @override
  String get metric_serial_killer_1_name => 'Cadrage prédateur';

  @override
  String get metric_serial_killer_1_description =>
      'Détecte un langage qui positionne le locuteur comme un chasseur et la cible comme une proie, indiquant une intention prédatrice.';

  @override
  String get metric_serial_killer_2_name => 'Déficit d\'empathie';

  @override
  String get metric_serial_killer_2_description =>
      'Identifie des déclarations dépourvues de résonance émotionnelle ou de préoccupation pour la souffrance d\'autrui, suggérant de l\'insensibilité.';

  @override
  String get metric_serial_killer_3_name => 'Étiquettes déshumanisantes';

  @override
  String get metric_serial_killer_3_description =>
      'Signale l\'utilisation de termes péjoratifs ou d\'étiquettes objectivantes qui privent les victimes de leur humanité.';

  @override
  String get metric_serial_killer_4_name => 'Indices d\'objectification';

  @override
  String get metric_serial_killer_4_description =>
      'Reconnaît un langage traitant les individus comme des outils ou des objets de gratification.';

  @override
  String get metric_serial_killer_5_name => 'Fixation sur le contrôle';

  @override
  String get metric_serial_killer_5_description =>
      'Détecte des références obsessionnelles à la domination, à la manipulation ou à l\'imposition de la conformité.';

  @override
  String get metric_serial_killer_6_name => 'Ton de recherche de sensations';

  @override
  String get metric_serial_killer_6_description =>
      'Identifie l\'excitation ou l\'enthousiasme dans la description d\'actes risqués, violents ou prédateurs.';

  @override
  String get metric_serial_killer_7_name => 'Marqueurs de compartimentation';

  @override
  String get metric_serial_killer_7_description =>
      'Signale des changements brusques entre des sujets normaux et violents, indiquant une séparation psychologique.';

  @override
  String get metric_serial_killer_8_name => 'Signaux de sélection des victimes';

  @override
  String get metric_serial_killer_8_description =>
      'Détecte des critères ou préférences pour cibler des groupes vulnérables spécifiques.';

  @override
  String get metric_serial_killer_9_name => 'Plaisir sadique';

  @override
  String get metric_serial_killer_9_description =>
      'Reconnaît le plaisir tiré de la douleur, de la peur ou de la souffrance d\'autrui.';

  @override
  String get metric_serial_killer_10_name => 'Préjudice manipulateur';

  @override
  String get metric_serial_killer_10_description =>
      'Identifie un langage utilisé pour tromper ou contraindre autrui à des situations nuisibles.';

  @override
  String get metric_serial_killer_11_name => 'Indicateurs de filature';

  @override
  String get metric_serial_killer_11_description =>
      'Signale un suivi détaillé, une surveillance ou une observation obsessionnelle d\'une cible.';

  @override
  String get metric_serial_killer_12_name => 'Langage de manipulation';

  @override
  String get metric_serial_killer_12_description =>
      'Détecte les tactiques progressives d\'instauration de confiance pour exploiter ou abuser des victimes.';

  @override
  String get metric_serial_killer_13_name => 'Fantasmation violente';

  @override
  String get metric_serial_killer_13_description =>
      'Identifie des descriptions vives de blesser ou tuer autrui comme une répétition mentale.';

  @override
  String get metric_serial_killer_14_name => 'Affirmation de pouvoir';

  @override
  String get metric_serial_killer_14_description =>
      'Reconnaît les déclarations mettant l\'accent sur la supériorité ou le contrôle sur autrui.';

  @override
  String get metric_serial_killer_15_name => 'Absence de remords';

  @override
  String get metric_serial_killer_15_description =>
      'Signale l\'absence de culpabilité ou de regret après avoir discuté d\'actions nuisibles.';

  @override
  String get metric_serial_killer_16_name => 'Externalisation du blâme';

  @override
  String get metric_serial_killer_16_description =>
      'Détecte le transfert de responsabilité pour les pulsions violentes sur les victimes ou la société.';

  @override
  String get metric_serial_killer_17_name => 'Violence sexualisée';

  @override
  String get metric_serial_killer_17_description =>
      'Identifie la fusion de thèmes sexuels et violents dans le langage.';

  @override
  String get metric_serial_killer_18_name => 'Tactiques d\'isolement';

  @override
  String get metric_serial_killer_18_description =>
      'Reconnaît les efforts pour séparer une cible de ses réseaux de soutien.';

  @override
  String get metric_serial_killer_19_name => 'Schémas de gaslighting';

  @override
  String get metric_serial_killer_19_description =>
      'Signale un langage conçu pour déformer la réalité et saper la santé mentale d\'une victime.';

  @override
  String get metric_serial_killer_20_name => 'Voile de menace';

  @override
  String get metric_serial_killer_20_description =>
      'Détecte les menaces implicites ou avertissements masqués en déclarations anodines.';

  @override
  String get metric_serial_killer_21_name => 'Langage possessif';

  @override
  String get metric_serial_killer_21_description =>
      'Identifie les revendications de propriété ou de droit sur une autre personne.';

  @override
  String get metric_serial_killer_22_name => 'Thèmes de vengeance';

  @override
  String get metric_serial_killer_22_description =>
      'Reconnaît la fixation sur la rétorsion ou la punition de torts perçus.';

  @override
  String get metric_serial_killer_23_name => 'Grandeur narcissique';

  @override
  String get metric_serial_killer_23_description =>
      'Signale une estime de soi exagérée et un mépris de la valeur des autres.';

  @override
  String get metric_serial_killer_24_name => 'Détachement émotionnel';

  @override
  String get metric_serial_killer_24_description =>
      'Détecte un ton clinique ou distant lors de l\'évocation de traumatismes ou de préjudices.';

  @override
  String get metric_serial_killer_25_name => 'Patience prédatrice';

  @override
  String get metric_serial_killer_25_description =>
      'Identifie un langage de planification à long terme pour une victimisation future.';

  @override
  String get metric_serial_killer_26_name => 'Test des limites';

  @override
  String get metric_serial_killer_26_description =>
      'Reconnaît la recherche de limites ou de résistance chez les victimes potentielles.';

  @override
  String get metric_serial_killer_27_name => 'Minimisation du préjudice';

  @override
  String get metric_serial_killer_27_description =>
      'Signale l\'atténuation de la gravité des actes violents ou abusifs.';

  @override
  String get metric_serial_killer_28_name => 'Justification de la violence';

  @override
  String get metric_serial_killer_28_description =>
      'Détecte les rationalisations pour nuire à autrui comme nécessaires ou méritées.';

  @override
  String get metric_serial_killer_29_name => 'Focalisation obsessionnelle';

  @override
  String get metric_serial_killer_29_description =>
      'Identifie des pensées répétitives et fixées sur une personne ou un acte spécifique.';

  @override
  String get metric_serial_killer_30_name => 'Calcul froid';

  @override
  String get metric_serial_killer_30_description =>
      'Reconnaît une planification stratégique et sans émotion d\'actions nuisibles.';

  @override
  String get metric_serial_killer_31_name => 'Charme trompeur';

  @override
  String get metric_serial_killer_31_description =>
      'Signale un langage excessivement flatteur ou insinuant utilisé pour manipuler.';

  @override
  String get metric_serial_killer_32_name => 'Blâme de la victime';

  @override
  String get metric_serial_killer_32_description =>
      'Détecte l\'attribution de la faute à la cible pour sa propre victimisation.';

  @override
  String get metric_serial_killer_33_name => 'Signaux d\'escalade';

  @override
  String get metric_serial_killer_33_description =>
      'Identifie la progression du fantasme à l\'intention dans un langage violent.';

  @override
  String get metric_serial_killer_34_name => 'Orientation parasitaire';

  @override
  String get metric_serial_killer_34_description =>
      'Reconnaît un langage traitant les autres comme des ressources à exploiter.';

  @override
  String get metric_serial_killer_35_name => 'Indices d\'excitation';

  @override
  String get metric_serial_killer_35_description =>
      'Signale des indicateurs d\'excitation physiologique liés à des thèmes violents.';

  @override
  String get metric_serial_killer_36_name => 'Test de loyauté';

  @override
  String get metric_serial_killer_36_description =>
      'Détecte les demandes de preuve d\'allégeance ou de secret de la part des complices.';

  @override
  String get metric_serial_killer_37_name => 'Langage rituel';

  @override
  String get metric_serial_killer_37_description =>
      'Identifie des formulations cérémonielles et répétitives autour d\'actes violents.';

  @override
  String get metric_serial_killer_38_name => 'Revendications de supériorité';

  @override
  String get metric_serial_killer_38_description =>
      'Reconnaît les affirmations d\'être au-dessus des contraintes morales ou légales.';

  @override
  String get metric_serial_killer_39_name => 'Vide émotionnel';

  @override
  String get metric_serial_killer_39_description =>
      'Signale l\'absence de mots émotionnels dans des contextes nécessitant de l\'empathie.';

  @override
  String get metric_serial_killer_40_name => 'Curiosité prédatrice';

  @override
  String get metric_serial_killer_40_description =>
      'Détecte les questions exploratoires sur les peurs ou vulnérabilités d\'une cible.';

  @override
  String get metric_serial_killer_41_name => 'Menaces de silence';

  @override
  String get metric_serial_killer_41_description =>
      'Identifie les avertissements visant à empêcher la divulgation ou le signalement.';

  @override
  String get metric_serial_killer_42_name => 'Comparaisons déshumanisantes';

  @override
  String get metric_serial_killer_42_description =>
      'Reconnaît l\'assimilation de personnes à des animaux, des objets ou des entités sous-humaines.';

  @override
  String get metric_serial_killer_43_name => 'Langage de contrôle';

  @override
  String get metric_serial_killer_43_description =>
      'Signale les tons impératifs ou autoritaires visant à dominer autrui.';

  @override
  String get metric_serial_killer_44_name => 'Détail sadique';

  @override
  String get metric_serial_killer_44_description =>
      'Détecte une attention excessive portée à la douleur ou à la souffrance graphique dans les récits.';

  @override
  String get metric_serial_killer_45_name => 'Empathie manipulatrice';

  @override
  String get metric_serial_killer_45_description =>
      'Identifie une préoccupation feinte pour abaisser les défenses d\'une cible.';

  @override
  String get metric_serial_killer_46_name => 'Regard prédateur';

  @override
  String get metric_serial_killer_46_description =>
      'Reconnaît un langage décrivant une observation intense et invasive des cibles.';

  @override
  String get metric_serial_killer_47_name => 'Identité violente';

  @override
  String get metric_serial_killer_47_description =>
      'Signale l\'auto-identification comme prédateur, tueur ou monstre.';

  @override
  String get metric_serial_killer_48_name => 'Frisson de la chasse';

  @override
  String get metric_serial_killer_48_description =>
      'Détecte l\'excitation dans le processus de traque ou de poursuite des victimes.';

  @override
  String get metric_serial_killer_49_name => 'Confession compulsive';

  @override
  String get metric_serial_killer_49_description =>
      'Identifie les pulsions à divulguer des actes violents pour un soulagement psychologique.';

  @override
  String get metric_serial_killer_50_name => 'Langage de finalité';

  @override
  String get metric_serial_killer_50_description =>
      'Reconnaît les références à la fin, à la mise à mort ou au silence permanent des cibles.';

  @override
  String get packNarcissistLabel => 'Le Narcissique';

  @override
  String get packSerialKillerLabel => 'Le Tueur en Série';
}
