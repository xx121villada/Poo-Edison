class Cafetera{

    var capacidadMaxima; 
    var cantidadActual; 

    Cafetera(this.capacidadMaxima, this.cantidadActual){
        this.capacidadMaxima = capacidadMaxima; 
        this.cantidadActual = cantidadActual;
    }

    void servir(int cant){
        if(cant > capacidadMaxima){
            print("La cantidad se excede"); 
        }else if(cant <= cantidadActual){
            cantidadActual  = cantidadActual-cant;
            print("Se sirvio su cafe");
        }else{
            print("no alcanza"); 
        };
    }

    void vaciarCafetera(){
        cantidadActual = 0;
        print("La cantidad actual de cafe es: $cantidadActual");
    }

    void agregarCafe(int cant){
        cantidadActual = cant;
        print("La cantidad actual de cafe es: $cantidadActual");
    }
}
void main(){

    final cafe = new Cafetera(1000,1000);
    cafe.servir(500);
    cafe.vaciarCafetera(); 
    cafe.agregarCafe(500); 

}