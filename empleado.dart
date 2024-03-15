import 'persona.dart';

enum Rol { EMPLEADO, GERENTE }
enum Jornada { DIURNA, NOCTURNA, FESTIVO, NO_APLICA }

class Empleado {
  // Declaración de atributos
  Persona persona;
  Rol rol;
  Jornada jornadaEx;
  int horasTrabajadas;
  int horasExtras;

  // Constructor
  Empleado(this.persona, this.rol, this.horasTrabajadas, this.horasExtras, this.jornadaEx);

  double calcularSalarioBase() {
    double valorHora = 0;
    double auxilioTransporte;
    double salarioBase;

    if (rol == Rol.EMPLEADO) {
      valorHora = 5550;
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

    if (jornadaEx == Jornada.DIURNA) {
      //Recargo del 25% sobre el valor de la hora normal.
      if (rol == Rol.EMPLEADO) {
        valorHoraExtra = 6950;
      } else if (rol == Rol.GERENTE) {
        valorHoraExtra = 12500;
      }
    } else if (jornadaEx == Jornada.NOCTURNA) {
      //Recargo del 75% sobre el valor de la hora normal.
      if (rol == Rol.EMPLEADO) {
        valorHoraExtra = 9750;
      } else if (rol == Rol.GERENTE) {
        valorHoraExtra = 17500;
      }
    } else if (jornadaEx == Jornada.FESTIVO) {
      //Recargo del 100% sobre el valor de la hora normal.
      if (rol == Rol.EMPLEADO) {
        valorHoraExtra = 11100;
      } else if (rol == Rol.GERENTE) {
        valorHoraExtra = 20000;
      }
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

    print("NÓMINA DE ${this.persona.nombre.toUpperCase()}");
    this.persona.mostrarInfoPersona();
    print("Cargo: ${this.rol.name}");
    print("SalarioBase: \$${salarioBase}");
    print("Horas extra: \$${calcularHorasExtras()}");
    print("Prestaciones Sociales: \$${calcularPrestaciones(salarioBase)}");
    print("Salario Neto: \$${calcularSalarioNeto()}");
  }
}