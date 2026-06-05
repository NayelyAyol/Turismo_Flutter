import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Sitios Turísticos de Ecuador';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [

              Card(
                margin: const EdgeInsets.all(16),
                elevation: 5,
                child: const Column(
                  children: [
                    ImageSection(image: 'images/mitad.jpg'),
                    TitleSection(
                      name: 'Mitad del Mundo',
                      location: 'Quito',
                      likes: 120,
                    ),
                    ButtonSection(),
                    TextSection(
                      description:
                          'La Mitad del Mundo es uno de los lugares turísticos más emblemáticos del Ecuador, donde se encuentra la línea ecuatorial que divide el hemisferio norte y sur del planeta. Este sitio ofrece museos, monumentos y experiencias culturales que explican la importancia geográfica del lugar, además de actividades interactivas para los visitantes.',
                    ),
                  ],
                ),
              ),

              Card(
                margin: const EdgeInsets.all(16),
                elevation: 5,
                child: const Column(
                  children: [
                    ImageSection(image: 'images/cotopaxi.jpg'),
                    TitleSection(
                      name: 'Cotopaxi',
                      location: 'Latacunga',
                      likes: 95,
                    ),
                    ButtonSection(),
                    TextSection(
                      description:
                          'El Parque Nacional Cotopaxi es uno de los destinos naturales más impresionantes del Ecuador, famoso por albergar uno de los volcanes activos más altos del mundo. Este lugar es ideal para el ecoturismo, senderismo y observación de fauna andina en un entorno natural único y protegido.',
                    ),
                  ],
                ),
              ),

              Card(
                margin: const EdgeInsets.all(16),
                elevation: 5,
                child: const Column(
                  children: [
                    ImageSection(image: 'images/quillotoa.jpg'),
                    TitleSection(
                      name: 'Laguna Quilotoa',
                      location: 'Cotopaxi',
                      likes: 180,
                    ),
                    ButtonSection(),
                    TextSection(
                      description:
                          'La Laguna Quilotoa es un cráter volcánico lleno de agua de color turquesa que sorprende a todos los visitantes por su belleza natural. Rodeada de montañas y senderos, es un lugar perfecto para caminatas, fotografía y turismo comunitario en la región andina.',
                    ),
                  ],
                ),
              ),

              Card(
                margin: const EdgeInsets.all(16),
                elevation: 5,
                child: const Column(
                  children: [
                    ImageSection(image: 'images/baños.jpg'),
                    TitleSection(
                      name: 'Baños de Agua Santa',
                      location: 'Tungurahua',
                      likes: 210,
                    ),
                    ButtonSection(),
                    TextSection(
                      description:
                          'Baños de Agua Santa es una ciudad turística reconocida por sus cascadas, aguas termales y actividades de aventura como canopy, rafting y puenting. Es considerada una de las principales puertas de entrada a la Amazonía ecuatoriana.',
                    ),
                  ],
                ),
              ),

              Card(
                margin: const EdgeInsets.all(16),
                elevation: 5,
                child: const Column(
                  children: [
                    ImageSection(image: 'images/2000.jpg'),
                    TitleSection(
                      name: 'Malecón 2000',
                      location: 'Guayaquil',
                      likes: 150,
                    ),
                    ButtonSection(),
                    TextSection(
                      description:
                          'El Malecón 2000 es un moderno paseo turístico ubicado a orillas del río Guayas en Guayaquil. Ofrece jardines, centros comerciales, restaurantes y museos, siendo uno de los espacios recreativos más visitados del país.',
                    ),
                  ],
                ),
              ),

              Card(
                margin: const EdgeInsets.all(16),
                elevation: 5,
                child: const Column(
                  children: [
                    ImageSection(image: 'images/cajasjpg.jpg'),
                    TitleSection(
                      name: 'Parque Nacional Cajas',
                      location: 'Cuenca',
                      likes: 130,
                    ),
                    ButtonSection(),
                    TextSection(
                      description:
                          'El Parque Nacional Cajas es un área protegida con cientos de lagunas de origen glaciar, rodeadas de páramos andinos. Es un lugar ideal para el senderismo, la observación de aves y el contacto directo con la naturaleza.',
                    ),
                  ],
                ),
              ),

              Card(
                margin: const EdgeInsets.all(16),
                elevation: 5,
                child: const Column(
                  children: [
                    ImageSection(image: 'images/islas.jpg'),
                    TitleSection(
                      name: 'Islas Galápagos',
                      location: 'Galápagos',
                      likes: 300,
                    ),
                    ButtonSection(),
                    TextSection(
                      description:
                          'Las Islas Galápagos son un archipiélago único en el mundo, famoso por su biodiversidad y por haber inspirado la teoría de la evolución de Charles Darwin.',
                    ),
                  ],
                ),
              ),

              Card(
                margin: const EdgeInsets.all(16),
                elevation: 5,
                child: const Column(
                  children: [
                    ImageSection(image: 'images/voto.jpg'),
                    TitleSection(
                      name: 'Basílica del Voto Nacional',
                      location: 'Quito',
                      likes: 110,
                    ),
                    ButtonSection(),
                    TextSection(
                      description:
                          'La Basílica del Voto Nacional es la iglesia neogótica más grande de América Latina, ubicada en el centro histórico de Quito.',
                    ),
                  ],
                ),
              ),

              Card(
                margin: const EdgeInsets.all(16),
                elevation: 5,
                child: const Column(
                  children: [
                    ImageSection(image: 'images/nariz.jpg'),
                    TitleSection(
                      name: 'Nariz del Diablo',
                      location: 'Alausí',
                      likes: 85,
                    ),
                    ButtonSection(),
                    TextSection(
                      description:
                          'La Nariz del Diablo es una famosa ruta ferroviaria considerada una obra maestra de la ingeniería.',
                    ),
                  ],
                ),
              ),

              Card(
                margin: const EdgeInsets.all(16),
                elevation: 5,
                child: const Column(
                  children: [
                    ImageSection(image: 'images/diablo.jpg'),
                    TitleSection(
                      name: 'Pailón del Diablo',
                      location: 'Baños',
                      likes: 260,
                    ),
                    ButtonSection(),
                    TextSection(
                      description:
                          'El Pailón del Diablo es una de las cascadas más impresionantes del Ecuador, rodeada de vegetación exuberante.',
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatefulWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
    required this.likes,
  });

  final String name;
  final String location;
  final int likes;

  @override
  State<TitleSection> createState() => _TitleSectionState();
}

class _TitleSectionState extends State<TitleSection> {
  bool isFavorite = false;
  late int likeCount;

  @override
  void initState() {
    super.initState();
    likeCount = widget.likes;
  }

  void toggleFavorite() {
    setState(() {
      if (isFavorite) {
        likeCount--;
        isFavorite = false;
      } else {
        likeCount++;
        isFavorite = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  widget.location,
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: toggleFavorite,
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: Colors.red,
            ),
          ),
          Text('$likeCount'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ButtonWithText(color: color, icon: Icons.call, label: 'CALL'),
        ButtonWithText(color: color, icon: Icons.near_me, label: 'ROUTE'),
        ButtonWithText(color: color, icon: Icons.share, label: 'SHARE'),
      ],
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color),
        const SizedBox(height: 8),
        Text(label, style: TextStyle(color: color, fontSize: 12)),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(description, softWrap: true),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(image, width: 600, height: 240, fit: BoxFit.cover);
  }
}
