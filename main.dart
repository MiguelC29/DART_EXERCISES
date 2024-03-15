import 'dart:io';

import 'empleado.dart';
import 'persona.dart';

void main() {
  int numEmplyees;

  stdout.write("¿Ha cuántos empleados desea calcularle la nómina?: ");
  numEmplyees = int.parse(stdin.readLineSync().toString());

  solicitarDatos(numEmplyees);
}

void solicitarDatos(int numEmplyees) {
  String name, lastName;
  int age, id, hWork, hExtra, opRol, opJornada;
  Rol rol;
  Jornada jornada = Jornada.NO_APLICA;

  for (var i = 1; i <= numEmplyees; i++) {
    stdout.writeln("\nINGRESE LA SIGUIENTE INFORMACIÓN DEL EMPLEADO");

    stdout.write("Nombres: ");
    name = stdin.readLineSync().toString();

    stdout.write("Apellidos: ");
    lastName = stdin.readLineSync().toString();

    stdout.write("Edad: ");
    age = int.parse(stdin.readLineSync().toString());

    stdout.write("Número de Cédula: ");
    id = int.parse(stdin.readLineSync().toString());

    stdout.write("Rol(cargo): \n1. EMPLEADO \n2. GERENTE\nIngrese una opción del menú: ");
    opRol = int.parse(stdin.readLineSync().toString());

    rol = (opRol == 1) ? Rol.EMPLEADO : Rol.GERENTE;

    stdout.write("Horas trabajadas: ");
    hWork = int.parse(stdin.readLineSync().toString());

    stdout.write("Horas extras: ");
    hExtra = int.parse(stdin.readLineSync().toString());

    if (hExtra > 0) {
      stdout.write("Elija la jornada en la que realizó las horas extras: \n1. DIURNA\n2. NOCTURNA\n3. FESTIVO\nIngrese una opción del menú: ");
      opJornada = int.parse(stdin.readLineSync().toString());

      if (opJornada == 1) {
        jornada = Jornada.DIURNA;
      } else if (opJornada == 2) {
        jornada = Jornada.NOCTURNA;
      } else if (opJornada == 3) {
        jornada = Jornada.FESTIVO;
      }
    }

    print("");
    Empleado(Persona(name, lastName, age, id), rol, hWork, hExtra, jornada).mostrarInfoEmpleado();
  }
}