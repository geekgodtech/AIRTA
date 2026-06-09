// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Analisador de Toxicidade em Relações IA';

  @override
  String get psychologicalMetrics => 'Métricas Psicológicas';

  @override
  String get metricsDescription =>
      'Menos métricas selecionadas produzem uma análise mais profunda e concentrada desses comportamentos. Mais métricas selecionadas produzem um relatório mais amplo com menos detalhes por métrica.';

  @override
  String get selectSMS => 'Selecionar SMS / RCS Chat';

  @override
  String get selectDiscordChannel => 'Selecionar Canal Discord';

  @override
  String get lightMode => 'Claro';

  @override
  String get darkMode => 'Escuro';

  @override
  String get discordSetupTitle => 'Como Configurar Discord';

  @override
  String get discordSetupDescription =>
      'Siga estes passos para ativar a análise de canais Discord no aplicativo:';

  @override
  String get discordStep1Title => 'Criar um Bot Discord';

  @override
  String get discordStep1Description =>
      'Vá para discord.com/developers, crie um novo aplicativo e adicione um bot. Copie o token do bot.';

  @override
  String get discordStep2Title => 'Habilitar Privilégios do Bot';

  @override
  String get discordStep2Description =>
      'Nas configurações do bot, habilite \'Message Content Intent\' e \'Server Members Intent\'.';

  @override
  String get discordStep3Title => 'Convidar Bot ao Servidor';

  @override
  String get discordStep3Description =>
      'Use o gerador de URL OAuth2 para convidar o bot ao seu servidor Discord com as permissões necessárias.';

  @override
  String get discordStep4Title => 'Configurar no Aplicativo';

  @override
  String get discordStep4Description =>
      'Insira seu token do bot nas configurações do aplicativo (contate o suporte se precisar de ajuda).';

  @override
  String get discordStep5Title => 'Selecionar Canal';

  @override
  String get discordStep5Description =>
      'Toque em \'Selecionar Canal Discord\', escolha seu servidor, então selecione o canal para analisar.';

  @override
  String get gotIt => 'Entendi';

  @override
  String get selectFile => 'Selecionar arquivo';

  @override
  String get analyzeSelectedMetrics => 'Analisar métricas selecionadas';

  @override
  String get analyze20RandomMetrics => 'Analisar 20 métricas aleatórias';

  @override
  String get membershipOptions => 'Opções de assinatura';

  @override
  String get free => 'Grátis';

  @override
  String get oneTimeUnlock => 'Desbloqueio único de relatório';

  @override
  String get standard => 'Padrão';

  @override
  String get discordAddon => 'Complemento Discord';

  @override
  String get analyze => 'Analisar';

  @override
  String get report => 'Relatório';

  @override
  String get pdfReport => 'Relatório PDF';

  @override
  String get openPdf => 'Abrir PDF';

  @override
  String get sharePdf => 'Compartilhar PDF';

  @override
  String get printPdf => 'Imprimir PDF';

  @override
  String get closePdfPreview => 'Fechar janela de visualização PDF';

  @override
  String get openPdfPreview => 'Abrir janela de visualização PDF';

  @override
  String get pdfPreviewDescription =>
      'A janela PDF incorporada começa fechada para manter o relatório compacto.';

  @override
  String get notNow => 'Agora não';

  @override
  String get unlockThisReport => 'Desbloquear este relatório - \$20';

  @override
  String get joinStandard => 'Assinar Padrão - \$9.99/mês';

  @override
  String get instantUnlockTitle =>
      'Desbloqueio instantâneo de relatório - \$20';

  @override
  String get instantUnlockDescription =>
      'Esta é uma compra única para desbloquear apenas o relatório atual. Nenhuma assinatura necessária. Relatórios futuros exigirão desbloqueios separados ou uma assinatura.\n\nProsseguir com o pagamento?';

  @override
  String get purchaseFor20 => 'Comprar por \$20';

  @override
  String get share => 'Compartilhar';

  @override
  String get print => 'Imprimir';

  @override
  String get save => 'Salvar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get ok => 'OK';

  @override
  String get loading => 'Carregando...';

  @override
  String get error => 'Erro';

  @override
  String get success => 'Sucesso';

  @override
  String get conversations => 'Conversas';

  @override
  String get messages => 'Mensagens';

  @override
  String get selectConversation => 'Selecionar conversa';

  @override
  String get selectSmsConversation => 'Selecionar SMS / RCS Conversa';

  @override
  String get searchConversations => 'Pesquisar conversas...';

  @override
  String get loadingConversations => 'Carregando conversas...';

  @override
  String get errorLoadingConversations => 'Erro ao carregar conversas';

  @override
  String get selectConversationToAnalyze =>
      'Selecione uma conversa para analisar';

  @override
  String get analyzeWithSelectedMetrics =>
      'Analisar com as métricas selecionadas';

  @override
  String get loadConversationAndSelectMetric =>
      'Carregue uma conversa e selecione pelo menos uma métrica';

  @override
  String get selectAtLeastOneMetric =>
      'Pelo menos uma métrica precisa ser selecionada para executar o relatório.';

  @override
  String get spinningMetricWheel => 'Girando a roda de métricas...';

  @override
  String get loadConversationToAnalyze => 'Carregue uma conversa para analisar';

  @override
  String get noConversationsFound => 'Nenhuma conversa encontrada';

  @override
  String get permissionsRequired => 'Permissões necessárias';

  @override
  String get smsPermission => 'Mensagens de texto';

  @override
  String get contactsPermission => 'Contatos';

  @override
  String get smsPermissionDescription =>
      'Para analisar suas conversas SMS em busca de padrões de relacionamento';

  @override
  String get contactsPermissionDescription =>
      'Para exibir nomes de contatos em vez de números de telefone';

  @override
  String get analyzingMessage =>
      'Aguarde enquanto sua análise psicológica é gerada pela IA...';

  @override
  String get analyzingStatus => 'Analisando conversa...';

  @override
  String get analyzingSubMessage =>
      'Por favor seja paciente, este processo pode levar até um minuto dependendo da velocidade da sua conexão e da quantidade de métricas selecionadas';

  @override
  String get unlockFullReport => 'Desbloquear e mostrar todo este relatório';

  @override
  String get fullReportLocked => 'Relatório completo bloqueado';

  @override
  String get upgradeToUnlock =>
      'Atualize sua assinatura para desbloquear o relatório completo de análise psicológica com todas as métricas e insights detalhados.';

  @override
  String get language => 'Idioma';

  @override
  String get english => 'Inglês';

  @override
  String get spanish => 'Espanhol';

  @override
  String get french => 'Francês';

  @override
  String get german => 'Alemão';

  @override
  String get italian => 'Italiano';

  @override
  String get portuguese => 'Português';

  @override
  String get dutch => 'Holandês';

  @override
  String get russian => 'Russo';

  @override
  String get chinese => 'Chinês';

  @override
  String get japanese => 'Japonês';

  @override
  String get korean => 'Coreano';

  @override
  String get arabic => 'Árabe';

  @override
  String get hindi => 'Hindi';

  @override
  String get turkish => 'Turco';

  @override
  String get polish => 'Polonês';

  @override
  String get ukrainian => 'Ucraniano';

  @override
  String get runAnotherAnalysis => 'Executar outra análise?';

  @override
  String get becomeMemberTitle =>
      'Torne-se membro para obter o relatório de análise completo';

  @override
  String get becomeMemberSubtitle =>
      'Escolha o nível de acesso adequado às conversas e relatórios que você precisa analisar.';

  @override
  String get benefitAnalyzeSms => 'Analisar mensagens de texto SMS';

  @override
  String get benefitReportPreview => 'Executar uma prévia do relatório';

  @override
  String get benefitViewPartialReport => 'Ver cerca de 25% do relatório';

  @override
  String get benefitLockedDetails =>
      'Detalhes do relatório completo bloqueados';

  @override
  String get currentFreeAccess => 'Acesso gratuito atual';

  @override
  String get benefitUnlockCurrentReport =>
      'Desbloquear este relatório completo atual';

  @override
  String get benefitNoSubscription => 'Sem assinatura';

  @override
  String get benefitSavePrintShareThis =>
      'Salvar, imprimir e compartilhar este relatório';

  @override
  String get benefitBestSingleAnalysis =>
      'Ideal se você precisa de apenas uma análise';

  @override
  String get unlockThisReportShort => 'Desbloquear este relatório';

  @override
  String get benefitFullSmsReport => 'Relatório completo de análise SMS';

  @override
  String get benefitSavePrintSharePdf =>
      'Salvar, imprimir e compartilhar relatórios PDF';

  @override
  String get benefitTenReports => '10 relatórios por período de 24 horas';

  @override
  String get benefitBestTextReview =>
      'Ideal para revisão de relacionamentos por mensagem de texto';

  @override
  String get benefitDateRangeFilter => 'Filtrar análise por intervalo de datas';

  @override
  String get signUpStandard => 'Assinar a associação Padrão';

  @override
  String get benefitAddToStandard => 'Adicionar à associação Padrão';

  @override
  String get benefitAnalyzeDiscord =>
      'Analisar conversas de servidores do Discord';

  @override
  String get benefitRequiresBot => 'Requer instalação do bot';

  @override
  String get benefitBestGamers =>
      'Ideal para jogadores e comunidades do Discord';

  @override
  String get addDiscordAnalysis => 'Adicionar análise do Discord';

  @override
  String get requiresStandardMembership => 'Requer associação Padrão';

  @override
  String get comingSoon => 'Em breve';

  @override
  String get comingSoonWithNextUpdate => 'Em breve na próxima atualização:';

  @override
  String get proMembershipTier => 'Nível de associação Pro - \$19.99';

  @override
  String get proPlusMembershipTier => 'Nível de associação Pro-Plus - \$24.99';

  @override
  String get proGetsLabel => 'Pro inclui:';

  @override
  String get proGetsDescription =>
      'Analise threads de conversa de todas as outras plataformas populares de mensagens e redes sociais, como:';

  @override
  String get proPlatformsList =>
      'LinkedIn, WhatsApp, Instagram, Facebook Messenger, Telegram, X (Twitter), e-mail e calendário';

  @override
  String get proPlusGetsLabel => 'Pro-Plus inclui:';

  @override
  String get proPlusGetsDescription =>
      'Tudo do Pro, além do complemento do Discord a um preço reduzido.';

  @override
  String get purchaseSuccessfulUnlocked =>
      'Compra bem-sucedida! Relatório desbloqueado.';

  @override
  String get purchaseFailed => 'A compra falhou. Tente novamente.';

  @override
  String get membershipActivated => 'Associação ativada!';

  @override
  String get dateRangeFilter => 'Filtro de Intervalo de Datas';

  @override
  String get dateRangeOptional => '(opcional)';

  @override
  String get startDate => 'Data de Início';

  @override
  String get endDate => 'Data de Término';

  @override
  String get clear => 'Limpar';

  @override
  String get dateRangeRequiresMembership =>
      'Requer assinatura Standard ou superior';

  @override
  String selectUpToCount(Object current, Object max) {
    return 'Selecione até $max. Atual: $current';
  }

  @override
  String get clearSelections => 'Limpar seleções';

  @override
  String analyzeRandomMetrics(Object count) {
    return 'Analisar $count métricas aleatórias';
  }

  @override
  String get saveSelections => 'Salvar Seleções';

  @override
  String get loadSelections => 'Carregar Seleções';

  @override
  String get saveMetricListName => 'Salvar Lista de Métricas';

  @override
  String get enterListName => 'Digite um nome para esta lista de métricas:';

  @override
  String get chooseSavedMetrics => 'Escolha a lista de métricas salva:';

  @override
  String get noSavedLists =>
      'Nenhuma lista de métricas salva para carregar no momento.';

  @override
  String get metricListSaved => 'Lista de métricas salva com sucesso.';

  @override
  String get metricListLoaded => 'Lista de métricas carregada com sucesso.';

  @override
  String get filters => 'Filtros';

  @override
  String get sortBy => 'Ordenar por:';

  @override
  String get recent => 'Recente';

  @override
  String get name => 'Nome';

  @override
  String get count => 'Contagem';

  @override
  String get namedOnly => 'Apenas nomeados';

  @override
  String get minMessages => 'Mín. mensagens:';

  @override
  String get minimumMessages => 'Mínimo de mensagens:';

  @override
  String get executiveSummary => 'Resumo Executivo';

  @override
  String get metricScores => 'Pontuações das Métricas';

  @override
  String get contextualEvidenceExamples => 'Exemplos de Evidência Contextual';

  @override
  String get neutralSynthesis => 'Síntese Neutra';

  @override
  String analysisOfSender(Object sender) {
    return 'Análise de $sender (Remetente)';
  }

  @override
  String analysisOfReceiver(Object receiver) {
    return 'Análise de $receiver (Destinatário)';
  }

  @override
  String get finalConclusion => 'Conclusão Final';

  @override
  String get metric_1_name => 'Desprezo';

  @override
  String get metric_1_description =>
      'Procura superioridade, nojo, zombaria, linguagem de rolar os olhos ou insultos que colocam um parceiro abaixo do outro.';

  @override
  String get metric_2_name => 'Defensividade';

  @override
  String get metric_2_description =>
      'Rastreia autodefesa reflexiva, contra-ataques, desculpas e recusa em considerar a reclamação da outra pessoa.';

  @override
  String get metric_3_name => 'Bloqueio';

  @override
  String get metric_3_description =>
      'Identifica fechamento, recuo, ignorar, recusa em responder ou encerrar conversas para evitar engajamento.';

  @override
  String get metric_4_name => 'Crítica';

  @override
  String get metric_4_description =>
      'Detecta ataques ao caráter ou personalidade em vez de comportamentos específicos, necessidades ou incidentes.';

  @override
  String get metric_5_name => 'Indicadores de Gaslighting';

  @override
  String get metric_5_description =>
      'Sinaliza tentativas de fazer alguém duvidar da memória, percepção, sanidade ou legitimidade de sua experiência.';

  @override
  String get metric_6_name => 'Transferência de Culpa';

  @override
  String get metric_6_description =>
      'Mede se a responsabilidade é redirecionada para o outro parceiro em vez de ser reconhecida diretamente.';

  @override
  String get metric_7_name => 'Padrão de Escalada';

  @override
  String get metric_7_description =>
      'Avalia se tom, acusações, intensidade ou ameaças aumentam em vez de se mover em direção à resolução.';

  @override
  String get metric_8_name => 'Reconhecimento de Tentativas de Reparo';

  @override
  String get metric_8_description =>
      'Verifica se desculpas, humor, pausas, tranquilização ou ofertas de paz são notadas e aceitas.';

  @override
  String get metric_9_name => 'Linguagem de Responsabilidade';

  @override
  String get metric_9_description =>
      'Procura clara propriedade do dano, responsabilidade específica e vontade de mudar o comportamento.';

  @override
  String get metric_10_name => 'Respeito aos Limites';

  @override
  String get metric_10_description =>
      'Avalia se os limites declarados em torno de tempo, privacidade, corpo, emoções ou contato são honrados.';

  @override
  String get metric_11_name => 'Indicadores de Controle Coercitivo';

  @override
  String get metric_11_description =>
      'Sinaliza padrões de intimidação, restrição, monitoramento, dependência ou controle sobre escolhas e movimentos.';

  @override
  String get metric_12_name => 'Linguagem de Ameaça';

  @override
  String get metric_12_description =>
      'Identifica ameaças explícitas ou implícitas envolvendo segurança, abandono, exposição, retaliação ou punição.';

  @override
  String get metric_13_name => 'Desprezo';

  @override
  String get metric_13_description =>
      'Detecta descartar preocupações, tratar necessidades como não importantes ou recusar levar o sofrimento a sério.';

  @override
  String get metric_14_name => 'Invalidação';

  @override
  String get metric_14_description =>
      'Mede negação, ridículo ou correção das emoções de outra pessoa em vez de reconhecê-las.';

  @override
  String get metric_15_name => 'Expressão de Empatia';

  @override
  String get metric_15_description =>
      'Procura tomada de perspectiva, cuidado, reconhecimento emocional e preocupação com a experiência da outra pessoa.';

  @override
  String get metric_16_name => 'Reciprocidade';

  @override
  String get metric_16_description =>
      'Avalia se atenção, esforço, desculpas, compromisso e apoio emocional fluem em ambas as direções.';

  @override
  String get metric_17_name => 'Regulação Emocional';

  @override
  String get metric_17_description =>
      'Avalia capacidade de permanecer firme, fazer uma pausa, acalmar-se e comunicar sem reatividade explosiva.';

  @override
  String get metric_18_name => 'Sarcasmo Usado como Dano';

  @override
  String get metric_18_description =>
      'Sinaliza sarcasmo usado para diminuir, punir, humilhar ou disfarçar hostilidade como humor.';

  @override
  String get metric_19_name => 'Insultos';

  @override
  String get metric_19_description =>
      'Identifica rótulos depreciativos, insultos, profanação direcionada à pessoa ou ataques baseados em identidade.';

  @override
  String get metric_20_name => 'Padrão de Tratamento Silencioso';

  @override
  String get metric_20_description =>
      'Rastreia silêncio usado como punição, controle, evitação ou retirada de conexão.';

  @override
  String get metric_21_name => 'Enquadramento de Ciúme';

  @override
  String get metric_21_description =>
      'Avalia suspeita, possessividade, acusações ou ciúme apresentado como prova de cuidado.';

  @override
  String get metric_22_name => 'Pressão de Isolamento';

  @override
  String get metric_22_description =>
      'Sinaliza esforços para separar um parceiro de amigos, família, sistemas de suporte ou perspectivas externas.';

  @override
  String get metric_23_name => 'Indicadores de Controle Financeiro';

  @override
  String get metric_23_description =>
      'Procura controle de dinheiro, gastos, emprego, acesso a contas ou independência financeira.';

  @override
  String get metric_24_name => 'Indicadores de Invasão de Privacidade';

  @override
  String get metric_24_description =>
      'Detecta espionagem, exigências de senha, verificações de dispositivos, rastreamento de localização ou violações de privacidade.';

  @override
  String get metric_25_name => 'Especificidade das Desculpas';

  @override
  String get metric_25_description =>
      'Mede se as desculpas nomeiam o dano exato, impacto e correção futura em vez de permanecer vagas.';

  @override
  String get metric_26_name => 'Pressão de Perdão';

  @override
  String get metric_26_description =>
      'Sinaliza exigências de seguir em frente, perdoar rapidamente ou parar de discutir o dano antes que o reparo ocorra.';

  @override
  String get metric_27_name => 'Minimização';

  @override
  String get metric_27_description =>
      'Detecta minimizar o dano, chamar preocupações sérias de dramáticas ou reduzir o impacto para evitar responsabilidade.';

  @override
  String get metric_28_name => 'Projeção';

  @override
  String get metric_28_description =>
      'Procura acusações que espelham o próprio comportamento, motivos ou sentimentos não resolvidos do falante.';

  @override
  String get metric_29_name => 'Padrão de Interrupção';

  @override
  String get metric_29_description =>
      'Rastreia interromper, falar por cima, recusar completar ou controlar turnos conversacionais.';

  @override
  String get metric_30_name => 'Desvio de Tópico';

  @override
  String get metric_30_description =>
      'Identifica mudar de assunto, trazer problemas não relacionados ou evitar a preocupação central.';

  @override
  String get metric_31_name => 'Orientação à Resolução';

  @override
  String get metric_31_description =>
      'Mede se as mensagens visam soluções, clareza, acordos e próximos passos.';

  @override
  String get metric_32_name => 'Resolução Mútua de Problemas';

  @override
  String get metric_32_description =>
      'Avalia linguagem colaborativa, responsabilidade compartilhada, brainstorming e vontade de encontrar compromissos viáveis.';

  @override
  String get metric_33_name => 'Inundação Emocional';

  @override
  String get metric_33_description =>
      'Detecta sobrecarga, pânico, fechamento, espiral ou incapacidade de processar durante o conflito.';

  @override
  String get metric_34_name => 'Sinais de Resposta ao Medo';

  @override
  String get metric_34_description =>
      'Procura apaziguar, escolha cuidadosa de palavras, terror, preocupações de segurança ou medo da reação do parceiro.';

  @override
  String get metric_35_name => 'Consistência das Afirmativas';

  @override
  String get metric_35_description =>
      'Avalia se os relatos permanecem internamente consistentes através de mensagens e tempo.';

  @override
  String get metric_36_name => 'Memória Baseada em Evidências';

  @override
  String get metric_36_description =>
      'Verifica se as afirmativas fazem referência a eventos concretos, citações, cronologias ou comportamento observável.';

  @override
  String get metric_37_name => 'Padrão de Demanda e Retirada';

  @override
  String get metric_37_description =>
      'Rastreia um parceiro buscando respostas ou mudanças enquanto o outro evita, se fecha ou sai.';

  @override
  String get metric_38_name => 'Indicadores de Desequilíbrio de Poder';

  @override
  String get metric_38_description =>
      'Sinaliza poder decisivo desigual, medo de consequências, dependência, intimidação ou controle unilateral.';

  @override
  String get metric_39_name => 'Desacordo Respeitoso';

  @override
  String get metric_39_description =>
      'Mede se o conflito preserva dignidade, curiosidade e desacordo sem degradação.';

  @override
  String get metric_40_name => 'Ciclo de Ruptura e Reparo';

  @override
  String get metric_40_description =>
      'Avalia se o conflito é seguido por reconhecimento, reconexão e reparo real.';

  @override
  String get metric_41_name => 'Retirada de Afeto';

  @override
  String get metric_41_description =>
      'Detecta amor, calor, sexo, atenção ou tranquilização sendo retidos como punição ou alavanca.';

  @override
  String get metric_42_name => 'Referências de Humilhação Pública';

  @override
  String get metric_42_description =>
      'Sinaliza ameaças, piadas ou ações que embaraçam o parceiro na frente dos outros.';

  @override
  String get metric_43_name => 'Sinais de Conflito Ligado a Substâncias';

  @override
  String get metric_43_description =>
      'Procura uso de álcool ou drogas ligado a agressão, não confiabilidade, conflito ou dano.';

  @override
  String get metric_44_name => 'Pressão de Conflito Parental';

  @override
  String get metric_44_description =>
      'Identifica filhos, custódia, papéis parentais ou culpa parental usados em conflito ou alavanca.';

  @override
  String get metric_45_name => 'Respeito aos Limites Sexuais';

  @override
  String get metric_45_description =>
      'Avalia respeito por consentimento, pressão, recusa, conforto, tempo e autonomia sexual.';

  @override
  String get metric_46_name => 'Indicadores de Assédio Digital';

  @override
  String get metric_46_description =>
      'Rastreia mensagens indesejadas repetidas, chamadas de spam, pressão online, vigilância ou intimidação baseada em plataformas.';

  @override
  String get metric_47_name => 'Linguagem de Monitoramento ou Vigilância';

  @override
  String get metric_47_description =>
      'Sinaliza verificar paradeiro, exigir provas, rastrear comportamento ou verificação constante.';

  @override
  String get metric_48_name => 'Orientação Futura';

  @override
  String get metric_48_description =>
      'Mede se os parceiros discutem melhoria futura, compromissos, planos ou direção construtiva.';

  @override
  String get metric_49_name => 'Sinais de Planejamento de Segurança';

  @override
  String get metric_49_description =>
      'Procura tentativas de buscar ajuda, criar distância, documentar dano ou planejar segurança física/emocional.';

  @override
  String get metric_50_name => 'Tentativas Mútuas de Desescalada';

  @override
  String get metric_50_description =>
      'Rastreia pausas, linguagem calmante, tom mais suave, timeouts e tentativas de ambos os parceiros para reduzir intensidade.';

  @override
  String get metric_51_name => 'Sinais de Apego Seguro';

  @override
  String get metric_51_description =>
      'Identifica confiança, tranquilização direta, disponibilidade emocional e conforto com proximidade e independência.';

  @override
  String get metric_52_name => 'Ativação de Apego Ansioso';

  @override
  String get metric_52_description =>
      'Sinaliza comportamento de protesto, necessidades urgentes de tranquilização, medo de abandono e sensibilidade elevada à distância.';

  @override
  String get metric_53_name => 'Distanciamento de Apego Evitativo';

  @override
  String get metric_53_description =>
      'Detecta minimização emocional, defesas de independência, retirada da vulnerabilidade ou desconforto com necessidades.';

  @override
  String get metric_54_name => 'Sinais de Apego Desorganizado';

  @override
  String get metric_54_description =>
      'Procura ciclos de aproximação-evitação, medo misto com necessidade, reações caóticas ou padrões de intimidade confusos.';

  @override
  String get metric_55_name => 'Ofertas Emocionais e Respostas';

  @override
  String get metric_55_description =>
      'Mede convites para atenção, conforto ou conexão e se são aceitos ou perdidos.';

  @override
  String get metric_56_name => 'Afastar-se da Conexão';

  @override
  String get metric_56_description =>
      'Sinaliza ignorar, descartar ou falhar em responder a ofertas de proximidade ou suporte.';

  @override
  String get metric_57_name => 'Virar contra a Conexão';

  @override
  String get metric_57_description =>
      'Detecta respostas hostis ou punitivas a tentativas de afeto, vulnerabilidade ou reparo.';

  @override
  String get metric_58_name => 'Sobreposição de Sentimento Positivo';

  @override
  String get metric_58_description =>
      'Procura generosidade, benefício da dúvida, afeição e interpretar conflito através do cuidado.';

  @override
  String get metric_59_name => 'Sobreposição de Sentimento Negativo';

  @override
  String get metric_59_description =>
      'Sinaliza assumir más intenções, interpretar mensagens neutras negativamente e enquadramento hostil persistente.';

  @override
  String get metric_60_name => 'Padrão de Início Duro';

  @override
  String get metric_60_description =>
      'Identifica conversas que começam com acusação, ataque, desprezo ou culpa em vez de um pedido.';

  @override
  String get metric_61_name => 'Padrão de Início Suave';

  @override
  String get metric_61_description =>
      'Procura aberturas gentis usando sentimentos, necessidades, pedidos específicos e linguagem não acusatória.';

  @override
  String get metric_62_name => 'Autoacalmação Fisiológica';

  @override
  String get metric_62_description =>
      'Avalia tentativas de fazer uma pausa, respirar, tomar espaço ou regular o corpo antes de continuar o conflito.';

  @override
  String get metric_63_name => 'Padrão de Evitação de Conflito';

  @override
  String get metric_63_description =>
      'Rastreia evitação repetida de tópicos necessários, desconforto, desacordo ou honestidade emocional.';

  @override
  String get metric_64_name => 'Estilo de Conflito Volátil';

  @override
  String get metric_64_description =>
      'Detecta conflito de alta intensidade com expressão direta que pode ainda incluir engajamento e reparo.';

  @override
  String get metric_65_name => 'Estilo de Conflito Validante';

  @override
  String get metric_65_description =>
      'Mede se os parceiros reconhecem a perspectiva um do outro enquanto discordam.';

  @override
  String get metric_66_name => 'Estilo de Conflito Hostil';

  @override
  String get metric_66_description =>
      'Sinaliza crítica frequente, desprezo, defensividade, ataques e enquadramento adversarial.';

  @override
  String get metric_67_name => 'Padrão Hostil-Detachado';

  @override
  String get metric_67_description =>
      'Identifica hostilidade fria, desengajamento emocional, desprezo e baixa motivação de reparo.';

  @override
  String get metric_68_name => 'Vontade de Compromisso';

  @override
  String get metric_68_description =>
      'Procura flexibilidade, negociação, propostas de meio-termo e sacrifícios que respeitam ambas as necessidades.';

  @override
  String get metric_69_name => 'Aceitação de Influência';

  @override
  String get metric_69_description =>
      'Mede abertura a ser afetado pelos sentimentos, necessidades ou perspectiva do parceiro.';

  @override
  String get metric_70_name => 'Sinais de Conflito Bloqueado';

  @override
  String get metric_70_description =>
      'Sinaliza problemas não resolvidos repetidos ligados a valores, sonhos, identidade ou incompatibilidade crônica.';

  @override
  String get metric_71_name => 'Enquadramento de Problema Solucionável';

  @override
  String get metric_71_description =>
      'Detecta definições de problemas práticas e concretas que podem levar a acordos específicos.';

  @override
  String get metric_72_name => 'Referências de Significado Compartilhado';

  @override
  String get metric_72_description =>
      'Procura valores, rituais, objetivos, memórias ou linguagem de identidade que cria uma história de relacionamento compartilhada.';

  @override
  String get metric_73_name => 'Consciência do Mapa do Amor';

  @override
  String get metric_73_description =>
      'Avalia conhecimento do mundo interior, estressores, preferências, medos e vida diária do parceiro.';

  @override
  String get metric_74_name => 'Afeição e Admiração';

  @override
  String get metric_74_description =>
      'Identifica apreciação, respeito, calor, elogios, gratidão e consideração positiva.';

  @override
  String get metric_75_name => 'Desequilíbrio do Trabalho Emocional';

  @override
  String get metric_75_description =>
      'Sinaliza um parceiro carregando planejamento desproporcional, acalmação, lembrança, explicação ou manutenção do relacionamento.';

  @override
  String get metric_76_name => 'Descarte da Carga Mental';

  @override
  String get metric_76_description =>
      'Detecta minimizar trabalho de planejamento invisível, coordenação doméstica, agendamento ou rastreamento de responsabilidade.';

  @override
  String get metric_77_name => 'Sinais de Incompetência Armada';

  @override
  String get metric_77_description =>
      'Procura reivindicar incapacidade, confusão ou impotência para evitar responsabilidade justa.';

  @override
  String get metric_78_name => 'Sensibilidade a Gatilhos de Trauma';

  @override
  String get metric_78_description =>
      'Mede consciência de gatilhos, respostas ao trauma e manejo cuidadoso de tópicos vulneráveis.';

  @override
  String get metric_79_name => 'Sinais de Hipervigilância';

  @override
  String get metric_79_description =>
      'Sinaliza escanear por perigo, monitoramento excessivo do tom, medo de erros ou alerta emocional constante.';

  @override
  String get metric_80_name => 'Linguagem de Medo de Abandono';

  @override
  String get metric_80_description =>
      'Detecta medo de ser deixado, substituído, ignorado, descartado ou abandonado emocionalmente.';

  @override
  String get metric_81_name => 'Padrão de Busca de Tranquilização';

  @override
  String get metric_81_description =>
      'Rastreia pedidos repetidos de prova de amor, compromisso, segurança ou interesse continuado.';

  @override
  String get metric_82_name => 'Ciclo Perseguidor-Distanciador';

  @override
  String get metric_82_description =>
      'Identifica um parceiro escalando busca por proximidade enquanto o outro aumenta a distância.';

  @override
  String get metric_83_name => 'Acumulação de Ressentimento';

  @override
  String get metric_83_description =>
      'Procura queixas armazenadas, referências repetidas ao passado, amargor e dívida emocional não resolvida.';

  @override
  String get metric_84_name => 'Comportamento de Contagem de Pontos';

  @override
  String get metric_84_description =>
      'Sinaliza contagem transacional de falhas, favores, sacrifícios ou erros para ganhar alavanca.';

  @override
  String get metric_85_name => 'Afeição Condicional';

  @override
  String get metric_85_description =>
      'Detecta amor, aprovação, acesso ou calor oferecidos apenas quando a conformidade é alcançada.';

  @override
  String get metric_86_name => 'Indicadores de Love Bombing';

  @override
  String get metric_86_description =>
      'Sinaliza afeição intensa, promessas, pressão ou idealização usadas para acelerar apego ou controle.';

  @override
  String get metric_87_name => 'Tentativas de Hoovering';

  @override
  String get metric_87_description =>
      'Identifica tentativas de puxar alguém de volta através de culpa, nostalgia, promessas, crises ou afeição súbita.';

  @override
  String get metric_88_name => 'Padrão DARVO';

  @override
  String get metric_88_description =>
      'Detecta negar, atacar e inverter vítima-ofensor quando confrontado sobre dano.';

  @override
  String get metric_89_name => 'Padrão de Postura de Vítima';

  @override
  String get metric_89_description =>
      'Sinaliza auto-vitimização recorrente que evita responsabilidade ou redireciona atenção do dano causado.';

  @override
  String get metric_90_name => 'Enquadramento de Superioridade Moral';

  @override
  String get metric_90_description =>
      'Procura retidão, reivindicações de pureza ou superioridade ética usada para dominar conflito.';

  @override
  String get metric_91_name => 'Assassinato de Caráter';

  @override
  String get metric_91_description =>
      'Detecta ataques amplos à identidade, integridade, saúde mental ou valor em vez de comportamento específico.';

  @override
  String get metric_92_name => 'Indicadores de Triangulação';

  @override
  String get metric_92_description =>
      'Sinaliza trazer terceiros ao conflito para pressionar, comparar, validar ou desestabilizar o parceiro.';

  @override
  String get metric_93_name => 'Pressão de Comparação Social';

  @override
  String get metric_93_description =>
      'Procura comparações com ex, amigos, outros casais ou ideais usados para envergonhar ou coagir.';

  @override
  String get metric_94_name => 'Suporte à Autonomia';

  @override
  String get metric_94_description =>
      'Mede respeito por escolhas independentes, amizades, objetivos, limites e agência pessoal.';

  @override
  String get metric_95_name => 'Respeito ao Consentimento e Escolha';

  @override
  String get metric_95_description =>
      'Avalia se as decisões são feitas livremente sem pressão, culpa, ameaças ou manipulação.';

  @override
  String get metric_96_name => 'Planejamento Colaborativo';

  @override
  String get metric_96_description =>
      'Procura agendamento compartilhado, decisões conjuntas, responsabilidades coordenadas e follow-through prático.';

  @override
  String get metric_97_name => 'Follow-through de Reparo';

  @override
  String get metric_97_description =>
      'Mede se mudanças prometidas são posteriormente refletidas no comportamento, não apenas palavras.';

  @override
  String get metric_98_name => 'Evidência de Comportamento Mudado';

  @override
  String get metric_98_description =>
      'Verifica ações observáveis e repetidas mostrando aprendizado, ajuste ou comportamento nocivo reduzido.';

  @override
  String get metric_99_name => 'Linguagem de Segurança Emocional';

  @override
  String get metric_99_description =>
      'Identifica linguagem que convida à honestidade, reduz o medo, protege a dignidade e tranquiliza expressão segura.';

  @override
  String get metric_100_name => 'Ambivalência Relacional';

  @override
  String get metric_100_description =>
      'Detecta incerteza, compromisso misto, mensagens de empurrar-puxar ou desejo pouco claro de continuar.';

  @override
  String get unableToOpenConversations => 'Não é possível abrir conversas';

  @override
  String get unableToOpenConversationsBody =>
      'Algo deu errado ao carregar suas conversas. Por favor, tente novamente.';

  @override
  String get unableToLoadConversationsBody =>
      'Não é possível carregar conversas. Verifique suas permissões e tente novamente.';

  @override
  String get errorLoadingConversationsBody =>
      'Erro ao carregar conversas. Por favor, tente novamente.';

  @override
  String get smsPermissionRequired => 'Permissão SMS necessária';

  @override
  String get smsPermissionRequiredBody =>
      'Para analisar conversas SMS, precisamos de permissão para ler suas mensagens. Sua privacidade é importante — as mensagens são analisadas apenas localmente e nunca armazenadas em nossos servidores.';

  @override
  String get grantSmsPermission => 'Conceder permissão SMS';

  @override
  String get noSmsConversationsFound => 'Nenhuma conversa SMS encontrada';

  @override
  String get noConversationsMatchSearch =>
      'Nenhuma conversa corresponde à sua pesquisa';

  @override
  String get noSmsMessagesOnDevice =>
      'Você não tem mensagens SMS neste dispositivo';

  @override
  String get tryDifferentSearch => 'Tente um termo de pesquisa diferente';

  @override
  String get clearSearch => 'Limpar pesquisa';

  @override
  String selectedFile(String filename) {
    return 'Selecionado: $filename';
  }

  @override
  String get invalidFile => 'Arquivo inválido';

  @override
  String get fileImport => 'Importar arquivo';

  @override
  String get fileImportNotImplemented =>
      'A análise de arquivos ainda não está implementada para este tipo de arquivo.';

  @override
  String get errorPickingFile =>
      'Não é possível abrir o arquivo. Por favor, tente novamente.';

  @override
  String get readyToCapture => 'Pronto para capturar';

  @override
  String get readyToCaptureBody =>
      'Mude para o aplicativo Mensagens agora e comece a tirar capturas de tela.\n\nVolte a este aplicativo quando terminar e toque em \"Concluir e Processar\".';

  @override
  String get noScreenshotsToProcess =>
      'Nenhuma captura de tela para processar.';

  @override
  String processingScreenshot(int current, int total) {
    return 'Processando captura $current de $total...';
  }

  @override
  String get noMessagesFound => 'Nenhuma mensagem encontrada';

  @override
  String get noMessagesFoundBody =>
      'Não foi possível extrair mensagens das capturas de tela.\n\nCertifique-se de que as capturas mostrem claramente a conversa.';

  @override
  String loadedMessages(int count) {
    return '$count mensagens carregadas das capturas de tela';
  }

  @override
  String get processingError => 'Erro de processamento';

  @override
  String get processingErrorBody =>
      'Erro ao processar capturas de tela. Por favor, tente novamente.';

  @override
  String metricListSavedAs(String name) {
    return 'Suas seleções foram salvas como \"$name\".';
  }

  @override
  String metricListLoadedName(String name) {
    return 'As seleções \"$name\" foram recuperadas e aplicadas.';
  }

  @override
  String conversationLoaded(int count, String name) {
    return '$count mensagens carregadas de $name';
  }

  @override
  String get loadButton => 'Carregar';

  @override
  String get photoPermissionRequired =>
      'Permissão da biblioteca de fotos é necessária para detectar capturas de tela.';

  @override
  String get initializingConnection => 'Inicializando conexão segura...';

  @override
  String get configurationRequired => 'Configuração necessária';

  @override
  String get goBack => 'Voltar';

  @override
  String get enableDateRangeFiltering =>
      'Habilitar filtragem por intervalo de datas';

  @override
  String get clearSelectedDateRange => 'Limpar intervalo de datas selecionado';

  @override
  String get largeThreadNoticeTitle => 'AVISO AO USUÁRIO';

  @override
  String get largeThreadNoticeBody =>
      'Ao lidar com threads de texto excepcionalmente grandes, algumas telas de carregamento neste aplicativo podem exceder um minuto e meio às vezes.\n\nO aplicativo não trava. Se você ver um indicador de status girando, o aplicativo ainda está carregando.\n\nPor favor, seja paciente nesses casos, pois o tempo de carregamento pode ser mais longo que o normal em comparação com outros aplicativos, especialmente ao lidar com um conjunto de dados grande como um thread com 50.000 mensagens.';

  @override
  String get neverShowThisAgain => 'Não mostrar esta mensagem novamente';

  @override
  String loadingConversationWith(String name) {
    return 'Carregando conversação\ncom $name…';
  }

  @override
  String get iosCaptureInstructions =>
      '1. Abra o aplicativo Mensagens e selecione a conversa\n2. Role até a mensagem mais antiga que deseja analisar\n3. Toque em \"Iniciar Captura\" abaixo\n4. Tire capturas de tela enquanto rola pela conversa\n5. Quando terminar, toque em \"Concluir e Processar\"';

  @override
  String get howToCaptureIosMessages => 'Como capturar mensagens do iOS';

  @override
  String get deepSeekApiKey => 'Chave API DeepSeek';

  @override
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis =>
      'Insira sua chave API DeepSeek para habilitar a análise de IA.';

  @override
  String get getYourApiKeyFrom =>
      'Obtenha sua chave API em: https://platform.deepseek.com';

  @override
  String get apiKey => 'Chave API';

  @override
  String get skPlaceholder => 'sk-...';

  @override
  String get yourApiKeyIsStoredSecurely =>
      'Sua chave API é armazenada com segurança em seu dispositivo e nunca compartilhada.';

  @override
  String get pleaseEnterApiKey => 'Por favor, insira uma chave API';

  @override
  String get apiKeySavedSuccessfully => 'Chave API salva com sucesso!';

  @override
  String get pleaseBePatientLongerTextThreads =>
      'Por favor, seja paciente, conjuntos de dados de threads de texto mais longos demoram bastante para carregar';

  @override
  String get almostThereBigOne => 'Quase lá, Wow, este deve ter sido grande';

  @override
  String get pleaseBePatientLargeDatasets =>
      'Por favor, seja paciente, conjuntos de dados grandes podem resultar em tempos de carregamento maiores que um minuto e meio';

  @override
  String continuingToLoadMassiveThread(String name) {
    return 'Continuando a carregar o thread massivo com $name…';
  }

  @override
  String get noMessagesInDateRange =>
      'Nenhuma mensagem encontrada no intervalo de datas selecionado. Selecione datas diferentes ou limpe o filtro de data.';

  @override
  String get purchaseCustomMetricTileTitle => 'Comprar Métrica Personalizada';

  @override
  String get purchaseCustomMetricTileDescription =>
      'Por uma taxa única de \$4.99, insira um nome e definição de métrica personalizada salvos permanentemente junto com suas outras métricas para uso em qualquer análise futura. Compre métricas personalizadas ilimitadas.';

  @override
  String get purchaseCustomMetricConfirmTitle =>
      'Comprar Métrica Personalizada';

  @override
  String get purchaseCustomMetricConfirmBody =>
      'Será cobrado \$4.99 (uma única vez) para desbloquear um slot de métrica personalizada.\n\nO nome e a definição da sua métrica personalizada são permanentes e nunca poderão ser alterados após salvos, portanto escolha com cuidado.';

  @override
  String get purchaseCustomMetricConfirmButton => 'Comprar — \$4.99';

  @override
  String get purchaseCustomMetricEnterNameTitle =>
      'Nome da Métrica Personalizada';

  @override
  String get purchaseCustomMetricEnterNamePrompt =>
      'Digite o nome da sua métrica personalizada:';

  @override
  String get purchaseCustomMetricNameHint => 'Nome da Métrica';

  @override
  String get purchaseCustomMetricConfirmNameTitle =>
      'Confirmar Nome da Métrica';

  @override
  String get purchaseCustomMetricConfirmNameYouEntered => 'Você digitou:\n\n';

  @override
  String get purchaseCustomMetricConfirmNameWarning =>
      '\n\n⚠️  Isso é DEFINITIVO e NUNCA poderá ser alterado.';

  @override
  String get purchaseCustomMetricReenterName => 'Ops — Redigitar Nome';

  @override
  String get purchaseCustomMetricSaveName => 'OK — Salvar Nome da Métrica';

  @override
  String purchaseCustomMetricDefineTitleWithName(String name) {
    return 'Definir: $name';
  }

  @override
  String purchaseCustomMetricDefinePromptWithName(String name) {
    return 'Insira o significado da sua Métrica Personalizada: $name';
  }

  @override
  String get purchaseCustomMetricMeaningHint =>
      'Descreva o que esta métrica significa, quais comportamentos ela observa e como se aplica à dinâmica dos relacionamentos...';

  @override
  String get purchaseCustomMetricReenter => 'Ops — Redigitar';

  @override
  String get purchaseCustomMetricSaveMeaning => 'OK — Salvar Significado';

  @override
  String get purchaseCustomMetricPreviewTitle =>
      'Pré-visualizar Sua Métrica Personalizada';

  @override
  String get purchaseCustomMetricPreviewSubtitle =>
      'É assim que seu card ficará:';

  @override
  String get purchaseCustomMetricLastChanceWarning =>
      '⚠️  Esta é sua ÚLTIMA CHANCE de mudar de ideia.\nApós confirmar, o nome e a definição são permanentes.';

  @override
  String get purchaseCustomMetricCancelEverything => 'Cancelar Tudo';

  @override
  String get purchaseCustomMetricCommit => 'Confirmar Métrica Personalizada';

  @override
  String purchaseCustomMetricSuccess(String name) {
    return '✓ \"$name\" adicionado(a) às suas métricas! Agora você pode selecioná-la para análise.';
  }

  @override
  String get purchaseCustomMetricProcessingTitle => 'Processando Compra...';

  @override
  String get purchaseCustomMetricProcessingBody =>
      'Aguardando confirmação da loja.\nPor favor, não feche o aplicativo.';

  @override
  String get next => 'Próximo';

  @override
  String get cancelNotReady => 'Cancelar — Não Estava Pronto(a)';

  @override
  String get packGoodLabel => 'O Bom';

  @override
  String get packBadLabel => 'O Mau';

  @override
  String get packUglyLabel => 'O Feio';

  @override
  String get metric_good_1_name => 'Sinais de Escuta Ativa';

  @override
  String get metric_good_1_description =>
      'Detecta paráfrases, perguntas esclarecedoras e compreensão demonstrada da perspectiva do parceiro no texto.';

  @override
  String get metric_good_2_name => 'Expressão de Apreciação';

  @override
  String get metric_good_2_description =>
      'Identifica gratidão específica, reconhecimento de esforço e valorização das qualidades ou ações positivas do parceiro.';

  @override
  String get metric_good_3_name => 'Linguagem de Afirmação';

  @override
  String get metric_good_3_description =>
      'Procura por declarações que validam os sentimentos, experiências, valor ou direito do parceiro de ter necessidades.';

  @override
  String get metric_good_4_name => 'Tom Colaborativo';

  @override
  String get metric_good_4_description =>
      'Mede o uso de \'nós\', linguagem conjunta de resolução de problemas e enquadrar questões como desafios compartilhados a serem enfrentados juntos.';

  @override
  String get metric_good_5_name => 'Curiosidade pelo Parceiro';

  @override
  String get metric_good_5_description =>
      'Acompanha perguntas sobre os pensamentos, sentimentos, dia, preferências ou experiência interna do parceiro.';

  @override
  String get metric_good_6_name => 'Expressão de Vulnerabilidade';

  @override
  String get metric_good_6_description =>
      'Identifica compartilhar medos, inseguranças, necessidades ou verdades emocionais sem defensividade ou culpa.';

  @override
  String get metric_good_7_name => 'Humor como Conexão';

  @override
  String get metric_good_7_description =>
      'Detecta risadas compartilhadas e brincadeiras que unem os parceiros, sem zombar ou menosprezar.';

  @override
  String get metric_good_8_name => 'Oferecimento de Reasseguramento';

  @override
  String get metric_good_8_description =>
      'Busca declarações proativas que ofereçam conforto, segurança ou confiança ao parceiro ansioso.';

  @override
  String get metric_good_9_name => 'Frequência de Elogios';

  @override
  String get metric_good_9_description =>
      'Mede elogios genuínos e específicos sobre aparência, caráter, habilidades ou ações positivas.';

  @override
  String get metric_good_10_name => 'Disponibilidade Emocional';

  @override
  String get metric_good_10_description =>
      'Avalia a capacidade de resposta às necessidades emocionais do parceiro, presença durante o sofrimento e disposição para se envolver.';

  @override
  String get metric_good_11_name => 'Hábito de Gratidão';

  @override
  String get metric_good_11_description =>
      'Identifica expressões regulares de gratidão por pequenas coisas, esforço, presença ou apoio.';

  @override
  String get metric_good_12_name => 'Linguagem de Apoio';

  @override
  String get metric_good_12_description =>
      'Monitora declarações que oferecem ajuda, encorajamento, crença nas capacidades do parceiro ou apoio ao seu lado.';

  @override
  String get metric_good_13_name => 'Discordância Gentil';

  @override
  String get metric_good_13_description =>
      'Mede a capacidade de expressar opiniões diferentes preservando respeito, curiosidade e o relacionamento.';

  @override
  String get metric_good_14_name => 'Sinceridade no Pedido de Desculpas';

  @override
  String get metric_good_14_description =>
      'Detecta arrependimento genuíno, compreensão do impacto e compromisso com a mudança sem desculpas.';

  @override
  String get metric_good_15_name => 'Aceitação do Perdão';

  @override
  String get metric_good_15_description =>
      'Procura disposição para deixar de lado danos passados, seguir em frente e reconstruir a confiança após a reparação.';

  @override
  String get metric_good_16_name => 'Iniciativa de Tempo de Qualidade';

  @override
  String get metric_good_16_description =>
      'Identifica ofertas para passar tempo focado juntos, planejar atividades ou criar momentos de conexão.';

  @override
  String get metric_good_17_name => 'Sinais de Afeto Físico';

  @override
  String get metric_good_17_description =>
      'Monitora menções de toque, abraços, beijos ou proximidade física como expressões de cuidado e intimidade.';

  @override
  String get metric_good_18_name => 'Reconhecimento de Alegria Compartilhada';

  @override
  String get metric_good_18_description =>
      'Mede a celebração das vitórias, conquistas, felicidade ou boas notícias do parceiro com entusiasmo genuíno.';

  @override
  String get metric_good_19_name => 'Esforço de Resolução de Conflitos';

  @override
  String get metric_good_19_description =>
      'Identifica tentativas de encontrar soluções, compromisso ou restaurar a paz após um desentendimento.';

  @override
  String get metric_good_20_name => 'Demonstração de Paciência';

  @override
  String get metric_good_20_description =>
      'Detecta tolerância ao ritmo, dificuldades, curva de aprendizado ou necessidades de processamento emocional do parceiro.';

  @override
  String get metric_good_21_name => 'Linguagem de Tomada de Perspectiva';

  @override
  String get metric_good_21_description =>
      'Busca declarações que mostram compreensão do ponto de vista, contexto ou realidade emocional do parceiro.';

  @override
  String get metric_good_22_name => 'Sinais de Confiabilidade';

  @override
  String get metric_good_22_description =>
      'Acompanha o cumprimento de promessas, a consistência e a confiabilidade.';

  @override
  String get metric_good_23_name => 'Respeito pelas Diferenças';

  @override
  String get metric_good_23_description =>
      'Mede a aceitação das características únicas, preferências, opiniões e modos de ser do parceiro.';

  @override
  String get metric_good_24_name => 'Abertura ao Feedback';

  @override
  String get metric_good_24_description =>
      'Identifica receptividade às preocupações do parceiro, disposição para ouvir críticas e desejo de melhorar.';

  @override
  String get metric_good_25_name => 'Validação das Emoções';

  @override
  String get metric_good_25_description =>
      'Detecta o reconhecimento de que os sentimentos do parceiro são reais, compreensíveis e dignos de atenção.';

  @override
  String get metric_good_26_name => 'Linguagem de Incentivo';

  @override
  String get metric_good_26_description =>
      'Busca declarações que inspiram confiança, motivam ação ou apoiam os objetivos do parceiro.';

  @override
  String get metric_good_27_name => 'Revelação Íntima';

  @override
  String get metric_good_27_description =>
      'Identifica o compartilhamento de pensamentos pessoais, sonhos, medos ou segredos que aprofundam a conexão emocional.';

  @override
  String get metric_good_28_name => 'Sinais de Sintonia';

  @override
  String get metric_good_28_description =>
      'Mede a percepção do humor, necessidades ou angústia do parceiro sem que seja dito explicitamente.';

  @override
  String get metric_good_29_name => 'Reenquadramento Positivo';

  @override
  String get metric_good_29_description =>
      'Detecta a busca por lados positivos, oportunidades de crescimento ou ângulos construtivos em situações difíceis.';

  @override
  String get metric_good_30_name => 'Linguagem de Compromisso';

  @override
  String get metric_good_30_description =>
      'Monitora expressões de dedicação, pensamento de longo prazo e investimento no futuro do relacionamento.';

  @override
  String get metric_good_31_name => 'Demonstração de Flexibilidade';

  @override
  String get metric_good_31_description =>
      'Identifica disposição para adaptar planos, ajustar expectativas ou encontrar um meio-termo com o parceiro.';

  @override
  String get metric_good_32_name => 'Linguagem Protetora';

  @override
  String get metric_good_32_description =>
      'Busca declarações que mostram que a segurança, o bem-estar e os interesses do parceiro são profundamente importantes.';

  @override
  String get metric_good_33_name => 'Celebração de Marcos';

  @override
  String get metric_good_33_description =>
      'Mede o reconhecimento de aniversários, conquistas ou momentos significativos juntos.';

  @override
  String get metric_good_34_name => 'Feedback Construtivo';

  @override
  String get metric_good_34_description =>
      'Detecta sugestões de melhoria que são gentis, específicas e focadas no crescimento.';

  @override
  String get metric_good_35_name => 'Presença na Adversidade';

  @override
  String get metric_good_35_description =>
      'Identifica a permanência engajada quando o parceiro está enfrentando dificuldades, luto ou desafios.';

  @override
  String get metric_good_36_name => 'Expressão de Admiração';

  @override
  String get metric_good_36_description =>
      'Monitora o respeito genuíno pelo caráter, força, inteligência ou resiliência do parceiro.';

  @override
  String get metric_good_37_name => 'Indicadores de Ludicidade';

  @override
  String get metric_good_37_description =>
      'Procura por brincadeiras leves, piadas internas ou interações divertidas que fortalecem o vínculo.';

  @override
  String get metric_good_38_name => 'Espelhamento Empático';

  @override
  String get metric_good_38_description =>
      'Mede o reflexo das emoções do parceiro para demonstrar compreensão e validação.';

  @override
  String get metric_good_39_name => 'Linguagem de Aceitação';

  @override
  String get metric_good_39_description =>
      'Detecta a aceitação do parceiro como ele é, incluindo defeitos, sem exigir mudanças.';

  @override
  String get metric_good_40_name => 'Presença Solidária';

  @override
  String get metric_good_40_description =>
      'Identifica estar presente sem tentar consertar, oferecendo conforto através da escuta e companhia.';

  @override
  String get metric_good_41_name => 'Interesse Genuíno';

  @override
  String get metric_good_41_description =>
      'Monitora fazer perguntas de acompanhamento e lembrar detalhes sobre a vida e preocupações do parceiro.';

  @override
  String get metric_good_42_name => 'Esforço Recíproco';

  @override
  String get metric_good_42_description =>
      'Mede ambos os parceiros contribuindo igualmente para o trabalho emocional, planejamento e manutenção do relacionamento.';

  @override
  String get metric_good_43_name => 'Linguagem de Perdão';

  @override
  String get metric_good_43_description =>
      'Procura por libertação de ressentimentos, oferecimento de segundas chances e escolha de superar a dor.';

  @override
  String get metric_good_44_name => 'Sinais de Respeito Mútuo';

  @override
  String get metric_good_44_description =>
      'Detecta tratar o parceiro como igual, honrando suas opiniões e valorizando sua contribuição.';

  @override
  String get metric_good_45_name => 'Honestidade Emocional';

  @override
  String get metric_good_45_description =>
      'Identifica expressão verdadeira de sentimentos sem manipulação, exagero ou omissão estratégica.';

  @override
  String get metric_good_46_name => 'Escuta Apoiadora';

  @override
  String get metric_good_46_description =>
      'Mede permitir que o parceiro se expresse completamente sem interromper, julgar ou resolver problemas imediatamente.';

  @override
  String get metric_good_47_name => 'Apelidos Carinhosos';

  @override
  String get metric_good_47_description =>
      'Monitora o uso de termos carinhosos que transmitem calor e conexão íntima.';

  @override
  String get metric_good_48_name => 'Riso Compartilhado';

  @override
  String get metric_good_48_description =>
      'Identifica momentos de humor e alegria mútuos que criam experiências positivas de vínculo.';

  @override
  String get metric_good_49_name => 'Gestos Atenciosos';

  @override
  String get metric_good_49_description =>
      'Busca pequenos atos de bondade, lembrar preferências ou fazer coisas para deixar o parceiro feliz.';

  @override
  String get metric_good_50_name => 'Confiança no Parceiro';

  @override
  String get metric_good_50_description =>
      'Detecta crença nas habilidades, potencial e capacidade do parceiro para lidar com desafios.';

  @override
  String get metric_good_51_name => 'Interdependência Saudável';

  @override
  String get metric_good_51_description =>
      'Mede o equilíbrio entre união e independência, apoiando a autonomia um do outro.';

  @override
  String get metric_good_52_name => 'Desescalada de Conflitos';

  @override
  String get metric_good_52_description =>
      'Identifica linguagem suave, pausas ou ofertas de soluções para acalmar discussões acaloradas.';

  @override
  String get metric_good_53_name => 'Desculpas Sinceras';

  @override
  String get metric_good_53_description =>
      'Monitora o reconhecimento total de erro sem minimizar, defender ou transferir a culpa.';

  @override
  String get metric_good_54_name => 'Ofertas de Apoio Emocional';

  @override
  String get metric_good_54_description =>
      'Busca check-ins proativos, perguntar como o parceiro está e oferecer ajuda.';

  @override
  String get metric_good_55_name => 'Limites Respeitosos';

  @override
  String get metric_good_55_description =>
      'Mede o respeito pelos limites declarados do parceiro, mantendo os próprios limites saudáveis.';

  @override
  String get metric_good_56_name => 'Antecipação Positiva';

  @override
  String get metric_good_56_description =>
      'Detecta entusiasmo sobre o futuro juntos, planejamento e expectativa por experiências compartilhadas.';

  @override
  String get metric_good_57_name => 'Sinais de Atenção';

  @override
  String get metric_good_57_description =>
      'Identifica a lembrança de datas importantes, preferências e detalhes que mostram que o parceiro importa.';

  @override
  String get metric_good_58_name => 'Incentivo ao Crescimento';

  @override
  String get metric_good_58_description =>
      'Acompanha o apoio ao desenvolvimento pessoal, aprendizado e busca de objetivos do parceiro.';

  @override
  String get metric_good_59_name => 'Linguagem Terna';

  @override
  String get metric_good_59_description =>
      'Busca escolhas de palavras suaves e carinhosas que transmitam gentileza e calor emocional.';

  @override
  String get metric_good_60_name => 'Responsabilidade Mútua';

  @override
  String get metric_good_60_description =>
      'Mede ambos os parceiros assumindo responsabilidade por suas ações e seu impacto.';

  @override
  String get metric_good_61_name => 'Celebração do Parceiro';

  @override
  String get metric_good_61_description =>
      'Detecta expressões públicas ou privadas de orgulho, alegria ou admiração pelo parceiro.';

  @override
  String get metric_good_62_name => 'Afeição Consistente';

  @override
  String get metric_good_62_description =>
      'Identifica expressões regulares de amor que não flutuam com base no desempenho ou conformidade.';

  @override
  String get metric_good_63_name => 'Sintonia Emocional';

  @override
  String get metric_good_63_description =>
      'Acompanha a percepção e resposta a mudanças sutis no estado emocional do parceiro.';

  @override
  String get metric_good_64_name => 'Tomada de Decisão Colaborativa';

  @override
  String get metric_good_64_description =>
      'Avalia discutir opções juntos e tomar decisões que consideram as necessidades de ambos os parceiros.';

  @override
  String get metric_good_65_name => 'Reconforto Sem Exigência';

  @override
  String get metric_good_65_description =>
      'Busca oferecer conforto e segurança sem exigir que o parceiro os mereça.';

  @override
  String get metric_good_66_name => 'Conexão Autêntica';

  @override
  String get metric_good_66_description =>
      'Detecta presença genuína, compartilhamento real e abandono de fingimentos nas interações.';

  @override
  String get metric_good_67_name => 'Incentivo Mútuo';

  @override
  String get metric_good_67_description =>
      'Identifica ambos os parceiros torcendo um pelo outro e celebrando esforços, não apenas resultados.';

  @override
  String get metric_good_68_name => 'Questionamento Respeitoso';

  @override
  String get metric_good_68_description =>
      'Acompanha perguntar sobre a perspectiva do parceiro com curiosidade genuína, não interrogatório.';

  @override
  String get metric_good_69_name => 'Consistência Amorosa';

  @override
  String get metric_good_69_description =>
      'Mede aparecer da mesma forma nos bons e maus momentos, confiável no afeto.';

  @override
  String get metric_good_70_name => 'Reciprocidade Emocional';

  @override
  String get metric_good_70_description =>
      'Busca ambos os parceiros compartilhando sentimentos, necessidades e vulnerabilidades de forma equilibrada.';

  @override
  String get metric_good_71_name => 'Presença Alegre';

  @override
  String get metric_good_71_description =>
      'Detecta felicidade genuína na companhia do parceiro e entusiasmo pelo tempo juntos.';

  @override
  String get metric_good_72_name => 'Diálogo Construtivo';

  @override
  String get metric_good_72_description =>
      'Identifica conversas que avançam para o entendimento, não para vencer ou provar estar certo.';

  @override
  String get metric_good_73_name => 'Defesa Protetora';

  @override
  String get metric_good_73_description =>
      'Monitora a defesa do parceiro, protegendo-o e priorizando seu bem-estar.';

  @override
  String get metric_good_74_name => 'Comunicação Consciente';

  @override
  String get metric_good_74_description =>
      'Mede a escolha cuidadosa das palavras, considerando o impacto antes de falar e a comunicação intencional.';

  @override
  String get metric_good_75_name => 'Investimento no Relacionamento';

  @override
  String get metric_good_75_description =>
      'Observa o tempo, energia e recursos dedicados a nutrir a parceria.';

  @override
  String get metric_good_76_name => 'Linguagem de Base Segura';

  @override
  String get metric_good_76_description =>
      'Detecta a oferta de estabilidade, segurança e uma base a partir da qual o parceiro pode explorar.';

  @override
  String get metric_good_77_name => 'Admiração Mútua';

  @override
  String get metric_good_77_description =>
      'Identifica ambos os parceiros expressando respeito e apreço pelas qualidades um do outro.';

  @override
  String get metric_good_78_name => 'Momentos Ternos';

  @override
  String get metric_good_78_description =>
      'Monitora a criação ou reconhecimento de momentos íntimos e silenciosos de conexão e proximidade.';

  @override
  String get metric_good_79_name => 'Curiosidade Genuína';

  @override
  String get metric_good_79_description =>
      'Observa o interesse genuíno em compreender os pensamentos, sentimentos e experiências do parceiro.';

  @override
  String get metric_good_80_name => 'Aceitação Amorosa';

  @override
  String get metric_good_80_description =>
      'Detecta a aceitação do parceiro como um todo, incluindo imperfeições e passado.';

  @override
  String get metric_good_81_name => 'Apoio ao Crescimento Mútuo';

  @override
  String get metric_good_81_description =>
      'Identifica ambos os parceiros incentivando o desenvolvimento um do outro e celebrando o progresso.';

  @override
  String get metric_good_82_name => 'Indicadores de Tom Afetuoso';

  @override
  String get metric_good_82_description =>
      'Monitora o uso de linguagem afetuosa, frases gentis e um estilo de comunicação suave.';

  @override
  String get metric_good_83_name => 'Engajamento Responsivo';

  @override
  String get metric_good_83_description =>
      'Mede respostas rápidas e engajadas às mensagens e investidas emocionais do parceiro.';

  @override
  String get metric_good_84_name => 'Alinhamento de Valores Compartilhados';

  @override
  String get metric_good_84_description =>
      'Busca referências a crenças, objetivos ou filosofias de vida comuns que unem o casal.';

  @override
  String get metric_good_85_name => 'Apoio Incondicional';

  @override
  String get metric_good_85_description =>
      'Detecta o apoio ao parceiro em dificuldades sem tornar o suporte condicional.';

  @override
  String get metric_good_86_name => 'Vulnerabilidade Íntima';

  @override
  String get metric_good_86_description =>
      'Identifica o compartilhamento de medos profundos, sonhos ou inseguranças que aprofundam os laços emocionais.';

  @override
  String get metric_good_87_name => 'Linguagem de Respeito Mútuo';

  @override
  String get metric_good_87_description =>
      'Monitora a valorização das perspectivas, escolhas e autonomia do outro na comunicação.';

  @override
  String get metric_good_88_name => 'Enquadramento Positivo';

  @override
  String get metric_good_88_description =>
      'Mede a capacidade de ver o melhor nas situações e no parceiro, focando nos pontos fortes.';

  @override
  String get metric_good_89_name => 'Resolução Colaborativa de Problemas';

  @override
  String get metric_good_89_description =>
      'Busca a colaboração em soluções que beneficiem ambos os parceiros igualmente.';

  @override
  String get metric_good_90_name => 'Validação Emocional';

  @override
  String get metric_good_90_description =>
      'Detecta a confirmação de que os sentimentos do parceiro fazem sentido e são aceitáveis.';

  @override
  String get metric_good_91_name => 'Gentileza Constante';

  @override
  String get metric_good_91_description =>
      'Identifica pequenos atos regulares de cuidado que mostram que o parceiro é lembrado e valorizado.';

  @override
  String get metric_good_92_name => 'Celebração Mútua';

  @override
  String get metric_good_92_description =>
      'Acompanha quando ambos os parceiros estão genuinamente felizes com os sucessos e alegrias um do outro.';

  @override
  String get metric_good_93_name => 'Linguagem de Apego Seguro';

  @override
  String get metric_good_93_description =>
      'Mede a expressão de confiança, conforto com a intimidade e confiança no relacionamento.';

  @override
  String get metric_good_94_name => 'Consideração Atenta';

  @override
  String get metric_good_94_description =>
      'Observa a tomada de decisões considerando as necessidades e sentimentos do parceiro.';

  @override
  String get metric_good_95_name => 'Presença Amorosa';

  @override
  String get metric_good_95_description =>
      'Detecta estar totalmente presente e engajado, mostrando ao parceiro que ele é o mais importante.';

  @override
  String get metric_good_96_name => 'Linguagem de Cuidado Genuíno';

  @override
  String get metric_good_96_description =>
      'Acompanha expressões autênticas de preocupação, cuidado e investimento no bem-estar do parceiro.';

  @override
  String get metric_good_97_name => 'Compromisso com o Relacionamento';

  @override
  String get metric_good_97_description =>
      'Mede a expressão de dedicação à parceria e disposição para enfrentar desafios.';

  @override
  String get metric_good_98_name => 'Expressão Autêntica de Amor';

  @override
  String get metric_good_98_description =>
      'Observa expressões consistentes e genuínas de amor que parecem reais e incondicionais.';

  @override
  String get metric_good_99_name => 'Definição de Metas Mútuas';

  @override
  String get metric_good_99_description =>
      'Identifica parceiros definindo colaborativamente sonhos, prioridades e direção para o futuro juntos.';

  @override
  String get metric_good_100_name => 'Reconhecimento de Tentativa de Reparação';

  @override
  String get metric_good_100_description =>
      'Detecta perceber e responder positivamente às tentativas do parceiro para desescalar o conflito e restaurar a conexão.';

  @override
  String get metric_bad_1_name => 'Agressão Passiva';

  @override
  String get metric_bad_1_description =>
      'Deteta hostilidade indireta através de procrastinação, esquecimento, sarcasmo ou sabotagem subtil em vez de expressão direta.';

  @override
  String get metric_bad_2_name => 'Armamento da Culpa';

  @override
  String get metric_bad_2_description =>
      'Identifica o uso de linguagem de culpa, vergonha ou obrigação para manipular decisões ou impedir o estabelecimento de limites.';

  @override
  String get metric_bad_3_name => 'Chantagem Emocional';

  @override
  String get metric_bad_3_description =>
      'Sinaliza ameaças de automutilação, abandono ou retirada de amor para controlar comportamento ou impedir discussão.';

  @override
  String get metric_bad_4_name => 'Reclamação Crônica';

  @override
  String get metric_bad_4_description =>
      'Monitora negatividade persistente, ruminação ou reclamação sem buscar soluções ou mudanças colaborativas.';

  @override
  String get metric_bad_5_name => 'Vergonha por Comparação';

  @override
  String get metric_bad_5_description =>
      'Identifica comparações desfavoráveis com ex-parceiros, amigos ou familiares para envergonhar ou coagir mudanças de comportamento.';

  @override
  String get metric_bad_6_name => 'Escuta Condicional';

  @override
  String get metric_bad_6_description =>
      'Detecta ouvir apenas quando beneficia o ouvinte ou serve à sua agenda, em vez de compreensão genuína.';

  @override
  String get metric_bad_7_name => 'Memória Seletiva';

  @override
  String get metric_bad_7_description =>
      'Monitora o esquecimento conveniente de promessas, acordos ou comportamentos prejudiciais passados para evitar responsabilidade.';

  @override
  String get metric_bad_8_name => 'Busca de Atenção Através de Crise';

  @override
  String get metric_bad_8_description =>
      'Identifica escalada dramática, criação de crise ou exagero para obter atenção ou simpatia.';

  @override
  String get metric_bad_9_name => 'Teste de Limites';

  @override
  String get metric_bad_9_description =>
      'Detecta sondagem ou pressão repetida sobre limites declarados para determinar se serão aplicados.';

  @override
  String get metric_bad_10_name => 'Ocultação de Informações';

  @override
  String get metric_bad_10_description =>
      'Identifica omissão deliberada de fatos relevantes, contexto ou transparência para manter o controle.';

  @override
  String get metric_bad_11_name => 'Raiva Desproporcional';

  @override
  String get metric_bad_11_description =>
      'Monitora respostas de raiva desproporcionais ao incidente que as desencadeou.';

  @override
  String get metric_bad_12_name => 'Dependência de Reafirmação';

  @override
  String get metric_bad_12_description =>
      'Sinaliza necessidade constante de validação, perguntas repetidas sobre compromisso ou provas infinitas de amor.';

  @override
  String get metric_bad_13_name => 'Esquiva de Conversas';

  @override
  String get metric_bad_13_description =>
      'Detecta recusa em abordar preocupações, frases de evasão ou encerramento de discussões importantes.';

  @override
  String get metric_bad_14_name => 'Padrão de Contradição';

  @override
  String get metric_bad_14_description =>
      'Identifica declarações, promessas ou posições contraditórias que geram confusão ou desestabilização.';

  @override
  String get metric_bad_15_name => 'Desqualificação por Rótulos';

  @override
  String get metric_bad_15_description =>
      'Sinaliza rotular preocupações como \"louca\", \"dramática\", \"paranoica\" ou \"exagerada\" para invalidá-las.';

  @override
  String get metric_bad_16_name => 'Empatia Seletiva';

  @override
  String get metric_bad_16_description =>
      'Detecta empatia oferecida apenas quando conveniente ou quando serve aos interesses do falante.';

  @override
  String get metric_bad_17_name => 'Enquadramento Transacional';

  @override
  String get metric_bad_17_description =>
      'Identifica \"você me deve\", \"depois de tudo que fiz\" ou ver atos relacionais como criação de dívida.';

  @override
  String get metric_bad_18_name => 'Reciclagem de Queixas';

  @override
  String get metric_bad_18_description =>
      'Monitora trazer à tona queixas antigas repetidamente ou usar danos passados como munição em conflitos atuais.';

  @override
  String get metric_bad_19_name => 'Linguagem de Exigência';

  @override
  String get metric_bad_19_description =>
      'Identifica imperativos, comandos ou ultimatos em vez de pedidos ou resolução colaborativa de problemas.';

  @override
  String get metric_bad_20_name => 'Indisponibilidade Emocional';

  @override
  String get metric_bad_20_description =>
      'Deteta recusa consistente em envolver-se emocionalmente, partilhar sentimentos ou oferecer conforto.';

  @override
  String get metric_bad_21_name => 'Interpretação Hostil';

  @override
  String get metric_bad_21_description =>
      'Identifica a interpretação de declarações neutras como ataques ou a leitura de mensagens ambíguas como hostis.';

  @override
  String get metric_bad_22_name => 'Enquadramento de Direito';

  @override
  String get metric_bad_22_description =>
      'Sinaliza linguagem que sugere que o falante merece tratamento especial, exceções ou prioridade.';

  @override
  String get metric_bad_23_name => 'Crítica Disfarçada de Ajuda';

  @override
  String get metric_bad_23_description =>
      'Deteta críticas disfarçadas de \"só estou a tentar ajudar\" ou \"para o teu bem\".';

  @override
  String get metric_bad_24_name => 'Padrões de Negligência';

  @override
  String get metric_bad_24_description =>
      'Identifica falha consistente em satisfazer necessidades emocionais, físicas ou relacionais.';

  @override
  String get metric_bad_25_name => 'Ruminação de Conflitos';

  @override
  String get metric_bad_25_description =>
      'Monitoriza a repetição obsessiva de conflitos sem avançar para a resolução ou encerramento.';

  @override
  String get metric_bad_26_name => 'Desvalorização da Sensibilidade';

  @override
  String get metric_bad_26_description =>
      'Sinaliza afirmações como \"és demasiado sensível\" ou \"estás a exagerar\" para desvalorizar sentimentos.';

  @override
  String get metric_bad_27_name => 'Enquadramento Competitivo';

  @override
  String get metric_bad_27_description =>
      'Deteta o enquadramento da relação como uma competição onde um parceiro deve vencer ou dominar.';

  @override
  String get metric_bad_28_name => 'Padrões Duplos';

  @override
  String get metric_bad_28_description =>
      'Identifica a aplicação de regras diferentes para si mesmo versus o parceiro ou a mudança arbitrária de expectativas.';

  @override
  String get metric_bad_29_name => 'Afeto como Punição';

  @override
  String get metric_bad_29_description =>
      'Sinaliza a remoção de afeto, atenção ou comunicação como retaliação por ofensas percebidas.';

  @override
  String get metric_bad_30_name => 'Rotação de Culpa';

  @override
  String get metric_bad_30_description =>
      'Monitora a rotação da culpa entre o parceiro, as circunstâncias e fatores externos para evitar responsabilidade.';

  @override
  String get metric_bad_31_name => 'Zombaria Retórica';

  @override
  String get metric_bad_31_description =>
      'Detecta perguntas retóricas ou sarcásticas usadas para zombar em vez de compreender.';

  @override
  String get metric_bad_32_name => 'Lembretes de Sacrifício';

  @override
  String get metric_bad_32_description =>
      'Identifica lembretes ao parceiro de sacrifícios, favores ou apoio para criar dívida e conformidade.';

  @override
  String get metric_bad_33_name => 'Escalada Deliberada';

  @override
  String get metric_bad_33_description =>
      'Sinaliza a escalada deliberada da intensidade para sobrecarregar a capacidade do parceiro de responder racionalmente.';

  @override
  String get metric_bad_34_name => 'Vulnerabilidade Estratégica';

  @override
  String get metric_bad_34_description =>
      'Detecta o compartilhamento de emoções apenas quando serve a propósitos de manipulação ou controle.';

  @override
  String get metric_bad_35_name => 'Desvio por Contra-ataque';

  @override
  String get metric_bad_35_description =>
      'Identifica o desvio do foco das preocupações do parceiro levantando questões não relacionadas ou contra-acusações.';

  @override
  String get metric_bad_36_name => 'Linguagem de Superioridade';

  @override
  String get metric_bad_36_description =>
      'Sinaliza linguagem de superioridade, condescendência ou enquadramento do parceiro como inferior.';

  @override
  String get metric_bad_37_name => 'Padrão de Saída de Conflito';

  @override
  String get metric_bad_37_description =>
      'Detecta padrão de abandonar conversas, recusar-se a participar ou criar distância durante conflitos.';

  @override
  String get metric_bad_38_name => 'Viés Negativo';

  @override
  String get metric_bad_38_description =>
      'Monitora a interpretação consistente de ações neutras ou positivas como negativas ou suspeitas.';

  @override
  String get metric_bad_39_name => 'Negação de Agência';

  @override
  String get metric_bad_39_description =>
      'Identifica \'tenho que\', \'você me faz\' ou linguagem que remove a agência pessoal do falante.';

  @override
  String get metric_bad_40_name => 'Silêncio como Controle';

  @override
  String get metric_bad_40_description =>
      'Sinaliza o uso de silêncio ou não resposta como forma de punição ou controle.';

  @override
  String get metric_bad_41_name => 'Hipocrisia de Privacidade';

  @override
  String get metric_bad_41_description =>
      'Detecta recusa em compartilhar informações enquanto exige transparência do parceiro.';

  @override
  String get metric_bad_42_name => 'Feedback Duro Não Solicitado';

  @override
  String get metric_bad_42_description =>
      'Identifica feedback duro apresentado como \'construtivo\' ou \'útil\' sem consentimento.';

  @override
  String get metric_bad_43_name => 'Cuidado Condicional';

  @override
  String get metric_bad_43_description =>
      'Sinaliza apoio oferecido apenas quando o parceiro atende às expectativas do falante.';

  @override
  String get metric_bad_44_name => 'Negação de Impacto';

  @override
  String get metric_bad_44_description =>
      'Detecta \'não foi minha intenção\' ou \'você está interpretando demais\' após causar dano.';

  @override
  String get metric_bad_45_name => 'Mentalidade de Dívida';

  @override
  String get metric_bad_45_description =>
      'Monitora trazer à tona ajuda ou apoio passado para criar dívida e controlar comportamento atual.';

  @override
  String get metric_bad_46_name => 'Evasão de Responsabilidade';

  @override
  String get metric_bad_46_description =>
      'Sinaliza um padrão consistente de não assumir a responsabilidade pelo impacto das ações.';

  @override
  String get metric_bad_47_name => 'Desconsideração de Necessidades';

  @override
  String get metric_bad_47_description =>
      'Identifica o tratamento das necessidades do parceiro como inconvenientes, irracionais ou sem importância.';

  @override
  String get metric_bad_48_name => 'Manipulação Emocional';

  @override
  String get metric_bad_48_description =>
      'Sinaliza o uso estratégico de emoções para controlar resultados ou evitar responsabilização.';

  @override
  String get metric_bad_49_name => 'Evitação da Intimidade';

  @override
  String get metric_bad_49_description =>
      'Monitora o afastamento consistente da proximidade emocional ou física sem explicação.';

  @override
  String get metric_bad_50_name => 'Crítica Velada';

  @override
  String get metric_bad_50_description =>
      'Identifica críticas disfarçadas de piadas, observações ou comentários casuais.';

  @override
  String get metric_bad_51_name => 'Minimização de Preocupações';

  @override
  String get metric_bad_51_description =>
      'Sinaliza a redução das preocupações do parceiro à insignificância ou exagero.';

  @override
  String get metric_bad_52_name => 'Imposição de Culpa';

  @override
  String get metric_bad_52_description =>
      'Identifica o uso de culpa ou vergonha para garantir que o parceiro atenda às expectativas.';

  @override
  String get metric_bad_53_name => 'Resistência ao Pedido de Desculpas';

  @override
  String get metric_bad_53_description =>
      'Monitora a resistência em pedir desculpas, justificar o dano ou recusar-se a reconhecer o impacto.';

  @override
  String get metric_bad_54_name => 'Rejeição de Perspectiva';

  @override
  String get metric_bad_54_description =>
      'Sinaliza a recusa em considerar ou validar o ponto de vista ou experiência do parceiro.';

  @override
  String get metric_bad_55_name => 'Racionamento Emocional';

  @override
  String get metric_bad_55_description =>
      'Detecta a limitação deliberada da expressão emocional ou da conexão como forma de controle.';

  @override
  String get metric_bad_56_name => 'Manipulação por Obrigação';

  @override
  String get metric_bad_56_description =>
      'Sinaliza o uso de apoio ou sacrifício passado para manipular decisões atuais.';

  @override
  String get metric_bad_57_name => 'Resistência ao Crescimento';

  @override
  String get metric_bad_57_description =>
      'Monitora a resistência em modificar comportamentos prejudiciais, apesar de pedidos ou impacto demonstrado.';

  @override
  String get metric_bad_58_name => 'Negação do Dano';

  @override
  String get metric_bad_58_description =>
      'Detecta a recusa em reconhecer ou levar a sério o impacto do próprio comportamento.';

  @override
  String get metric_bad_59_name => 'Perguntas Carregadas';

  @override
  String get metric_bad_59_description =>
      'Sinaliza intenção crítica disfarçada de perguntas inocentes ou expressões de curiosidade.';

  @override
  String get metric_bad_60_name => 'Tom Desdenhoso';

  @override
  String get metric_bad_60_description =>
      'Identifica atitude desdenhosa ou desprezo transmitidos por padrões de texto e escolha de palavras.';

  @override
  String get metric_bad_61_name => 'Ciclo de Culpa';

  @override
  String get metric_bad_61_description =>
      'Detecta o uso repetido de culpa sobre apoio ou sacrifício passado para controlar o comportamento atual.';

  @override
  String get metric_bad_62_name => 'Resguardo Emocional';

  @override
  String get metric_bad_62_description =>
      'Monitora a recusa em compartilhar emoções, medos ou necessidades com o parceiro como retenção protetora.';

  @override
  String get metric_bad_63_name => 'Negociação de Limites';

  @override
  String get metric_bad_63_description =>
      'Sinaliza o tratamento de limites estabelecidos como sugestões ou negociáveis, em vez de compromissos firmes.';

  @override
  String get metric_bad_64_name => 'Ausência Emocional';

  @override
  String get metric_bad_64_description =>
      'Detecta a recusa consistente em fornecer apoio emocional ou presença engajada.';

  @override
  String get metric_bad_65_name => 'Registro de Favores';

  @override
  String get metric_bad_65_description =>
      'Sinaliza o registro mental de favores, apoio ou sacrifícios para uso posterior como alavanca.';

  @override
  String get metric_bad_66_name => 'Esquiva da Honestidade';

  @override
  String get metric_bad_66_description =>
      'Detecta padrão de ocultar a verdade, omitir fatos ou ser deliberadamente vago.';

  @override
  String get metric_bad_67_name => 'Negação de Validade';

  @override
  String get metric_bad_67_description =>
      'Identifica o tratamento dos sentimentos, necessidades ou preocupações do parceiro como inválidos ou ilegítimos.';

  @override
  String get metric_bad_68_name => 'Crítica Disfarçada de Conselho';

  @override
  String get metric_bad_68_description =>
      'Sinaliza críticas apresentadas como preocupação, conselho ou observação útil.';

  @override
  String get metric_bad_69_name => 'Indicadores de Superioridade';

  @override
  String get metric_bad_69_description =>
      'Detecta superioridade, zombaria ou desdém na linguagem ou estilo de comunicação.';

  @override
  String get metric_bad_70_name => 'Resistência à Reparação';

  @override
  String get metric_bad_70_description =>
      'Monitora a resistência em fazer as pazes, reconectar ou reconstruir após conflitos.';

  @override
  String get metric_bad_71_name => 'Desconsideração do Esforço';

  @override
  String get metric_bad_71_description =>
      'Sinaliza minimizar ou ignorar as tentativas do parceiro de melhorar ou resolver problemas.';

  @override
  String get metric_bad_72_name => 'Padrão de Distanciamento Emocional';

  @override
  String get metric_bad_72_description =>
      'Detecta padrão de longo prazo de distanciamento emocional ou recusa em se engajar autenticamente.';

  @override
  String get metric_bad_73_name => 'Enquadramento de Inferioridade';

  @override
  String get metric_bad_73_description =>
      'Identifica enquadrar o parceiro como inferior, imperfeito ou indigno de respeito total.';

  @override
  String get metric_bad_74_name => 'Resistência a Feedback';

  @override
  String get metric_bad_74_description =>
      'Detecta resistência em ouvir críticas, recusa em escutar ou interromper a discussão.';

  @override
  String get metric_bad_75_name => 'Desconsideração de Preocupações';

  @override
  String get metric_bad_75_description =>
      'Identifica tratar as preocupações ou medos do parceiro como infundados ou irracionais.';

  @override
  String get metric_bad_76_name => 'Busca de Falhas';

  @override
  String get metric_bad_76_description =>
      'Sinaliza um padrão crônico de encontrar falhas, reclamar ou atacar o caráter do parceiro.';

  @override
  String get metric_bad_77_name => 'Ciclo de Culpa por Sacrifício';

  @override
  String get metric_bad_77_description =>
      'Identifica trazer repetidamente apoio passado para criar culpa ou controlar o comportamento.';

  @override
  String get metric_bad_78_name => 'Ambiguidade de Compromisso';

  @override
  String get metric_bad_78_description =>
      'Monitora linguagem de compromisso pouco clara ou vacilante, sinais mistos ou relutância em se comprometer.';

  @override
  String get metric_bad_79_name => 'Desconsideração de Pedidos';

  @override
  String get metric_bad_79_description =>
      'Sinaliza ignorar, recusar ou atrasar a resposta a pedidos razoáveis do parceiro.';

  @override
  String get metric_bad_80_name => 'Táticas de Controle Emocional';

  @override
  String get metric_bad_80_description =>
      'Detecta uso estratégico de emoções para controlar resultados ou evitar responsabilidade.';

  @override
  String get metric_bad_81_name => 'Mentalidade de Troca';

  @override
  String get metric_bad_81_description =>
      'Sinaliza ver o relacionamento através da lente de dívida, obrigação ou troca transacional.';

  @override
  String get metric_bad_82_name => 'Resistência ao Desenvolvimento Pessoal';

  @override
  String get metric_bad_82_description =>
      'Detecta resistência ao desenvolvimento pessoal, aprendizado ou mudança de padrões prejudiciais.';

  @override
  String get metric_bad_83_name => 'Rejeição à Melhoria';

  @override
  String get metric_bad_83_description =>
      'Identifica minimização ou rejeição dos esforços do parceiro para melhorar ou resolver problemas.';

  @override
  String get metric_bad_84_name => 'Crítica Crônica';

  @override
  String get metric_bad_84_description =>
      'Sinaliza padrão crônico de crítica disfarçada de preocupação, ajuda ou cuidado.';

  @override
  String get metric_bad_85_name => 'Esquiva de Soluções';

  @override
  String get metric_bad_85_description =>
      'Detecta padrão consistente de evitar encerramento, avanço ou busca de soluções viáveis.';

  @override
  String get metric_bad_86_name => 'Padrão de Desvio de Culpa';

  @override
  String get metric_bad_86_description =>
      'Sinaliza padrão habitual de redirecionar responsabilidade para fatores externos ou o parceiro.';

  @override
  String get metric_bad_87_name => 'Respostas Desdenhosas';

  @override
  String get metric_bad_87_description =>
      'Identifica padrão de descartar contribuições, ideias ou sugestões do parceiro sem consideração.';

  @override
  String get metric_bad_88_name => 'Expressão de Ressentimento';

  @override
  String get metric_bad_88_description =>
      'Detecta tom de ressentimento, amargura ou frustração de longa data na comunicação.';

  @override
  String get metric_bad_89_name => 'Mensagens Ambivalentes';

  @override
  String get metric_bad_89_description =>
      'Sinaliza mensagens ambíguas sobre compromisso, desejo incerto de continuar ou dinâmicas de puxa-empurra.';

  @override
  String get metric_bad_90_name => 'Mudança de Expectativas';

  @override
  String get metric_bad_90_description =>
      'Identifica mudança de expectativas sem comunicação, seguida de culpa ao parceiro por não atendê-las.';

  @override
  String get metric_bad_91_name => 'Hábito de Desvio';

  @override
  String get metric_bad_91_description =>
      'Detecta a evasão habitual de respostas diretas ou o redirecionamento de conversas para longe da responsabilidade.';

  @override
  String get metric_bad_92_name => 'Manipulação Através da Bondade';

  @override
  String get metric_bad_92_description =>
      'Sinaliza generosidade exagerada usada estrategicamente para criar obrigação ou baixar defesas.';

  @override
  String get metric_bad_93_name => 'Padrão de Atraso Crônico';

  @override
  String get metric_bad_93_description =>
      'Identifica desrespeito consistente pelo tempo do parceiro através de atrasos ou compromissos de agenda quebrados.';

  @override
  String get metric_bad_94_name => 'Minimização do Progresso';

  @override
  String get metric_bad_94_description =>
      'Monitora a desconsideração ou falha em reconhecer o crescimento pessoal genuíno ou as melhorias do parceiro.';

  @override
  String get metric_bad_95_name => 'Armamento Emocional';

  @override
  String get metric_bad_95_description =>
      'Detecta o uso das vulnerabilidades ou medos revelados pelo parceiro contra ele em conflitos.';

  @override
  String get metric_bad_96_name => 'Táticas Adjacentes ao Gaslighting';

  @override
  String get metric_bad_96_description =>
      'Identifica táticas sutis de distorção da realidade que criam dúvidas sem ser gaslighting completo.';

  @override
  String get metric_bad_97_name => 'Muro de Pedra Passivo';

  @override
  String get metric_bad_97_description =>
      'Sinaliza desengajamento sutil, respostas monossilábicas ou presença ausente como evitação.';

  @override
  String get metric_bad_98_name => 'Controle Narrativo';

  @override
  String get metric_bad_98_description =>
      'Detecta a insistência em ser a única autoridade sobre o que aconteceu, como foi sentido ou o que foi significado.';

  @override
  String get metric_bad_99_name => 'Desvio de Responsabilidade';

  @override
  String get metric_bad_99_description =>
      'Monitora o redirecionamento consistente da responsabilidade para fatores externos, terceiros ou o comportamento do parceiro.';

  @override
  String get metric_bad_100_name => 'Indisponibilidade Emocional';

  @override
  String get metric_bad_100_description =>
      'Sinaliza retirada crônica da intimidade emocional, vulnerabilidade ou conexão significativa quando o parceiro precisa de proximidade.';

  @override
  String get metric_ugly_1_name => 'Ameaças de Violência Física';

  @override
  String get metric_ugly_1_description =>
      'Detecta ameaças explícitas ou veladas de bater, ferir ou agredir fisicamente o parceiro.';

  @override
  String get metric_ugly_2_name => 'Referências a Posse de Armas';

  @override
  String get metric_ugly_2_description =>
      'Sinaliza menções a armas de fogo, facas ou outras armas no contexto de raiva, controle ou capacidade de causar dano.';

  @override
  String get metric_ugly_3_name => 'Indicadores de Estrangulamento';

  @override
  String get metric_ugly_3_description =>
      'Identifica linguagem ou referências a estrangulamento, aperto no pescoço, sufocação ou asfixia.';

  @override
  String get metric_ugly_4_name => 'Armamento de Ameaça Suicida';

  @override
  String get metric_ugly_4_description =>
      'Detecta ameaças de automutilação usadas para controlar, manipular ou punir o parceiro.';

  @override
  String get metric_ugly_5_name => 'Linguagem de Ideação Homicida';

  @override
  String get metric_ugly_5_description =>
      'Sinaliza declarações que expressam intenção, planejamento ou desejo de matar o parceiro.';

  @override
  String get metric_ugly_6_name => 'Padrões de Risco de Letalidade';

  @override
  String get metric_ugly_6_description =>
      'Identifica sinais de alto risco de letalidade: acesso a armas, obsessão, escalada e ameaças de separação combinados.';

  @override
  String get metric_ugly_7_name => 'Linguagem de Obsessão por Perseguição';

  @override
  String get metric_ugly_7_description =>
      'Detecta monitoramento obsessivo de localização, perseguição, visitas surpresa ou busca persistente indesejada.';

  @override
  String get metric_ugly_8_name => 'Imposição de Isolamento Forçado';

  @override
  String get metric_ugly_8_description =>
      'Sinaliza demandas agressivas para cortar todo contato com família, amigos, trabalho ou externo.';

  @override
  String get metric_ugly_9_name => 'Sabotagem Econômica';

  @override
  String get metric_ugly_9_description =>
      'Identifica a destruição deliberada do emprego, crédito, finanças ou estabilidade econômica.';

  @override
  String get metric_ugly_10_name => 'Coerção Reprodutiva';

  @override
  String get metric_ugly_10_description =>
      'Detecta gravidez forçada, pressão para aborto, adulteração de contracepção ou controle reprodutivo.';

  @override
  String get metric_ugly_11_name => 'Pressão de Coerção Sexual';

  @override
  String get metric_ugly_11_description =>
      'Sinaliza sexo forçado, atos sexuais coagidos, pressão após recusa ou linguagem de punição sexual.';

  @override
  String get metric_ugly_12_name => 'Linguagem Sexual Não Consensual';

  @override
  String get metric_ugly_12_description =>
      'Identifica ameaças ou descrições explícitas ou implícitas de agressão sexual não consensual.';

  @override
  String get metric_ugly_13_name => 'Ameaças de Dano Infantil';

  @override
  String get metric_ugly_13_description =>
      'Detecta ameaças de prejudicar, negligenciar ou abusar de crianças como alavanca ou punição contra o parceiro.';

  @override
  String get metric_ugly_14_name => 'Uso da Custódia como Arma';

  @override
  String get metric_ugly_14_description =>
      'Sinaliza ameaças de levar crianças, negar acesso ou usar a custódia como mecanismo de controle.';

  @override
  String get metric_ugly_15_name => 'Ameaças de Dano a Animais';

  @override
  String get metric_ugly_15_description =>
      'Identifica ameaças de ferir, matar ou abusar de animais de estimação como punição ou demonstração de controle.';

  @override
  String get metric_ugly_16_name => 'Táticas de Privação de Sono';

  @override
  String get metric_ugly_16_description =>
      'Sinaliza privação deliberada de sono, interrupção constante ou exaustão como método de controle.';

  @override
  String get metric_ugly_17_name => 'Linguagem de Confinamento';

  @override
  String get metric_ugly_17_description =>
      'Sinaliza trancar, impedir a saída ou confinar o parceiro a um local.';

  @override
  String get metric_ugly_18_name => 'Linguagem de Aliciamento Predatório';

  @override
  String get metric_ugly_18_description =>
      'Sinaliza manipulação sistemática para baixar defesas, construir falsa confiança e depois explorar o parceiro.';

  @override
  String get metric_ugly_19_name => 'Linguagem de Desumanização';

  @override
  String get metric_ugly_19_description =>
      'Detecta a descrição do parceiro como um animal, objeto, subumano ou indigno de direitos básicos.';

  @override
  String get metric_ugly_20_name => 'Escalada de Raiva Narcisista';

  @override
  String get metric_ugly_20_description =>
      'Detecta raiva explosiva desencadeada por ofensas percebidas, críticas ou qualquer perda de controle.';

  @override
  String get metric_ugly_21_name => 'Alegações Obsessivas de Posse';

  @override
  String get metric_ugly_21_description =>
      'Sinaliza linguagem que alega posse, direitos de propriedade ou controle total sobre a pessoa do parceiro.';

  @override
  String get metric_ugly_22_name => 'Padrões de Mentira Patológica';

  @override
  String get metric_ugly_22_description =>
      'Identifica mentiras consistentes, elaboradas ou desnecessárias sobre assuntos sérios sem motivo aparente.';

  @override
  String get metric_ugly_23_name => 'Linguagem de Fantasia de Vingança';

  @override
  String get metric_ugly_23_description =>
      'Identifica fantasias detalhadas sobre ferir, humilhar ou destruir o parceiro.';

  @override
  String get metric_ugly_24_name => 'Fixação Obsessiva por Traição';

  @override
  String get metric_ugly_24_description =>
      'Detecta ruminação obsessiva, acusação e punição focadas em infidelidade percebida.';

  @override
  String get metric_ugly_25_name => 'Agressão por Pânico de Abandono';

  @override
  String get metric_ugly_25_description =>
      'Sinaliza respostas violentas ou agressivas ao abandono percebido ou qualquer tentativa de separação.';

  @override
  String get metric_ugly_26_name => 'Escalada de Ameaças de Separação';

  @override
  String get metric_ugly_26_description =>
      'Identifica ameaças extremas ou comportamentos perigosos desencadeados por tentativas de término ou separação.';

  @override
  String get metric_ugly_27_name => 'Ameaças de Assédio Pós-Separação';

  @override
  String get metric_ugly_27_description =>
      'Sinaliza ameaças de perseguição, dano ou contato forçado após o término do relacionamento.';

  @override
  String get metric_ugly_28_name => 'Ameaças de Sequestro Parental';

  @override
  String get metric_ugly_28_description =>
      'Identifica ameaças de levar os filhos e fugir ou escondê-los permanentemente do outro progenitor.';

  @override
  String get metric_ugly_29_name => 'Agenda de Alienação Parental';

  @override
  String get metric_ugly_29_description =>
      'Sinaliza tentativas sistemáticas de virar os filhos contra o outro progenitor através de manipulação.';

  @override
  String get metric_ugly_30_name => 'Indiferença à Testemunha Infantil';

  @override
  String get metric_ugly_30_description =>
      'Identifica desconsideração pelo fato de os filhos testemunharem abuso, conflito ou dano emocional.';

  @override
  String get metric_ugly_31_name => 'Linguagem de Tráfico Humano';

  @override
  String get metric_ugly_31_description =>
      'Identifica linguagem que sugere vender, trocar ou explorar sexualmente o parceiro.';

  @override
  String get metric_ugly_32_name => 'Linguagem de Escravidão';

  @override
  String get metric_ugly_32_description =>
      'Identifica linguagem que trata o parceiro como propriedade, escravo ou pessoa inteiramente possuída sem direitos.';

  @override
  String get metric_ugly_33_name => 'Ameaças de Servidão por Dívidas';

  @override
  String get metric_ugly_33_description =>
      'Detecta ameaças de prender o parceiro através de dívidas fabricadas ou obrigações financeiras.';

  @override
  String get metric_ugly_34_name => 'Exigências de Trabalho Forçado';

  @override
  String get metric_ugly_34_description =>
      'Sinaliza exigências de trabalho não remunerado, servidão ou trabalho sob ameaça de dano ou punição.';

  @override
  String get metric_ugly_35_name => 'Normalização da Exploração';

  @override
  String get metric_ugly_35_description =>
      'Identifica a apresentação de exploração severa como normal, merecida, consensual ou até benéfica.';

  @override
  String get metric_ugly_36_name => 'Segmentação de Vulnerabilidade';

  @override
  String get metric_ugly_36_description =>
      'Identifica a segmentação deliberada de indivíduos isolados, economicamente dependentes ou psicologicamente vulneráveis.';

  @override
  String get metric_ugly_37_name => 'Engenharia de Vínculo Traumático';

  @override
  String get metric_ugly_37_description =>
      'Detecta a criação deliberada de ciclos de alívio do medo projetados para criar dependência emocional profunda.';

  @override
  String get metric_ugly_38_name => 'Abuso de Reforço Intermitente';

  @override
  String get metric_ugly_38_description =>
      'Sinaliza ciclos imprevisíveis de recompensa e punição severa usados para criar dependência psicológica.';

  @override
  String get metric_ugly_39_name => 'Indução de Desamparo Aprendido';

  @override
  String get metric_ugly_39_description =>
      'Identifica a remoção sistemática de autonomia, recursos e opções percebidas de fuga.';

  @override
  String get metric_ugly_40_name => 'Linguagem de Apagamento de Identidade';

  @override
  String get metric_ugly_40_description =>
      'Sinaliza exigências para abandonar personalidade, interesses, aparência ou senso central de identidade.';

  @override
  String get metric_ugly_41_name => 'Aniquilação da Autonomia';

  @override
  String get metric_ugly_41_description =>
      'Detecta a eliminação sistemática do pensamento independente, tomada de decisão ou autonomia pessoal.';

  @override
  String get metric_ugly_42_name => 'Táticas de Controle de Pensamento';

  @override
  String get metric_ugly_42_description =>
      'Sinaliza exigências para pensar, acreditar ou sentir apenas conforme o parceiro controlador dita.';

  @override
  String get metric_ugly_43_name => 'Imposição de Entorpecimento Emocional';

  @override
  String get metric_ugly_43_description =>
      'Identifica punição por demonstrar emoções ou exigências explícitas para suprimir todos os sentimentos.';

  @override
  String get metric_ugly_44_name => 'Criação de Trauma Complexo';

  @override
  String get metric_ugly_44_description =>
      'Sinaliza padrões sistemáticos que criam trauma de nível de TEPT complexo por meio de abuso crônico.';

  @override
  String get metric_ugly_45_name => 'Inflição de Trauma de Traição';

  @override
  String get metric_ugly_45_description =>
      'Identifica traição deliberada projetada para destruir a confiança fundamental e a segurança psicológica.';

  @override
  String get metric_ugly_46_name => 'Linguagem de Dano Moral';

  @override
  String get metric_ugly_46_description =>
      'Detecta a imposição ao parceiro de violar seus próprios valores profundos ou cometer atos prejudiciais.';

  @override
  String get metric_ugly_47_name => 'Linguagem de Ameaça Existencial';

  @override
  String get metric_ugly_47_description =>
      'Sinaliza ameaças à existência, identidade central, sanidade ou vontade de viver do parceiro.';

  @override
  String get metric_ugly_48_name => 'Linguagem de Coerção Suicida';

  @override
  String get metric_ugly_48_description =>
      'Identifica o impulso ao parceiro em direção à ideação suicida por meio de abuso sustentado e desesperança fabricada.';

  @override
  String get metric_ugly_49_name => 'Mitologia de Justificação';

  @override
  String get metric_ugly_49_description =>
      'Identifica narrativas inventadas elaboradas apresentadas para justificar o abuso como necessário, merecido ou justo.';

  @override
  String get metric_ugly_50_name => 'Inversão da Narrativa de Vítima';

  @override
  String get metric_ugly_50_description =>
      'Detecta inversão completa onde o abusador alega ser a verdadeira vítima de seu próprio abuso.';

  @override
  String get metric_ugly_51_name => 'Pregação de Normalização do Abuso';

  @override
  String get metric_ugly_51_description =>
      'Sinaliza ensinar ou insistir que o abuso é normal, saudável ou benéfico para o parceiro.';

  @override
  String get metric_ugly_52_name => 'Ideologia Predatória';

  @override
  String get metric_ugly_52_description =>
      'Identifica justificativa ideológica para exploração, dominação ou dano ao parceiro.';

  @override
  String get metric_ugly_53_name => 'Mensagem de Líder de Seita';

  @override
  String get metric_ugly_53_description =>
      'Detecta mensagens que alegam conhecimento especial, direito divino ou autoridade superior sobre o parceiro.';

  @override
  String get metric_ugly_54_name => 'Linguagem de Cronograma de Aliciamento';

  @override
  String get metric_ugly_54_description =>
      'Sinaliza referências a um plano de manipulação de longo prazo ou descrições de uma progressão de aliciamento.';

  @override
  String get metric_ugly_55_name => 'Campanha de Humilhação Crônica';

  @override
  String get metric_ugly_55_description =>
      'Identifica um padrão sustentado de humilhação pública ou privada destinado a destruir a autoestima.';

  @override
  String get metric_ugly_56_name => 'Bloqueio de Saída de Segurança';

  @override
  String get metric_ugly_56_description =>
      'Detecta a prevenção ativa de que o parceiro acesse rotas de fuga, sistemas de apoio ou recursos de segurança.';

  @override
  String get metric_ugly_57_name => 'Ameaças de Confisco de Documentos';

  @override
  String get metric_ugly_57_description =>
      'Sinaliza ameaças ou ações para pegar, esconder ou destruir documentos de identidade para impedir a fuga.';

  @override
  String get metric_ugly_58_name => 'Padrões de Ciúmes Violentos';

  @override
  String get metric_ugly_58_description =>
      'Identifica ciúmes que escalaram para ameaças explícitas, vigilância ou retaliação violenta.';

  @override
  String get metric_ugly_59_name => 'Padrões de Explosão de Raiva';

  @override
  String get metric_ugly_59_description =>
      'Detecta descrições ou padrões de explosões violentas desproporcionais a qualquer gatilho.';

  @override
  String get metric_ugly_60_name => 'Escalada de Controle Coercitivo';

  @override
  String get metric_ugly_60_description =>
      'Monitora o aumento da gravidade e amplitude das táticas de controle coercitivo ao longo do tempo.';

  @override
  String get metric_ugly_61_name => 'Linguagem de Conformidade Baseada em Medo';

  @override
  String get metric_ugly_61_description =>
      'Identifica conformidade motivada inteiramente pelo medo de violência ou punição severa, em vez de escolha.';

  @override
  String get metric_ugly_62_name => 'Linguagem de Ritual de Punição';

  @override
  String get metric_ugly_62_description =>
      'Detecta referências a práticas sistemáticas de punição usadas para impor conformidade e controle.';

  @override
  String get metric_ugly_63_name => 'Indicadores de Ritual de Degradação';

  @override
  String get metric_ugly_63_description =>
      'Sinaliza rituais sistemáticos de degradação ou humilhação destinados a destruir a dignidade.';

  @override
  String get metric_ugly_64_name => 'Ameaças de Exposição Não Consensual';

  @override
  String get metric_ugly_64_description =>
      'Identifica ameaças de expor imagens íntimas, informações privadas ou segredos sem consentimento.';

  @override
  String get metric_ugly_65_name => 'Ameaças de Abuso Baseado em Imagens';

  @override
  String get metric_ugly_65_description =>
      'Detecta ameaças de distribuir imagens íntimas como vingança, punição ou chantagem.';

  @override
  String get metric_ugly_66_name => 'Táticas de Aprisionamento Financeiro';

  @override
  String get metric_ugly_66_description =>
      'Sinaliza a criação deliberada de dependência financeira que impossibilita a sobrevivência independente.';

  @override
  String get metric_ugly_67_name => 'Linguagem de Ameaça Habitacional';

  @override
  String get metric_ugly_67_description =>
      'Detecta ameaças de deixar o parceiro sem-teto, remover o acesso à moradia ou destruir a segurança do lar.';

  @override
  String get metric_ugly_68_name => 'Ameaças de Status Migratório';

  @override
  String get metric_ugly_68_description =>
      'Identifica ameaças de denunciar o status migratório ou revogar o patrocínio de visto como forma de controle.';

  @override
  String get metric_ugly_69_name => 'Abuso Religioso ou Espiritual';

  @override
  String get metric_ugly_69_description =>
      'Detecta o uso de autoridade religiosa, doutrina ou ameaça espiritual para controlar, punir ou prejudicar.';

  @override
  String get metric_ugly_70_name => 'Armamento da Vergonha Cultural';

  @override
  String get metric_ugly_70_description =>
      'Sinaliza ameaças de expor comportamentos à comunidade cultural ou familiar como punição.';

  @override
  String get metric_ugly_71_name => 'Ameaças de Dano Familiar';

  @override
  String get metric_ugly_71_description =>
      'Identifica ameaças de prejudicar familiares, filhos ou entes queridos do parceiro como forma de pressão.';

  @override
  String get metric_ugly_72_name => 'Campanha de Assédio Coordenado';

  @override
  String get metric_ugly_72_description =>
      'Detecta a organização de outras pessoas para assediar, perseguir ou intimidar coletivamente o parceiro.';

  @override
  String get metric_ugly_73_name => 'Ameaças de Denúncia Falsa';

  @override
  String get metric_ugly_73_description =>
      'Ameaça de fazer denúncias falsas à polícia ou acusações legais contra o parceiro.';

  @override
  String get metric_ugly_74_name => 'Armamento do Sistema Legal';

  @override
  String get metric_ugly_74_description =>
      'Identifica o uso de processos legais, tribunais ou ordens de proteção como armas de assédio.';

  @override
  String get metric_ugly_75_name => 'Violação de Ordem de Restrição';

  @override
  String get metric_ugly_75_description =>
      'Detecta referências à violação ou planejamento de violação de ordens de proteção ou de não contato.';

  @override
  String get metric_ugly_76_name => 'Ameaças de Sabotagem no Trabalho';

  @override
  String get metric_ugly_76_description =>
      'Sinaliza ameaças de contatar empregador, colegas ou clientes para destruir o sustento do parceiro.';

  @override
  String get metric_ugly_77_name => 'Ameaças de Aniquilação Social';

  @override
  String get metric_ugly_77_description =>
      'Detecta ameaças de destruir a reputação, relacionamentos e posição social do parceiro.';

  @override
  String get metric_ugly_78_name => 'Campanha Sistemática de Engano';

  @override
  String get metric_ugly_78_description =>
      'Identifica engano elaborado de longo prazo projetado para explorar o parceiro financeira ou emocionalmente.';

  @override
  String get metric_ugly_79_name => 'Destruição de Propriedade como Terror';

  @override
  String get metric_ugly_79_description =>
      'Identifica destruição deliberada da propriedade do parceiro como tática de intimidação.';

  @override
  String get metric_ugly_80_name =>
      'Crueldade Animal como Terror por Procuração';

  @override
  String get metric_ugly_80_description =>
      'Detecta ferir ou ameaçar animais de estimação para demonstrar capacidade de violência ao parceiro.';

  @override
  String get metric_ugly_81_name =>
      'Linguagem de Colocação de Crianças em Risco';

  @override
  String get metric_ugly_81_description =>
      'Sinaliza colocar crianças em situações perigosas ou ameaçar fazê-lo como forma de pressão.';

  @override
  String get metric_ugly_82_name => 'Controle Baseado em Deficiência';

  @override
  String get metric_ugly_82_description =>
      'Detecta a exploração da deficiência do parceiro ao controlar o acesso a medicamentos, mobilidade ou cuidados.';

  @override
  String get metric_ugly_83_name => 'Controle por Crise Fabricada';

  @override
  String get metric_ugly_83_description =>
      'Sinaliza a criação deliberada de emergências ou crises para aumentar a dependência do parceiro ou justificar monitoramento.';

  @override
  String get metric_ugly_84_name => 'Isolamento de Serviços de Emergência';

  @override
  String get metric_ugly_84_description =>
      'Identifica a prevenção ativa de que o parceiro chame a polícia, ambulância ou serviços de crise.';

  @override
  String get metric_ugly_85_name => 'Trajetória de Escalada de Ameaças';

  @override
  String get metric_ugly_85_description =>
      'Monitora o aumento mensurável na gravidade, especificidade ou frequência de ameaças ao longo do tempo.';

  @override
  String get metric_ugly_86_name => 'Indicadores de Avaliação de Letalidade';

  @override
  String get metric_ugly_86_description =>
      'Sinaliza combinações de fatores associados ao maior risco de homicídio íntimo.';

  @override
  String get metric_ugly_87_name => 'Táticas de Tortura Psicológica';

  @override
  String get metric_ugly_87_description =>
      'Identifica abuso psicológico sustentado projetado para quebrar a estabilidade mental do parceiro.';

  @override
  String get metric_ugly_88_name => 'Linguagem de Cativeiro';

  @override
  String get metric_ugly_88_description =>
      'Detecta referências a manter o parceiro cativo, impedir a saída ou controlar todos os movimentos.';

  @override
  String get metric_ugly_89_name => 'Planejamento de Violência Direcionada';

  @override
  String get metric_ugly_89_description =>
      'Detecta qualquer linguagem indicando planejamento, preparação ou contagem regressiva para violência contra o parceiro.';

  @override
  String get metric_ugly_90_name => 'Recrutamento de Ameaça por Terceiros';

  @override
  String get metric_ugly_90_description =>
      'Identifica o recrutamento de amigos, familiares ou outros para ameaçar ou prejudicar o parceiro.';

  @override
  String get metric_ugly_91_name => 'Exploração de Ideação Suicida';

  @override
  String get metric_ugly_91_description =>
      'Identifica a exploração da crise suicida do parceiro como alavanca ou para impedi-lo de buscar ajuda.';

  @override
  String get metric_ugly_92_name => 'Ameaças de Envenenamento ou Drogas';

  @override
  String get metric_ugly_92_description =>
      'Detecta ameaças ou referências a drogas, envenenamento ou adulteração da comida ou bebida do parceiro.';

  @override
  String get metric_ugly_93_name => 'Exploração de Autolesão Não Suicida';

  @override
  String get metric_ugly_93_description =>
      'Identifica a exploração do comportamento autolesivo do parceiro como alavanca, zombaria ou controle adicional.';

  @override
  String get metric_ugly_94_name => 'Linguagem de Indução à Dissociação';

  @override
  String get metric_ugly_94_description =>
      'Detecta padrões projetados para causar dissociação, distanciamento ou despersonalização no parceiro.';

  @override
  String get metric_ugly_95_name => 'Implantação de Distorção Cognitiva';

  @override
  String get metric_ugly_95_description =>
      'Detecta a instalação deliberada de crenças falsas sobre si mesmo, a realidade ou a sanidade do parceiro.';

  @override
  String get metric_ugly_96_name => 'Obstrução de Cuidados Médicos';

  @override
  String get metric_ugly_96_description =>
      'Detecta a prevenção do acesso a medicamentos, médicos, hospitais ou tratamento de saúde.';

  @override
  String get metric_ugly_97_name => 'Linguagem de Ameaça Extremista';

  @override
  String get metric_ugly_97_description =>
      'Identifica linguagem emprestada de estruturas ideológicas extremistas ou violentas aplicadas ao parceiro.';

  @override
  String get metric_ugly_98_name => 'Sinais de Perseguição Pós-Separação';

  @override
  String get metric_ugly_98_description =>
      'Detecta ameaças, linguagem de vigilância ou táticas de intimidação após ou antecipando um término.';

  @override
  String get metric_ugly_99_name => 'Instrumentalização de Crianças';

  @override
  String get metric_ugly_99_description =>
      'Identifica o uso de crianças como peões, ameaças relacionadas à custódia ou alavancagem dos laços parentais como mecanismos de controle.';

  @override
  String get metric_ugly_100_name => 'Desumanização Sistemática';

  @override
  String get metric_ugly_100_description =>
      'Detecta linguagem sustentada que despoja o parceiro de personalidade, dignidade ou do direito à humanidade básica.';

  @override
  String get metric_narcissist_1_name => 'Autoimportância Grandiosa';

  @override
  String get metric_narcissist_1_description =>
      'Alegações exageradas de realizações, talentos ou status além de evidências realistas, frequentemente com um senso de singularidade.';

  @override
  String get metric_narcissist_2_name => 'Exigências de Direito';

  @override
  String get metric_narcissist_2_description =>
      'Expectativas irracionais de tratamento especial ou conformidade automática com seus desejos sem reciprocidade.';

  @override
  String get metric_narcissist_3_name => 'Déficit de Empatia';

  @override
  String get metric_narcissist_3_description =>
      'Incapacidade ou falta de vontade de reconhecer ou validar os sentimentos dos outros, descartando necessidades emocionais como irrelevantes.';

  @override
  String get metric_narcissist_4_name => 'Busca de Admiração';

  @override
  String get metric_narcissist_4_description =>
      'Pesca excessiva por admiração, elogios ou validação para reforçar a autoestima frágil.';

  @override
  String get metric_narcissist_5_name => 'Táticas de Triangulação';

  @override
  String get metric_narcissist_5_description =>
      'Introdução de um terceiro em conflitos para criar ciúmes, competição ou manipular percepções.';

  @override
  String get metric_narcissist_6_name => 'Intensidade do Love Bombing';

  @override
  String get metric_narcissist_6_description =>
      'Elogios, presentes ou atenção avassaladores no início de um relacionamento para ganhar controle e idealizar o alvo.';

  @override
  String get metric_narcissist_7_name => 'Crítica de Desvalorização';

  @override
  String get metric_narcissist_7_description =>
      'Mudança repentina para críticas severas, menosprezo ou desprezo após a idealização, corroendo a autoestima do alvo.';

  @override
  String get metric_narcissist_8_name => 'Punição do Tratamento de Silêncio';

  @override
  String get metric_narcissist_8_description =>
      'Retenção de comunicação ou afeto como punição deliberada para induzir ansiedade e conformidade.';

  @override
  String get metric_narcissist_9_name => 'Mudança de Culpa DARVO';

  @override
  String get metric_narcissist_9_description =>
      'Negação de responsabilidade, ataque ao acusador e inversão dos papéis de vítima e ofensor para evitar responsabilização.';

  @override
  String get metric_narcissist_10_name =>
      'Distorção da Realidade por Gaslighting';

  @override
  String get metric_narcissist_10_description =>
      'Negação ou distorção de fatos, eventos ou sentimentos para fazer o alvo duvidar de sua própria memória ou sanidade.';

  @override
  String get metric_narcissist_11_name => 'Raiva à Crítica';

  @override
  String get metric_narcissist_11_description =>
      'Raiva intensa, desprezo ou retaliação em resposta a qualquer desprezo percebido ou feedback, mesmo que construtivo.';

  @override
  String get metric_narcissist_12_name => 'Violação de Limites';

  @override
  String get metric_narcissist_12_description =>
      'Ignorar ou ultrapassar limites declarados, privacidade ou espaço pessoal sem remorso ou negociação.';

  @override
  String get metric_narcissist_13_name => 'Expressão de Inveja';

  @override
  String get metric_narcissist_13_description =>
      'Ressentimento pelos sucessos ou posses dos outros, frequentemente acompanhado de desvalorização ou tentativas de minar.';

  @override
  String get metric_narcissist_14_name => 'Comportamento Exploratório';

  @override
  String get metric_narcissist_14_description =>
      'Usar os outros para ganho pessoal, status ou recursos sem considerar seu bem-estar ou consentimento.';

  @override
  String get metric_narcissist_15_name => 'Manipulação por Espelhamento';

  @override
  String get metric_narcissist_15_description =>
      'Imitar os interesses, valores ou traços do alvo para criar falsa afinidade e ganhar confiança.';

  @override
  String get metric_narcissist_16_name => 'Alegações de Superioridade';

  @override
  String get metric_narcissist_16_description =>
      'Afirmar superioridade inerente sobre os outros, frequentemente com linguagem condescendente ou desdenhosa.';

  @override
  String get metric_narcissist_17_name => 'Preocupação com Fantasia';

  @override
  String get metric_narcissist_17_description =>
      'Conversa obsessiva sobre sucesso ilimitado, poder, brilhantismo ou amor ideal que é irrealista.';

  @override
  String get metric_narcissist_18_name => 'Afirmação de Status Especial';

  @override
  String get metric_narcissist_18_description =>
      'Crença de que só podem ser compreendidos ou associar-se a pessoas ou instituições de alto status.';

  @override
  String get metric_narcissist_19_name => 'Exploração Interpessoal';

  @override
  String get metric_narcissist_19_description =>
      'Aproveitar-se dos recursos, tempo ou emoções dos outros sem reciprocidade ou gratidão.';

  @override
  String get metric_narcissist_20_name => 'Falta de Remorso';

  @override
  String get metric_narcissist_20_description =>
      'Ausência de culpa ou desculpas após causar dano, frequentemente justificando ações como merecidas pelo alvo.';

  @override
  String get metric_narcissist_21_name => 'Mineração Competitiva';

  @override
  String get metric_narcissist_21_description =>
      'Sabotar as conquistas ou relacionamentos dos outros para manter uma posição superior.';

  @override
  String get metric_narcissist_22_name => 'Fase de Idealização';

  @override
  String get metric_narcissist_22_description =>
      'Elogios e adoração excessivos no início de um relacionamento, estabelecendo expectativas irreais para o alvo.';

  @override
  String get metric_narcissist_23_name => 'Fase de Desvalorização';

  @override
  String get metric_narcissist_23_description =>
      'Críticas e desprezo graduais ou repentinos após a idealização, criando confusão e autodúvida.';

  @override
  String get metric_narcissist_24_name => 'Impulso de Descarte';

  @override
  String get metric_narcissist_24_description =>
      'Encerrar abruptamente relacionamentos quando o alvo não fornece mais suprimento narcisista ou o desafia.';

  @override
  String get metric_narcissist_25_name => 'Tentativas de Hoovering';

  @override
  String get metric_narcissist_25_description =>
      'Reengajar um alvo descartado com promessas, culpa ou manipulação para recuperar o suprimento.';

  @override
  String get metric_narcissist_26_name => 'Projeção de Defeitos';

  @override
  String get metric_narcissist_26_description =>
      'Acusar os outros de seus próprios traços ou comportamentos negativos para evitar autoconsciência.';

  @override
  String get metric_narcissist_27_name => 'Controle por Culpa';

  @override
  String get metric_narcissist_27_description =>
      'Usar declarações indutoras de culpa para manipular os outros a cumprir ou cuidar.';

  @override
  String get metric_narcissist_28_name => 'Volatilidade Emocional';

  @override
  String get metric_narcissist_28_description =>
      'Mudanças rápidas de humor, de charme a raiva, frequentemente desencadeadas por lesão narcisista percebida.';

  @override
  String get metric_narcissist_29_name => 'Invalidação de Sentimentos';

  @override
  String get metric_narcissist_29_description =>
      'Descartar ou minimizar as emoções dos outros como reações exageradas ou irracionais.';

  @override
  String get metric_narcissist_30_name => 'Monopolização de Conversas';

  @override
  String get metric_narcissist_30_description =>
      'Dominar o diálogo com tópicos autofocados, interrompendo ou ignorando a contribuição dos outros.';

  @override
  String get metric_narcissist_31_name => 'Depreciação por Ofensas';

  @override
  String get metric_narcissist_31_description =>
      'Usar insultos, rótulos ou termos depreciativos para desvalorizar e controlar o alvo.';

  @override
  String get metric_narcissist_32_name => 'Ameaças de Abandono';

  @override
  String get metric_narcissist_32_description =>
      'Usar o medo da perda ou rejeição para coagir conformidade ou atenção.';

  @override
  String get metric_narcissist_33_name => 'Fazer-se de Vítima';

  @override
  String get metric_narcissist_33_description =>
      'Apresentar-se como injustiçado para obter simpatia e desviar a responsabilidade.';

  @override
  String get metric_narcissist_34_name => 'Complexo de Mártir';

  @override
  String get metric_narcissist_34_description =>
      'Afirmar sacrifício ou sofrimento excessivo para induzir culpa e obrigação nos outros.';

  @override
  String get metric_narcissist_35_name => 'Memória Seletiva';

  @override
  String get metric_narcissist_35_description =>
      'Esquecer convenientemente promessas, acordos ou ações prejudiciais para evitar responsabilidade.';

  @override
  String get metric_narcissist_36_name => 'Bloqueio Comunicativo';

  @override
  String get metric_narcissist_36_description =>
      'Recusar-se a dialogar, ignorar perguntas ou encerrar discussões para manter o controle.';

  @override
  String get metric_narcissist_37_name => 'Falsas Promessas Futuras';

  @override
  String get metric_narcissist_37_description =>
      'Fazer promessas grandiosas sobre planos futuros compartilhados para criar falsa esperança e dependência.';

  @override
  String get metric_narcissist_38_name => 'Campanha Difamatória';

  @override
  String get metric_narcissist_38_description =>
      'Espalhar rumores maliciosos ou mentiras sobre o alvo para isolá-lo e danificar sua reputação.';

  @override
  String get metric_narcissist_39_name => 'Táticas de Isolamento';

  @override
  String get metric_narcissist_39_description =>
      'Desencorajar ou impedir contato com amigos, familiares ou sistemas de apoio para aumentar a dependência.';

  @override
  String get metric_narcissist_40_name => 'Exploração Financeira';

  @override
  String get metric_narcissist_40_description =>
      'Manipular ou controlar recursos financeiros para ganho pessoal ou criar dependência.';

  @override
  String get metric_narcissist_41_name => 'Coerção Sexual';

  @override
  String get metric_narcissist_41_description =>
      'Usar pressão, culpa ou manipulação para obter conformidade sexual sem consentimento genuíno.';

  @override
  String get metric_narcissist_42_name => 'Teste de Limites';

  @override
  String get metric_narcissist_42_description =>
      'Empurrar repetidamente os limites para ver qual comportamento é tolerado, depois escalar as violações.';

  @override
  String get metric_narcissist_43_name => 'Negação Gaslighting';

  @override
  String get metric_narcissist_43_description =>
      'Negar categoricamente eventos ou declarações que ocorreram, fazendo o alvo questionar a realidade.';

  @override
  String get metric_narcissist_44_name => 'Minimização de Preocupações';

  @override
  String get metric_narcissist_44_description =>
      'Descartar queixas legítimas como sem importância ou excessivamente sensíveis.';

  @override
  String get metric_narcissist_45_name => 'Externalização de Culpa';

  @override
  String get metric_narcissist_45_description =>
      'Atribuir todos os problemas e conflitos aos outros, nunca aceitando falha pessoal.';

  @override
  String get metric_narcissist_46_name => 'Provocação de Ciúmes';

  @override
  String get metric_narcissist_46_description =>
      'Flertar ou elogiar outros para incitar ciúmes e manter controle emocional.';

  @override
  String get metric_narcissist_47_name => 'Chantagem Emocional';

  @override
  String get metric_narcissist_47_description =>
      'Usar medo, obrigação ou culpa para manipular decisões e comportamentos.';

  @override
  String get metric_narcissist_48_name => 'Pseudo-Insight';

  @override
  String get metric_narcissist_48_description =>
      'Fingir autoconsciência ou empatia para parecer reformado, depois reverter a padrões tóxicos.';

  @override
  String get metric_narcissist_49_name => 'Tom Desdenhoso';

  @override
  String get metric_narcissist_49_description =>
      'Usar sarcasmo, zombaria ou linguagem desdenhosa para degradar e descartar os outros.';

  @override
  String get metric_narcissist_50_name => 'Fantasias de Vingança';

  @override
  String get metric_narcissist_50_description =>
      'Expressar desejos de retaliação ou punição contra aqueles que os ofenderam.';

  @override
  String get metric_serial_killer_1_name => 'Enquadramento Predatório';

  @override
  String get metric_serial_killer_1_description =>
      'Detecta linguagem que posiciona o falante como caçador e o alvo como presa, indicando intenção predatória.';

  @override
  String get metric_serial_killer_2_name => 'Déficit de Empatia';

  @override
  String get metric_serial_killer_2_description =>
      'Identifica declarações que carecem de ressonância emocional ou preocupação com o sofrimento alheio, sugerindo insensibilidade.';

  @override
  String get metric_serial_killer_3_name => 'Rótulos Desumanizantes';

  @override
  String get metric_serial_killer_3_description =>
      'Sinaliza o uso de termos depreciativos ou rótulos objetificantes que despojam as vítimas de sua humanidade.';

  @override
  String get metric_serial_killer_4_name => 'Sinais de Objetificação';

  @override
  String get metric_serial_killer_4_description =>
      'Reconhece linguagem que trata indivíduos como ferramentas ou objetos para gratificação.';

  @override
  String get metric_serial_killer_5_name => 'Fixação por Controle';

  @override
  String get metric_serial_killer_5_description =>
      'Detecta referências obsessivas a dominação, manipulação ou imposição de conformidade.';

  @override
  String get metric_serial_killer_6_name => 'Tom de Busca de Emoção';

  @override
  String get metric_serial_killer_6_description =>
      'Identifica excitação ou entusiasmo ao descrever atos arriscados, violentos ou predatórios.';

  @override
  String get metric_serial_killer_7_name =>
      'Marcadores de Compartimentalização';

  @override
  String get metric_serial_killer_7_description =>
      'Sinaliza mudanças abruptas entre tópicos normais e violentos, indicando separação psicológica.';

  @override
  String get metric_serial_killer_8_name => 'Sinais de Seleção de Vítimas';

  @override
  String get metric_serial_killer_8_description =>
      'Detecta critérios ou preferências para alvejar grupos vulneráveis específicos.';

  @override
  String get metric_serial_killer_9_name => 'Prazer Sádico';

  @override
  String get metric_serial_killer_9_description =>
      'Reconhece prazer derivado da dor, medo ou sofrimento alheio.';

  @override
  String get metric_serial_killer_10_name => 'Dano Manipulativo';

  @override
  String get metric_serial_killer_10_description =>
      'Identifica linguagem usada para enganar ou coagir outros a situações prejudiciais.';

  @override
  String get metric_serial_killer_11_name => 'Indicadores de Perseguição';

  @override
  String get metric_serial_killer_11_description =>
      'Sinaliza rastreamento detalhado, vigilância ou monitoramento obsessivo de um alvo.';

  @override
  String get metric_serial_killer_12_name => 'Linguagem de Aliciamento';

  @override
  String get metric_serial_killer_12_description =>
      'Detecta táticas graduais de construção de confiança para explorar ou abusar de vítimas.';

  @override
  String get metric_serial_killer_13_name => 'Fantasia Violenta';

  @override
  String get metric_serial_killer_13_description =>
      'Identifica descrições vívidas de causar dano ou matar outros como um ensaio mental.';

  @override
  String get metric_serial_killer_14_name => 'Afirmação de Poder';

  @override
  String get metric_serial_killer_14_description =>
      'Reconhece declarações que enfatizam superioridade ou controle sobre outros.';

  @override
  String get metric_serial_killer_15_name => 'Falta de Remorso';

  @override
  String get metric_serial_killer_15_description =>
      'Sinaliza ausência de culpa ou arrependimento após discutir ações prejudiciais.';

  @override
  String get metric_serial_killer_16_name => 'Externalização de Culpa';

  @override
  String get metric_serial_killer_16_description =>
      'Detecta a transferência de responsabilidade por impulsos violentos para vítimas ou sociedade.';

  @override
  String get metric_serial_killer_17_name => 'Violência Sexualizada';

  @override
  String get metric_serial_killer_17_description =>
      'Identifica a fusão de temas sexuais e violentos na linguagem.';

  @override
  String get metric_serial_killer_18_name => 'Táticas de Isolamento';

  @override
  String get metric_serial_killer_18_description =>
      'Reconhece esforços para separar um alvo de suas redes de apoio.';

  @override
  String get metric_serial_killer_19_name => 'Padrões de Gaslighting';

  @override
  String get metric_serial_killer_19_description =>
      'Sinaliza linguagem projetada para distorcer a realidade e minar a sanidade da vítima.';

  @override
  String get metric_serial_killer_20_name => 'Velamento de Ameaças';

  @override
  String get metric_serial_killer_20_description =>
      'Detecta ameaças implícitas ou avisos disfarçados como declarações casuais.';

  @override
  String get metric_serial_killer_21_name => 'Linguagem Possessiva';

  @override
  String get metric_serial_killer_21_description =>
      'Identifica alegações de propriedade ou direito sobre outra pessoa.';

  @override
  String get metric_serial_killer_22_name => 'Temas de Vingança';

  @override
  String get metric_serial_killer_22_description =>
      'Reconhece fixação em retaliação ou punição de supostos erros.';

  @override
  String get metric_serial_killer_23_name => 'Grandiosidade Narcisista';

  @override
  String get metric_serial_killer_23_description =>
      'Sinaliza autoimportância exagerada e desconsideração pelo valor dos outros.';

  @override
  String get metric_serial_killer_24_name => 'Desapego Emocional';

  @override
  String get metric_serial_killer_24_description =>
      'Detecta tom clínico ou distante ao discutir trauma ou dano.';

  @override
  String get metric_serial_killer_25_name => 'Paciência Predatória';

  @override
  String get metric_serial_killer_25_description =>
      'Identifica linguagem de planejamento de longo prazo para vitimização futura.';

  @override
  String get metric_serial_killer_26_name => 'Teste de Limites';

  @override
  String get metric_serial_killer_26_description =>
      'Reconhece sondagem por limites ou resistência em vítimas potenciais.';

  @override
  String get metric_serial_killer_27_name => 'Minimização do Dano';

  @override
  String get metric_serial_killer_27_description =>
      'Sinaliza minimização da gravidade de atos violentos ou abusivos.';

  @override
  String get metric_serial_killer_28_name => 'Justificação da Violência';

  @override
  String get metric_serial_killer_28_description =>
      'Detecta racionalizações para prejudicar outros como necessário ou merecido.';

  @override
  String get metric_serial_killer_29_name => 'Foco Obsessivo';

  @override
  String get metric_serial_killer_29_description =>
      'Identifica pensamentos repetitivos e fixados em uma pessoa ou ato específico.';

  @override
  String get metric_serial_killer_30_name => 'Cálculo Frio';

  @override
  String get metric_serial_killer_30_description =>
      'Reconhece planejamento estratégico e sem emoção de ações prejudiciais.';

  @override
  String get metric_serial_killer_31_name => 'Charme Enganador';

  @override
  String get metric_serial_killer_31_description =>
      'Sinaliza linguagem excessivamente lisonjeira ou bajuladora para manipular.';

  @override
  String get metric_serial_killer_32_name => 'Culpa da Vítima';

  @override
  String get metric_serial_killer_32_description =>
      'Detecta a atribuição de culpa ao alvo por sua própria vitimização.';

  @override
  String get metric_serial_killer_33_name => 'Sinais de Escalada';

  @override
  String get metric_serial_killer_33_description =>
      'Identifica a progressão da fantasia para a intenção em linguagem violenta.';

  @override
  String get metric_serial_killer_34_name => 'Orientação Parasitária';

  @override
  String get metric_serial_killer_34_description =>
      'Reconhece linguagem que trata os outros como recursos a serem explorados.';

  @override
  String get metric_serial_killer_35_name => 'Indícios de Excitação';

  @override
  String get metric_serial_killer_35_description =>
      'Sinaliza indicadores fisiológicos de excitação ligados a temas violentos.';

  @override
  String get metric_serial_killer_36_name => 'Teste de Lealdade';

  @override
  String get metric_serial_killer_36_description =>
      'Detecta demandas por provas de lealdade ou sigilo de cúmplices.';

  @override
  String get metric_serial_killer_37_name => 'Linguagem Ritualística';

  @override
  String get metric_serial_killer_37_description =>
      'Identifica frases padronizadas e cerimoniais em torno de atos violentos.';

  @override
  String get metric_serial_killer_38_name => 'Alegações de Superioridade';

  @override
  String get metric_serial_killer_38_description =>
      'Reconhece afirmações de estar acima de restrições morais ou legais.';

  @override
  String get metric_serial_killer_39_name => 'Vácuo Emocional';

  @override
  String get metric_serial_killer_39_description =>
      'Sinaliza a ausência de palavras emocionais em contextos que exigem empatia.';

  @override
  String get metric_serial_killer_40_name => 'Curiosidade Predatória';

  @override
  String get metric_serial_killer_40_description =>
      'Detecta perguntas investigativas sobre medos ou vulnerabilidades de um alvo.';

  @override
  String get metric_serial_killer_41_name => 'Silenciar Ameaças';

  @override
  String get metric_serial_killer_41_description =>
      'Identifica avisos para impedir a divulgação ou denúncia.';

  @override
  String get metric_serial_killer_42_name => 'Comparações Desumanizantes';

  @override
  String get metric_serial_killer_42_description =>
      'Reconhece a equiparação de pessoas a animais, objetos ou entidades subumanas.';

  @override
  String get metric_serial_killer_43_name => 'Linguagem de Controle';

  @override
  String get metric_serial_killer_43_description =>
      'Sinaliza tons imperativos ou de comando visando dominar os outros.';

  @override
  String get metric_serial_killer_44_name => 'Detalhe Sádico';

  @override
  String get metric_serial_killer_44_description =>
      'Detecta foco excessivo em dor ou sofrimento gráfico em narrativas.';

  @override
  String get metric_serial_killer_45_name => 'Empatia Manipuladora';

  @override
  String get metric_serial_killer_45_description =>
      'Identifica preocupação fingida para baixar as defesas de um alvo.';

  @override
  String get metric_serial_killer_46_name => 'Olhar Predatório';

  @override
  String get metric_serial_killer_46_description =>
      'Reconhece linguagem que descreve observação intensa e invasiva de alvos.';

  @override
  String get metric_serial_killer_47_name => 'Identidade Violenta';

  @override
  String get metric_serial_killer_47_description =>
      'Sinaliza autoidentificação como predador, assassino ou monstro.';

  @override
  String get metric_serial_killer_48_name => 'Emoção da Caça';

  @override
  String get metric_serial_killer_48_description =>
      'Detecta excitação no processo de perseguir ou caçar vítimas.';

  @override
  String get metric_serial_killer_49_name => 'Confissão Compulsiva';

  @override
  String get metric_serial_killer_49_description =>
      'Identifica impulsos de revelar atos violentos para alívio psicológico.';

  @override
  String get metric_serial_killer_50_name => 'Linguagem de Finalidade';

  @override
  String get metric_serial_killer_50_description =>
      'Reconhece referências a acabar, matar ou silenciar permanentemente alvos.';

  @override
  String get packNarcissistLabel => 'O Narcisista';

  @override
  String get packSerialKillerLabel => 'O Assassino em Série';
}
