class Empleado {
    String nombre;
    String puesto;
    
    Empleado(this.nombre, this.puesto);
    
    void trabajarE() {
        print('$puesto $nombre');
    }
}

class Programador extends Empleado {
    Programador(String nombre) : super(nombre, 'Programador');

    void trabajarP() {
        print('$nombre esta programando');
    }
}

void main() {
    var empleado = Empleado('Sofiia', 'Gerente');
    empleado.trabajarE();

    var programador = Programador('Luisa');
    programador.trabajarP();
}
