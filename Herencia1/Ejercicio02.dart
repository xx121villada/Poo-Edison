/*La secretaria del área técnica encarga de los horarios clase, en este periodo solicita un 
software que permita automatizar la generación de dichos horarios a partir de la 
siguiente información:
• Las asignaturas por curso.
• Las asignaturas por docente.
• Las aulas disponibles para clases.
De cada docente hay que guardar: cédula, nombre, sección departamental y area. 
Cada departamento tiene un nombre. Las asignaturas tienen un nombre y un número 
de créditos, que indica el número de horas de docencia a la semana (1 crédito equivale 
a 3 horas).
Hay dos tipos de asignaturas: las que son teóricas, y las que son prácticas. Igualmente 
hay dos tipos de aulas: para clases de teoría y para clases de laboratorio (asignaturas 
prácticas). En general, las aulas tienen un nombre, una ubicación y una capacidad. De 
las aulas de teoría interesa conocer el tipo de pupitre (abatible o fijo), y de las de 
prácticas se quiere saber si disponen de altavoces y cámara de videoconferencia. Los 
posibles cursos son cinco, de primero a quinto, pero interesa que el sistema sea abierto 
para poder evolucionar a situaciones con un número de cursos mayor o menor. Hay 
que tener en cuenta que una asignatura sólo puede formar parte de un único curso. Los 
días de clase van de lunes a viernes, y las horas posibles son de 8:30 a 14:30 y de 15:30 
a 21:30. Las asignaturas se imparten en bloques de 1 hora.Los docentes deben 
introducir en el sistema la información de las asignaturas que imparten. También 
deben elegir los tres días para dictar clase. Este dato es utilizado por la secretaria para 
generar automáticamente los horarios. De esto, y de la introducción del resto de 
informaciones necesarias, también se encarga la secretaria.
El sistema también debe permitir la consulta de horarios por parte de los alumnos.*/

class Persona {
    String cedula;
    String nombre;
    String seccionDepartamental;
    String area;

    Persona(this.cedula, this.nombre, this.seccionDepartamental, this.area);
}

class Docente extends Persona {
    List<Asignatura> asignaturas;

    Docente(String cedula, String nombre, String seccionDepartamental, String area)
        : asignaturas = [],
            super(cedula, nombre, seccionDepartamental, area);

    void agregarAsignatura(Asignatura asignatura) {
        asignaturas.add(asignatura);
    }
}

class Asignatura {
    String nombre;
    int creditos;
    bool esTeorica;

    Asignatura(this.nombre, this.creditos, this.esTeorica);
}

class Aula {
    String nombre;
    String ubicacion;
    int capacidad;
    String tipo; // 'teoria' o 'practica'

    Aula(this.nombre, this.ubicacion, this.capacidad, this.tipo);
}

class AulaTeoria extends Aula {
    String tipoPupitre; // 'abatible' o 'fijo'

    AulaTeoria(String nombre, String ubicacion, int capacidad, this.tipoPupitre)
        : super(nombre, ubicacion, capacidad, 'teoria');
}

class AulaPractica extends Aula {
    bool tieneAltavoces;
    bool tieneCamaraVideoconferencia;

    AulaPractica(String nombre, String ubicacion, int capacidad, this.tieneAltavoces, this.tieneCamaraVideoconferencia)
        : super(nombre, ubicacion, capacidad, 'practica');
}

// Lógica para generar horarios
void generarHorarios() {
    
}

// Lógica para permitir consultas de horarios por parte de los alumnos
void consultarHorarios() {

}

// Ejemplo de uso
void main() {
    // Crear docentes y asignaturas
    Docente docente1 = Docente('123456789', 'Ana García', 'Matemáticas', 'Ciencias Exactas');
    Asignatura algebra = Asignatura('Álgebra', 3, true);
    docente1.agregarAsignatura(algebra);

    // Crear aulas
    Aula aula1 = AulaTeoria('Aula 101', 'Edificio Principal', 30, 'fijo');
    Aula aula2 = AulaPractica('Laboratorio 202', 'Edificio de Ciencias', 20, true, true);

    // Generar horarios y permitir consultas
    generarHorarios();
    consultarHorarios();
}

