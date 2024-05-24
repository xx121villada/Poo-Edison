//Escribir un programa que pregunte al usuario los numeros ganadores de la loteria,
//los almacene en una lista y los muestre por pantalla de mayor a menor,

import 'dart:io';

void main() {
    List<int> numerosGanadores = [];

    print('Cuantos numeros ganadores de la loteria quieres ingresar?');
    int cantidad = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < cantidad; i++) {
        print('Ingresa el numero ganador #${i + 1}:');
        numerosGanadores.add(int.parse(stdin.readLineSync()!));
    }
    numerosGanadores.sort((a, b) => b.compareTo(a));

    print('Los numeros ganadores de la loteria de mayor a menor son:');
    for (var numero in numerosGanadores) {
        print(numero);
    }
}
