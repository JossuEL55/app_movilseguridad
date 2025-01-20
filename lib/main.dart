import 'package:flutter/material.dart';

void main() {
  runApp(SeguridadInformaticaApp());
}

class SeguridadInformaticaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Seguridad Informática',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: SectionPage(),
    );
  }
}

class SectionPage extends StatelessWidget {
  final List<Map<String, dynamic>> sections = [
    {'name': 'Sección 1 (Introducción a la seguridad informática)', 'color': Color(0xFF47F9C3)},
    {'name': 'Sección 2 (Gobierno de seguridad informática/ciberseguridad)', 'color': Color(0xFF47F9C3)},
    {'name': 'Sección 3 (Gestión de riesgos en la seguridad informática)', 'color': Color(0xFF47F9C3)},
    {'name': 'Sección 4 (Desarrollo de software seguro)', 'color': Color(0xFFF94747)},
    {'name': 'Sección 5 (Protección de datos personales y sensibles)', 'color': Color(0xFFF94747)},
    {'name': 'Sección 6 (Defensa ante amenazas y ataques cibernéticos)', 'color': Color(0xFFF94747)},
    {'name': 'Sección 7 (Normativas y estándares de ciberseguridad)', 'color': Color(0xFFD353F6)},
    {'name': 'Sección 8 (Gestión de incidentes de seguridad)', 'color': Color(0xFFD353F6)},
    {'name': 'Sección 9 (Concientización y formación en ciberseguridad)', 'color': Color(0xFFD353F6)},
    {'name': 'Sección 10 (Tendencias futuras en ciberseguridad)', 'color': Color(0xFFD353F6)},
    {'name': 'Empezar Desafío', 'color': Colors.orange},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conceptos de Seguridad Informática'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: sections.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: GestureDetector(
                onTap: () {
                  if (sections[index]['name'] == 'Empezar Desafío') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DesafioPage(),
                      ),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ThemePage(section: sections[index]['name']),
                      ),
                    );
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: sections[index]['color'],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
                  child: Center(
                    child: Text(
                      sections[index]['name'],
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ThemePage extends StatelessWidget {
  final String section;

  ThemePage({required this.section});

  final Map<String, List<Map<String, String>>> sectionThemes = {
    'Sección 1 (Introducción a la seguridad informática)': [
      {
        'title': 'Definiciones y terminología',
        'description': 'Confidencialidad, Integridad y Disponibilidad: pilares básicos para proteger la información.',
        'imageUrl': 'https://cdn-icons-png.flaticon.com/512/75/75585.png',
        'description2': 'Por ejemplo, garantizar que solo usuarios autorizados accedan a datos sensibles.',
      },
      {
        'title': 'Pirámide de Kelsen',
        'description': 'Representa cómo las normativas internas están alineadas con leyes nacionales e internacionales.',
        'imageUrl': 'https://img.genial.ly/6510e9ae1169650013771603/d5390448-cf41-493b-a0bb-5dbb068a7028.jpeg',
        'description2': 'Ejemplo: políticas internas de seguridad en cumplimiento con el GDPR.',
      },
      {
        'title': 'Buenas prácticas internacionales',
        'description': 'Normativas como ISO/IEC 27001 y frameworks como NIST ayudan a implementar sistemas de seguridad eficaces.',
        'imageUrl': 'https://blog.innevo.com/hubfs/Blog%20Centro%20de%20Mejora/2024/Destacadas%20y%20TN/Art%C3%ADculo%2090-1-D.png',
        'description2': 'Por ejemplo, usar controles ISO para gestionar incidentes.',
      },
    ],
    'Sección 2 (Gobierno de seguridad informática/ciberseguridad)': [
      {
        'title': 'Rol de la alta dirección',
        'description': 'Los líderes establecen prioridades, asignan recursos y fomentan una cultura de seguridad.',
        'imageUrl': 'https://img.freepik.com/fotos-premium/empresarios-analizando-nueva-estrategia-empresa-sala-reuniones-grupo-empresarios-discutiendo-informe-conferencia-joven-gerente-haciendo-presentacion-al-equipo-ejecutivo_890593-224.jpg',
        'description2': 'Ejemplo: designar un CISO para supervisar iniciativas de seguridad.',
      },
      {
        'title': 'Procesos, políticas y procedimientos',
        'description': 'Incluye la creación de reglas generales y pasos específicos para garantizar seguridad continua.',
        'imageUrl': 'https://www.clearnetwork.com/wp-content/uploads/2018/07/AdobeStock_199796751-1080x675.jpeg',
        'description2': 'Por ejemplo, un procedimiento para manejar ataques de phishing.',
      },
      {
        'title': 'Roles, responsabilidades y autoridades',
        'description': 'Definir claramente tareas y límites de decisión para cada miembro.',
        'imageUrl': 'https://pbs.twimg.com/media/C39yVUjXAAERrk-.png',
        'description2': 'Ejemplo: el equipo de TI gestiona firewalls, mientras que RRHH define accesos de empleados.',
      },
    ],
    'Sección 3 (Gestión de riesgos en la seguridad informática)': [
      {
        'title': 'El ciclo de vida de los activos',
        'description': 'Gestión de datos desde su creación hasta su eliminación segura.',
        'imageUrl': 'https://www.red-tic.unam.mx/sites/default/files/inline-images/ciclo_vida_info.png',
        'description2': 'Ejemplo: eliminar discos duros mediante técnicas de borrado seguro.',
      },
      {
        'title': 'Tipos de activo',
        'description': 'Activos tangibles como servidores e intangibles como bases de datos.',
        'imageUrl': 'https://www.cloudcenterandalucia.es/wp-content/uploads/2022/04/Servidores-Cloud_Cloud-Center-Andalucia-1.png',
        'description2': 'Ejemplo: proteger un CRM mediante cifrado y acceso restringido.',
      },
      {
        'title': 'Identificación de activos',
        'description': 'Realizar inventarios para priorizar activos críticos.',
        'imageUrl': 'https://www.isotools.us/wp-content/uploads/2022/05/inventario-de-activos-seguridad-de-la-informacion.jpg',
        'description2': 'Ejemplo: clasificar bases de datos de clientes como de alta prioridad.',
      },
    ],
    'Sección 4 (Desarrollo de software seguro)': [
      {
        'title': 'Buenas prácticas de desarrollo',
        'description': 'Incorporar medidas de seguridad desde la fase de diseño.',
        'imageUrl': 'https://compraco.com.br/cdn/shop/articles/As-melhores-praticas-para-codificacao-segura.jpg?v=1717608624',
        'description2': 'Ejemplo: usar autenticación multifactor en aplicaciones.',
      },
      {
        'title': 'Pruebas de seguridad',
        'description': 'Incluye análisis de vulnerabilidades y pruebas de penetración.',
        'imageUrl': 'https://blog.hackmetrix.com/wp-content/uploads/2023/01/Diferencias-escaneo-vulnerabilidades-ethical-hacking.png',
        'description2': 'Ejemplo: simular un ataque para identificar brechas en la aplicación.',
      },
      {
        'title': 'Gestión de dependencias',
        'description': 'Mantener librerías actualizadas y evitar vulnerabilidades conocidas. Ejemplo: actualizar constantemente frameworks como Spring o Django.',
        'imageUrl': 'https://www.redeszone.net/app/uploads-redeszone.net/2020/05/image.psd140.jpg',
        'description2': 'Ejemplo: actualizar constantemente frameworks como Spring o Django.',
      },
    ],
    'Sección 5 (Protección de datos personales y sensibles)': [
      {
        'title': 'Regulaciones y normativas',
        'description': 'Cumplir con GDPR, CCPA y leyes locales de privacidad.',
        'imageUrl': 'https://kinsta.com/es/wp-content/uploads/sites/8/2023/09/open-source-vs-closed-source.jpg',
        'description2': 'Ejemplo: informar a los usuarios sobre cómo se usan sus datos personales.',
      },
      {
        'title': 'Cifrado de datos',
        'description': 'Proteger datos sensibles con algoritmos como AES.',
        'imageUrl': 'https://img.freepik.com/fotos-premium/documentos-protegidos-candado-que-simbolizan-confidencialidad-esfuerzos-proteccion-datos_209190-245643.jpg',
        'description2': 'Ejemplo: cifrar contraseñas almacenadas en bases de datos.',
      },
      {
        'title': 'Control de acceso',
        'description': 'Garantizar que solo usuarios autorizados accedan a recursos.',
        'imageUrl': 'https://ciberseguridad.informatica.uc.cl/wp-content/uploads/2024/09/web-2.jpg',
        'description2': 'Ejemplo: usar autenticación basada en roles.',
      },
    ],
    'Sección 6 (Defensa ante amenazas y ataques cibernéticos)': [
      {
        'title': 'Detección de amenazas',
        'description': 'Implementar sistemas IDS/IPS para monitorizar actividad sospechosa.',
        'imageUrl': 'https://cibersafety.com/wp-content/uploads/2024/05/IDS-1.jpg',
        'description2': 'Ejemplo: detectar intentos de acceso no autorizados en servidores.',
      },
      {
        'title': 'Respuesta a incidentes',
        'description': 'Establecer planes de contención y recuperación ante ataques.',
        'imageUrl': 'https://www.redseguridad.com/wp-content/uploads/sites/2/2021/12/soc-centro-de-operaciones-de-seguridad.jpg',
        'description2': 'Ejemplo: aislar redes comprometidas tras un ataque de ransomware.',
      },
      {
        'title': 'Actualizaciones de seguridad',
        'description': 'Aplicar parches regularmente para proteger sistemas.',
        'imageUrl': 'https://ivnosys.com/wp-content/uploads/notificaciones-electronicas.jpg',
        'description2': 'Ejemplo: actualizar sistemas operativos para evitar exploits conocidos.',
      },
    ],
    'Sección 7 (Normativas y estándares de ciberseguridad)': [
      {
        'title': 'ISO/IEC 27001',
        'description': 'Proveer un marco para gestionar la seguridad de la información.',
        'imageUrl': 'https://globalt4e.com/wp-content/uploads/2021/01/ISO-27001.jpg',
        'description2': 'Ejemplo: implementar controles definidos en el Anexo A del estándar.',
      },
      {
        'title': 'NIST',
        'description': 'Ofrecer guías prácticas para mejorar la seguridad organizacional.',
        'imageUrl': 'https://miro.medium.com/v2/0*kt08rqqRjDargItP.png',
        'description2': 'Ejemplo: seguir el framework NIST para responder a incidentes.',
      },
      {
        'title': 'Ley de protección de datos',
        'description': 'Adaptarse a las leyes específicas de cada región.',
        'imageUrl': 'https://cdn.elnacional.com.py/2023/02/datos-personales-digitales-identidad-virtual-digital.jpg',
        'description2': 'Ejemplo: cumplir con la LOPD en España al manejar datos personales.',
      },
    ],
    'Sección 8 (Gestión de incidentes de seguridad)': [
      {
        'title': 'Identificación de incidentes',
        'description': 'Detectar anomalías usando herramientas SIEM.',
        'imageUrl': 'https://www.hacknoid.com/wp-content/uploads/2022/07/4-pasos.png',
        'description2': 'Ejemplo: alertar sobre accesos no autorizados en horarios inusuales.',
      },
      {
        'title': 'Respuesta inmediata',
        'description': 'Acciones rápidas para mitigar riesgos.',
        'imageUrl': 'https://www.scd.com.ar/img/soporte-tecnico-informatico.jpg',
        'description2': 'Ejemplo: desconectar sistemas comprometidos para evitar propagación.',
      },
      {
        'title': 'Análisis post-incidente',
        'description': 'Investigar causas y mejorar defensas.',
        'imageUrl': 'https://www.diariopalentino.es/media/IMG/2022/EDCE0890-FE2E-3F24-7BC3A395305E8437.JPG',
        'description2': 'Ejemplo: realizar autopsias de incidentes para evitar futuros ataques similares.',
      },
    ],
    'Sección 9 (Concientización y formación en ciberseguridad)': [
      {
        'title': 'Campañas de formación',
        'description': 'Impartir cursos prácticos para reforzar conocimiento.',
        'imageUrl': 'https://ciberseguridadtips.com/wp-content/uploads/2022/04/Curso-de-ciberseguridad-gratis-01.jpg',
        'description2': 'Ejemplo: talleres sobre creación de contraseñas seguras.',
      },
      {
        'title': 'Simulación de phishing',
        'description': 'Probar al personal con correos simulados.',
        'imageUrl': 'https://i.geekflare.com/cdn-cgi/image/width=800,height=400,fit=crop,quality=90,format=auto,onerror=redirect,metadata=none/wp-content/uploads/sites/24/2023/05/phishing.png',
        'description2': 'Ejemplo: medir el índice de clics en enlaces fraudulentos.',
      },
      {
        'title': 'Evaluaciones regulares',
        'description': 'Auditar conocimientos en intervalos programados.',
        'imageUrl': 'https://blog.hackmetrix.com/wp-content/uploads/2021/03/hackmetrix_que%CC%81_es_cuestionario_ciberseguridad_seguridad_informacio%CC%81n.png',
        'description2': 'Ejemplo: encuestas para medir conocimientos básicos.',
      },
    ],
    'Sección 10 (Tendencias futuras en ciberseguridad)': [
      {
        'title': 'Ciberseguridad en la inteligencia artificial',
        'description': 'Usar IA para detectar y responder a amenazas avanzadas.',
        'imageUrl': 'https://zettatek.com/wp-content/uploads/2024/02/La-Revolucion-de-la-Ciberseguridad-mediante-IA-_De-la-Defensa-al-Ataque-scaled.jpg',
        'description2': 'Ejemplo: sistemas que identifican malware desconocido automáticamente.',
      },
      {
        'title': 'Blockchain en seguridad',
        'description': 'Aumentar la transparencia y trazabilidad de datos.',
        'imageUrl': 'https://hackercar.com/wp-content/uploads/2019/01/blockchain-3326155_960_720.png',
        'description2': 'Ejemplo: usar blockchain para proteger registros médicos.',
      },
      {
        'title': 'IoT y ciberseguridad',
        'description': 'Implementar medidas específicas para proteger dispositivos conectados.',
        'imageUrl': 'https://www.servnet.mx/hubfs/Blog/Blog_Articulos/Blog_Art%C3%ADculos/Blog_Articulos_2023_Mayo/Blog_Articulos_2023_Mayo_Art36_SIOT/IoT-Que-es-y-como-tener-seguridad-IoT-en-tu-empresa.png',
        'description2': 'Ejemplo: asegurar cámaras IP mediante firewalls dedicados.',
      },
    ],
  };


  @override
  Widget build(BuildContext context) {
    final themes = sectionThemes[section] ?? [];

    return Scaffold(
      appBar: AppBar(title: Text(section)),
      body: themes.isNotEmpty
          ? PageView.builder(
        itemCount: themes.length,
        itemBuilder: (context, index) {
          return ThemePageView(
            themeTitle: themes[index]['title'] ?? '',
            themeDescription: themes[index]['description'] ?? '',
            imageUrl: themes[index]['imageUrl'],
            themeDescription2: themes[index]['description2'] ?? '',
          );
        },
      )
          : Center(
        child: Text(
          'No hay información disponible para esta sección.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

class ThemePageView extends StatelessWidget {
  final String themeTitle;
  final String themeDescription;
  final String? imageUrl;
  ThemePageView({required this.themeTitle, required this.themeDescription, this.imageUrl, required this.themeDescription2,});
  final String themeDescription2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            themeTitle,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            themeDescription,
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          if (imageUrl != null)
            Center(
              child: Image.network(
                imageUrl!,
                fit: BoxFit.cover,
                height: 200,
              ),
            ),
          SizedBox(height: 20),
          Text(
            themeDescription2,
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );

  }
}
class DesafioPage extends StatefulWidget {
  @override
  _DesafioPageState createState() => _DesafioPageState();
}

class _DesafioPageState extends State<DesafioPage> {
  // Lista de preguntas y opciones de respuesta
  List<Map<String, dynamic>> questions = [
    {
      'question': '¿Qué significa el término "Confidencialidad" en el contexto de la seguridad informática?',
      'options': ['Asegurar que los datos sean accesibles para todos los usuarios', 'Asegurar que solo los usuarios autorizados puedan acceder a los datos sensibles', 'Asegurar que los datos sean almacenados en la nube', 'Asegurar que los datos sean copiados periódicamente'],
      'correctAnswer': 1,
    },
    {
      'question': '¿Cuál es el propósito principal de la Pirámide de Kelsen en la seguridad informática?',
      'options': ['Establecer los pasos para realizar una prueba de penetración', 'Determinar los roles y responsabilidades dentro de un equipo de seguridad', 'Establecer procedimientos para la gestión de incidentes', 'Alinear las políticas internas con leyes nacionales e internacionales'],
      'correctAnswer': 3,
    },
    {
      'question': '¿Qué norma o estándar ayuda a implementar sistemas de seguridad eficaces en las organizaciones?',
      'options': ['NIST', 'GDPR', 'ISO/IEC 27001', 'CCPA'],
      'correctAnswer': 2,
    },
    {
      'question': '¿Qué acción debe realizar la alta dirección para garantizar la seguridad de la información en una organización?',
      'options': ['Desarrollar un plan de respuesta a incidentes', 'Fomentar una cultura de seguridad y asignar recursos adecuados', 'Implementar controles de acceso estrictos', 'Realizar auditorías de seguridad internas'],
      'correctAnswer': 1,
    },
    {
      'question': '¿Cuál de los siguientes es un ejemplo de un activo intangible en una organización?',
      'options': ['Servidor físico', 'Base de datos', 'Equipo de red', 'Dispositivo móvil'],
      'correctAnswer': 1,
    },
    {
      'question': '¿Cuál es la mejor forma de asegurar que solo los usuarios autorizados accedan a ciertos recursos dentro de una organización?',
      'options': ['Usar autenticación basada en roles', 'Proteger con contraseñas complejas', 'Implementar una VPN', 'Hacer copias de seguridad regularmente'],
      'correctAnswer': 0,
    },
    {
      'question': '¿Cuál de los siguientes es un ejemplo de una buena práctica de desarrollo seguro?',
      'options': ['No realizar pruebas de seguridad antes de lanzar un producto', 'Ignorar las dependencias de las librerías utilizadas en el software', 'Usar contraseñas fáciles de recordar para los desarrolladores', 'Usar autenticación multifactor en las aplicaciones'],
      'correctAnswer': 3,
    },
    {
      'question': '¿Qué medida ayuda a proteger los datos sensibles en las bases de datos?',
      'options': ['Autenticación de un solo factor', 'Actualización de antivirus', 'Cifrado de datos', 'Desactivación de firewalls'],
      'correctAnswer': 2,
    },
    {
      'question': '¿Qué herramienta se utiliza comúnmente para detectar amenazas y actividad sospechosa en una red?',
      'options': ['IDS/IPS (Sistema de detección y prevención de intrusiones)', 'Antivirus', 'Firewall', 'VPN'],
      'correctAnswer': 0,
    },
    {
      'question': '¿Qué tendencia futura en ciberseguridad involucra el uso de la tecnología para detectar amenazas avanzadas y malware desconocido?',
      'options': ['Blockchain en seguridad', 'Ciberseguridad en la inteligencia artificial', 'IoT y ciberseguridad', 'Cifrado de datos'],
      'correctAnswer': 1,
    },

  ];

  // Control de la pregunta actual
  int currentQuestionIndex = 0;
  int score = 0;

  void checkAnswer(int selectedOption) {
    if (selectedOption == questions[currentQuestionIndex]['correctAnswer']) {
      score++;
    }

    setState(() {
      // Avanzar a la siguiente pregunta
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        // Mostrar mensaje final si todas las preguntas fueron respondidas
        showDialog(
          context: context,
          builder: (BuildContext context) {
            String message = '';
            String imagePath = '';

            // Lógica para determinar el mensaje e imagen según el puntaje
            if (score >= 8) {
              message = '¡Felicidades! Eres tod@ un expert@ en Seguridad Informática.';
              imagePath = 'assets/robotfeliz.jpg';
            } else if (score >= 5) {
              message = '¡Lo hiciste bien! Pero debes seguir mejorando. ¡Sigue así!';
              imagePath = 'assets/robotpeocupao.jpg';
            } else {
              message = '¡Uy! Parece que tuviste algunos problemas y necesitas revisar más los temas. ¡Vuelve a intentarlo!';
              imagePath = 'assets/robotmuerto.jpg';
            }

            return AlertDialog(
              title: Text('Resultado'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Tu puntuación es $score/${questions.length}.\n\n$message',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(7.0), // Bordes redondeados
                    child: Image.asset(
                      imagePath, // Ruta de la imagen correspondiente
                      width: 100, // Ancho de la imagen
                      height: 150, // Altura de la imagen
                      fit: BoxFit.cover, // Ajuste para que la imagen llene el contenedor
                    ),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      score = 0;
                      currentQuestionIndex = 0;
                    });
                    Navigator.of(context).pop();
                  },
                  child: Text('Reintentar'),
                ),
              ],
            );
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Color> buttonColors = [
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.red,
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Desafío de Aprendizaje'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              questions[currentQuestionIndex]['question'],
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ...List.generate(4, (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColors[index],
                    fixedSize: Size(400, 50),
                  ),
                  onPressed: () {
                    checkAnswer(index);
                  },
                  child: Text(
                    questions[currentQuestionIndex]['options'][index],
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              );
            }),
            SizedBox(height: 20),
            Text('Puntaje: $score', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
