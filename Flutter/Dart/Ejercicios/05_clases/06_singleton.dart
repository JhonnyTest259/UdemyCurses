import 'clases/mi_servicio.dart';

void main() {
  final spotifyService1 = new MiServicio();
  spotifyService1.url = 'https://api.spotify.com';

  final spotifyService2 = new MiServicio();
  spotifyService2.url = 'https://api.spotify.com/v2';

  //con el singleton apuntan al mismo espacio de memoria
  print(spotifyService1 == spotifyService2); //false;

  //apuntan al ultimo lugar de la url
  print(spotifyService1.url);
  print(spotifyService2.url);
}
