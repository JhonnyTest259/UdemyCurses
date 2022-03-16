import 'clases/Persona.dart';

main() {
  final persona = new Persona(edad: 20, nombre: 'Jhonatan');
  final persona2 = new Persona.personaDefecto(45);

/*   persona
    ..nombre = 'Jhonatan'
    ..edad = 23;
  //persona.setBio = 'Cambie de valor'; */

  // ..bio = 'nacio por ahi'; se volvio privado

  print(persona2);
}
