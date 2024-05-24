/*Hacer un aplicativo para el SENA con la información tanto de aprendices como 
instructores se debe conocer: Cédula, nombres, edad y sexo; adicional de aprendices, 
hay que registrar la calificación (entre 0 y 10) y del instructor la materia asignada. Las 
asignaturas ofertadas son: Programación Orientada a Objetos, Estructura de datos, 
Estructuras discretas. Los aprendices tendrán el 70% de posibles faltas máximas, por 
tanto, si faltan a clase, quedara registrado. El Instructor tiene el 20% para no 
encontrarse disponible por reuniones, bajas, etc.
El aula debe registrarse con: un identificador numérico, el número máximo de 
aprendices y para que asignatura esta destinada. Agregue al menos dos atributos más 
que analice pertinentes. En un aula, para que se pueda dar clase se requiere de la 
disponibilidad del instructor designado para dicha asignatura, y al menos de %60 de 
alumnos presentes. Cree un aula de alumnos y un instructor y determine si puede 
darse clase, teniendo en cuenta las condiciones anteriores. Si se puede dar clase 
mostrar cuantos alumnos y alumnas (por separado) están aprobados de momento 
(utilice el mínimo establecido).*/

class Persona {
    String cedula;
    String nombres;
    int edad;
    String sexo;


    Persona(this.cedula, this.nombres, this.edad, this.sexo);
    }

    class Aprendiz extends Persona {
    double calificacion;
    int faltas = 0;
    static const int faltasMaximas = 7; // 70% de 10 faltas posibles

    Aprendiz(String cedula, String nombres, int edad, String sexo, this.calificacion)
        : super(cedula, nombres, edad, sexo);

    bool estaAprobado() {
        return calificacion >= 6.0; // Suponiendo que 6 es la nota mínima para aprobar
    }

    void registrarFalta() {
        faltas++;
    }
    }

    class Instructor extends Persona {


    String materiaAsignada;
    int inasistencias = 0;
    static const int inasistenciasMaximas = 2; // 20% de 10 días posibles

    Instructor(String cedula, String nombres, int edad, String sexo, this.materiaAsignada)
        : super(cedula, nombres, edad, sexo);

    void registrarInasistencia() {
        inasistencias++;
    }
    }

    class Aula {
    int identificador;
    int maximoAprendices;
    String asignatura;
    Instructor? instructor;
    List<Aprendiz> aprendices = [];

    Aula(this.identificador, this.maximoAprendices, this.asignatura,this.instructor);

    bool sePuedeDarClase() {
        if (instructor == null || instructor!.inasistencias > Instructor.inasistenciasMaximas) {
        return false;
        }
        int presentes = 0;
        for (var aprendiz in aprendices) {
        if (aprendiz.faltas <= Aprendiz.faltasMaximas) {
            presentes++;
        }
        }
        return presentes >= (maximoAprendices * 0.6).toInt();
    }

    void mostrarAprobados() {
        int aprobadosM = 0;
        int aprobadosF = 0;
        for (var aprendiz in aprendices) {
        if (aprendiz.estaAprobado()) {
            if (aprendiz.sexo == 'M') {
            aprobadosM++;
            } else {
            aprobadosF++;
            }
        }
        }
        print('Alumnos aprobados: $aprobadosM');
        print('Alumnas aprobadas: $aprobadosF');
    }

    void agregarAprendiz(Aprendiz aprendiz) {
        aprendices.add(aprendiz);
    }
}

void main() {
    // Crear un aula con un instructor y aprendices
    Instructor instructor = Instructor('123', 'Juan Perez', 40, 'M', 'Programación Orientada a Objetos');
    Aula aula = Aula(1, 60, 'Programación Orientada a Objetos',instructor);
    aula.instructor = instructor;

    // Agregar aprendices al aula
    Aprendiz aprendiz1 = Aprendiz('456', 'Ana Gomez', 20, 'F', 8.5);
    Aprendiz aprendiz2 = Aprendiz('789', 'Luis Martínez', 22, 'M', 7.0);
    aula.agregarAprendiz(aprendiz1);
    aula.agregarAprendiz(aprendiz2);
    // ... agregar más aprendices según sea necesario

    // Verificar si se puede dar clase y mostrar aprobados
    if (aula.sePuedeDarClase()) {
        print('Se puede dar clase.');
        aula.mostrarAprobados();
    } else {
        print('No se puede dar clase.');
    }
}


