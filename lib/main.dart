import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const MyApp());

// FUNCIÓN PARA ABRIR MAPS
void openGoogleMaps(String query) async {
  final Uri uri = Uri.parse(
    'https://www.google.com/maps/search/?api=1&query=$query',
  );

  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw 'No se pudo abrir Google Maps';
  }
}

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

              /// ================= MITAD DEL MUNDO =================
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
                          'La Mitad del Mundo es uno de los lugares turísticos más emblemáticos del Ecuador, donde se encuentra la línea ecuatorial.',
                    ),
                  ],
                ),
              ),
              MapsButton(location: "Mitad del Mundo Quito"),

              /// ================= COTOPAXI =================
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
                          'El Parque Nacional Cotopaxi es uno de los volcanes activos más altos del mundo.',
                    ),
                  ],
                ),
              ),
              MapsButton(location: "Volcán Cotopaxi"),

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
                          'La Laguna Quilotoa es un cráter volcánico lleno de agua color turquesa.',
                    ),
                  ],
                ),
              ),
              MapsButton(location: "Laguna Quilotoa Cotopaxi Ecuador"),

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
                          'Baños es famosa por sus cascadas, termas y deportes extremos.',
                    ),
                  ],
                ),
              ),
              MapsButton(location: "Baños de Agua Santa Ecuador"),

              /// ================= MALECÓN 2000 =================
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
                          'El Malecón 2000 es un moderno paseo turístico en Guayaquil.',
                    ),
                  ],
                ),
              ),
              MapsButton(location: "Malecón 2000 Guayaquil"),

              /// ================= CAJAS =================
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
                          'El Parque Nacional Cajas tiene lagunas y páramos andinos.',
                    ),
                  ],
                ),
              ),
              MapsButton(location: "Parque Nacional Cajas Cuenca"),

              /// ================= GALÁPAGOS =================
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
                          'Las Islas Galápagos son famosas por su biodiversidad única.',
                    ),
                  ],
                ),
              ),
              MapsButton(location: "Islas Galápagos Ecuador"),

              /// ================= BASÍLICA =================
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
                          'La Basílica del Voto Nacional es la iglesia neogótica más grande de América Latina.',
                    ),
                  ],
                ),
              ),
              MapsButton(location: "Basílica del Voto Nacional Quito"),

              /// ================= NARIZ DEL DIABLO =================
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
                          'La Nariz del Diablo es una obra maestra de ingeniería ferroviaria.',
                    ),
                  ],
                ),
              ),
              MapsButton(location: "Nariz del Diablo Alausí"),

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
                          'El Pailón del Diablo es una de las cascadas más impresionantes del Ecuador.',
                    ),
                  ],
                ),
              ),
              MapsButton(location: "Pailón del Diablo Original"),
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

class MapsButton extends StatelessWidget {
  final String location;

  const MapsButton({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton.icon(
          onPressed: () {
            openGoogleMaps(location);
          },
          icon: const Icon(Icons.map),
          label: const Text("Ver en Google Maps"),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}