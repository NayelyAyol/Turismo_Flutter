import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const MyApp());

// GOOGLE MAPS (NO CAMBIADO)
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

              TouristCard(
                image: 'images/mitad.jpg',
                name: 'Mitad del Mundo',
                location: 'Quito',
                likes: 120,
                query: "Mitad del Mundo Quito Ecuador",
                description:
                    'La Mitad del Mundo es uno de los lugares turísticos más emblemáticos del Ecuador. Aquí los visitantes pueden pararse sobre la línea ecuatorial, experimentar fenómenos físicos únicos y visitar museos culturales y científicos que explican la importancia geográfica del sitio.',
              ),

              TouristCard(
                image: 'images/cotopaxi.jpg',
                name: 'Cotopaxi',
                location: 'Latacunga',
                likes: 95,
                query: "Volcán Cotopaxi Ecuador",
                description:
                    'El Parque Nacional Cotopaxi es un destino natural impresionante con uno de los volcanes activos más altos del mundo. Es ideal para senderismo, fotografía y observación de fauna andina como llamas y caballos salvajes en paisajes volcánicos únicos.',
              ),

              TouristCard(
                image: 'images/quillotoa.jpg',
                name: 'Laguna Quilotoa',
                location: 'Cotopaxi',
                likes: 180,
                query: "Laguna Quilotoa Ecuador",
                description:
                    'La Laguna Quilotoa es un cráter volcánico lleno de agua color turquesa intenso. Es uno de los paisajes más fotografiados del Ecuador, rodeado de montañas andinas y comunidades indígenas que ofrecen experiencias culturales únicas.',
              ),

              TouristCard(
                image: 'images/baños.jpg',
                name: 'Baños de Agua Santa',
                location: 'Tungurahua',
                likes: 210,
                query: "Baños de Agua Santa Ecuador",
                description:
                    'Baños es la capital del turismo de aventura en Ecuador. Ofrece cascadas impresionantes, deportes extremos como rafting y canopy, además de aguas termales naturales que atraen turistas de todo el mundo.',
              ),

              TouristCard(
                image: 'images/2000.jpg',
                name: 'Malecón 2000',
                location: 'Guayaquil',
                likes: 150,
                query: "Malecón 2000 Guayaquil",
                description:
                    'El Malecón 2000 es un moderno paseo turístico a orillas del río Guayas. Cuenta con jardines, museos, restaurantes y miradores que lo convierten en uno de los lugares más visitados de Guayaquil.',
              ),

              TouristCard(
                image: 'images/cajasjpg.jpg',
                name: 'Parque Nacional Cajas',
                location: 'Cuenca',
                likes: 130,
                query: "Parque Nacional Cajas Ecuador",
                description:
                    'El Parque Nacional Cajas es un área protegida con cientos de lagunas glaciares, paisajes fríos andinos y una biodiversidad única. Es ideal para caminatas largas y contacto directo con la naturaleza.',
              ),

              TouristCard(
                image: 'images/islas.jpg',
                name: 'Islas Galápagos',
                location: 'Galápagos',
                likes: 300,
                query: "Islas Galápagos Ecuador",
                description:
                    'Las Islas Galápagos son un archipiélago único en el mundo, famoso por su biodiversidad y por ser clave en la teoría de la evolución de Darwin. Sus especies endémicas no existen en ningún otro lugar del planeta.',
              ),

              TouristCard(
                image: 'images/voto.jpg',
                name: 'Basílica del Voto Nacional',
                location: 'Quito',
                likes: 110,
                query: "Basílica del Voto Nacional Quito",
                description:
                    'La Basílica del Voto Nacional es la iglesia neogótica más grande de América Latina. Sus torres permiten vistas espectaculares del centro histórico de Quito.',
              ),

              TouristCard(
                image: 'images/nariz.jpg',
                name: 'Nariz del Diablo',
                location: 'Alausí',
                likes: 85,
                query: "Nariz del Diablo Alausí Ecuador",
                description:
                    'La Nariz del Diablo es una de las rutas ferroviarias más impresionantes del mundo. El recorrido en tren atraviesa montañas con vistas espectaculares y una ingeniería histórica única.',
              ),

              TouristCard(
                image: 'images/diablo.jpg',
                name: 'Pailón del Diablo',
                location: 'Baños',
                likes: 260,
                query: "Pailón del Diablo Baños Ecuador",
                description:
                    'El Pailón del Diablo es una cascada poderosa rodeada de vegetación exuberante. Los visitantes pueden caminar por senderos y puentes para sentir la fuerza del agua de cerca.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TouristCard extends StatefulWidget {
  final String image;
  final String name;
  final String location;
  final int likes;
  final String description;
  final String query;

  const TouristCard({
    super.key,
    required this.image,
    required this.name,
    required this.location,
    required this.likes,
    required this.description,
    required this.query,
  });

  @override
  State<TouristCard> createState() => _TouristCardState();
}

class _TouristCardState extends State<TouristCard> {
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
    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 5,
      child: Column(
        children: [
          Image.asset(widget.image, width: 600, height: 240, fit: BoxFit.cover),

          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.name,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Text(widget.location,
                          style: TextStyle(color: Colors.grey[600])),
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
                Text("$likeCount"),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(widget.description),
          ),

          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.call, color: Colors.blue),
              IconButton(
                icon: const Icon(Icons.near_me, color: Colors.blue),
                onPressed: () {
                  openGoogleMaps(widget.query);
                },
              ),
              Icon(Icons.share, color: Colors.blue),
            ],
          ),

          const SizedBox(height: 10),
        ],
      ),
    );
  }
}