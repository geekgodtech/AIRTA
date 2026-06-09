// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Analizador de Toxicidad en Relaciones IA';

  @override
  String get psychologicalMetrics => 'Métricas Psicológicas';

  @override
  String get metricsDescription =>
      'Menos métricas seleccionadas producen un análisis más profundo y concentrado de esos comportamientos. Más métricas seleccionadas producen un informe más amplio con menos detalle por métrica.';

  @override
  String get selectSMS => 'Seleccionar SMS / RCS Chat';

  @override
  String get selectDiscordChannel => 'Seleccionar Canal de Discord';

  @override
  String get lightMode => 'Claro';

  @override
  String get darkMode => 'Oscuro';

  @override
  String get discordSetupTitle => 'Cómo Configurar Discord';

  @override
  String get discordSetupDescription =>
      'Sigue estos pasos para habilitar el análisis de canales de Discord en la aplicación:';

  @override
  String get discordStep1Title => 'Crear un Bot de Discord';

  @override
  String get discordStep1Description =>
      'Ve a discord.com/developers, crea una nueva aplicación y añade un bot. Copia el token del bot.';

  @override
  String get discordStep2Title => 'Habilitar Privilegios del Bot';

  @override
  String get discordStep2Description =>
      'En la configuración del bot, habilita \'Message Content Intent\' y \'Server Members Intent\'.';

  @override
  String get discordStep3Title => 'Invitar Bot al Servidor';

  @override
  String get discordStep3Description =>
      'Usa el generador de URL OAuth2 para invitar el bot a tu servidor de Discord con los permisos necesarios.';

  @override
  String get discordStep4Title => 'Configurar en la Aplicación';

  @override
  String get discordStep4Description =>
      'Ingresa tu token del bot en la configuración de la aplicación (contacta soporte si necesitas ayuda).';

  @override
  String get discordStep5Title => 'Seleccionar Canal';

  @override
  String get discordStep5Description =>
      'Toca \'Seleccionar Canal de Discord\', elige tu servidor, luego selecciona el canal para analizar.';

  @override
  String get gotIt => 'Entendido';

  @override
  String get selectFile => 'Seleccionar archivo';

  @override
  String get analyzeSelectedMetrics => 'Analizar métricas seleccionadas';

  @override
  String get analyze20RandomMetrics => 'Analizar 20 métricas aleatorias';

  @override
  String get membershipOptions => 'Opciones de membresía';

  @override
  String get free => 'Gratis';

  @override
  String get oneTimeUnlock => 'Desbloqueo único de informe';

  @override
  String get standard => 'Estándar';

  @override
  String get discordAddon => 'Complemento Discord';

  @override
  String get analyze => 'Analizar';

  @override
  String get report => 'Informe';

  @override
  String get pdfReport => 'Informe PDF';

  @override
  String get openPdf => 'Abrir PDF';

  @override
  String get sharePdf => 'Compartir PDF';

  @override
  String get printPdf => 'Imprimir PDF';

  @override
  String get closePdfPreview => 'Cerrar ventana de vista previa PDF';

  @override
  String get openPdfPreview => 'Abrir ventana de vista previa PDF';

  @override
  String get pdfPreviewDescription =>
      'La ventana PDF incrustada comienza cerrada para mantener el informe compacto.';

  @override
  String get notNow => 'Ahora no';

  @override
  String get unlockThisReport => 'Desbloquear este informe - \$20';

  @override
  String get joinStandard => 'Unirse a Estándar - \$9.99/mes';

  @override
  String get instantUnlockTitle => 'Desbloqueo instantáneo de informe - \$20';

  @override
  String get instantUnlockDescription =>
      'Esta es una compra única para desbloquear solo el informe actual. No requiere suscripción. Los informes futuros requerirán desbloqueos separados o una membresía.\n\n¿Proceder con el pago?';

  @override
  String get purchaseFor20 => 'Comprar por \$20';

  @override
  String get share => 'Compartir';

  @override
  String get print => 'Imprimir';

  @override
  String get save => 'Guardar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get ok => 'Aceptar';

  @override
  String get loading => 'Cargando...';

  @override
  String get error => 'Error';

  @override
  String get success => 'Éxito';

  @override
  String get conversations => 'Conversaciones';

  @override
  String get messages => 'Mensajes';

  @override
  String get selectConversation => 'Seleccionar conversación';

  @override
  String get selectSmsConversation => 'Seleccionar SMS / RCS Chat';

  @override
  String get searchConversations => 'Buscar conversaciones...';

  @override
  String get loadingConversations => 'Cargando conversaciones...';

  @override
  String get errorLoadingConversations => 'Error al cargar conversaciones';

  @override
  String get selectConversationToAnalyze =>
      'Seleccionar conversación para analizar';

  @override
  String get analyzeWithSelectedMetrics =>
      'Analizar con las métricas seleccionadas';

  @override
  String get loadConversationAndSelectMetric =>
      'Cargue una conversación y seleccione al menos una métrica';

  @override
  String get selectAtLeastOneMetric =>
      'Se debe seleccionar al menos una métrica para ejecutar el informe.';

  @override
  String get spinningMetricWheel => 'Girando la rueda de métricas...';

  @override
  String get loadConversationToAnalyze =>
      'Cargue una conversación para analizar';

  @override
  String get noConversationsFound => 'No se encontraron conversaciones';

  @override
  String get permissionsRequired => 'Permisos necesarios';

  @override
  String get smsPermission => 'Mensajes de texto';

  @override
  String get contactsPermission => 'Contactos';

  @override
  String get smsPermissionDescription =>
      'Para analizar tus conversaciones SMS en busca de patrones de relación';

  @override
  String get contactsPermissionDescription =>
      'Para mostrar nombres de contactos en lugar de números de teléfono';

  @override
  String get analyzingMessage =>
      'Espere mientras se genera su análisis psicológico por IA...';

  @override
  String get analyzingStatus => 'Analizando conversación...';

  @override
  String get analyzingSubMessage =>
      'Por favor sea paciente, este proceso puede tardar hasta un minuto dependiendo de su velocidad de conexión y la cantidad de métricas seleccionadas';

  @override
  String get unlockFullReport => 'Desbloquear y mostrar todo este informe';

  @override
  String get fullReportLocked => 'Informe completo bloqueado';

  @override
  String get upgradeToUnlock =>
      'Actualice su membresía para desbloquear el informe completo de análisis psicológico con todas las métricas e información detallada.';

  @override
  String get language => 'Idioma';

  @override
  String get english => 'Inglés';

  @override
  String get spanish => 'Español';

  @override
  String get french => 'Francés';

  @override
  String get german => 'Alemán';

  @override
  String get italian => 'Italiano';

  @override
  String get portuguese => 'Portugués';

  @override
  String get dutch => 'Holandés';

  @override
  String get russian => 'Ruso';

  @override
  String get chinese => 'Chino';

  @override
  String get japanese => 'Japonés';

  @override
  String get korean => 'Coreano';

  @override
  String get arabic => 'Árabe';

  @override
  String get hindi => 'Hindi';

  @override
  String get turkish => 'Turco';

  @override
  String get polish => 'Polaco';

  @override
  String get ukrainian => 'Ucraniano';

  @override
  String get runAnotherAnalysis => '¿Ejecutar otro análisis?';

  @override
  String get becomeMemberTitle =>
      'Hazte miembro para obtener el informe de análisis completo';

  @override
  String get becomeMemberSubtitle =>
      'Elige el nivel de acceso que se ajuste a las conversaciones e informes que necesitas analizar.';

  @override
  String get benefitAnalyzeSms => 'Analizar mensajes de texto SMS';

  @override
  String get benefitReportPreview => 'Ejecutar una vista previa del informe';

  @override
  String get benefitViewPartialReport =>
      'Ver aproximadamente el 25% del informe';

  @override
  String get benefitLockedDetails => 'Detalles del informe completo bloqueados';

  @override
  String get currentFreeAccess => 'Acceso gratuito actual';

  @override
  String get benefitUnlockCurrentReport =>
      'Desbloquear este informe completo actual';

  @override
  String get benefitNoSubscription => 'Sin suscripción';

  @override
  String get benefitSavePrintShareThis =>
      'Guardar, imprimir y compartir este informe';

  @override
  String get benefitBestSingleAnalysis => 'Ideal si solo necesitas un análisis';

  @override
  String get unlockThisReportShort => 'Desbloquear este informe';

  @override
  String get benefitFullSmsReport => 'Informe completo de análisis SMS';

  @override
  String get benefitSavePrintSharePdf =>
      'Guardar, imprimir y compartir informes PDF';

  @override
  String get benefitTenReports => '10 informes por período de 24 horas';

  @override
  String get benefitBestTextReview =>
      'Ideal para revisar relaciones por mensajes de texto';

  @override
  String get benefitDateRangeFilter => 'Filtrar análisis por rango de fechas';

  @override
  String get signUpStandard => 'Suscribirse a la membresía Estándar';

  @override
  String get benefitAddToStandard => 'Añadir a la membresía Estándar';

  @override
  String get benefitAnalyzeDiscord => 'Analizar chats de servidores de Discord';

  @override
  String get benefitRequiresBot => 'Requiere instalación del bot';

  @override
  String get benefitBestGamers =>
      'Ideal para jugadores y comunidades de Discord';

  @override
  String get addDiscordAnalysis => 'Añadir análisis de Discord';

  @override
  String get requiresStandardMembership => 'Requiere membresía Estándar';

  @override
  String get comingSoon => 'Próximamente';

  @override
  String get comingSoonWithNextUpdate =>
      'Próximamente con la siguiente actualización:';

  @override
  String get proMembershipTier => 'Nivel de membresía Pro - \$19.99';

  @override
  String get proPlusMembershipTier => 'Nivel de membresía Pro-Plus - \$24.99';

  @override
  String get proGetsLabel => 'Pro incluye:';

  @override
  String get proGetsDescription =>
      'Analiza hilos de chat de todas las demás plataformas populares de mensajería y redes sociales como:';

  @override
  String get proPlatformsList =>
      'LinkedIn, WhatsApp, Instagram, Facebook Messenger, Telegram, X (Twitter), correo electrónico y calendario';

  @override
  String get proPlusGetsLabel => 'Pro-Plus incluye:';

  @override
  String get proPlusGetsDescription =>
      'Todo lo de Pro, más el complemento de Discord a un precio reducido.';

  @override
  String get purchaseSuccessfulUnlocked =>
      '¡Compra exitosa! Informe desbloqueado.';

  @override
  String get purchaseFailed =>
      'La compra falló. Por favor, inténtalo de nuevo.';

  @override
  String get membershipActivated => '¡Membresía activada!';

  @override
  String get dateRangeFilter => 'Filtro de Rango de Fechas';

  @override
  String get dateRangeOptional => '(opcional)';

  @override
  String get startDate => 'Fecha de Inicio';

  @override
  String get endDate => 'Fecha de Fin';

  @override
  String get clear => 'Limpiar';

  @override
  String get dateRangeRequiresMembership =>
      'Requiere Membresía Estándar o superior';

  @override
  String selectUpToCount(Object current, Object max) {
    return 'Seleccionar hasta $max. Actual: $current';
  }

  @override
  String get clearSelections => 'Limpiar selecciones';

  @override
  String analyzeRandomMetrics(Object count) {
    return 'Analizar $count métricas aleatorias';
  }

  @override
  String get saveSelections => 'Guardar Selecciones';

  @override
  String get loadSelections => 'Cargar Selecciones';

  @override
  String get saveMetricListName => 'Guardar Lista de Métricas';

  @override
  String get enterListName => 'Ingrese un nombre para esta lista de métricas:';

  @override
  String get chooseSavedMetrics => 'Elija la lista de métricas guardada:';

  @override
  String get noSavedLists =>
      'No hay listas de métricas guardadas para cargar en este momento.';

  @override
  String get metricListSaved => 'Lista de métricas guardada exitosamente.';

  @override
  String get metricListLoaded => 'Lista de métricas cargada exitosamente.';

  @override
  String get filters => 'Filtros';

  @override
  String get sortBy => 'Ordenar por:';

  @override
  String get recent => 'Reciente';

  @override
  String get name => 'Nombre';

  @override
  String get count => 'Cantidad';

  @override
  String get namedOnly => 'Solo con nombre';

  @override
  String get minMessages => 'Mín. mensajes:';

  @override
  String get minimumMessages => 'Mínimo de mensajes:';

  @override
  String get executiveSummary => 'Resumen Ejecutivo';

  @override
  String get metricScores => 'Puntuaciones de Métricas';

  @override
  String get contextualEvidenceExamples => 'Ejemplos de Evidencia Contextual';

  @override
  String get neutralSynthesis => 'Síntesis Neutral';

  @override
  String analysisOfSender(Object sender) {
    return 'Análisis de $sender (Remitente)';
  }

  @override
  String analysisOfReceiver(Object receiver) {
    return 'Análisis de $receiver (Receptor)';
  }

  @override
  String get finalConclusion => 'Conclusión Final';

  @override
  String get metric_1_name => 'Desprecio';

  @override
  String get metric_1_description =>
      'Busca superioridad, disgusto, burla, lenguaje de ojos en blanco o insultos que coloquen a una pareja por debajo de la otra.';

  @override
  String get metric_2_name => 'Defensiva';

  @override
  String get metric_2_description =>
      'Rastrea la autoprotección refleja, contraataques, excusas y la negativa a considerar la queja de la otra persona.';

  @override
  String get metric_3_name => 'Bloqueo';

  @override
  String get metric_3_description =>
      'Identifica el cierre, el retiro, ignorar, negarse a responder o terminar conversaciones para evitar el compromiso.';

  @override
  String get metric_4_name => 'Crítica';

  @override
  String get metric_4_description =>
      'Detecta ataques al carácter o personalidad en lugar de comportamientos, necesidades o incidentes específicos.';

  @override
  String get metric_5_name => 'Indicadores de Gaslighting';

  @override
  String get metric_5_description =>
      'Marca intentos de hacer dudar a alguien de su memoria, percepción, cordura o legitimidad de su experiencia.';

  @override
  String get metric_6_name => 'Cambio de Culpa';

  @override
  String get metric_6_description =>
      'Mide si la responsabilidad se redirige a la otra pareja en lugar de reconocerse directamente.';

  @override
  String get metric_7_name => 'Patrón de Escalada';

  @override
  String get metric_7_description =>
      'Evalúa si el tono, acusaciones, intensidad o amenazas aumentan en lugar de avanzar hacia la resolución.';

  @override
  String get metric_8_name => 'Reconocimiento de Intentos de Reparación';

  @override
  String get metric_8_description =>
      'Verifica si las disculpas, humor, pausas, tranquilidad u ofertas de paz se notan y aceptan.';

  @override
  String get metric_9_name => 'Lenguaje de Responsabilidad';

  @override
  String get metric_9_description =>
      'Busca una clara propiedad del daño, responsabilidad específica y voluntad de cambiar el comportamiento.';

  @override
  String get metric_10_name => 'Respeto de Límites';

  @override
  String get metric_10_description =>
      'Evalúa si se respetan los límites establecidos en torno al tiempo, privacidad, cuerpo, emociones o contacto.';

  @override
  String get metric_11_name => 'Indicadores de Control Coercitivo';

  @override
  String get metric_11_description =>
      'Marca patrones de intimidación, restricción, monitoreo, dependencia o control sobre elecciones y movimientos.';

  @override
  String get metric_12_name => 'Lenguaje de Amenaza';

  @override
  String get metric_12_description =>
      'Identifica amenazas explícitas o implícitas que involucran seguridad, abandono, exposición, represalia o castigo.';

  @override
  String get metric_13_name => 'Desdén';

  @override
  String get metric_13_description =>
      'Detecta el descuido de preocupaciones, tratar necesidades como poco importantes o negarse a tomar el sufrimiento en serio.';

  @override
  String get metric_14_name => 'Invalidación';

  @override
  String get metric_14_description =>
      'Mide la negación, ridiculización o corrección de las emociones de otra persona en lugar de reconocerlas.';

  @override
  String get metric_15_name => 'Expresión de Empatía';

  @override
  String get metric_15_description =>
      'Busca tomar perspectiva, cuidado, reconocimiento emocional y preocupación por la experiencia de la otra persona.';

  @override
  String get metric_16_name => 'Reciprocidad';

  @override
  String get metric_16_description =>
      'Evalúa si la atención, esfuerzo, disculpa, compromiso y apoyo emocional fluyen en ambas direcciones.';

  @override
  String get metric_17_name => 'Regulación Emocional';

  @override
  String get metric_17_description =>
      'Evalúa la capacidad de mantenerse firme, pausar, calmarse y comunicarse sin reactividad explosiva.';

  @override
  String get metric_18_name => 'Sarcasmo Usado como Daño';

  @override
  String get metric_18_description =>
      'Marca el sarcasmo usado para menospreciar, castigar, humillar o disfrazar la hostilidad como humor.';

  @override
  String get metric_19_name => 'Insultos';

  @override
  String get metric_19_description =>
      'Identifica etiquetas despectivas, insultos, profanidad dirigida a la persona o ataques basados en identidad.';

  @override
  String get metric_20_name => 'Patrón de Tratamiento Silencioso';

  @override
  String get metric_20_description =>
      'Rastrea el silencio usado como castigo, control, evitación o retiro de conexión.';

  @override
  String get metric_21_name => 'Encuadre de Celos';

  @override
  String get metric_21_description =>
      'Evalúa sospecha, posesividad, acusaciones o celos presentados como prueba de cuidado.';

  @override
  String get metric_22_name => 'Presión de Aislamiento';

  @override
  String get metric_22_description =>
      'Marca esfuerzos para separar a una pareja de amigos, familia, sistemas de apoyo o perspectivas externas.';

  @override
  String get metric_23_name => 'Indicadores de Control Financiero';

  @override
  String get metric_23_description =>
      'Busca control de dinero, gastos, empleo, acceso a cuentas o independencia financiera.';

  @override
  String get metric_24_name => 'Indicadores de Invasión de Privacidad';

  @override
  String get metric_24_description =>
      'Detecta fisgoneo, demandas de contraseñas, verificaciones de dispositivos, rastreo de ubicación o violaciones de privacidad.';

  @override
  String get metric_25_name => 'Especificidad de Disculpa';

  @override
  String get metric_25_description =>
      'Mide si las disculpas nombran el daño exacto, impacto y corrección futura en lugar de quedarse vagas.';

  @override
  String get metric_26_name => 'Presión de Perdón';

  @override
  String get metric_26_description =>
      'Marca demandas de seguir adelante, perdonar rápidamente o dejar de discutir el daño antes de que ocurra la reparación.';

  @override
  String get metric_27_name => 'Minimización';

  @override
  String get metric_27_description =>
      'Detecta minimizar el daño, llamar preocupaciones serias dramáticas o reducir el impacto para evitar responsabilidad.';

  @override
  String get metric_28_name => 'Proyección';

  @override
  String get metric_28_description =>
      'Busca acusaciones que reflejen el propio comportamiento, motivos o sentimientos no resueltos del hablante.';

  @override
  String get metric_29_name => 'Patrón de Interrupción';

  @override
  String get metric_29_description =>
      'Rastrea cortar, hablar por encima, negarse a completar o controlar los turnos de conversación.';

  @override
  String get metric_30_name => 'Desviación de Tema';

  @override
  String get metric_30_description =>
      'Identifica cambiar de tema, plantear problemas no relacionados o evitar la preocupación central.';

  @override
  String get metric_31_name => 'Orientación a Resolución';

  @override
  String get metric_31_description =>
      'Mide si los mensajes apuntan hacia soluciones, claridad, acuerdos y próximos pasos.';

  @override
  String get metric_32_name => 'Resolución Mutua de Problemas';

  @override
  String get metric_32_description =>
      'Evalúa lenguaje colaborativo, responsabilidad compartida, lluvia de ideas y voluntad de encontrar compromisos viables.';

  @override
  String get metric_33_name => 'Inundación Emocional';

  @override
  String get metric_33_description =>
      'Detecta abrumo, pánico, cierre, espiral o incapacidad de procesar durante el conflicto.';

  @override
  String get metric_34_name => 'Pistas de Respuesta de Miedo';

  @override
  String get metric_34_description =>
      'Busca apaciguar, palabras cuidadosas, temor, preocupaciones de seguridad o miedo a la reacción de la pareja.';

  @override
  String get metric_35_name => 'Consistencia de Afirmaciones';

  @override
  String get metric_35_description =>
      'Evalúa si los relatos permanecen internamente consistentes a través de mensajes y tiempo.';

  @override
  String get metric_36_name => 'Recuerdo Basado en Evidencia';

  @override
  String get metric_36_description =>
      'Verifica si las afirmaciones hacen referencia a eventos concretos, citas, cronologías o comportamiento observable.';

  @override
  String get metric_37_name => 'Patrón de Demanda y Retiro';

  @override
  String get metric_37_description =>
      'Rastrea a una pareja buscando respuestas o cambio mientras la otra evita, se cierra o sale.';

  @override
  String get metric_38_name => 'Indicadores de Desequilibrio de Poder';

  @override
  String get metric_38_description =>
      'Marca poder de decisión desigual, miedo a consecuencias, dependencia, intimidación o control unilateral.';

  @override
  String get metric_39_name => 'Desacuerdo Respetuoso';

  @override
  String get metric_39_description =>
      'Mide si el conflicto preserva la dignidad, curiosidad y desacuerdo sin degradación.';

  @override
  String get metric_40_name => 'Ciclo de Ruptura y Reparación';

  @override
  String get metric_40_description =>
      'Evalúa si el conflicto es seguido por reconocimiento, reconexión y reparación real.';

  @override
  String get metric_41_name => 'Retiro de Afecto';

  @override
  String get metric_41_description =>
      'Detecta amor, calidez, sexo, atención o tranquilidad retenidos como castigo o palanca.';

  @override
  String get metric_42_name => 'Referencias de Humillación Pública';

  @override
  String get metric_42_description =>
      'Marca amenazas, bromas o acciones que avergüenzan a la pareja frente a otros.';

  @override
  String get metric_43_name => 'Pistas de Conflicto Vinculado a Sustancias';

  @override
  String get metric_43_description =>
      'Busca el uso de alcohol o drogas vinculado a agresión, falta de fiabilidad, conflicto o daño.';

  @override
  String get metric_44_name => 'Presión de Conflicto Parental';

  @override
  String get metric_44_description =>
      'Identifica hijos, custodia, roles parentales o culpa parental usados en conflicto o palanca.';

  @override
  String get metric_45_name => 'Respeto de Límites Sexuales';

  @override
  String get metric_45_description =>
      'Evalúa el respeto por el consentimiento, presión, negativa, comodidad, momento y autonomía sexual.';

  @override
  String get metric_46_name => 'Indicadores de Acoso Digital';

  @override
  String get metric_46_description =>
      'Rastrea mensajes no deseados repetidos, llamadas spam, presión en línea, vigilancia o intimidación basada en plataformas.';

  @override
  String get metric_47_name => 'Lenguaje de Monitoreo o Vigilancia';

  @override
  String get metric_47_description =>
      'Marca verificar paradero, demandar pruebas, rastrear comportamiento o verificación constante.';

  @override
  String get metric_48_name => 'Orientación Futura';

  @override
  String get metric_48_description =>
      'Mide si las parejas discuten mejora futura, compromisos, planes o dirección constructiva.';

  @override
  String get metric_49_name => 'Señales de Planificación de Seguridad';

  @override
  String get metric_49_description =>
      'Busca intentos de buscar ayuda, crear distancia, documentar daño o planificar seguridad física/emocional.';

  @override
  String get metric_50_name => 'Intentos Mutuos de Desescalada';

  @override
  String get metric_50_description =>
      'Rastrea pausas, lenguaje calmante, tono más suave, tiempos muertos e intentos de ambas parejas para reducir la intensidad.';

  @override
  String get metric_51_name => 'Pistas de Apego Seguro';

  @override
  String get metric_51_description =>
      'Identifica confianza, tranquilidad directa, disponibilidad emocional y comodidad con cercanía e independencia.';

  @override
  String get metric_52_name => 'Activación de Apego Ansioso';

  @override
  String get metric_52_description =>
      'Marca comportamiento de protesta, necesidades urgentes de tranquilidad, miedo al abandono y sensibilidad elevada a la distancia.';

  @override
  String get metric_53_name => 'Distanciamiento de Apego Evitativo';

  @override
  String get metric_53_description =>
      'Detecta minimización emocional, defensas de independencia, retiro de vulnerabilidad o incomodidad con necesidades.';

  @override
  String get metric_54_name => 'Señales de Apego Desorganizado';

  @override
  String get metric_54_description =>
      'Busca ciclos de acercamiento-evitación, miedo mezclado con necesidad, reacciones caóticas o patrones de intimidad confusos.';

  @override
  String get metric_55_name => 'Ofertas Emocionales y Respuestas';

  @override
  String get metric_55_description =>
      'Mide invitaciones para atención, comodidad o conexión y si se aceptan o se pierden.';

  @override
  String get metric_56_name => 'Apartarse de la Conexión';

  @override
  String get metric_56_description =>
      'Marca ignorar, descartar o no responder a ofertas de cercanía o apoyo.';

  @override
  String get metric_57_name => 'Volverse Contra la Conexión';

  @override
  String get metric_57_description =>
      'Detecta respuestas hostiles o punitivas a intentos de afecto, vulnerabilidad o reparación.';

  @override
  String get metric_58_name => 'Sobrescritura de Sentimiento Positivo';

  @override
  String get metric_58_description =>
      'Busca generosidad, beneficio de la duda, afecto e interpretar el conflicto a través del cuidado.';

  @override
  String get metric_59_name => 'Sobrescritura de Sentimiento Negativo';

  @override
  String get metric_59_description =>
      'Marca asumir mala intención, interpretar mensajes neutrales negativamente y encuadre hostil persistente.';

  @override
  String get metric_60_name => 'Patrón de Inicio Duro';

  @override
  String get metric_60_description =>
      'Identifica conversaciones que comienzan con acusación, ataque, desprecio o culpa en lugar de una solicitud.';

  @override
  String get metric_61_name => 'Patrón de Inicio Suave';

  @override
  String get metric_61_description =>
      'Busca aperturas suaves usando sentimientos, necesidades, solicitudes específicas y lenguaje no acusatorio.';

  @override
  String get metric_62_name => 'Autocalmación Fisiológica';

  @override
  String get metric_62_description =>
      'Evalúa intentos de pausar, respirar, tomar espacio o regular el cuerpo antes de continuar el conflicto.';

  @override
  String get metric_63_name => 'Patrón de Evitación de Conflicto';

  @override
  String get metric_63_description =>
      'Rastrea evitación repetida de temas necesarios, incomodidad, desacuerdo u honestidad emocional.';

  @override
  String get metric_64_name => 'Estilo de Conflicto Volátil';

  @override
  String get metric_64_description =>
      'Detecta conflicto de alta intensidad con expresión directa que aún puede incluir compromiso y reparación.';

  @override
  String get metric_65_name => 'Estilo de Conflicto Validante';

  @override
  String get metric_65_description =>
      'Mide si las parejas reconocen la perspectiva del otro mientras están en desacuerdo.';

  @override
  String get metric_66_name => 'Estilo de Conflicto Hostil';

  @override
  String get metric_66_description =>
      'Marca crítica frecuente, desprecio, defensividad, ataques y encuadre adversarial.';

  @override
  String get metric_67_name => 'Patrón Hostil-Detachado';

  @override
  String get metric_67_description =>
      'Identifica hostilidad fría, desconexión emocional, desprecio y baja motivación de reparación.';

  @override
  String get metric_68_name => 'Voluntad de Compromiso';

  @override
  String get metric_68_description =>
      'Busca flexibilidad, negociación, propuestas de término medio y sacrificios que respeten ambas necesidades.';

  @override
  String get metric_69_name => 'Aceptación de Influencia';

  @override
  String get metric_69_description =>
      'Mide la apertura a ser afectado por los sentimientos, necesidades o perspectiva de la pareja.';

  @override
  String get metric_70_name => 'Señales de Conflicto Estancado';

  @override
  String get metric_70_description =>
      'Marca problemas no resueltos repetidos vinculados a valores, sueños, identidad o incompatibilidad crónica.';

  @override
  String get metric_71_name => 'Encuadre de Problema Soluble';

  @override
  String get metric_71_description =>
      'Detecta definiciones de problemas prácticas y concretas que pueden llevar a acuerdos específicos.';

  @override
  String get metric_72_name => 'Referencias de Significado Compartido';

  @override
  String get metric_72_description =>
      'Busca valores, rituales, objetivos, recuerdos o lenguaje de identidad que crea una historia de relación compartida.';

  @override
  String get metric_73_name => 'Conciencia del Mapa de Amor';

  @override
  String get metric_73_description =>
      'Evalúa el conocimiento del mundo interior, estresores, preferencias, miedos y vida diaria de la pareja.';

  @override
  String get metric_74_name => 'Afecto y Admiración';

  @override
  String get metric_74_description =>
      'Identifica aprecio, respeto, calidez, cumplidos, gratitud y consideración positiva.';

  @override
  String get metric_75_name => 'Desequilibrio de Trabajo Emocional';

  @override
  String get metric_75_description =>
      'Marca a una pareja llevando planificación desproporcionada, calma, recuerdo, explicación o mantenimiento de relación.';

  @override
  String get metric_76_name => 'Descuido de Carga Mental';

  @override
  String get metric_76_description =>
      'Detecta minimizar el trabajo de planificación invisible, coordinación del hogar, programación o seguimiento de responsabilidad.';

  @override
  String get metric_77_name => 'Pistas de Incompetencia Armada';

  @override
  String get metric_77_description =>
      'Busca reclamar incapacidad, confusión o indefensión para evitar responsabilidad justa.';

  @override
  String get metric_78_name => 'Sensibilidad a Disparadores de Trauma';

  @override
  String get metric_78_description =>
      'Mide la conciencia de disparadores, respuestas al trauma y manejo cuidadoso de temas vulnerables.';

  @override
  String get metric_79_name => 'Pistas de Hipervigilancia';

  @override
  String get metric_79_description =>
      'Marca escanear en busca de peligro, monitoreo excesivo del tono, miedo a errores o alerta emocional constante.';

  @override
  String get metric_80_name => 'Lenguaje de Miedo al Abandono';

  @override
  String get metric_80_description =>
      'Detecta miedo a ser dejado, reemplazado, ignorado, descartado o abandonado emocionalmente.';

  @override
  String get metric_81_name => 'Patrón de Búsqueda de Tranquilidad';

  @override
  String get metric_81_description =>
      'Rastrea solicitudes repetidas de prueba de amor, compromiso, seguridad o interés continuo.';

  @override
  String get metric_82_name => 'Ciclo Perseguidor-Distanciador';

  @override
  String get metric_82_description =>
      'Identifica a una pareja escalando la búsqueda de cercanía mientras la otra aumenta la distancia.';

  @override
  String get metric_83_name => 'Acumulación de Rencor';

  @override
  String get metric_83_description =>
      'Busca agravios almacenados, referencias repetidas al pasado, amargura y deuda emocional no resuelta.';

  @override
  String get metric_84_name => 'Comportamiento de Conteo de Puntos';

  @override
  String get metric_84_description =>
      'Marca conteo transaccional de fallas, favores, sacrificios o errores para ganar ventaja.';

  @override
  String get metric_85_name => 'Afecto Condicional';

  @override
  String get metric_85_description =>
      'Detecta amor, aprobación, acceso o calidez ofrecidos solo cuando se logra el cumplimiento.';

  @override
  String get metric_86_name => 'Indicadores de Love Bombing';

  @override
  String get metric_86_description =>
      'Marca afecto intenso, promesas, presión o idealización usados para acelerar el apego o el control.';

  @override
  String get metric_87_name => 'Intentos de Hoovering';

  @override
  String get metric_87_description =>
      'Identifica intentos de volver a atraer a alguien a través de culpa, nostalgia, promesas, crisis o afecto repentino.';

  @override
  String get metric_88_name => 'Patrón DARVO';

  @override
  String get metric_88_description =>
      'Detecta respuestas de negar, atacar y revertir víctima-ofensor cuando se confronta sobre el daño.';

  @override
  String get metric_89_name => 'Patrón de Postura de Víctima';

  @override
  String get metric_89_description =>
      'Marca auto-victimización recurrente que evita la responsabilidad o redirige la atención del daño causado.';

  @override
  String get metric_90_name => 'Encuadre de Superioridad Moral';

  @override
  String get metric_90_description =>
      'Busca rectitud, reclamos de pureza o superioridad ética usados para dominar el conflicto.';

  @override
  String get metric_91_name => 'Asesinato de Carácter';

  @override
  String get metric_91_description =>
      'Detecta ataques amplios a identidad, integridad, salud mental o valor en lugar de comportamiento específico.';

  @override
  String get metric_92_name => 'Indicadores de Triangulación';

  @override
  String get metric_92_description =>
      'Marca traer terceros al conflicto para presionar, comparar, validar o desestabilizar a la pareja.';

  @override
  String get metric_93_name => 'Presión de Comparación Social';

  @override
  String get metric_93_description =>
      'Busca comparaciones con ex, amigos, otras parejas o ideales usados para avergonzar o coaccionar.';

  @override
  String get metric_94_name => 'Apoyo a la Autonomía';

  @override
  String get metric_94_description =>
      'Mide el respeto por elecciones independientes, amistades, objetivos, límites y agencia personal.';

  @override
  String get metric_95_name => 'Respeto al Consentimiento y Elección';

  @override
  String get metric_95_description =>
      'Evalúa si las decisiones se toman libremente sin presión, culpa, amenazas o manipulación.';

  @override
  String get metric_96_name => 'Planificación Colaborativa';

  @override
  String get metric_96_description =>
      'Busca programación compartida, decisiones conjuntas, responsabilidades coordinadas y seguimiento práctico.';

  @override
  String get metric_97_name => 'Seguimiento de Reparación';

  @override
  String get metric_97_description =>
      'Mide si los cambios prometidos se reflejan más tarde en el comportamiento, no solo en palabras.';

  @override
  String get metric_98_name => 'Evidencia de Comportamiento Cambiado';

  @override
  String get metric_98_description =>
      'Verifica acciones observables y repetidas que muestran aprendizaje, ajuste o comportamiento dañino reducido.';

  @override
  String get metric_99_name => 'Lenguaje de Seguridad Emocional';

  @override
  String get metric_99_description =>
      'Identifica lenguaje que invita a la honestidad, reduce el miedo, protege la dignidad y tranquiliza la expresión segura.';

  @override
  String get metric_100_name => 'Ambivalencia en la Relación';

  @override
  String get metric_100_description =>
      'Detecta incertidumbre, compromiso mixto, mensajes de empuje-tirón o deseo poco claro de continuar.';

  @override
  String get unableToOpenConversations => 'No se pueden abrir conversaciones';

  @override
  String get unableToOpenConversationsBody =>
      'Algo salió mal al cargar sus conversaciones. Por favor, inténtelo de nuevo.';

  @override
  String get unableToLoadConversationsBody =>
      'No se pueden cargar las conversaciones. Por favor, verifique sus permisos e inténtelo de nuevo.';

  @override
  String get errorLoadingConversationsBody =>
      'Error al cargar conversaciones. Por favor, inténtelo de nuevo.';

  @override
  String get smsPermissionRequired => 'Permiso SMS requerido';

  @override
  String get smsPermissionRequiredBody =>
      'Para analizar conversaciones SMS, necesitamos permiso para leer sus mensajes. Su privacidad es importante — los mensajes solo se analizan localmente y nunca se almacenan en nuestros servidores.';

  @override
  String get grantSmsPermission => 'Conceder permiso SMS';

  @override
  String get noSmsConversationsFound => 'No se encontraron conversaciones SMS';

  @override
  String get noConversationsMatchSearch =>
      'Ninguna conversación coincide con su búsqueda';

  @override
  String get noSmsMessagesOnDevice =>
      'No tiene mensajes SMS en este dispositivo';

  @override
  String get tryDifferentSearch => 'Intente un término de búsqueda diferente';

  @override
  String get clearSearch => 'Borrar búsqueda';

  @override
  String selectedFile(String filename) {
    return 'Seleccionado: $filename';
  }

  @override
  String get invalidFile => 'Archivo no válido';

  @override
  String get fileImport => 'Importar archivo';

  @override
  String get fileImportNotImplemented =>
      'El análisis de archivos aún no está implementado para este tipo de archivo.';

  @override
  String get errorPickingFile =>
      'No se puede abrir el archivo. Por favor, inténtelo de nuevo.';

  @override
  String get readyToCapture => 'Listo para capturar';

  @override
  String get readyToCaptureBody =>
      'Cambie a la aplicación de Mensajes ahora y comience a tomar capturas de pantalla.\n\nRegrese a esta aplicación cuando haya terminado y toque \"Finalizar y procesar\".';

  @override
  String get noScreenshotsToProcess =>
      'No hay capturas de pantalla para procesar.';

  @override
  String processingScreenshot(int current, int total) {
    return 'Procesando captura $current de $total...';
  }

  @override
  String get noMessagesFound => 'No se encontraron mensajes';

  @override
  String get noMessagesFoundBody =>
      'No se pudieron extraer mensajes de las capturas de pantalla.\n\nAsegúrese de que las capturas muestren claramente la conversación.';

  @override
  String loadedMessages(int count) {
    return 'Se cargaron $count mensajes de capturas de pantalla';
  }

  @override
  String get processingError => 'Error de procesamiento';

  @override
  String get processingErrorBody =>
      'Error al procesar capturas de pantalla. Por favor, inténtelo de nuevo.';

  @override
  String metricListSavedAs(String name) {
    return 'Sus selecciones se han guardado como \"$name\".';
  }

  @override
  String metricListLoadedName(String name) {
    return 'Las selecciones \"$name\" han sido recuperadas y aplicadas.';
  }

  @override
  String conversationLoaded(int count, String name) {
    return 'Se cargaron $count mensajes de $name';
  }

  @override
  String get loadButton => 'Cargar';

  @override
  String get photoPermissionRequired =>
      'Se requiere permiso de la biblioteca de fotos para detectar capturas de pantalla.';

  @override
  String get initializingConnection => 'Inicializando conexión segura...';

  @override
  String get configurationRequired => 'Configuración requerida';

  @override
  String get goBack => 'Volver';

  @override
  String get enableDateRangeFiltering =>
      'Habilitar filtrado por rango de fechas';

  @override
  String get clearSelectedDateRange => 'Borrar rango de fechas seleccionado';

  @override
  String get largeThreadNoticeTitle => 'AVISO AL USUARIO';

  @override
  String get largeThreadNoticeBody =>
      'Al tratar con hilos de texto excepcionalmente grandes, algunas pantallas de carga en esta aplicación podrían superar un minuto y medio a veces.\n\nLa aplicación no se bloquea. Si ve un indicador de estado girando, la aplicación todavía está cargando.\n\nPor favor, sea paciente en esos casos, ya que el tiempo de carga podría ser más largo de lo habitual en comparación con otras aplicaciones, especialmente cuando se trata de un conjunto de datos grande como un hilo con 50,000 mensajes.';

  @override
  String get neverShowThisAgain => 'No volver a mostrar este mensaje';

  @override
  String loadingConversationWith(String name) {
    return 'Cargando conversación\ncon $name…';
  }

  @override
  String get iosCaptureInstructions =>
      '1. Abra la aplicación de Mensajes y seleccione la conversación\n2. Desplácese hasta el mensaje más antiguo que desee analizar\n3. Toque \"Iniciar captura\" a continuación\n4. Tome capturas de pantalla mientras se desplaza por la conversación\n5. Cuando termine, toque \"Finalizar y procesar\"';

  @override
  String get howToCaptureIosMessages => 'Cómo capturar mensajes de iOS';

  @override
  String get deepSeekApiKey => 'Clave de API de DeepSeek';

  @override
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis =>
      'Ingrese su clave de API de DeepSeek para habilitar el análisis con IA.';

  @override
  String get getYourApiKeyFrom =>
      'Obtenga su clave de API de: https://platform.deepseek.com';

  @override
  String get apiKey => 'Clave de API';

  @override
  String get skPlaceholder => 'sk-...';

  @override
  String get yourApiKeyIsStoredSecurely =>
      'Su clave de API se almacena de forma segura en su dispositivo y nunca se comparte.';

  @override
  String get pleaseEnterApiKey => 'Por favor, ingrese una clave de API';

  @override
  String get apiKeySavedSuccessfully => '¡Clave de API guardada exitosamente!';

  @override
  String get pleaseBePatientLongerTextThreads =>
      'Por favor, sea paciente, los conjuntos de datos de hilos de texto más largos tardan bastante en cargar';

  @override
  String get almostThereBigOne =>
      'Casi terminado, Wow, este debe haber sido grande';

  @override
  String get pleaseBePatientLargeDatasets =>
      'Por favor, sea paciente, los conjuntos de datos grandes podrían resultar en tiempos de carga mayores a un minuto y medio';

  @override
  String continuingToLoadMassiveThread(String name) {
    return 'Continuando cargando el hilo masivo con $name…';
  }

  @override
  String get noMessagesInDateRange =>
      'No se encontraron mensajes en el rango de fechas seleccionado. Por favor, seleccione fechas diferentes o borre el filtro de fecha.';

  @override
  String get purchaseCustomMetricTileTitle => 'Comprar Métrica Personalizada';

  @override
  String get purchaseCustomMetricTileDescription =>
      'Por una tarifa única de \$4.99, ingrese un nombre y definición de métrica personalizada guardados permanentemente junto con sus otras métricas para usar en cualquier análisis futuro. Compre métricas personalizadas ilimitadas.';

  @override
  String get purchaseCustomMetricConfirmTitle =>
      'Comprar Métrica Personalizada';

  @override
  String get purchaseCustomMetricConfirmBody =>
      'Se le cobrará \$4.99 (una vez) para desbloquear una ranura de métrica personalizada.\n\nSu nombre y definición de métrica personalizada son permanentes y no pueden cambiarse nunca una vez guardados, así que elija cuidadosamente.';

  @override
  String get purchaseCustomMetricConfirmButton => 'Comprar — \$4.99';

  @override
  String get purchaseCustomMetricEnterNameTitle =>
      'Nombre de Métrica Personalizada';

  @override
  String get purchaseCustomMetricEnterNamePrompt =>
      'Ingrese el nombre para su métrica personalizada:';

  @override
  String get purchaseCustomMetricNameHint => 'Nombre de la Métrica';

  @override
  String get purchaseCustomMetricConfirmNameTitle =>
      'Confirmar Nombre de Métrica';

  @override
  String get purchaseCustomMetricConfirmNameYouEntered => 'Ingresó:\n\n';

  @override
  String get purchaseCustomMetricConfirmNameWarning =>
      '\n\n⚠️  Esto es FINAL y NUNCA se puede cambiar.';

  @override
  String get purchaseCustomMetricReenterName => 'Ups — Reingresar Nombre';

  @override
  String get purchaseCustomMetricSaveName => 'OK — Guardar Nombre de Métrica';

  @override
  String purchaseCustomMetricDefineTitleWithName(String name) {
    return 'Definir: $name';
  }

  @override
  String purchaseCustomMetricDefinePromptWithName(String name) {
    return 'Ingrese el significado de su Métrica Personalizada: $name';
  }

  @override
  String get purchaseCustomMetricMeaningHint =>
      'Describa qué significa esta métrica, qué comportamientos busca y cómo se aplica a la dinámica de la relación...';

  @override
  String get purchaseCustomMetricReenter => 'Ups — Reingresar';

  @override
  String get purchaseCustomMetricSaveMeaning => 'OK — Guardar Significado';

  @override
  String get purchaseCustomMetricPreviewTitle =>
      'Vista Previa de su Métrica Personalizada';

  @override
  String get purchaseCustomMetricPreviewSubtitle =>
      'Así es como se verá su ficha:';

  @override
  String get purchaseCustomMetricLastChanceWarning =>
      '⚠️  Esta es su ÚLTIMA OPORTUNIDAD de cambiar de opinión.\nUna vez confirmado, el nombre y la definición son permanentes.';

  @override
  String get purchaseCustomMetricCancelEverything => 'Cancelar Todo';

  @override
  String get purchaseCustomMetricCommit => 'Confirmar Métrica Personalizada';

  @override
  String purchaseCustomMetricSuccess(String name) {
    return '✓ \"$name\" añadido a sus métricas. ¡Ahora puede seleccionarlo para el análisis!';
  }

  @override
  String get purchaseCustomMetricProcessingTitle => 'Procesando Compra...';

  @override
  String get purchaseCustomMetricProcessingBody =>
      'Esperando confirmación de la tienda.\nPor favor, no cierre la aplicación.';

  @override
  String get next => 'Siguiente';

  @override
  String get cancelNotReady => 'Cancelar — No estaba listo';

  @override
  String get packGoodLabel => 'El Bueno';

  @override
  String get packBadLabel => 'El Feo';

  @override
  String get packUglyLabel => 'El Malo';

  @override
  String get metric_good_1_name => 'Señales de Escucha Activa';

  @override
  String get metric_good_1_description =>
      'Detecta paráfrasis, preguntas aclaratorias y comprensión demostrada de la perspectiva de la pareja en el texto.';

  @override
  String get metric_good_2_name => 'Expresión de Aprecio';

  @override
  String get metric_good_2_description =>
      'Identifica agradecimientos específicos, reconocimiento del esfuerzo y valoración de las cualidades o acciones positivas de la pareja.';

  @override
  String get metric_good_3_name => 'Lenguaje de Afirmación';

  @override
  String get metric_good_3_description =>
      'Busca declaraciones que validen los sentimientos, experiencias, valor o derecho de la pareja a tener necesidades.';

  @override
  String get metric_good_4_name => 'Tono Colaborativo';

  @override
  String get metric_good_4_description =>
      'Mide el uso de \'nosotros\', lenguaje de resolución conjunta de problemas y enmarcar los problemas como desafíos compartidos.';

  @override
  String get metric_good_5_name => 'Curiosidad por la Pareja';

  @override
  String get metric_good_5_description =>
      'Rastrea hacer preguntas sobre los pensamientos, sentimientos, día, preferencias o experiencia interna de la pareja.';

  @override
  String get metric_good_6_name => 'Expresión de vulnerabilidad';

  @override
  String get metric_good_6_description =>
      'Identifica compartir miedos, inseguridades, necesidades o verdades emocionales sin defensas ni culpas.';

  @override
  String get metric_good_7_name => 'Humor como Conexión';

  @override
  String get metric_good_7_description =>
      'Detecta risas compartidas y juguetonas que unen a las parejas, en lugar de burlarse o menospreciar.';

  @override
  String get metric_good_8_name => 'Ofrecimiento de Reaseguramiento';

  @override
  String get metric_good_8_description =>
      'Busca declaraciones proactivas que brinden consuelo, seguridad o confianza a la pareja ansiosa.';

  @override
  String get metric_good_9_name => 'Frecuencia de Cumplidos';

  @override
  String get metric_good_9_description =>
      'Mide elogios genuinos y específicos sobre apariencia, carácter, habilidades o acciones positivas.';

  @override
  String get metric_good_10_name => 'Disponibilidad emocional';

  @override
  String get metric_good_10_description =>
      'Evalúa la capacidad de respuesta a las necesidades emocionales de la pareja, la presencia durante la angustia y la disposición a involucrarse.';

  @override
  String get metric_good_11_name => 'Hábito de gratitud';

  @override
  String get metric_good_11_description =>
      'Identifica expresiones regulares de agradecimiento por pequeñas cosas, esfuerzo, presencia o apoyo.';

  @override
  String get metric_good_12_name => 'Lenguaje de apoyo';

  @override
  String get metric_good_12_description =>
      'Rastrea declaraciones que ofrecen ayuda, ánimo, fe en las habilidades de la pareja o apoyo incondicional.';

  @override
  String get metric_good_13_name => 'Desacuerdo respetuoso';

  @override
  String get metric_good_13_description =>
      'Mide la capacidad de expresar opiniones diferentes preservando el respeto, la curiosidad y la relación.';

  @override
  String get metric_good_14_name => 'Sinceridad en la disculpa';

  @override
  String get metric_good_14_description =>
      'Detecta arrepentimiento genuino, comprensión del impacto y compromiso de cambio sin excusas.';

  @override
  String get metric_good_15_name => 'Aceptación del perdón';

  @override
  String get metric_good_15_description =>
      'Busca disposición para dejar atrás el daño pasado, avanzar y reconstruir la confianza después de la reparación.';

  @override
  String get metric_good_16_name => 'Iniciativa de tiempo de calidad';

  @override
  String get metric_good_16_description =>
      'Identifica ofertas para pasar tiempo concentrado juntos, planificar actividades o crear momentos de conexión.';

  @override
  String get metric_good_17_name => 'Señales de afecto físico';

  @override
  String get metric_good_17_description =>
      'Rastrea menciones de contacto físico, abrazos, besos o cercanía física como expresiones de cuidado e intimidad.';

  @override
  String get metric_good_18_name => 'Reconocimiento de alegría compartida';

  @override
  String get metric_good_18_description =>
      'Mide la celebración de los logros, éxitos, felicidad o buenas noticias de la pareja con entusiasmo genuino.';

  @override
  String get metric_good_19_name => 'Esfuerzo de Resolución de Conflictos';

  @override
  String get metric_good_19_description =>
      'Identifica intentos de encontrar soluciones, comprometerse o restaurar la paz después de un desacuerdo.';

  @override
  String get metric_good_20_name => 'Demostración de Paciencia';

  @override
  String get metric_good_20_description =>
      'Detecta tolerancia hacia el ritmo, las dificultades, la curva de aprendizaje o las necesidades de procesamiento emocional de la pareja.';

  @override
  String get metric_good_21_name => 'Lenguaje de Toma de Perspectiva';

  @override
  String get metric_good_21_description =>
      'Busca declaraciones que muestren comprensión del punto de vista, contexto o realidad emocional de la pareja.';

  @override
  String get metric_good_22_name => 'Señales de Confiabilidad';

  @override
  String get metric_good_22_description =>
      'Rastrea el cumplimiento de promesas, la consistencia y la fiabilidad.';

  @override
  String get metric_good_23_name => 'Respeto por las Diferencias';

  @override
  String get metric_good_23_description =>
      'Mide la aceptación de los rasgos, preferencias, opiniones y formas de ser únicos de la pareja.';

  @override
  String get metric_good_24_name => 'Apertura a la Retroalimentación';

  @override
  String get metric_good_24_description =>
      'Identifica la receptividad a las preocupaciones de la pareja, la disposición a escuchar críticas y el deseo de mejorar.';

  @override
  String get metric_good_25_name => 'Validación de Emociones';

  @override
  String get metric_good_25_description =>
      'Detecta el reconocimiento de que los sentimientos de la pareja son reales, comprensibles y dignos de atención.';

  @override
  String get metric_good_26_name => 'Lenguaje de Ánimo';

  @override
  String get metric_good_26_description =>
      'Busca declaraciones que inspiren confianza, motiven la acción o apoyen los objetivos de la pareja.';

  @override
  String get metric_good_27_name => 'Revelación Íntima';

  @override
  String get metric_good_27_description =>
      'Identifica el compartir pensamientos, sueños, miedos o secretos personales que profundizan la conexión emocional.';

  @override
  String get metric_good_28_name => 'Señales de Sintonía';

  @override
  String get metric_good_28_description =>
      'Mide la capacidad de notar el estado de ánimo, las necesidades o el malestar de la pareja sin que se lo digan explícitamente.';

  @override
  String get metric_good_29_name => 'Reencuadre Positivo';

  @override
  String get metric_good_29_description =>
      'Detecta la búsqueda de aspectos positivos, oportunidades de crecimiento o ángulos constructivos en situaciones difíciles.';

  @override
  String get metric_good_30_name => 'Lenguaje de Compromiso';

  @override
  String get metric_good_30_description =>
      'Rastrea expresiones de dedicación, pensamiento a largo plazo e inversión en el futuro de la relación.';

  @override
  String get metric_good_31_name => 'Demostración de Flexibilidad';

  @override
  String get metric_good_31_description =>
      'Identifica la disposición a adaptar planes, ajustar expectativas o encontrarse a medio camino con la pareja.';

  @override
  String get metric_good_32_name => 'Lenguaje Protector';

  @override
  String get metric_good_32_description =>
      'Busca declaraciones que muestren que la seguridad, el bienestar y los intereses de la pareja importan profundamente.';

  @override
  String get metric_good_33_name => 'Celebración de Hitos';

  @override
  String get metric_good_33_description =>
      'Mide el reconocimiento de aniversarios, logros o momentos significativos juntos.';

  @override
  String get metric_good_34_name => 'Retroalimentación Constructiva';

  @override
  String get metric_good_34_description =>
      'Detecta ofrecimientos de sugerencias para mejorar que sean amables, específicas y centradas en el crecimiento.';

  @override
  String get metric_good_35_name => 'Presencia en la Adversidad';

  @override
  String get metric_good_35_description =>
      'Identifica la permanencia comprometida cuando la pareja está pasando por dificultades, duelo o desafíos.';

  @override
  String get metric_good_36_name => 'Expresión de Admiración';

  @override
  String get metric_good_36_description =>
      'Rastrea el respeto genuino por el carácter, la fortaleza, la inteligencia o la resiliencia de la pareja.';

  @override
  String get metric_good_37_name => 'Indicadores de Juego';

  @override
  String get metric_good_37_description =>
      'Busca bromas ligeras, chistes internos o interacciones divertidas que fortalezcan el vínculo.';

  @override
  String get metric_good_38_name => 'Reflejo Empático';

  @override
  String get metric_good_38_description =>
      'Mide el reflejo de las emociones de la pareja para mostrar comprensión y validación.';

  @override
  String get metric_good_39_name => 'Lenguaje de Aceptación';

  @override
  String get metric_good_39_description =>
      'Detecta la aceptación de la pareja tal como es, incluyendo sus defectos, sin exigir cambios.';

  @override
  String get metric_good_40_name => 'Presencia de Apoyo';

  @override
  String get metric_good_40_description =>
      'Identifica estar presente sin arreglar, ofreciendo consuelo a través de la escucha y la compañía.';

  @override
  String get metric_good_41_name => 'Interés Genuino';

  @override
  String get metric_good_41_description =>
      'Rastrea hacer preguntas de seguimiento y recordar detalles sobre la vida y preocupaciones de la pareja.';

  @override
  String get metric_good_42_name => 'Esfuerzo Recíproco';

  @override
  String get metric_good_42_description =>
      'Mide la contribución equitativa de ambos miembros de la pareja al trabajo emocional, la planificación y el mantenimiento de la relación.';

  @override
  String get metric_good_43_name => 'Lenguaje de Perdón';

  @override
  String get metric_good_43_description =>
      'Busca dejar ir rencores, ofrecer segundas oportunidades y elegir superar el dolor.';

  @override
  String get metric_good_44_name => 'Señales de Respeto Mutuo';

  @override
  String get metric_good_44_description =>
      'Detecta tratar a la pareja como un igual, honrando sus opiniones y valorando su aporte.';

  @override
  String get metric_good_45_name => 'Honestidad Emocional';

  @override
  String get metric_good_45_description =>
      'Identifica la expresión veraz de sentimientos sin manipulación, exageración ni ocultamiento estratégico.';

  @override
  String get metric_good_46_name => 'Escucha de Apoyo';

  @override
  String get metric_good_46_description =>
      'Mide permitir que la pareja se exprese plenamente sin interrumpir, juzgar o resolver problemas de inmediato.';

  @override
  String get metric_good_47_name => 'Apodos Cariñosos';

  @override
  String get metric_good_47_description =>
      'Rastrea el uso de términos cariñosos que transmiten calidez y conexión íntima.';

  @override
  String get metric_good_48_name => 'Risa Compartida';

  @override
  String get metric_good_48_description =>
      'Identifica momentos de humor y alegría mutuos que crean experiencias positivas de vínculo.';

  @override
  String get metric_good_49_name => 'Gestos Atentos';

  @override
  String get metric_good_49_description =>
      'Busca pequeños actos de bondad, recordar preferencias o hacer cosas para hacer feliz a la pareja.';

  @override
  String get metric_good_50_name => 'Confianza en la Pareja';

  @override
  String get metric_good_50_description =>
      'Detecta la creencia en las habilidades, el potencial y la capacidad de la pareja para manejar desafíos.';

  @override
  String get metric_good_51_name => 'Interdependencia Saludable';

  @override
  String get metric_good_51_description =>
      'Mide el equilibrio entre la unión y la independencia, apoyando la autonomía del otro.';

  @override
  String get metric_good_52_name => 'Desescalada de Conflictos';

  @override
  String get metric_good_52_description =>
      'Identifica lenguaje suave, pausas u ofrecimiento de soluciones para calmar discusiones acaloradas.';

  @override
  String get metric_good_53_name => 'Disculpa Sincera';

  @override
  String get metric_good_53_description =>
      'Rastrea el reconocimiento completo de la falta sin minimizar, defender o culpar a otros.';

  @override
  String get metric_good_54_name => 'Ofrecimiento de Apoyo Emocional';

  @override
  String get metric_good_54_description =>
      'Busca chequeos proactivos, preguntar cómo está la pareja y ofrecer ayuda.';

  @override
  String get metric_good_55_name => 'Límites Respetuosos';

  @override
  String get metric_good_55_description =>
      'Mide el respeto por los límites establecidos por la pareja mientras se mantienen límites saludables propios.';

  @override
  String get metric_good_56_name => 'Anticipación Positiva';

  @override
  String get metric_good_56_description =>
      'Detecta entusiasmo por el futuro juntos, planificación anticipada y expectativas de experiencias compartidas.';

  @override
  String get metric_good_57_name => 'Señales de Atención';

  @override
  String get metric_good_57_description =>
      'Identifica el recuerdo de fechas importantes, preferencias y detalles que demuestran que la pareja importa.';

  @override
  String get metric_good_58_name => 'Fomento del Crecimiento';

  @override
  String get metric_good_58_description =>
      'Rastrea el apoyo al desarrollo personal, aprendizaje y consecución de metas de la pareja.';

  @override
  String get metric_good_59_name => 'Lenguaje Tierno';

  @override
  String get metric_good_59_description =>
      'Busca elecciones de palabras suaves y cariñosas que transmitan ternura y calidez emocional.';

  @override
  String get metric_good_60_name => 'Responsabilidad Mutua';

  @override
  String get metric_good_60_description =>
      'Mide que ambos miembros asuman responsabilidad por sus acciones y su impacto.';

  @override
  String get metric_good_61_name => 'Celebración de la Pareja';

  @override
  String get metric_good_61_description =>
      'Detecta expresiones públicas o privadas de orgullo, alegría o admiración por la pareja.';

  @override
  String get metric_good_62_name => 'Afecto Constante';

  @override
  String get metric_good_62_description =>
      'Identifica expresiones regulares de amor que no fluctúan según el rendimiento o cumplimiento.';

  @override
  String get metric_good_63_name => 'Sintonía Emocional';

  @override
  String get metric_good_63_description =>
      'Rastrea la percepción y respuesta a cambios sutiles en el estado emocional de la pareja.';

  @override
  String get metric_good_64_name => 'Toma de decisiones colaborativa';

  @override
  String get metric_good_64_description =>
      'Mide discutir opciones juntos y tomar decisiones que consideren las necesidades de ambos.';

  @override
  String get metric_good_65_name => 'Reaseguramiento sin exigencia';

  @override
  String get metric_good_65_description =>
      'Busca ofrecer consuelo y seguridad sin exigir que la pareja lo gane.';

  @override
  String get metric_good_66_name => 'Conexión auténtica';

  @override
  String get metric_good_66_description =>
      'Detecta presencia genuina, intercambio real y dejar de lado las apariencias en las interacciones.';

  @override
  String get metric_good_67_name => 'Ánimo mutuo';

  @override
  String get metric_good_67_description =>
      'Identifica cuando ambos se animan mutuamente y celebran los esfuerzos, no solo los resultados.';

  @override
  String get metric_good_68_name => 'Cuestionamiento respetuoso';

  @override
  String get metric_good_68_description =>
      'Rastrea preguntar sobre la perspectiva de la pareja con genuina curiosidad, no como interrogatorio.';

  @override
  String get metric_good_69_name => 'Consistencia amorosa';

  @override
  String get metric_good_69_description =>
      'Mide mostrarse igual en los buenos y malos momentos, fiable en el afecto.';

  @override
  String get metric_good_70_name => 'Reciprocidad emocional';

  @override
  String get metric_good_70_description =>
      'Busca que ambos compartan sentimientos, necesidades y vulnerabilidades de manera equilibrada.';

  @override
  String get metric_good_71_name => 'Presencia gozosa';

  @override
  String get metric_good_71_description =>
      'Detecta alegría genuina en la compañía de la pareja y entusiasmo por el tiempo juntos.';

  @override
  String get metric_good_72_name => 'Diálogo constructivo';

  @override
  String get metric_good_72_description =>
      'Identifica conversaciones que avanzan hacia la comprensión, no hacia ganar o tener razón.';

  @override
  String get metric_good_73_name => 'Defensa Protectora';

  @override
  String get metric_good_73_description =>
      'Rastrea la defensa de la pareja, su protección y la priorización de su bienestar.';

  @override
  String get metric_good_74_name => 'Comunicación Consciente';

  @override
  String get metric_good_74_description =>
      'Mide la elección cuidadosa de palabras, considerando el impacto antes de hablar y la comunicación intencional.';

  @override
  String get metric_good_75_name => 'Inversión en la Relación';

  @override
  String get metric_good_75_description =>
      'Busca tiempo, energía y recursos dedicados a nutrir la relación.';

  @override
  String get metric_good_76_name => 'Lenguaje de Base Segura';

  @override
  String get metric_good_76_description =>
      'Detecta la oferta de estabilidad, seguridad y una base desde la cual la pareja puede explorar.';

  @override
  String get metric_good_77_name => 'Admiración Mutua';

  @override
  String get metric_good_77_description =>
      'Identifica a ambas parejas expresando respeto y aprecio por las cualidades del otro.';

  @override
  String get metric_good_78_name => 'Momentos Tiernos';

  @override
  String get metric_good_78_description =>
      'Rastrea la creación o el reconocimiento de momentos íntimos y tranquilos de conexión y cercanía.';

  @override
  String get metric_good_79_name => 'Curiosidad Genuina';

  @override
  String get metric_good_79_description =>
      'Busca un interés auténtico en comprender los pensamientos, sentimientos y experiencias de la pareja.';

  @override
  String get metric_good_80_name => 'Aceptación Amorosa';

  @override
  String get metric_good_80_description =>
      'Detecta la aceptación de la pareja en su totalidad, incluyendo imperfecciones y pasado.';

  @override
  String get metric_good_81_name => 'Apoyo al Crecimiento Mutuo';

  @override
  String get metric_good_81_description =>
      'Identifica a ambas parejas alentando el desarrollo del otro y celebrando el progreso.';

  @override
  String get metric_good_82_name => 'Indicadores de Tono Cálido';

  @override
  String get metric_good_82_description =>
      'Rastrea el uso de lenguaje afectuoso, frases amables y un estilo de comunicación suave.';

  @override
  String get metric_good_83_name => 'Compromiso Receptivo';

  @override
  String get metric_good_83_description =>
      'Mide respuestas rápidas y comprometidas a los mensajes y ofertas emocionales de la pareja.';

  @override
  String get metric_good_84_name => 'Alineación de Valores Compartidos';

  @override
  String get metric_good_84_description =>
      'Busca referencias a creencias, metas o filosofías de vida comunes que unen a la pareja.';

  @override
  String get metric_good_85_name => 'Apoyo Incondicional';

  @override
  String get metric_good_85_description =>
      'Detecta el apoyo a la pareja en momentos difíciles sin condicionar ese apoyo.';

  @override
  String get metric_good_86_name => 'Vulnerabilidad Íntima';

  @override
  String get metric_good_86_description =>
      'Identifica el compartir miedos profundos, sueños o inseguridades que fortalecen los vínculos emocionales.';

  @override
  String get metric_good_87_name => 'Lenguaje de Respeto Mutuo';

  @override
  String get metric_good_87_description =>
      'Rastrea el respeto por las perspectivas, elecciones y autonomía del otro en la comunicación.';

  @override
  String get metric_good_88_name => 'Encuadre Positivo';

  @override
  String get metric_good_88_description =>
      'Mide la capacidad de ver lo mejor en las situaciones y en la pareja, enfocándose en las fortalezas.';

  @override
  String get metric_good_89_name => 'Resolución Colaborativa de Problemas';

  @override
  String get metric_good_89_description =>
      'Busca trabajar juntos hacia soluciones que beneficien a ambos por igual.';

  @override
  String get metric_good_90_name => 'Validación Emocional';

  @override
  String get metric_good_90_description =>
      'Detecta la confirmación de que los sentimientos de la pareja tienen sentido y son aceptables.';

  @override
  String get metric_good_91_name => 'Amabilidad Constante';

  @override
  String get metric_good_91_description =>
      'Identifica pequeños actos regulares de cuidado que muestran que la pareja es pensada y valorada.';

  @override
  String get metric_good_92_name => 'Celebración Mutua';

  @override
  String get metric_good_92_description =>
      'Rastrea cuando ambos miembros de la pareja están genuinamente felices por los éxitos y alegrías del otro.';

  @override
  String get metric_good_93_name => 'Lenguaje de Apego Seguro';

  @override
  String get metric_good_93_description =>
      'Mide la expresión de confianza, comodidad con la intimidad y seguridad en la relación.';

  @override
  String get metric_good_94_name => 'Consideración Reflexiva';

  @override
  String get metric_good_94_description =>
      'Busca la toma de decisiones teniendo en cuenta las necesidades y sentimientos de la pareja.';

  @override
  String get metric_good_95_name => 'Presencia Amorosa';

  @override
  String get metric_good_95_description =>
      'Detecta la presencia plena y comprometida, mostrando a la pareja que es lo más importante.';

  @override
  String get metric_good_96_name => 'Lenguaje de Cuidado Genuino';

  @override
  String get metric_good_96_description =>
      'Rastrea expresiones auténticas de preocupación, cuidado e inversión en el bienestar de la pareja.';

  @override
  String get metric_good_97_name => 'Compromiso Relacional';

  @override
  String get metric_good_97_description =>
      'Mide la expresión de dedicación a la relación y la disposición a superar desafíos.';

  @override
  String get metric_good_98_name => 'Expresión de Amor Auténtico';

  @override
  String get metric_good_98_description =>
      'Busca expresiones genuinas y constantes de amor que se sientan reales e incondicionales.';

  @override
  String get metric_good_99_name => 'Establecimiento de Metas Mutuas';

  @override
  String get metric_good_99_description =>
      'Identifica a las parejas definiendo colaborativamente sueños, prioridades y dirección compartidos para su futuro juntos.';

  @override
  String get metric_good_100_name => 'Reconocimiento de intentos de reparación';

  @override
  String get metric_good_100_description =>
      'Detecta notar y responder positivamente a las ofertas de la pareja para desescalar el conflicto y restaurar la conexión.';

  @override
  String get metric_bad_1_name => 'Agresión Pasiva';

  @override
  String get metric_bad_1_description =>
      'Detecta hostilidad indirecta mediante procrastinación, olvidos, sarcasmo o sabotaje sutil en lugar de expresión directa.';

  @override
  String get metric_bad_2_name => 'Armamentización de la Culpa';

  @override
  String get metric_bad_2_description =>
      'Identifica el uso de culpa, vergüenza o lenguaje de obligación para manipular decisiones o impedir el establecimiento de límites.';

  @override
  String get metric_bad_3_name => 'Chantaje Emocional';

  @override
  String get metric_bad_3_description =>
      'Señala amenazas de autolesión, abandono o retirada de afecto para controlar el comportamiento o impedir la discusión.';

  @override
  String get metric_bad_4_name => 'Queja Crónica';

  @override
  String get metric_bad_4_description =>
      'Rastrea negatividad persistente, rumiación o quejas sin buscar soluciones o cambios colaborativos.';

  @override
  String get metric_bad_5_name => 'Vergüenza por Comparación';

  @override
  String get metric_bad_5_description =>
      'Identifica comparaciones desfavorables con ex parejas, amigos o familiares para avergonzar o coaccionar cambios de conducta.';

  @override
  String get metric_bad_6_name => 'Escucha Condicional';

  @override
  String get metric_bad_6_description =>
      'Detecta escuchar solo cuando beneficia al oyente o sirve a su agenda, en lugar de buscar comprensión genuina.';

  @override
  String get metric_bad_7_name => 'Memoria Selectiva';

  @override
  String get metric_bad_7_description =>
      'Rastrea el olvido conveniente de promesas, acuerdos o comportamientos dañinos pasados para evitar la rendición de cuentas.';

  @override
  String get metric_bad_8_name => 'Búsqueda de Atención Mediante Crisis';

  @override
  String get metric_bad_8_description =>
      'Identifica escalada dramática, creación de crisis o exageración para obtener atención o simpatía.';

  @override
  String get metric_bad_9_name => 'Prueba de Límites';

  @override
  String get metric_bad_9_description =>
      'Detecta la exploración o presión repetida sobre los límites establecidos para determinar si se harán cumplir.';

  @override
  String get metric_bad_10_name => 'Ocultar Información';

  @override
  String get metric_bad_10_description =>
      'Identifica la omisión deliberada de hechos relevantes, contexto o transparencia para mantener el control.';

  @override
  String get metric_bad_11_name => 'Ira Desproporcionada';

  @override
  String get metric_bad_11_description =>
      'Rastrea respuestas de ira que son significativamente mayores de lo que justifica el incidente desencadenante.';

  @override
  String get metric_bad_12_name => 'Adicción a la Reafirmación';

  @override
  String get metric_bad_12_description =>
      'Señala la necesidad constante de validación, preguntas repetidas sobre el compromiso o pruebas interminables de amor.';

  @override
  String get metric_bad_13_name => 'Evasión de Conversaciones';

  @override
  String get metric_bad_13_description =>
      'Detecta la negativa a abordar inquietudes, frases de evasión o el cierre de discusiones importantes.';

  @override
  String get metric_bad_14_name => 'Patrón de Contradicción';

  @override
  String get metric_bad_14_description =>
      'Identifica declaraciones, promesas o posturas contradictorias que generan confusión o desestabilización.';

  @override
  String get metric_bad_15_name => 'Invalidación Mediante Etiquetas';

  @override
  String get metric_bad_15_description =>
      'Señala etiquetar las inquietudes como \"locura\", \"dramatismo\", \"paranoia\" o \"sobrerreacción\" para invalidarlas.';

  @override
  String get metric_bad_16_name => 'Empatía Selectiva';

  @override
  String get metric_bad_16_description =>
      'Detecta empatía ofrecida solo cuando es conveniente o cuando sirve a los intereses del hablante.';

  @override
  String get metric_bad_17_name => 'Enfoque Transaccional';

  @override
  String get metric_bad_17_description =>
      'Identifica frases como \"me debes\", \"después de todo lo que he hecho\" o ver los actos de la relación como creadores de deuda.';

  @override
  String get metric_bad_18_name => 'Reciclaje de Agravios';

  @override
  String get metric_bad_18_description =>
      'Rastrea la mención repetida de agravios pasados o el uso de daños anteriores como munición en conflictos actuales.';

  @override
  String get metric_bad_19_name => 'Lenguaje Exigente';

  @override
  String get metric_bad_19_description =>
      'Señala imperativos, órdenes o ultimátums en lugar de peticiones o resolución colaborativa de problemas.';

  @override
  String get metric_bad_20_name => 'Indisponibilidad Emocional';

  @override
  String get metric_bad_20_description =>
      'Detecta una negativa constante a involucrarse emocionalmente, compartir sentimientos o brindar consuelo.';

  @override
  String get metric_bad_21_name => 'Interpretación Hostil';

  @override
  String get metric_bad_21_description =>
      'Identifica la interpretación de declaraciones neutrales como ataques o mensajes ambiguos como hostiles.';

  @override
  String get metric_bad_22_name => 'Marco de Derecho';

  @override
  String get metric_bad_22_description =>
      'Señala un lenguaje que sugiere que el hablante merece un trato especial, excepciones o prioridad.';

  @override
  String get metric_bad_23_name => 'Crítica Disfrazada de Ayuda';

  @override
  String get metric_bad_23_description =>
      'Detecta críticas envueltas en frases como \"solo trato de ayudar\" o \"por tu propio bien\".';

  @override
  String get metric_bad_24_name => 'Patrones de Abandono';

  @override
  String get metric_bad_24_description =>
      'Identifica un fracaso constante para satisfacer necesidades emocionales, físicas o relacionales.';

  @override
  String get metric_bad_25_name => 'Rumiación de Conflictos';

  @override
  String get metric_bad_25_description =>
      'Rastrea la obsesiva repetición de conflictos sin avanzar hacia una resolución o cierre.';

  @override
  String get metric_bad_26_name => 'Invalidación de Sensibilidad';

  @override
  String get metric_bad_26_description =>
      'Señala frases como \"eres demasiado sensible\" o \"estás exagerando\" para invalidar sentimientos.';

  @override
  String get metric_bad_27_name => 'Marco Competitivo';

  @override
  String get metric_bad_27_description =>
      'Detecta la presentación de la relación como una competencia donde una pareja debe ganar o dominar.';

  @override
  String get metric_bad_28_name => 'Doble Rasero';

  @override
  String get metric_bad_28_description =>
      'Identifica aplicar reglas diferentes a uno mismo que a la pareja o cambiar expectativas arbitrariamente.';

  @override
  String get metric_bad_29_name => 'Afecto como Castigo';

  @override
  String get metric_bad_29_description =>
      'Señala retirar afecto, atención o comunicación como represalia por agravios percibidos.';

  @override
  String get metric_bad_30_name => 'Rotación de Culpa';

  @override
  String get metric_bad_30_description =>
      'Rastrea la rotación de culpa entre la pareja, las circunstancias y factores externos para evitar la responsabilidad.';

  @override
  String get metric_bad_31_name => 'Burla Retórica';

  @override
  String get metric_bad_31_description =>
      'Detecta preguntas retóricas o sarcásticas usadas para burlarse en lugar de comprender.';

  @override
  String get metric_bad_32_name => 'Recordatorios de Sacrificio';

  @override
  String get metric_bad_32_description =>
      'Identifica recordar a la pareja sacrificios, favores o apoyo para crear deuda y cumplimiento.';

  @override
  String get metric_bad_33_name => 'Escalada Deliberada';

  @override
  String get metric_bad_33_description =>
      'Señala la escalada deliberada de intensidad para abrumar la capacidad de respuesta racional de la pareja.';

  @override
  String get metric_bad_34_name => 'Vulnerabilidad Estratégica';

  @override
  String get metric_bad_34_description =>
      'Detecta compartir emociones solo cuando sirve a fines de manipulación o control.';

  @override
  String get metric_bad_35_name => 'Desviación Mediante Contraataque';

  @override
  String get metric_bad_35_description =>
      'Identifica desviar la atención de las preocupaciones de la pareja planteando problemas no relacionados o contraacusaciones.';

  @override
  String get metric_bad_36_name => 'Lenguaje de Superioridad';

  @override
  String get metric_bad_36_description =>
      'Señala lenguaje de superioridad, condescendencia o encuadrar a la pareja como inferior.';

  @override
  String get metric_bad_37_name => 'Patrón de Salida del Conflicto';

  @override
  String get metric_bad_37_description =>
      'Detecta el patrón de abandonar conversaciones, negarse a participar o crear distancia durante un conflicto.';

  @override
  String get metric_bad_38_name => 'Sesgo Negativo';

  @override
  String get metric_bad_38_description =>
      'Rastrea la interpretación constante de acciones neutrales o positivas como negativas o sospechosas.';

  @override
  String get metric_bad_39_name => 'Negación de Agencia';

  @override
  String get metric_bad_39_description =>
      'Identifica expresiones como \"tengo que\", \"me haces\" o lenguaje que elimina la agencia personal del hablante.';

  @override
  String get metric_bad_40_name => 'Silencio como Control';

  @override
  String get metric_bad_40_description =>
      'Señala el uso del silencio o la falta de respuesta como forma de castigo o control.';

  @override
  String get metric_bad_41_name => 'Hipocresía de Privacidad';

  @override
  String get metric_bad_41_description =>
      'Detecta la negativa a compartir información mientras se exige transparencia a la pareja.';

  @override
  String get metric_bad_42_name => 'Crítica Dura No Solicitada';

  @override
  String get metric_bad_42_description =>
      'Identifica críticas duras presentadas como \"constructivas\" o \"útiles\" sin consentimiento.';

  @override
  String get metric_bad_43_name => 'Cuidado Condicional';

  @override
  String get metric_bad_43_description =>
      'Señala apoyo ofrecido solo cuando la pareja cumple con las expectativas del hablante.';

  @override
  String get metric_bad_44_name => 'Negación del Impacto';

  @override
  String get metric_bad_44_description =>
      'Detecta frases como \"no lo dije con esa intención\" o \"estás leyendo demasiado\" después de causar daño.';

  @override
  String get metric_bad_45_name => 'Mentalidad de Deuda';

  @override
  String get metric_bad_45_description =>
      'Rastrea la mención de ayuda o apoyo pasado para crear deuda y controlar el comportamiento actual.';

  @override
  String get metric_bad_46_name => 'Evasión de Responsabilidad';

  @override
  String get metric_bad_46_description =>
      'Señala un patrón constante de no asumir la responsabilidad por el impacto de las acciones.';

  @override
  String get metric_bad_47_name => 'Desestimación de Necesidades';

  @override
  String get metric_bad_47_description =>
      'Identifica cuando se tratan las necesidades de la pareja como inconvenientes, irrazonables o poco importantes.';

  @override
  String get metric_bad_48_name => 'Manipulación Emocional';

  @override
  String get metric_bad_48_description =>
      'Señala el uso estratégico de emociones para controlar resultados o evitar la rendición de cuentas.';

  @override
  String get metric_bad_49_name => 'Evitación de la Intimidad';

  @override
  String get metric_bad_49_description =>
      'Rastrea el retiro constante de la cercanía emocional o física sin explicación.';

  @override
  String get metric_bad_50_name => 'Crítica Velada';

  @override
  String get metric_bad_50_description =>
      'Identifica críticas disfrazadas de bromas, observaciones o comentarios casuales.';

  @override
  String get metric_bad_51_name => 'Minimización de Preocupaciones';

  @override
  String get metric_bad_51_description =>
      'Señala cuando se reducen las preocupaciones de la pareja a insignificancia o exageración.';

  @override
  String get metric_bad_52_name => 'Imposición de Culpa';

  @override
  String get metric_bad_52_description =>
      'Identifica el uso de culpa o vergüenza para asegurar que la pareja cumpla con las expectativas.';

  @override
  String get metric_bad_53_name => 'Resistencia a Disculparse';

  @override
  String get metric_bad_53_description =>
      'Rastrea la resistencia a disculparse, justificar el daño o negarse a reconocer el impacto.';

  @override
  String get metric_bad_54_name => 'Rechazo de Perspectiva';

  @override
  String get metric_bad_54_description =>
      'Señala la negativa a considerar o validar el punto de vista o experiencia de la pareja.';

  @override
  String get metric_bad_55_name => 'Racionamiento Emocional';

  @override
  String get metric_bad_55_description =>
      'Detecta la limitación deliberada de la expresión o conexión emocional como forma de control.';

  @override
  String get metric_bad_56_name => 'Manipulación por Obligación';

  @override
  String get metric_bad_56_description =>
      'Señala el uso de apoyo o sacrificio pasado para manipular decisiones actuales.';

  @override
  String get metric_bad_57_name => 'Resistencia al Crecimiento';

  @override
  String get metric_bad_57_description =>
      'Rastrea la resistencia a modificar conductas dañinas a pesar de solicitudes o impacto demostrado.';

  @override
  String get metric_bad_58_name => 'Negación del Daño';

  @override
  String get metric_bad_58_description =>
      'Detecta la negativa a reconocer o tomar en serio el impacto del propio comportamiento.';

  @override
  String get metric_bad_59_name => 'Preguntas Cargadas';

  @override
  String get metric_bad_59_description =>
      'Señala intención crítica disfrazada de preguntas inocentes o expresiones de curiosidad.';

  @override
  String get metric_bad_60_name => 'Tono Despectivo';

  @override
  String get metric_bad_60_description =>
      'Identifica actitud desdeñosa o desprecio transmitido a través de patrones de texto y elección de palabras.';

  @override
  String get metric_bad_61_name => 'Ciclo de Culpa';

  @override
  String get metric_bad_61_description =>
      'Detecta el uso repetido de culpa por apoyo o sacrificio pasado para controlar la conducta actual.';

  @override
  String get metric_bad_62_name => 'Reserva Emocional';

  @override
  String get metric_bad_62_description =>
      'Rastrea la negativa a compartir emociones, miedos o necesidades con la pareja como retención protectora.';

  @override
  String get metric_bad_63_name => 'Negociación de Límites';

  @override
  String get metric_bad_63_description =>
      'Señala tratar los límites establecidos como sugerencias o negociables en lugar de compromisos firmes.';

  @override
  String get metric_bad_64_name => 'Ausencia Emocional';

  @override
  String get metric_bad_64_description =>
      'Detecta la negativa constante a brindar apoyo emocional o presencia comprometida.';

  @override
  String get metric_bad_65_name => 'Registro de Favores';

  @override
  String get metric_bad_65_description =>
      'Señala llevar una cuenta mental de favores, apoyo o sacrificios para usarlos después como moneda de cambio.';

  @override
  String get metric_bad_66_name => 'Evasión de la Honestidad';

  @override
  String get metric_bad_66_description =>
      'Detecta el patrón de ocultar la verdad, omitir hechos o ser deliberadamente vago.';

  @override
  String get metric_bad_67_name => 'Negación de Validez';

  @override
  String get metric_bad_67_description =>
      'Identifica tratar los sentimientos, necesidades o preocupaciones de la pareja como inválidos o ilegítimos.';

  @override
  String get metric_bad_68_name => 'Crítica Disfrazada de Consejo';

  @override
  String get metric_bad_68_description =>
      'Señala críticas presentadas como preocupación, consejo u observación útil.';

  @override
  String get metric_bad_69_name => 'Indicadores de Superioridad';

  @override
  String get metric_bad_69_description =>
      'Detecta superioridad, burla o desdén en el lenguaje o estilo de comunicación.';

  @override
  String get metric_bad_70_name => 'Resistencia a la Reparación';

  @override
  String get metric_bad_70_description =>
      'Rastrea la resistencia a enmendar, reconectar o reconstruir después de un conflicto.';

  @override
  String get metric_bad_71_name => 'Desestimación del Esfuerzo';

  @override
  String get metric_bad_71_description =>
      'Señala minimizar o ignorar los intentos de la pareja por mejorar o abordar problemas.';

  @override
  String get metric_bad_72_name => 'Patrón de Distancia Emocional';

  @override
  String get metric_bad_72_description =>
      'Detecta un patrón a largo plazo de distancia emocional o negativa a comprometerse auténticamente.';

  @override
  String get metric_bad_73_name => 'Encuadre de Inferioridad';

  @override
  String get metric_bad_73_description =>
      'Identifica cuando se presenta a la pareja como inferior, defectuosa o indigna de respeto pleno.';

  @override
  String get metric_bad_74_name => 'Resistencia a la Retroalimentación';

  @override
  String get metric_bad_74_description =>
      'Detecta resistencia a escuchar críticas, negarse a oír o cerrar la discusión.';

  @override
  String get metric_bad_75_name => 'Desestimación de Preocupaciones';

  @override
  String get metric_bad_75_description =>
      'Identifica cuando se tratan las preocupaciones o miedos de la pareja como infundados o irracionales.';

  @override
  String get metric_bad_76_name => 'Búsqueda de Fallos';

  @override
  String get metric_bad_76_description =>
      'Señala un patrón crónico de encontrar fallos, quejarse o atacar el carácter de la pareja.';

  @override
  String get metric_bad_77_name => 'Ciclo de Culpa por Sacrificio';

  @override
  String get metric_bad_77_description =>
      'Identifica cuando se menciona repetidamente el apoyo pasado para generar culpa o controlar el comportamiento.';

  @override
  String get metric_bad_78_name => 'Ambigüedad de Compromiso';

  @override
  String get metric_bad_78_description =>
      'Rastrea un lenguaje de compromiso poco claro o vacilante, señales mixtas o reticencia a comprometerse.';

  @override
  String get metric_bad_79_name => 'Desestimación de Solicitudes';

  @override
  String get metric_bad_79_description =>
      'Señala ignorar, rechazar o retrasar la respuesta a solicitudes razonables de la pareja.';

  @override
  String get metric_bad_80_name => 'Tácticas de Control Emocional';

  @override
  String get metric_bad_80_description =>
      'Detecta el uso estratégico de emociones para controlar resultados o evitar la rendición de cuentas.';

  @override
  String get metric_bad_81_name => 'Mentalidad de Intercambio';

  @override
  String get metric_bad_81_description =>
      'Señala ver la relación a través del lente de deuda, obligación o intercambio transaccional.';

  @override
  String get metric_bad_82_name => 'Resistencia al Desarrollo Personal';

  @override
  String get metric_bad_82_description =>
      'Detecta resistencia al desarrollo personal, al aprendizaje o al cambio de patrones dañinos.';

  @override
  String get metric_bad_83_name => 'Rechazo a la Mejora';

  @override
  String get metric_bad_83_description =>
      'Identifica la minimización o el rechazo de los esfuerzos de la pareja por mejorar o abordar problemas.';

  @override
  String get metric_bad_84_name => 'Crítica Crónica';

  @override
  String get metric_bad_84_description =>
      'Señala un patrón crónico de crítica envuelta en lenguaje de preocupación, ayuda o cuidado.';

  @override
  String get metric_bad_85_name => 'Evasión de Soluciones';

  @override
  String get metric_bad_85_description =>
      'Detecta un patrón consistente de evitar el cierre, avanzar o encontrar soluciones viables.';

  @override
  String get metric_bad_86_name => 'Patrón de Desviación de Culpa';

  @override
  String get metric_bad_86_description =>
      'Señala un patrón habitual de redirigir la responsabilidad hacia factores externos o la pareja.';

  @override
  String get metric_bad_87_name => 'Respuestas Despectivas';

  @override
  String get metric_bad_87_description =>
      'Identifica un patrón de descartar las aportaciones, ideas o sugerencias de la pareja sin consideración.';

  @override
  String get metric_bad_88_name => 'Expresión de Resentimiento';

  @override
  String get metric_bad_88_description =>
      'Detecta un tono de resentimiento, amargura o frustración prolongada en la comunicación.';

  @override
  String get metric_bad_89_name => 'Mensajes Ambivalentes';

  @override
  String get metric_bad_89_description =>
      'Señala mensajes contradictorios sobre el compromiso, deseo poco claro de continuar o dinámicas de tira y afloja.';

  @override
  String get metric_bad_90_name => 'Cambio de Expectativas';

  @override
  String get metric_bad_90_description =>
      'Identifica cambios de expectativas sin comunicación, y luego culpa a la pareja por no cumplirlas.';

  @override
  String get metric_bad_91_name => 'Hábito de Desviación';

  @override
  String get metric_bad_91_description =>
      'Detecta la evasión habitual de respuestas directas o la redirección de conversaciones para evitar la rendición de cuentas.';

  @override
  String get metric_bad_92_name => 'Manipulación a Través de la Amabilidad';

  @override
  String get metric_bad_92_description =>
      'Señala la generosidad exagerada utilizada estratégicamente para crear obligación o reducir las defensas.';

  @override
  String get metric_bad_93_name => 'Patrón de Impuntualidad Crónica';

  @override
  String get metric_bad_93_description =>
      'Identifica el desprecio constante por el tiempo de la pareja a través de retrasos o incumplimiento de compromisos programados.';

  @override
  String get metric_bad_94_name => 'Minimización del Progreso';

  @override
  String get metric_bad_94_description =>
      'Rastrea el descartar o no reconocer el crecimiento personal genuino o las mejoras de la pareja.';

  @override
  String get metric_bad_95_name => 'Armamento Emocional';

  @override
  String get metric_bad_95_description =>
      'Detecta el uso de las vulnerabilidades o miedos revelados por la pareja en su contra durante un conflicto.';

  @override
  String get metric_bad_96_name => 'Tácticas Afines al Gaslighting';

  @override
  String get metric_bad_96_description =>
      'Identifica tácticas sutiles de distorsión de la realidad que generan dudas sin llegar al gaslighting completo.';

  @override
  String get metric_bad_97_name => 'Muro de Piedra Pasivo';

  @override
  String get metric_bad_97_description =>
      'Señala el desenganche sutil, respuestas monosilábicas o presencia ausente como evitación.';

  @override
  String get metric_bad_98_name => 'Control de la Narrativa';

  @override
  String get metric_bad_98_description =>
      'Detecta la insistencia en ser la única autoridad sobre lo que sucedió, cómo se sintió o lo que se quiso decir.';

  @override
  String get metric_bad_99_name => 'Desviación de la Responsabilidad';

  @override
  String get metric_bad_99_description =>
      'Rastrea la redirección constante de la responsabilidad hacia factores externos, terceros o el comportamiento de la pareja.';

  @override
  String get metric_bad_100_name => 'Indisponibilidad Emocional';

  @override
  String get metric_bad_100_description =>
      'Señala el retiro crónico de la intimidad emocional, la vulnerabilidad o la conexión significativa cuando la pareja necesita cercanía.';

  @override
  String get metric_ugly_1_name => 'Amenazas de Violencia Física';

  @override
  String get metric_ugly_1_description =>
      'Detecta amenazas explícitas o veladas de golpear, dañar o agredir físicamente a la pareja.';

  @override
  String get metric_ugly_2_name => 'Referencias a Posesión de Armas';

  @override
  String get metric_ugly_2_description =>
      'Señala menciones de armas de fuego, cuchillos o armas en contexto de ira, control o capacidad de dañar.';

  @override
  String get metric_ugly_3_name => 'Indicadores de Estrangulación';

  @override
  String get metric_ugly_3_description =>
      'Identifica lenguaje o referencias a estrangulamiento, agarre del cuello, asfixia o sofocación.';

  @override
  String get metric_ugly_4_name => 'Instrumentalización de Amenaza Suicida';

  @override
  String get metric_ugly_4_description =>
      'Detecta amenazas de autolesión utilizadas para controlar, manipular o castigar a la pareja.';

  @override
  String get metric_ugly_5_name => 'Lenguaje de Ideación Homicida';

  @override
  String get metric_ugly_5_description =>
      'Señala declaraciones que expresan intención, planificación o deseo de matar a la pareja.';

  @override
  String get metric_ugly_6_name => 'Patrones de Riesgo de Letalidad';

  @override
  String get metric_ugly_6_description =>
      'Identifica señales de alta letalidad: acceso a armas, obsesión, escalada y amenazas de separación combinadas.';

  @override
  String get metric_ugly_7_name => 'Lenguaje de Acoso Obsesivo';

  @override
  String get metric_ugly_7_description =>
      'Detecta monitoreo obsesivo de ubicación, seguimiento, visitas sorpresa o persecución persistente no deseada.';

  @override
  String get metric_ugly_8_name => 'Imposición de Aislamiento Forzado';

  @override
  String get metric_ugly_8_description =>
      'Señala demandas agresivas de cortar todo contacto con familiares, amigos, trabajo o el exterior.';

  @override
  String get metric_ugly_9_name => 'Sabotaje Económico';

  @override
  String get metric_ugly_9_description =>
      'Identifica la destrucción deliberada del empleo, crédito, finanzas o estabilidad económica.';

  @override
  String get metric_ugly_10_name => 'Coerción Reproductiva';

  @override
  String get metric_ugly_10_description =>
      'Detecta embarazo forzado, presión para abortar, manipulación anticonceptiva o control reproductivo.';

  @override
  String get metric_ugly_11_name => 'Presión de Coerción Sexual';

  @override
  String get metric_ugly_11_description =>
      'Señala sexo forzado, actos sexuales coaccionados, presión tras un rechazo o lenguaje de castigo sexual.';

  @override
  String get metric_ugly_12_name => 'Lenguaje Sexual No Consentido';

  @override
  String get metric_ugly_12_description =>
      'Identifica amenazas o descripciones explícitas o implícitas de agresión sexual no consentida.';

  @override
  String get metric_ugly_13_name => 'Amenazas de Daño a los Hijos';

  @override
  String get metric_ugly_13_description =>
      'Detecta amenazas de dañar, descuidar o abusar de los hijos como presión o castigo hacia la pareja.';

  @override
  String get metric_ugly_14_name => 'Uso de la Custodia como Arma';

  @override
  String get metric_ugly_14_description =>
      'Señala amenazas de llevarse a los hijos, negar el acceso o usar la custodia como mecanismo de control.';

  @override
  String get metric_ugly_15_name => 'Amenazas de Daño a Mascotas';

  @override
  String get metric_ugly_15_description =>
      'Identifica amenazas de lastimar, matar o abusar de mascotas como castigo o para demostrar control.';

  @override
  String get metric_ugly_16_name => 'Tácticas de Privación de Sueño';

  @override
  String get metric_ugly_16_description =>
      'Señala la privación deliberada de sueño, interrupción constante o agotamiento como método de control.';

  @override
  String get metric_ugly_17_name => 'Lenguaje de Confinamiento';

  @override
  String get metric_ugly_17_description =>
      'Señala encierro, impedimento para irse o confinamiento de la pareja en un lugar.';

  @override
  String get metric_ugly_18_name => 'Lenguaje de Manipulación Depredadora';

  @override
  String get metric_ugly_18_description =>
      'Señala manipulación sistemática para bajar las defensas, generar falsa confianza y luego explotar a la pareja.';

  @override
  String get metric_ugly_19_name => 'Lenguaje de Deshumanización';

  @override
  String get metric_ugly_19_description =>
      'Detecta describir a la pareja como un animal, objeto, subhumano o indigno de derechos básicos.';

  @override
  String get metric_ugly_20_name => 'Escalada de Rabia Narcisista';

  @override
  String get metric_ugly_20_description =>
      'Detecta ira explosiva desencadenada por desaires percibidos, críticas o cualquier pérdida de control.';

  @override
  String get metric_ugly_21_name => 'Afirmaciones de Posesión Obsesiva';

  @override
  String get metric_ugly_21_description =>
      'Señala lenguaje que reclama propiedad, derechos de propiedad o control total sobre la persona de la pareja.';

  @override
  String get metric_ugly_22_name => 'Patrones de Mentira Patológica';

  @override
  String get metric_ugly_22_description =>
      'Identifica mentiras consistentes, elaboradas o innecesarias sobre asuntos graves sin razón aparente.';

  @override
  String get metric_ugly_23_name => 'Lenguaje de Fantasía de Venganza';

  @override
  String get metric_ugly_23_description =>
      'Identifica fantasías detalladas sobre dañar, humillar o destruir a la pareja.';

  @override
  String get metric_ugly_24_name => 'Fijación Obsesiva por la Traición';

  @override
  String get metric_ugly_24_description =>
      'Detecta rumiación obsesiva, acusación y castigo centrados en la infidelidad percibida.';

  @override
  String get metric_ugly_25_name => 'Agresión por Pánico al Abandono';

  @override
  String get metric_ugly_25_description =>
      'Señala respuestas violentas o agresivas al abandono percibido o cualquier intento de separación.';

  @override
  String get metric_ugly_26_name => 'Escalada de Amenazas por Separación';

  @override
  String get metric_ugly_26_description =>
      'Identifica amenazas extremas o comportamientos peligrosos desencadenados por intentos de ruptura o separación.';

  @override
  String get metric_ugly_27_name => 'Amenazas de Acoso Post-Separación';

  @override
  String get metric_ugly_27_description =>
      'Señala amenazas de acoso, daño o contacto forzado después de que la relación termina.';

  @override
  String get metric_ugly_28_name => 'Amenazas de Secuestro Parental';

  @override
  String get metric_ugly_28_description =>
      'Identifica amenazas de llevarse a los hijos y huir u ocultarlos permanentemente del otro progenitor.';

  @override
  String get metric_ugly_29_name => 'Agenda de Alienación Parental';

  @override
  String get metric_ugly_29_description =>
      'Señala intentos sistemáticos de manipular a los hijos en contra del otro progenitor.';

  @override
  String get metric_ugly_30_name => 'Indiferencia ante Testigos Infantiles';

  @override
  String get metric_ugly_30_description =>
      'Identifica desinterés por que los hijos presencien abuso, conflicto o daño emocional.';

  @override
  String get metric_ugly_31_name => 'Lenguaje de Trata de Personas';

  @override
  String get metric_ugly_31_description =>
      'Identifica lenguaje que sugiere vender, intercambiar o explotar sexualmente a la pareja.';

  @override
  String get metric_ugly_32_name => 'Lenguaje de Esclavitud';

  @override
  String get metric_ugly_32_description =>
      'Identifica lenguaje que trata a la pareja como propiedad, esclava o persona sin derechos.';

  @override
  String get metric_ugly_33_name => 'Amenazas de Servidumbre por Deuda';

  @override
  String get metric_ugly_33_description =>
      'Detecta amenazas de atrapar a la pareja mediante deudas fabricadas u obligaciones financieras.';

  @override
  String get metric_ugly_34_name => 'Exigencias de Trabajo Forzado';

  @override
  String get metric_ugly_34_description =>
      'Señala demandas de trabajo no remunerado, servidumbre o labor bajo amenaza de daño o castigo.';

  @override
  String get metric_ugly_35_name => 'Normalización de la Explotación';

  @override
  String get metric_ugly_35_description =>
      'Identifica la presentación de la explotación severa como normal, merecida, consensuada o incluso beneficiosa.';

  @override
  String get metric_ugly_36_name => 'Selección de Vulnerabilidad';

  @override
  String get metric_ugly_36_description =>
      'Identifica la selección deliberada de personas aisladas, dependientes económicamente o vulnerables psicológicamente.';

  @override
  String get metric_ugly_37_name => 'Ingeniería de Vínculo Traumático';

  @override
  String get metric_ugly_37_description =>
      'Detecta la creación deliberada de ciclos de alivio del miedo diseñados para generar una profunda dependencia emocional.';

  @override
  String get metric_ugly_38_name => 'Abuso de Refuerzo Intermitente';

  @override
  String get metric_ugly_38_description =>
      'Señala ciclos impredecibles de recompensa y castigo severo utilizados para crear adicción psicológica.';

  @override
  String get metric_ugly_39_name => 'Inducción de Indefensión Aprendida';

  @override
  String get metric_ugly_39_description =>
      'Identifica la eliminación sistemática de la capacidad de acción, los recursos y las opciones de escape percibidas.';

  @override
  String get metric_ugly_40_name => 'Lenguaje de Borrado de Identidad';

  @override
  String get metric_ugly_40_description =>
      'Señala demandas de abandonar la personalidad, intereses, apariencia o sentido central de identidad.';

  @override
  String get metric_ugly_41_name => 'Aniquilación de la Autonomía';

  @override
  String get metric_ugly_41_description =>
      'Detecta la eliminación sistemática del pensamiento independiente, la toma de decisiones o la capacidad de acción personal.';

  @override
  String get metric_ugly_42_name => 'Tácticas de Control del Pensamiento';

  @override
  String get metric_ugly_42_description =>
      'Señala demandas de pensar, creer o sentir solo como dicta la pareja controladora.';

  @override
  String get metric_ugly_43_name => 'Imposición de Entumecimiento Emocional';

  @override
  String get metric_ugly_43_description =>
      'Identifica el castigo por mostrar emociones o demandas explícitas de suprimir todos los sentimientos.';

  @override
  String get metric_ugly_44_name => 'Creación de Trauma Complejo';

  @override
  String get metric_ugly_44_description =>
      'Señala patrones sistemáticos que crean trauma de nivel TEPT complejo a través del abuso crónico.';

  @override
  String get metric_ugly_45_name => 'Infligir Trauma por Traición';

  @override
  String get metric_ugly_45_description =>
      'Identifica la traición deliberada diseñada para destruir la confianza fundamental y la seguridad psicológica.';

  @override
  String get metric_ugly_46_name => 'Lenguaje de Daño Moral';

  @override
  String get metric_ugly_46_description =>
      'Detecta la presión para que la pareja viole sus valores más profundos o cometa actos dañinos.';

  @override
  String get metric_ugly_47_name => 'Lenguaje de Amenaza Existencial';

  @override
  String get metric_ugly_47_description =>
      'Señala amenazas a la existencia, identidad central, cordura o voluntad de vivir de la pareja.';

  @override
  String get metric_ugly_48_name => 'Lenguaje de Coerción Suicida';

  @override
  String get metric_ugly_48_description =>
      'Identifica la inducción de ideación suicida en la pareja mediante abuso sostenido y desesperanza fabricada.';

  @override
  String get metric_ugly_49_name => 'Mitología Justificadora';

  @override
  String get metric_ugly_49_description =>
      'Identifica narrativas inventadas y elaboradas presentadas para justificar el abuso como necesario, merecido o justo.';

  @override
  String get metric_ugly_50_name => 'Inversión de Narrativa de Víctima';

  @override
  String get metric_ugly_50_description =>
      'Detecta la inversión completa donde el abusador afirma ser la verdadera víctima de su propio abuso.';

  @override
  String get metric_ugly_51_name => 'Predicación de Normalización del Abuso';

  @override
  String get metric_ugly_51_description =>
      'Señala la enseñanza o insistencia en que el abuso es normal, saludable o beneficioso para la pareja.';

  @override
  String get metric_ugly_52_name => 'Ideología Depredadora';

  @override
  String get metric_ugly_52_description =>
      'Identifica la justificación ideológica para la explotación, dominación o daño hacia la pareja.';

  @override
  String get metric_ugly_53_name => 'Mensajería de Líder Sectario';

  @override
  String get metric_ugly_53_description =>
      'Detecta mensajes que reclaman conocimiento especial, derecho divino o autoridad superior sobre la pareja.';

  @override
  String get metric_ugly_54_name => 'Lenguaje de Cronología de Captación';

  @override
  String get metric_ugly_54_description =>
      'Señala referencias a un plan de manipulación a largo plazo o descripciones de una progresión de captación.';

  @override
  String get metric_ugly_55_name => 'Campaña de Humillación Crónica';

  @override
  String get metric_ugly_55_description =>
      'Identifica un patrón sostenido de humillación pública o privada diseñado para destruir la autoestima.';

  @override
  String get metric_ugly_56_name => 'Bloqueo de Salida Segura';

  @override
  String get metric_ugly_56_description =>
      'Detecta el bloqueo activo de rutas de escape, sistemas de apoyo o recursos de seguridad por parte de la pareja.';

  @override
  String get metric_ugly_57_name => 'Amenazas de Confiscación de Documentos';

  @override
  String get metric_ugly_57_description =>
      'Señala amenazas o acciones para tomar, esconder o destruir documentos de identidad para impedir la huida.';

  @override
  String get metric_ugly_58_name => 'Patrones de Celos Violentos';

  @override
  String get metric_ugly_58_description =>
      'Identifica celos que han escalado a amenazas explícitas, vigilancia o represalias violentas.';

  @override
  String get metric_ugly_59_name => 'Patrones de Explosión de Ira';

  @override
  String get metric_ugly_59_description =>
      'Detecta descripciones o patrones de arrebatos violentos explosivos desproporcionados ante cualquier desencadenante.';

  @override
  String get metric_ugly_60_name => 'Escalada de Control Coercitivo';

  @override
  String get metric_ugly_60_description =>
      'Rastrea el aumento en la severidad y amplitud de las tácticas de control coercitivo a lo largo del tiempo.';

  @override
  String get metric_ugly_61_name => 'Lenguaje de Cumplimiento por Miedo';

  @override
  String get metric_ugly_61_description =>
      'Identifica el cumplimiento impulsado enteramente por el miedo a la violencia o al castigo severo, no por elección.';

  @override
  String get metric_ugly_62_name => 'Lenguaje de Ritual de Castigo';

  @override
  String get metric_ugly_62_description =>
      'Detecta referencias a prácticas de castigo sistemáticas utilizadas para imponer cumplimiento y control.';

  @override
  String get metric_ugly_63_name => 'Indicadores de Ritual de Degradación';

  @override
  String get metric_ugly_63_description =>
      'Señala rituales sistemáticos de degradación o humillación diseñados para destruir la dignidad.';

  @override
  String get metric_ugly_64_name => 'Amenazas de Exposición No Consentida';

  @override
  String get metric_ugly_64_description =>
      'Identifica amenazas de exponer imágenes íntimas, información privada o secretos sin consentimiento.';

  @override
  String get metric_ugly_65_name => 'Amenazas de Abuso Basado en Imágenes';

  @override
  String get metric_ugly_65_description =>
      'Detecta amenazas de distribuir imágenes íntimas como venganza, castigo o chantaje.';

  @override
  String get metric_ugly_66_name => 'Tácticas de Atrapamiento Financiero';

  @override
  String get metric_ugly_66_description =>
      'Señala la creación deliberada de dependencia financiera que imposibilita la supervivencia independiente.';

  @override
  String get metric_ugly_67_name => 'Lenguaje de Amenaza de Vivienda';

  @override
  String get metric_ugly_67_description =>
      'Detecta amenazas de dejar a la pareja sin hogar, eliminar el acceso a la vivienda o destruir la seguridad del refugio.';

  @override
  String get metric_ugly_68_name => 'Amenazas de Estatus Migratorio';

  @override
  String get metric_ugly_68_description =>
      'Identifica amenazas de denunciar el estatus migratorio o revocar el patrocinio de visa como control.';

  @override
  String get metric_ugly_69_name => 'Abuso Religioso o Espiritual';

  @override
  String get metric_ugly_69_description =>
      'Detecta el uso de autoridad religiosa, doctrina o amenaza espiritual para controlar, castigar o dañar.';

  @override
  String get metric_ugly_70_name => 'Armamentización de la Vergüenza Cultural';

  @override
  String get metric_ugly_70_description =>
      'Señala amenazas de exponer comportamientos a la comunidad cultural o familiar como castigo.';

  @override
  String get metric_ugly_71_name => 'Amenazas de Daño Familiar';

  @override
  String get metric_ugly_71_description =>
      'Identifica amenazas de dañar a familiares, hijos o seres queridos de la pareja como presión.';

  @override
  String get metric_ugly_72_name => 'Campaña de Acoso Coordinado';

  @override
  String get metric_ugly_72_description =>
      'Detecta la organización de otros para acosar, acechar o intimidar colectivamente a la pareja.';

  @override
  String get metric_ugly_73_name => 'Amenazas de Denuncias Falsas';

  @override
  String get metric_ugly_73_description =>
      'Señala amenazas de presentar denuncias policiales falsas o acusaciones legales contra la pareja.';

  @override
  String get metric_ugly_74_name => 'Uso del Sistema Legal como Arma';

  @override
  String get metric_ugly_74_description =>
      'Identifica el uso de procesos legales, tribunales u órdenes de protección como armas de acoso.';

  @override
  String get metric_ugly_75_name => 'Violación de Orden de Restricción';

  @override
  String get metric_ugly_75_description =>
      'Detecta referencias a violar o planear violar órdenes de protección o de no contacto.';

  @override
  String get metric_ugly_76_name => 'Amenazas de Sabotaje Laboral';

  @override
  String get metric_ugly_76_description =>
      'Señala amenazas de contactar al empleador, colegas o clientes para destruir el sustento de la pareja.';

  @override
  String get metric_ugly_77_name => 'Amenazas de Aniquilación Social';

  @override
  String get metric_ugly_77_description =>
      'Detecta amenazas de destruir la reputación, relaciones y estatus social de la pareja.';

  @override
  String get metric_ugly_78_name => 'Campaña de Engaño Sistemático';

  @override
  String get metric_ugly_78_description =>
      'Identifica un engaño elaborado a largo plazo diseñado para explotar financiera o emocionalmente a la pareja.';

  @override
  String get metric_ugly_79_name => 'Destrucción de Propiedad como Terror';

  @override
  String get metric_ugly_79_description =>
      'Identifica la destrucción deliberada de la propiedad de la pareja como táctica de intimidación.';

  @override
  String get metric_ugly_80_name => 'Crueldad Animal como Terror Indirecto';

  @override
  String get metric_ugly_80_description =>
      'Detecta daño o amenazas a mascotas para demostrar capacidad de violencia hacia la pareja.';

  @override
  String get metric_ugly_81_name => 'Lenguaje de Poner en Riesgo a Menores';

  @override
  String get metric_ugly_81_description =>
      'Señala poner a los niños en situaciones peligrosas o amenazar con hacerlo como forma de presión.';

  @override
  String get metric_ugly_82_name => 'Control por Discapacidad';

  @override
  String get metric_ugly_82_description =>
      'Detecta la explotación de la discapacidad de la pareja controlando el acceso a medicamentos, movilidad o cuidados.';

  @override
  String get metric_ugly_83_name => 'Control por Crisis Fabricada';

  @override
  String get metric_ugly_83_description =>
      'Señala la creación deliberada de emergencias o crisis para aumentar la dependencia de la pareja o justificar la vigilancia.';

  @override
  String get metric_ugly_84_name => 'Aislamiento de Servicios de Emergencia';

  @override
  String get metric_ugly_84_description =>
      'Identifica la prevención activa de que la pareja llame a la policía, ambulancia o servicios de crisis.';

  @override
  String get metric_ugly_85_name => 'Trayectoria de Escalada de Amenazas';

  @override
  String get metric_ugly_85_description =>
      'Rastrea el aumento medible en la gravedad, especificidad o frecuencia de las amenazas a lo largo del tiempo.';

  @override
  String get metric_ugly_86_name => 'Indicadores de Evaluación de Letalidad';

  @override
  String get metric_ugly_86_description =>
      'Señala combinaciones de factores asociados con el mayor riesgo de homicidio de la pareja íntima.';

  @override
  String get metric_ugly_87_name => 'Tácticas de Tortura Psicológica';

  @override
  String get metric_ugly_87_description =>
      'Identifica el abuso psicológico sostenido diseñado para quebrantar la estabilidad mental de la pareja.';

  @override
  String get metric_ugly_88_name => 'Lenguaje de Cautiverio';

  @override
  String get metric_ugly_88_description =>
      'Detecta referencias a mantener a la pareja cautiva, impedir su salida o controlar todo su movimiento.';

  @override
  String get metric_ugly_89_name => 'Planificación de Violencia Dirigida';

  @override
  String get metric_ugly_89_description =>
      'Detecta cualquier lenguaje que indique planificación, preparación o cuenta regresiva para la violencia contra la pareja.';

  @override
  String get metric_ugly_90_name => 'Reclutamiento de Amenazas de Terceros';

  @override
  String get metric_ugly_90_description =>
      'Identifica el reclutamiento de amigos, familiares u otros para amenazar o dañar a la pareja.';

  @override
  String get metric_ugly_91_name => 'Explotación de Ideación Suicida';

  @override
  String get metric_ugly_91_description =>
      'Señala la explotación de la crisis suicida de la pareja como palanca o para impedir que busque ayuda.';

  @override
  String get metric_ugly_92_name => 'Amenazas de Envenenamiento o Droga';

  @override
  String get metric_ugly_92_description =>
      'Detecta amenazas o referencias a drogar, envenenar o manipular la comida o bebida de la pareja.';

  @override
  String get metric_ugly_93_name => 'Explotación de Autolesión No Suicida';

  @override
  String get metric_ugly_93_description =>
      'Señala la explotación de la autolesión de la pareja como palanca, burla o control adicional.';

  @override
  String get metric_ugly_94_name => 'Lenguaje de Inducción a la Disociación';

  @override
  String get metric_ugly_94_description =>
      'Detecta patrones diseñados para causar disociación, desapego o despersonalización en la pareja.';

  @override
  String get metric_ugly_95_name => 'Implantación de Distorsión Cognitiva';

  @override
  String get metric_ugly_95_description =>
      'Detecta la instalación deliberada de creencias falsas sobre uno mismo, la realidad o la cordura de la pareja.';

  @override
  String get metric_ugly_96_name => 'Obstrucción de Atención Médica';

  @override
  String get metric_ugly_96_description =>
      'Detecta la obstrucción del acceso a medicamentos, médicos, hospitales o tratamientos de salud.';

  @override
  String get metric_ugly_97_name => 'Lenguaje de Amenaza Extremista';

  @override
  String get metric_ugly_97_description =>
      'Señala lenguaje tomado de marcos ideológicos extremistas o violentos aplicado hacia la pareja.';

  @override
  String get metric_ugly_98_name => 'Señales de Acecho Post-Separación';

  @override
  String get metric_ugly_98_description =>
      'Detecta amenazas, lenguaje de vigilancia o tácticas de intimidación después o anticipando una ruptura.';

  @override
  String get metric_ugly_99_name => 'Armamentización de los Hijos';

  @override
  String get metric_ugly_99_description =>
      'Identifica el uso de hijos como peones, amenazas sobre la custodia o el aprovechamiento de vínculos parentales como mecanismos de control.';

  @override
  String get metric_ugly_100_name => 'Deshumanización Sistemática';

  @override
  String get metric_ugly_100_description =>
      'Detecta lenguaje sostenido que despoja a la pareja de su condición de persona, dignidad o derecho a la humanidad básica.';

  @override
  String get metric_narcissist_1_name => 'Autoimportancia Grandiosa';

  @override
  String get metric_narcissist_1_description =>
      'Afirmaciones exageradas de logros, talentos o estatus más allá de la evidencia realista, a menudo con un sentido de singularidad.';

  @override
  String get metric_narcissist_2_name => 'Exigencias de Derecho';

  @override
  String get metric_narcissist_2_description =>
      'Expectativas irrazonables de trato especial o cumplimiento automático de sus deseos sin reciprocidad.';

  @override
  String get metric_narcissist_3_name => 'Déficit de Empatía';

  @override
  String get metric_narcissist_3_description =>
      'Incapacidad o falta de voluntad para reconocer o validar los sentimientos de los demás, descartando las necesidades emocionales como irrelevantes.';

  @override
  String get metric_narcissist_4_name => 'Búsqueda de Admiración';

  @override
  String get metric_narcissist_4_description =>
      'Búsqueda excesiva de admiración, cumplidos o validación para apuntalar una autoestima frágil.';

  @override
  String get metric_narcissist_5_name => 'Tácticas de Triangulación';

  @override
  String get metric_narcissist_5_description =>
      'Introducir a un tercero en los conflictos para crear celos, competencia o manipular percepciones.';

  @override
  String get metric_narcissist_6_name => 'Intensidad de Love Bombing';

  @override
  String get metric_narcissist_6_description =>
      'Halagos, regalos o atención abrumadores al inicio de una relación para ganar control e idealizar al objetivo.';

  @override
  String get metric_narcissist_7_name => 'Crítica de Devaluación';

  @override
  String get metric_narcissist_7_description =>
      'Cambio repentino a críticas duras, menosprecio o desprecio después de la idealización, erosionando la autoestima del objetivo.';

  @override
  String get metric_narcissist_8_name => 'Castigo de Silencio';

  @override
  String get metric_narcissist_8_description =>
      'Retener la comunicación o el afecto como castigo deliberado para inducir ansiedad y cumplimiento.';

  @override
  String get metric_narcissist_9_name => 'Cambio de Culpa DARVO';

  @override
  String get metric_narcissist_9_description =>
      'Negar la responsabilidad, atacar al acusador e invertir los roles de víctima y ofensor para evadir la rendición de cuentas.';

  @override
  String get metric_narcissist_10_name =>
      'Distorsión de la Realidad (Gaslighting)';

  @override
  String get metric_narcissist_10_description =>
      'Negar o distorsionar hechos, eventos o sentimientos para hacer que el objetivo dude de su propia memoria o cordura.';

  @override
  String get metric_narcissist_11_name => 'Ira ante la crítica';

  @override
  String get metric_narcissist_11_description =>
      'Enfado intenso, desprecio o represalias ante cualquier desaire o retroalimentación percibida, incluso si es constructiva.';

  @override
  String get metric_narcissist_12_name => 'Violación de límites';

  @override
  String get metric_narcissist_12_description =>
      'Ignorar o anular los límites establecidos, la privacidad o el espacio personal sin remordimiento ni negociación.';

  @override
  String get metric_narcissist_13_name => 'Expresión de envidia';

  @override
  String get metric_narcissist_13_description =>
      'Resentimiento por los éxitos o posesiones de otros, a menudo acompañado de devaluación o intentos de socavar.';

  @override
  String get metric_narcissist_14_name => 'Comportamiento explotador';

  @override
  String get metric_narcissist_14_description =>
      'Utilizar a otros para beneficio personal, estatus o recursos sin considerar su bienestar o consentimiento.';

  @override
  String get metric_narcissist_15_name => 'Manipulación por espejo';

  @override
  String get metric_narcissist_15_description =>
      'Imitar los intereses, valores o rasgos del objetivo para crear una falsa afinidad y ganar confianza.';

  @override
  String get metric_narcissist_16_name => 'Afirmaciones de superioridad';

  @override
  String get metric_narcissist_16_description =>
      'Afirmar una superioridad inherente sobre otros, a menudo con un lenguaje condescendiente o despectivo.';

  @override
  String get metric_narcissist_17_name => 'Preocupación por la fantasía';

  @override
  String get metric_narcissist_17_description =>
      'Conversación obsesiva sobre éxito ilimitado, poder, brillantez o amor ideal que es poco realista.';

  @override
  String get metric_narcissist_18_name => 'Afirmación de estatus especial';

  @override
  String get metric_narcissist_18_description =>
      'Creencia de que solo pueden ser comprendidos o asociarse con personas o instituciones de alto estatus.';

  @override
  String get metric_narcissist_19_name => 'Explotación interpersonal';

  @override
  String get metric_narcissist_19_description =>
      'Aprovecharse de los recursos, tiempo o emociones de otros sin reciprocidad ni gratitud.';

  @override
  String get metric_narcissist_20_name => 'Falta de remordimiento';

  @override
  String get metric_narcissist_20_description =>
      'Ausencia de culpa o disculpa después de causar daño, a menudo justificando las acciones como merecidas por el objetivo.';

  @override
  String get metric_narcissist_21_name => 'Socavar Competitivo';

  @override
  String get metric_narcissist_21_description =>
      'Sabotear los logros o relaciones de otros para mantener una posición superior.';

  @override
  String get metric_narcissist_22_name => 'Fase de Idealización';

  @override
  String get metric_narcissist_22_description =>
      'Elogios y adoración excesivos al inicio de una relación, estableciendo expectativas poco realistas para la persona objetivo.';

  @override
  String get metric_narcissist_23_name => 'Fase de Devaluación';

  @override
  String get metric_narcissist_23_description =>
      'Críticas y desprecio graduales o repentinos después de la idealización, generando confusión y dudas sobre uno mismo.';

  @override
  String get metric_narcissist_24_name => 'Impulso de Descarte';

  @override
  String get metric_narcissist_24_description =>
      'Terminar abruptamente las relaciones cuando la persona objetivo ya no proporciona suministro narcisista o los desafía.';

  @override
  String get metric_narcissist_25_name => 'Intentos de Hoovering';

  @override
  String get metric_narcissist_25_description =>
      'Volver a involucrar a una persona descartada con promesas, culpa o manipulación para recuperar el suministro.';

  @override
  String get metric_narcissist_26_name => 'Proyección de Defectos';

  @override
  String get metric_narcissist_26_description =>
      'Acusar a otros de sus propios rasgos o comportamientos negativos para evitar la autoconciencia.';

  @override
  String get metric_narcissist_27_name => 'Control a Través de la Culpa';

  @override
  String get metric_narcissist_27_description =>
      'Usar declaraciones que inducen culpa para manipular a otros hacia el cumplimiento o el cuidado.';

  @override
  String get metric_narcissist_28_name => 'Volatilidad Emocional';

  @override
  String get metric_narcissist_28_description =>
      'Cambios de humor rápidos desde el encanto hasta la ira, a menudo desencadenados por una lesión narcisista percibida.';

  @override
  String get metric_narcissist_29_name => 'Invalidación de Sentimientos';

  @override
  String get metric_narcissist_29_description =>
      'Desestimar o minimizar las emociones de otros como reacciones exageradas o irracionales.';

  @override
  String get metric_narcissist_30_name => 'Monopolizar Conversaciones';

  @override
  String get metric_narcissist_30_description =>
      'Dominar el diálogo con temas autocentrados, interrumpiendo o ignorando las aportaciones de otros.';

  @override
  String get metric_narcissist_31_name => 'Descalificación con insultos';

  @override
  String get metric_narcissist_31_description =>
      'Usar insultos, etiquetas o términos despectivos para devaluar y controlar a la víctima.';

  @override
  String get metric_narcissist_32_name => 'Amenazas de abandono';

  @override
  String get metric_narcissist_32_description =>
      'Utilizar el miedo a la pérdida o al rechazo para coaccionar el cumplimiento o la atención.';

  @override
  String get metric_narcissist_33_name => 'Hacerse la víctima';

  @override
  String get metric_narcissist_33_description =>
      'Presentarse como tratado injustamente para generar lástima y desviar la responsabilidad.';

  @override
  String get metric_narcissist_34_name => 'Complejo de mártir';

  @override
  String get metric_narcissist_34_description =>
      'Afirmar un sacrificio o sufrimiento excesivo para inducir culpa y obligación en los demás.';

  @override
  String get metric_narcissist_35_name => 'Memoria selectiva';

  @override
  String get metric_narcissist_35_description =>
      'Olvidar convenientemente promesas, acuerdos o acciones dañinas para evitar responsabilidades.';

  @override
  String get metric_narcissist_36_name => 'Comunicación de bloqueo';

  @override
  String get metric_narcissist_36_description =>
      'Negarse a entablar diálogo, ignorar preguntas o cerrar discusiones para mantener el control.';

  @override
  String get metric_narcissist_37_name => 'Falsas promesas de futuro';

  @override
  String get metric_narcissist_37_description =>
      'Hacer promesas grandiosas sobre planes futuros compartidos para crear falsa esperanza y dependencia.';

  @override
  String get metric_narcissist_38_name => 'Campaña de difamación';

  @override
  String get metric_narcissist_38_description =>
      'Difundir rumores maliciosos o mentiras sobre la víctima para aislarla y dañar su reputación.';

  @override
  String get metric_narcissist_39_name => 'Tácticas de aislamiento';

  @override
  String get metric_narcissist_39_description =>
      'Desalentar o impedir el contacto con amigos, familiares o sistemas de apoyo para aumentar la dependencia.';

  @override
  String get metric_narcissist_40_name => 'Explotación financiera';

  @override
  String get metric_narcissist_40_description =>
      'Manipular o controlar los recursos financieros para beneficio personal o crear dependencia.';

  @override
  String get metric_narcissist_41_name => 'Coerción Sexual';

  @override
  String get metric_narcissist_41_description =>
      'Usar presión, culpa o manipulación para obtener cumplimiento sexual sin consentimiento genuino.';

  @override
  String get metric_narcissist_42_name => 'Prueba de Límites';

  @override
  String get metric_narcissist_42_description =>
      'Empujar repetidamente los límites para ver qué comportamiento se tolera, luego escalar las violaciones.';

  @override
  String get metric_narcissist_43_name => 'Negación Gaslighting';

  @override
  String get metric_narcissist_43_description =>
      'Negar rotundamente eventos o declaraciones que ocurrieron, haciendo que la víctima cuestione la realidad.';

  @override
  String get metric_narcissist_44_name => 'Minimización de Preocupaciones';

  @override
  String get metric_narcissist_44_description =>
      'Desestimar quejas legítimas como poco importantes o demasiado sensibles.';

  @override
  String get metric_narcissist_45_name => 'Externalización de Culpa';

  @override
  String get metric_narcissist_45_description =>
      'Atribuir todos los problemas y conflictos a otros, nunca aceptar la culpa personal.';

  @override
  String get metric_narcissist_46_name => 'Provocación de Celos';

  @override
  String get metric_narcissist_46_description =>
      'Coquetear o elogiar a otros para incitar celos y mantener el control emocional.';

  @override
  String get metric_narcissist_47_name => 'Chantaje Emocional';

  @override
  String get metric_narcissist_47_description =>
      'Usar miedo, obligación o culpa para manipular decisiones y comportamiento.';

  @override
  String get metric_narcissist_48_name => 'Falso Autoconocimiento';

  @override
  String get metric_narcissist_48_description =>
      'Fingir autoconciencia o empatía para parecer reformado, luego volver a patrones tóxicos.';

  @override
  String get metric_narcissist_49_name => 'Tono Despectivo';

  @override
  String get metric_narcissist_49_description =>
      'Usar sarcasmo, burla o lenguaje desdeñoso para degradar y desestimar a otros.';

  @override
  String get metric_narcissist_50_name => 'Fantasías de Venganza';

  @override
  String get metric_narcissist_50_description =>
      'Expresar deseos de represalia o castigo contra aquellos que los han ofendido.';

  @override
  String get metric_serial_killer_1_name => 'Encuadre Depredador';

  @override
  String get metric_serial_killer_1_description =>
      'Detecta lenguaje que posiciona al hablante como cazador y al objetivo como presa, indicando intención depredadora.';

  @override
  String get metric_serial_killer_2_name => 'Déficit de Empatía';

  @override
  String get metric_serial_killer_2_description =>
      'Identifica declaraciones que carecen de resonancia emocional o preocupación por el sufrimiento ajeno, sugiriendo insensibilidad.';

  @override
  String get metric_serial_killer_3_name => 'Etiquetas Deshumanizantes';

  @override
  String get metric_serial_killer_3_description =>
      'Señala el uso de términos despectivos o etiquetas cosificadoras que despojan a las víctimas de su humanidad.';

  @override
  String get metric_serial_killer_4_name => 'Indicios de Cosificación';

  @override
  String get metric_serial_killer_4_description =>
      'Reconoce lenguaje que trata a las personas como herramientas u objetos para la gratificación.';

  @override
  String get metric_serial_killer_5_name => 'Fijación por el Control';

  @override
  String get metric_serial_killer_5_description =>
      'Detecta referencias obsesivas a la dominación, manipulación o imposición de cumplimiento.';

  @override
  String get metric_serial_killer_6_name => 'Tono de Búsqueda de Emoción';

  @override
  String get metric_serial_killer_6_description =>
      'Identifica excitación o entusiasmo al describir actos riesgosos, violentos o depredadores.';

  @override
  String get metric_serial_killer_7_name => 'Marcadores de Compartimentación';

  @override
  String get metric_serial_killer_7_description =>
      'Señala cambios abruptos entre temas normales y violentos, indicando separación psicológica.';

  @override
  String get metric_serial_killer_8_name => 'Señales de Selección de Víctimas';

  @override
  String get metric_serial_killer_8_description =>
      'Detecta criterios o preferencias para atacar a grupos vulnerables específicos.';

  @override
  String get metric_serial_killer_9_name => 'Disfrute Sádico';

  @override
  String get metric_serial_killer_9_description =>
      'Reconoce placer derivado del dolor, miedo o sufrimiento ajeno.';

  @override
  String get metric_serial_killer_10_name => 'Daño Manipulativo';

  @override
  String get metric_serial_killer_10_description =>
      'Identifica lenguaje utilizado para engañar o coaccionar a otros hacia situaciones dañinas.';

  @override
  String get metric_serial_killer_11_name => 'Indicadores de Acecho';

  @override
  String get metric_serial_killer_11_description =>
      'Señala seguimiento detallado, vigilancia o monitoreo obsesivo de un objetivo.';

  @override
  String get metric_serial_killer_12_name => 'Lenguaje de Manipulación';

  @override
  String get metric_serial_killer_12_description =>
      'Detecta tácticas graduales de construcción de confianza para explotar o abusar de las víctimas.';

  @override
  String get metric_serial_killer_13_name => 'Fantasías Violentas';

  @override
  String get metric_serial_killer_13_description =>
      'Identifica descripciones vívidas de dañar o matar a otros como un ensayo mental.';

  @override
  String get metric_serial_killer_14_name => 'Afirmación de Poder';

  @override
  String get metric_serial_killer_14_description =>
      'Reconoce declaraciones que enfatizan superioridad o control sobre otros.';

  @override
  String get metric_serial_killer_15_name => 'Falta de Remordimiento';

  @override
  String get metric_serial_killer_15_description =>
      'Señala ausencia de culpa o arrepentimiento después de discutir acciones dañinas.';

  @override
  String get metric_serial_killer_16_name => 'Externalización de Culpa';

  @override
  String get metric_serial_killer_16_description =>
      'Detecta la transferencia de responsabilidad por impulsos violentos hacia las víctimas o la sociedad.';

  @override
  String get metric_serial_killer_17_name => 'Violencia Sexualizada';

  @override
  String get metric_serial_killer_17_description =>
      'Identifica la fusión de temas sexuales y violentos en el lenguaje.';

  @override
  String get metric_serial_killer_18_name => 'Tácticas de Aislamiento';

  @override
  String get metric_serial_killer_18_description =>
      'Reconoce esfuerzos para separar a un objetivo de sus redes de apoyo.';

  @override
  String get metric_serial_killer_19_name => 'Patrones de Gaslighting';

  @override
  String get metric_serial_killer_19_description =>
      'Señala lenguaje diseñado para distorsionar la realidad y socavar la cordura de una víctima.';

  @override
  String get metric_serial_killer_20_name => 'Velación de Amenazas';

  @override
  String get metric_serial_killer_20_description =>
      'Detecta amenazas implícitas o advertencias disfrazadas como declaraciones casuales.';

  @override
  String get metric_serial_killer_21_name => 'Lenguaje Posesivo';

  @override
  String get metric_serial_killer_21_description =>
      'Identifica afirmaciones de propiedad o derecho sobre otra persona.';

  @override
  String get metric_serial_killer_22_name => 'Temas de Venganza';

  @override
  String get metric_serial_killer_22_description =>
      'Reconoce la fijación en represalias o castigar agravios percibidos.';

  @override
  String get metric_serial_killer_23_name => 'Grandiosidad Narcisista';

  @override
  String get metric_serial_killer_23_description =>
      'Señala una autoimportancia exagerada y desprecio por el valor de los demás.';

  @override
  String get metric_serial_killer_24_name => 'Desapego Emocional';

  @override
  String get metric_serial_killer_24_description =>
      'Detecta un tono clínico o distante al hablar de trauma o daño.';

  @override
  String get metric_serial_killer_25_name => 'Paciencia Depredadora';

  @override
  String get metric_serial_killer_25_description =>
      'Identifica un lenguaje de planificación a largo plazo para futuras victimizaciones.';

  @override
  String get metric_serial_killer_26_name => 'Prueba de Límites';

  @override
  String get metric_serial_killer_26_description =>
      'Reconoce la exploración de límites o resistencia en víctimas potenciales.';

  @override
  String get metric_serial_killer_27_name => 'Minimización del Daño';

  @override
  String get metric_serial_killer_27_description =>
      'Señala la minimización de la gravedad de actos violentos o abusivos.';

  @override
  String get metric_serial_killer_28_name => 'Justificación de la Violencia';

  @override
  String get metric_serial_killer_28_description =>
      'Detecta racionalizaciones para dañar a otros como necesario o merecido.';

  @override
  String get metric_serial_killer_29_name => 'Enfoque Obsesivo';

  @override
  String get metric_serial_killer_29_description =>
      'Identifica pensamientos repetitivos y fijos en una persona o acto específico.';

  @override
  String get metric_serial_killer_30_name => 'Cálculo Frío';

  @override
  String get metric_serial_killer_30_description =>
      'Reconoce una planificación estratégica y sin emociones de acciones dañinas.';

  @override
  String get metric_serial_killer_31_name => 'Encanto Engañoso';

  @override
  String get metric_serial_killer_31_description =>
      'Señala un lenguaje excesivamente halagador o adulador para manipular.';

  @override
  String get metric_serial_killer_32_name => 'Culpar a la Víctima';

  @override
  String get metric_serial_killer_32_description =>
      'Detecta la atribución de culpa al objetivo por su propia victimización.';

  @override
  String get metric_serial_killer_33_name => 'Señales de Escalada';

  @override
  String get metric_serial_killer_33_description =>
      'Identifica la progresión de la fantasía a la intención en el lenguaje violento.';

  @override
  String get metric_serial_killer_34_name => 'Orientación Parasitaria';

  @override
  String get metric_serial_killer_34_description =>
      'Reconoce el lenguaje que trata a otros como recursos para explotar.';

  @override
  String get metric_serial_killer_35_name => 'Indicadores de Excitación';

  @override
  String get metric_serial_killer_35_description =>
      'Señala indicadores fisiológicos de excitación vinculados a temas violentos.';

  @override
  String get metric_serial_killer_36_name => 'Prueba de Lealtad';

  @override
  String get metric_serial_killer_36_description =>
      'Detecta demandas de prueba de lealtad o secreto por parte de cómplices.';

  @override
  String get metric_serial_killer_37_name => 'Lenguaje Ritualístico';

  @override
  String get metric_serial_killer_37_description =>
      'Identifica frases ceremoniales y pautadas en torno a actos violentos.';

  @override
  String get metric_serial_killer_38_name => 'Afirmaciones de Superioridad';

  @override
  String get metric_serial_killer_38_description =>
      'Reconoce afirmaciones de estar por encima de restricciones morales o legales.';

  @override
  String get metric_serial_killer_39_name => 'Vacío Emocional';

  @override
  String get metric_serial_killer_39_description =>
      'Señala la ausencia de palabras emocionales en contextos que requieren empatía.';

  @override
  String get metric_serial_killer_40_name => 'Curiosidad Depredadora';

  @override
  String get metric_serial_killer_40_description =>
      'Detecta preguntas indagatorias sobre los miedos o vulnerabilidades de un objetivo.';

  @override
  String get metric_serial_killer_41_name => 'Silenciar Amenazas';

  @override
  String get metric_serial_killer_41_description =>
      'Identifica advertencias para evitar la divulgación o denuncia.';

  @override
  String get metric_serial_killer_42_name => 'Comparaciones Deshumanizantes';

  @override
  String get metric_serial_killer_42_description =>
      'Reconoce la equiparación de personas con animales, objetos o entidades subhumanas.';

  @override
  String get metric_serial_killer_43_name => 'Lenguaje de Control';

  @override
  String get metric_serial_killer_43_description =>
      'Señala tonos imperativos o autoritarios dirigidos a dominar a otros.';

  @override
  String get metric_serial_killer_44_name => 'Detalle Sádico';

  @override
  String get metric_serial_killer_44_description =>
      'Detecta un enfoque excesivo en el dolor gráfico o el sufrimiento en las narrativas.';

  @override
  String get metric_serial_killer_45_name => 'Empatía Manipuladora';

  @override
  String get metric_serial_killer_45_description =>
      'Identifica una preocupación fingida para reducir las defensas de un objetivo.';

  @override
  String get metric_serial_killer_46_name => 'Mirada Depredadora';

  @override
  String get metric_serial_killer_46_description =>
      'Reconoce un lenguaje que describe una observación intensa e invasiva de los objetivos.';

  @override
  String get metric_serial_killer_47_name => 'Identidad Violenta';

  @override
  String get metric_serial_killer_47_description =>
      'Señala la autoidentificación como depredador, asesino o monstruo.';

  @override
  String get metric_serial_killer_48_name => 'Emoción de la Caza';

  @override
  String get metric_serial_killer_48_description =>
      'Detecta emoción en el proceso de acechar o perseguir víctimas.';

  @override
  String get metric_serial_killer_49_name => 'Confesión Compulsiva';

  @override
  String get metric_serial_killer_49_description =>
      'Identifica impulsos de revelar actos violentos para obtener alivio psicológico.';

  @override
  String get metric_serial_killer_50_name => 'Lenguaje de Finalidad';

  @override
  String get metric_serial_killer_50_description =>
      'Reconoce referencias a terminar, matar o silenciar permanentemente a los objetivos.';

  @override
  String get packNarcissistLabel => 'El Narcisista';

  @override
  String get packSerialKillerLabel => 'El Asesino en Serie';
}
