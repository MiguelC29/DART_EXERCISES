import 'persona.dart';

enum Rol { EMPLEADO, GERENTE }

class Empleado {
  // Declaración de atributos
  Persona persona;
  Rol rol;
  int horasTrabajadas;
  int horasExtras;

  // Constructor
  Empleado(this.persona, this.rol, this.horasTrabajadas, this.horasExtras);

  double calcularSalarioBase() {
    double valorHora = 0;
    double auxilioTransporte;
    double salarioBase;

    if (rol == Rol.EMPLEADO) {
      valorHora = 5532;
    } else if (rol == Rol.GERENTE) {
      valorHora = 10000;
    }

    salarioBase = valorHora * horasTrabajadas;

    auxilioTransporte = (salarioBase < 2600000) ? 162000 : 0;

    salarioBase += auxilioTransporte;

    return salarioBase;
  }

  double calcularHorasExtras() {
    double valorHoraExtra = 0;
    double totalHorasExtra;

    if (rol == Rol.EMPLEADO) {
      valorHoraExtra = 6915;
    } else if (rol == Rol.GERENTE) {
      valorHoraExtra = 15000;
    }

    totalHorasExtra = valorHoraExtra * this.horasExtras;

    return totalHorasExtra;
  }

  double calcularPrestaciones(double salarioBase) {
    double totalPrestaciones;
    double salud = 0.04;
    double pension = 0.16;

    totalPrestaciones = (salarioBase * salud) + (salarioBase * pension);

    return totalPrestaciones;
  }

  double calcularSalarioNeto() {
    double salarioBase = calcularSalarioBase();
    double horasExtras = calcularHorasExtras();
    double prestaciones = calcularPrestaciones(salarioBase);
    double salarioNeto = (salarioBase + horasExtras) - prestaciones;

    return salarioNeto;
  }

  void mostrarInfoEmpleado() {
    double salarioBase = calcularSalarioBase();

    print("NÓMINA DEL ${this.rol.name} ${this.persona.nombre.toUpperCase()}");
    print("Nombre Completo: ${this.persona.nombre.toUpperCase()} ${this.persona.apellido.toUpperCase()}");
    print("Cédula: ${this.persona.cedula}");
    print("Edad: ${this.persona.edad}");
    print("SalarioBase: \$${salarioBase}");
    print("Prestaciones Sociales: \$${calcularPrestaciones(salarioBase)}");
    print("Horas extra: \$${calcularHorasExtras()}");
    print("Salario Neto: \$${calcularSalarioNeto()}");
  }
}