class Multimedia {
    String titulo;
    String autor;
    String formato;
    Duration duracion;

    Multimedia(this.titulo, this.autor, this.formato, this.duracion);

    String getTitulo() => titulo;
    String getAutor() => autor;
    String getFormato() => formato;
    Duration getDuracion() => duracion;

    @override
    String toString() {
        return 'Título: $titulo, Autor: $autor, Formato: $formato, Duración: ${duracion.inMinutes} minutos';
    }

    bool equals(Multimedia other) {
        return (this.titulo == other.titulo) && (this.autor == other.autor);
    }
} void main() {

    Multimedia multimedia1 = Multimedia('Título 1', 'Autor 1', 'mp3', Duration(minutes: 5));
    print(multimedia1.toString());
    Multimedia multimedia2 = Multimedia('Título 1', 'Autor 1', 'mp4', Duration(minutes: 10));
    print(multimedia1.equals(multimedia2));
}


