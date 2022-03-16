// argumentos posicionales
//void saludar({mensaje}) argumentos por nombre segundo argumento es opcional
void saludar(String mensaje,
    [String nombre = '<insertar nombre>', int edad = 20]) {
  print('$mensaje $nombre - $edad');
}

void saludar2(String mensaje, {required String nombre, int veces = 10}) {
  print('Saludar2: $mensaje $nombre - $veces');
}

main(List<String> args) {
  saludar('Hola', 'Jhonatan', 30);
  //primer argumento posicional, los otros dos son por nombre
  saludar2('hola', veces: 20, nombre: 'Tony');
}
