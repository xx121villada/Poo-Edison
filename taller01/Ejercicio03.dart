class Cancion{

    String titulo; 
    String autor; 

    Cancion(this.titulo, this.autor){
        this.titulo = titulo;
        this.autor = autor;
    }

    void dameTitulo(){
        print("El titulo de la cancion es: $titulo");
    }

    void dameAutor(){
        print("El Autor de la cancion es: $autor");
    }

    void ponTitulo(String titulo){
        print("El titulo de la cancion es: $titulo");
    }

    void ponAutor(String autor){
        print("El Autor de la cancion es: $autor");
    }
}

void main(){

    final cancion1 =  new Cancion("A ella", "Karol g"); 
    cancion1.dameTitulo();
    cancion1.dameAutor();
    cancion1.ponTitulo("Mirame");
    cancion1.ponAutor("Blessd");

}