/** 
 *  Dado el siguiente código 
 *    Optimizarlo lo más posible usando funciones
 *    y todo lo visto en el curso
 * 
 *  Ver el primer ejemplo:
*/
import 'dart:io';

main() {
  // Ejemplo:
  // Crear una función para imprimir STDOUTS en lugar de
  // la siguiente línea. Luego todos los stdouts deberían ser
  // llamados usando nuestra función personalizada

  imprimir('=========== Usuario 1 =============');

  Map<String, dynamic> usuario = pedirDatos();

  imprimir('Usuario 1 sin deducciones : $usuario');

  procesarUsuario(usuario, 1500);

  imprimir(' usuario con deducciones: $usuario');

  // Persona 2
  imprimir('=========== Usuario 2 =============');

  Map<String, dynamic> usuario2 = pedirDatos();

  imprimir('Usuario 2 sin deducciones');
  imprimir(usuario2.toString());

  procesarUsuario(usuario2, 1800);
  imprimir(usuario2.toString());
}

void procesarUsuario(
  Map<String, dynamic> persona,
  double salario,
) {
  double deducciones = salario * 0.15;
  persona['salario'] = salario;
  persona['deducciones'] = deducciones;
  persona['salarioNeto'] = salario - deducciones;
}

void imprimir(String texto) => stdout.writeln(texto);
String leer() => stdin.readLineSync() ?? 'Sin valores';

Map<String, dynamic> pedirDatos() {
  imprimir('¿Cúal es su nombre?');
  String nombre = leer();

  imprimir('¿Qué edad tienes?');
  String edad = leer();

  imprimir('¿En qué país naciste?');
  String pais = leer();

  return crearUsuario(nombre, edad, pais);
}

Map<String, dynamic> crearUsuario(String nombre, String edad, String pais) {
  final Map<String, dynamic> usuario = {
    'nombre': nombre,
    'edad': edad,
    'pais': pais
  };

  return usuario;
}
