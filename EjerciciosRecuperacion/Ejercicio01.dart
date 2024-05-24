// Escribir un programa que permita almacenar el numero del documento del aprendiz, su nombre y su nota en la 
//competencia de programacion.Debe permitir consultar la nota de un aprendiz,mostrar la mayor nota,el promedio
// quienes aprobaron y quienes repobraron la competencia

import 'dart:io';

void main() {
    List<String> documentos = [];
    List<String> nombres = [];
    List<double> notas = [];
    String opcion;

    do {
        print('Elige una opción:');
        print('1. Ingresar datos del aprendiz');
        print('2. Consultar nota de un aprendiz');
        print('3. Mostrar estadísticas');
        print('4. Salir');
        opcion = stdin.readLineSync()!;

    switch (opcion) {
        case '1':
            // Ingresar datos del aprendiz
            print('Ingrese el número del documento del aprendiz:');
            documentos.add(stdin.readLineSync()!);
            print('Ingrese el nombre del aprendiz:');
            nombres.add(stdin.readLineSync()!);
            print('Ingrese la nota del aprendiz:');
            notas.add(double.parse(stdin.readLineSync()!));
            break;
        case '2':
            // Consultar la nota de un aprendiz
            print('Ingrese el documento del aprendiz para consultar su nota:');
            String docConsulta = stdin.readLineSync()!;
            int index = documentos.indexOf(docConsulta);
            if (index != -1) {
                print('La nota de ${nombres[index]} es ${notas[index]}');
            } else {
                print('Aprendiz no encontrado.');
            }
            break;
        case '3':
            // Mostrar estadísticas
            mostrarEstadisticas(nombres, notas);
            break;
        case '4':
            // Salir del programa
            print('Saliendo del programa...');
            break;
        default:
            print('Opción no válida, intenta de nuevo.');
        }
    } while (opcion != '4');
}

void mostrarEstadisticas(List<String> nombres, List<double> notas) {
  // Mostrar la mayor nota
    double mayorNota = notas.reduce((a, b) => a > b ? a : b);
    print('La mayor nota es: $mayorNota');

    // Calcular el promedio de notas
    double promedio = notas.reduce((a, b) => a + b) / notas.length;
    print('El promedio de notas es: $promedio');

    // Mostrar quienes aprobaron y quienes reprobaron
    print('Aprendices que aprobaron:');
    for (int i = 0; i < notas.length; i++) {
        if (notas[i] >= 3.0) {
        print('${nombres[i]} con nota ${notas[i]}');
        }
    }

    print('Aprendices que reprobaron:');
    for (int i = 0; i < notas.length; i++) {
        if (notas[i] < 3.0) {
        print('${nombres[i]} con nota ${notas[i]}');
        }
    }
}
