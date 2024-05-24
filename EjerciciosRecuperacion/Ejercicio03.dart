//Escribir un programa que permita almacenar varios usuarios y pregunte su cedula y nombre y lo guarde en un 
//diccionario. Despues el programa debe preguntar la cedula de un usuario y mostrar su nombre.El programa
//debe permitir hacer un CRUD(guardar,mostrar,modificar y eliminar)

import 'dart:io';

void main() {
    Map<String, String> usuarios = {};
    String opcion;

    do {
        print('\nQue desea hacer?');
        print('1. Agregar usuario');
        print('2. Mostrar usuario');
        print('3. Modificar usuario');
        print('4. Eliminar usuario');
        print('5. Salir\n');
        opcion = stdin.readLineSync()!;

        switch (opcion) {
        case '1':
            // Agregar usuario
            print('Ingrese la cedula del usuario:');
            String cedula = stdin.readLineSync()!;
            print('Ingrese el nombre del usuario:');
            String nombre = stdin.readLineSync()!;
            usuarios[cedula] = nombre;
            print('Usuario agregado exitosamente.');
            print(usuarios);
            break;
        case '2':
            // Mostrar usuario
            print(usuarios);
            print('Ingrese la cédula del usuario a mostrar:');
            String cedula = stdin.readLineSync()!;
            String? nombre = usuarios[cedula];
            if (nombre != null) {
            print('El nombre del usuario es: $nombre');
            } else {
            print('Usuario no encontrado.');
            }
            break;
        case '3':
            // Modificar usuario
            print(usuarios);
            print('Ingrese la cédula del usuario a modificar:');
            String cedula = stdin.readLineSync()!;
            if (usuarios.containsKey(cedula)) {
            print('Ingrese el nuevo nombre del usuario:');
            String nuevoNombre = stdin.readLineSync()!;
            usuarios[cedula] = nuevoNombre;
            print('Usuario modificado exitosamente.');
            } else {
            print('Usuario no encontrado.');
            }
            print(usuarios);
            break;
        case '4':
            // Eliminar usuario
            print(usuarios);
            print('Ingrese la cédula del usuario a eliminar:');
            String cedula = stdin.readLineSync()!;
            if (usuarios.remove(cedula) != null) {
            print('Usuario eliminado exitosamente.');
            } else {
            print('Usuario no encontrado.');
            }
            print(usuarios);
            break;
        case '5':
            // Salir del programa
            print('Saliendo del programa...');
            break;
        default:
            print('Opción no válida, intenta de nuevo.');
        }
    } while (opcion != '5');
}
