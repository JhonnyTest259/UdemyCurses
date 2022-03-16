class Location {
  final double lat;
  final double lng;

  const Location(this.lat, this.lng);
}

void main() {
  final sanFrancisco1 = new Location(18.2323, 39.9000);
  final sanFrancisco2 = new Location(18.2323, 39.9001);
  final sanFrancisco3 = new Location(18.2323, 39.9001);

/*   print(sanFrancisco2 == sanFrancisco1); // false
  print(sanFrancisco2 == sanFrancisco3); // false */

  const sanFrancisco4 = const Location(18.2323, 39.9000);
  const sanFrancisco5 = const Location(18.2323, 39.9001);
  const sanFrancisco6 = const Location(18.2323, 39.9001);

  const berlin = const Location(18.2323, 39.9001);

  print(sanFrancisco4 == sanFrancisco5); // false
  print(berlin == sanFrancisco6); // true
  //los const siempre apuntan a la misma direccion en memoria
}
