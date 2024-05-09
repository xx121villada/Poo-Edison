class Precio {
    double valor;

    Precio(this.valor);
}

class Factura extends Precio {
    String emisor;
    String cliente;

    Factura(double valor, this.emisor, this.cliente) : super(valor);

    void imprimirFactura() {
    print('Emisor: $emisor, Cliente: $cliente, Valor: $valor');
    }
}

void main(){
    final factura1 = new Factura(2000,"Camila","Luisa"); 
    factura1.imprimirFactura(); 
}