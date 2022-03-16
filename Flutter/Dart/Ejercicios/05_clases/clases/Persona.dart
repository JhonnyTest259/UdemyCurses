class Persona {
  //campos o propiedades
  String? nombre;
  int? edad;
  String _bio = ' Soy una propiedad privada';

  //getterss
  String get getNombre {
    return this.nombre ?? '';
  }

  /*  String get getBio {
    return this._bio.toUpperCase();
  } */
  String get getBio => this._bio.toUpperCase();

  //setters siempre void
  /*  set bio(String texto) {
    this._bio = texto;
  } */

  set setBio(String texto) => this._bio = texto;

  // constructores
/*   Persona(int edad, String nombre) {
    this.edad = edad;
    this.nombre = nombre;
  } */

  Persona({this.edad = 0, this.nombre = 'Sin nombre'});

//constructor con nombre
  Persona.persona30(this.nombre) {
    this.edad = 30;
  }

  Persona.persona40(String nombre) {
    this.edad = 40;
    this.nombre = nombre;
  }

  Persona.personaDefecto(this.edad) {
    this.nombre = 'Maria';
  }

  //metodos

  @override
  String toString() => '$nombre $edad $_bio';
}
