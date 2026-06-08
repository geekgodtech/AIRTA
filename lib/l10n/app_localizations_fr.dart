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
  String get gotIt => 'Compris';

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
}
