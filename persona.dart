class Persona {
  String nombre;
  String apellido;
  int edad;
  int cedula;

  Persona(this.nombre, this.apellido, this.edad, this.cedula);

  void mostrarInfoPersona() {
    print("Nombre Completo: ${this.nombre.toUpperCase()} ${this.apellido.toUpperCase()}");
    print("Cédula: ${this.cedula}");
    print("Edad: ${this.edad}");
  }
}