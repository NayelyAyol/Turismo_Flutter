<h1 align=center> Sitios Turísticos de Ecuador - Flutter 📍</h1>

## Descripción

Aplicación móvil desarrollada en Flutter que presenta información sobre 10 sitios turísticos representativos del Ecuador. La aplicación permite visualizar información detallada de cada lugar, marcar sitios favoritos y acceder a su ubicación mediante Google Maps.

## Objetivo

Mostrar información turística de diferentes destinos ecuatorianos mediante una interfaz amigable que incluya imágenes, descripciones, ubicación geográfica y funcionalidades interactivas.

## Características

* Visualización de 10 sitios turísticos del Ecuador.
* Imagen representativa de cada destino.
* Nombre del lugar turístico.
* Ciudad o provincia donde se encuentra.
* Descripción detallada.
* Coordenadas geográficas (latitud y longitud).
* Sistema de favoritos mediante icono de corazón.
* Contador de favoritos por lugar.
* Apertura de Google Maps para visualizar la ubicación exacta.
* Función para compartir información del sitio turístico.
* Interfaz moderna utilizando Material Design.

## Sitios Turísticos Incluidos

1. Mitad del Mundo
2. Parque Nacional Cotopaxi
3. Laguna Quilotoa
4. Baños de Agua Santa
5. Malecón 2000
6. Parque Nacional Cajas
7. Islas Galápagos
8. Basílica del Voto Nacional
9. Nariz del Diablo
10. Pailón del Diablo

## Tecnologías Utilizadas

* Flutter
* Dart
* Material Design
* url_launcher
* Google Maps

## Dependencias

```yaml
dependencies:
  flutter:
    sdk: flutter
  url_launcher: ^6.3.0
```

## Dependencias

```yaml
dependencies:
  flutter:
    sdk: flutter
  url_launcher: ^6.3.0
  share_plus: ^11.0.0
```

- Instalación
  
```bash
flutter pub get
```

## Funcionalidades Implementadas

### Favoritos

Cada tarjeta permite marcar o desmarcar un lugar turístico como favorito mediante un icono de corazón.

### Geolocalización

Al presionar el icono de ubicación, se abre Google Maps mostrando la localización exacta del sitio turístico.

### Compartir

Permite compartir información del lugar turístico utilizando las aplicaciones disponibles en el dispositivo.

## Capturas de Pantalla

| Sitio turístico | Google Maps |
|-------------------|-----------------|
| ![Inicio](capturas/inicio.png) | ![Detalle](capturas/detalle.png) |

| Información | Compartir |
|------------|------------|
| ![Favoritos](capturas/favoritos.png) | ![Maps](capturas/maps.png) |


## Autor

Nayely Ayol
