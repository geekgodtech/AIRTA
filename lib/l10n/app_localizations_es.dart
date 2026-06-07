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
