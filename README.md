# Nombre de Repositorio: App_Duplicated_Screen
-Vision: Desarrollo de una aplicacion para practica personal.

# Descripcion de Trabajo
En este caso el principal repositorio es para tener un buen uso de estas herramientas con la cual estaremos interactuando a diario en un futuro
por esa razon y otras el objetivo en este caso del proyecto es practicar y hacerlo lo mejor posible para ir ganando exoeriencia y al mismo tiempo
ir practicando para cuando ya estemos en situaciones reales...

# Herramientas utilizadas
1- Flutter
2- Dart
3- Pinterest
4- Flutter Documentation
5- Youtube

# Razones
En este caso los lenguajes implementados literalmente se sabe para que es, pero mas que todo es para la creacion de los widgets, en resumen para la
estructuracion del proyecto. 

Mientras tanto pinterest se utilizo para tomar referencias o el modelo a duplicar de manera practica para desarrollar habilidades, en cuando youtube 
para ver implementacion de codigo, entender mejor algunos conceptos y buscar widgets especificos con ejemplo visual. Y finalmente documentacion de 
flutter para saber como hacer cada widget y como implmentarlo de manera correcta, al mismo tiempo aprendiendo como hacerlo sin necesidad de solo ver y hacerlo.

# Objetivos
- Adquirir practica con estos lenguajes
- Adquirir Conocimientos y habilidades
- Obtener Experiencia en creacion de proyectos
- Mejorar orden de informacion y procesos en repositorios

# Dificultades 
- Estructuracion de Cofigo:
En este caso hago mencion a esto ya que se dificulto de una manera muy problematica el no tener practica en codigo de este lenguaje
con eso me refiero a saber el orden de las opciones para ir haciendo los widgets, no se si me explico pero mostrare un ejemplo:

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

       body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Ubicación
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor:
                        const Color.fromARGB(255, 238, 237, 237),
                    child: const Icon(Icons.location_on_outlined),
                  ),
En este caso donde cuadrie fue a la hora de usar children, ya que me habia confundido lo de los ejes, no puse mucha atencion a eso en clase y bueno me perdi, 
de igual manera indague pero no le entendia, ni con ejemplos. pero al hacer una busqueda en documentaciones asi sobre eso le pude ir entendiendo de la manera que es
aunque tengociertas dudas que igual le preguntare. 

- Metodos:
Lo que se me dificulto aprender aqui fue mas que todo el significado de symetric y edgeinsets aunque en otra oarte sale ya generalizado con un valor en general que es 20 dentro de
un contenedor, le podriamos llamar asi. y bueno tambien me confundio un poco lo de _category pero indagando pude entenderle.

// Categorías
    static Widget _category(String text, bool selected) {
    return Container(
      margin: const EdgeInsets.only(right: 7), // Espaciado entre las catgeorias

      padding: const EdgeInsets.symmetric( // tama;o del espacio osea dentro del contenedor
        horizontal: 12, 
        vertical: 8,
      ),

      decoration: BoxDecoration(
        color: selected ? Colors.green : Colors.white, // Recordar cambiar con el original, paleta igual

        borderRadius: BorderRadius.circular(22),

        border: Border.all(
          color: Colors.grey.shade400,
        ),
      ),

      child: Text(
        text,
        style: TextStyle(
          color: selected ? Colors.white : Colors.black, // Cuando selecionan se pone blanco y cuando no se pone negro...
        ),
      ),
    );
  }

  - Git y GitHub:
Aqui tengo todavia un problema en las ramas, especificamete la master y una que segunda que se creo que fue la main, cuando inicie el repositorio iba a trabajar sin cambiar el nombre a la rama
osea siempre iba a tener un master, pero despues se me fue la onda y hice un push main, y pues ocmo que se inicializo otra rama, me parecio raro ya que no puede crearse una rama de esa manera
bueno, al menos hasta donde yo se. y pues por ese mismo problema estuve haciendo pullrequest y merge de main a master pa q salieran los commits, le agradeceria si me puede explicar porque paso
o como solucionarlo.

# Derechos reservados a DJDA
<img width="500" height="500" alt="DJ_2_Logo-removebg-preview" src="https://github.com/user-attachments/assets/90a3ab05-62fc-44d2-8047-1ba164a4c4d5" />
