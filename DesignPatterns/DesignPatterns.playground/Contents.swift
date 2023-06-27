/*
 
 Design Patterns in Swift
 
 Los patrones de diseño en Swift son soluciones reutilizables y probadas que abordan problemas comunes en el diseño y desarrollo de software. Son pautas y enfoques que se aplican al escribir código en el lenguaje de programación Swift para construir sistemas más estructurados, mantenibles y flexibles.
 
 En Swift, los patrones de diseño se implementan utilizando características del lenguaje como protocolos, extensiones, clases, estructuras y funciones. Estos patrones proporcionan un marco para organizar y comunicar las interacciones entre los diferentes componentes de una aplicación y ayudan a separar las responsabilidades de manera clara y eficiente.
 
 Algunos de los patrones de diseño comunes que se pueden implementar en Swift incluyen:
 
 1. Patrones de creación: Estos patrones se centran en la creación de objetos de manera flexible y reutilizable. Algunos ejemplos son el patrón Abstract Factory, Builder, Factory Method, Prototype y Singleton.
 
 2. Patrones estructurales: Estos patrones se ocupan de la composición de clases y objetos para formar estructuras más complejas y flexibles. Algunos ejemplos son Adapter, Bridge, Composite, Decorator, Facade, Flyweight y Proxy.
 
 3. Patrones de comportamiento: Estos patrones se enfocan en la comunicación y el intercambio de información entre objetos. Ayudan a definir cómo los objetos interactúan y se comportan en diferentes situaciones. Algunos ejemplos son Chain of Responsibility, Command, Iterator, Mediator, Memento, Observer, State, Strategy, Template y Visitor.
 
 La implementación de patrones de diseño en Swift permite la reutilización de código, promueve la separación de preocupaciones, mejora la legibilidad y mantenibilidad del código, y facilita la escalabilidad y la adaptabilidad del sistema.
 
 Es importante tener en cuenta que los patrones de diseño son herramientas poderosas, pero deben aplicarse de manera adecuada y en función de las necesidades específicas de cada proyecto. No todos los patrones son apropiados para todas las situaciones, y es importante comprender los principios subyacentes de cada patrón y cómo se relacionan con los requisitos del sistema.
 
 ***************************************************
 
 Aquí tienes una descripción de cada patrón de diseño junto con un ejemplo fácil de la vida real para comprenderlos y algunos conceptos clave asociados:
 
 ********** Patrones de Creación **********
 
 1. Abstract Factory (Fábrica Abstracta):
 - Descripción: Proporciona una interfaz para crear familias de objetos relacionados sin especificar las clases concretas.
 - Ejemplo: Imagina una fábrica de muebles que produce diferentes estilos de muebles, como moderno, victoriano y clásico. Cada estilo tiene su propia línea de productos, como mesas, sillas y sofás.
 - Conceptos clave: Productos, Variantes, Familias de objetos.
 - Analogía: Imagina que estás visitando un restaurante que ofrece diferentes estilos de cocina, como italiana, mexicana y china. Cada estilo tiene su propia fábrica de ingredientes y métodos de cocina específicos. El restaurante utiliza una interfaz común para pedir platos sin preocuparse por los detalles de cómo se preparan los ingredientes en cada fábrica.
 
 2. Builder (Constructor):
 - Descripción: Permite construir objetos complejos paso a paso. Se utiliza cuando hay muchas formas posibles de construir un objeto.
 - Ejemplo: Construcción de una casa personalizada. El proceso de construcción implica decisiones sobre características como el número de habitaciones, el tipo de techo, la presencia de un garaje, etc.
 - Conceptos clave: Construcción paso a paso, Configuraciones personalizadas.
 - Analogía: Piensa en un constructor de casas. Cada cliente puede tener requisitos personalizados para su hogar, como el número de habitaciones, el diseño del techo y los materiales de construcción. El constructor sigue un proceso paso a paso para construir la casa según las preferencias del cliente, sin importar cuán diferentes sean las especificaciones entre diferentes clientes.
 
 3. Factory Method (Método de Fábrica):
 - Descripción: Define una interfaz para crear objetos, pero permite a las subclases decidir qué clase concreta instanciar.
 - Ejemplo: Una fábrica de automóviles que tiene diferentes líneas de producción para fabricar automóviles de lujo, deportivos y utilitarios.
 - Conceptos clave: Creación de objetos, Polimorfismo.
 - Analogía: Supongamos que tienes una fábrica de pasteles con diferentes líneas de producción. Cada línea de producción puede hacer diferentes tipos de pasteles, como pasteles de chocolate, pasteles de frutas y pasteles de queso. La fábrica utiliza un método común para crear pasteles, pero las subclases de cada línea de producción determinan qué tipo de pastel se produce.
 
 4. Prototype (Prototipo):
 - Descripción: Permite crear copias de un objeto existente sin acoplar el código a la clase concreta del objeto.
 - Ejemplo: Un editor de gráficos que permite clonar figuras para crear nuevas instancias con propiedades similares.
 - Conceptos clave: Clonación, Copias de objetos.
 - Analogía: Imagina que estás diseñando tarjetas de felicitación personalizadas. En lugar de crear cada tarjeta desde cero, puedes hacer un prototipo inicial con elementos comunes y luego clonar el prototipo para crear nuevas tarjetas con diferentes mensajes y detalles. De esta manera, ahorras tiempo y esfuerzo al no tener que diseñar cada tarjeta desde cero.
 
 5. Singleton:
 - Descripción: Garantiza que una clase tenga una única instancia y proporciona un punto de acceso global a dicha instancia.
 - Ejemplo: Un gestor de conexiones de base de datos que debe ser único en toda la aplicación.
 - Conceptos clave: Única instancia, Acceso global.
 - Analogía: Piensa en un sistema de control de tráfico en una ciudad. Puede haber un solo controlador central que gestione y coordine todas las señales de tráfico para mantener el flujo ordenado. El controlador es una instancia única que garantiza que todas las señales de tráfico funcionen en armonía y evita que se produzcan conflictos o caos en las calles.

 ********** Patrones de Creación **********
 
 6. Adapter:
 - Descripción: El patrón Adapter permite que dos interfaces incompatibles trabajen juntas mediante la conversión de la interfaz de una clase en otra interfaz esperada por el cliente.
 - Ejemplo: Supongamos que tienes un reproductor de música que reproduce archivos MP3, pero también tienes algunos archivos en formato WAV que no son compatibles. Puedes utilizar un adaptador que convierta la interfaz del reproductor de música para reproducir los archivos WAV.
 - Conceptos clave: Conversión de interfaz, Compatibilidad.
 - Analogía: Imagina que estás de viaje en un país extranjero y necesitas cargar tus dispositivos electrónicos. Sin embargo, los enchufes y voltajes son diferentes. Aquí es cuando utilizas un adaptador de enchufe que convierte la interfaz del enchufe extranjero en una interfaz compatible con tu dispositivo. De esta manera, puedes conectar y cargar tus dispositivos sin problemas.

 7. Bridge:
 - Descripción: El patrón Bridge desacopla una abstracción de su implementación, permitiendo que ambas varíen de forma independiente.
 - Ejemplo: Supongamos que tienes una abstracción llamada "Forma" que tiene varias implementaciones como "Círculo" y "Cuadrado". El patrón Bridge te permite cambiar la implementación de una forma sin afectar la abstracción ni las otras formas.
 - Conceptos clave: Desacoplamiento, Independencia.
 - Analogía: Imagina un puente que conecta dos islas. El puente actúa como una abstracción que permite el paso de personas y vehículos de una isla a otra. Sin embargo, el diseño del puente puede variar independientemente de las islas que conecta. Puedes tener un puente colgante, un puente de arco o un puente levadizo, y aún así cumplir su función de conectar las islas.

 8. Composite:
 - Descripción: El patrón Composite compone objetos en estructuras de árbol para representar jerarquías parte-todo. Permite tratar tanto a los objetos individuales como a las composiciones de manera uniforme.
 - Ejemplo: Imagina que tienes una aplicación de dibujo con diferentes elementos gráficos como círculos, cuadrados y triángulos. Puedes utilizar el patrón Composite para tratar tanto a los elementos individuales como a los grupos de elementos como una única entidad.
 - Conceptos clave: Jerarquía parte-todo, Tratamiento uniforme.
 - Analogía: Piensa en una empresa que tiene diferentes niveles jerárquicos, desde empleados individuales hasta equipos y departamentos. Puedes tratar a cada empleado como una entidad individual, pero también puedes agruparlos en equipos y departamentos y tratar a esas agrupaciones como una única entidad para realizar operaciones y tomar decisiones a nivel de equipo o departamento.

 9. Decorator:
 - Descripción: El patrón Decorator permite agregar funcionalidades adicionales a un objeto de manera dinámica, envolviéndolo en objetos decoradores que implementan la misma interfaz.
 - Ejemplo: Supongamos que tienes una clase de café básica y deseas agregar opciones de decoración como leche, azúcar o crema sin

  afectar la clase base. Puedes utilizar el patrón Decorator para envolver el objeto de café en objetos decoradores que añadan las opciones de decoración deseada.
 - Conceptos clave: Extensibilidad, Composición dinámica.
 - Analogía: Piensa en un árbol de Navidad al que le agregas adornos decorativos como luces, guirnaldas y bolas. Puedes modificar la apariencia del árbol añadiendo o quitando diferentes adornos sin afectar la estructura básica del árbol. Del mismo modo, el patrón Decorator te permite agregar funcionalidades adicionales a un objeto sin alterar su estructura subyacente.

 10. Facade:
 - Descripción: El patrón Facade proporciona una interfaz simplificada para un subsistema complejo, ocultando su complejidad y facilitando su uso.
 - Ejemplo: Supongamos que tienes un sistema de inicio de sesión que consta de múltiples componentes como autenticación, verificación de permisos y registro de actividad. Puedes utilizar el patrón Facade para crear una interfaz simplificada que encapsule todo el proceso de inicio de sesión y oculte la complejidad de los componentes internos.
 - Conceptos clave: Simplificación, Ocultamiento de complejidad.
 - Analogía: Imagina que estás utilizando un teléfono móvil con una interfaz de usuario intuitiva. Aunque detrás de esa interfaz hay múltiples componentes y procesos complejos que permiten el funcionamiento del teléfono, no necesitas conocer todos los detalles internos para realizar tareas básicas como hacer una llamada o enviar un mensaje. La interfaz del teléfono actúa como una fachada que simplifica y oculta la complejidad subyacente para facilitar su uso.

 11. Flyweight:
 - Descripción: El patrón Flyweight optimiza el uso de objetos compartiendo eficientemente aquellos que son comunes a varias instancias, reduciendo así el consumo de memoria.
 - Ejemplo: Supongamos que tienes un editor de texto donde puedes cambiar el estilo de fuente y color de los caracteres. En lugar de almacenar toda la información de estilo en cada carácter individualmente, puedes utilizar el patrón Flyweight para compartir eficientemente los estilos comunes entre varios caracteres y reducir el consumo de memoria.
 - Conceptos clave: Compartir objetos, Ahorro de memoria.
 - Analogía: Piensa en un parque de diversiones donde tienes varios juegos que utilizan fichas o boletos para participar. En lugar de tener una ficha o boleto individual para cada juego, puedes utilizar un sistema de fichas compartidas donde varias atracciones utilizan la misma ficha. Esto reduce la cantidad total de fichas necesarias y optimiza el uso de recursos.

 12. Proxy:
 - Descripción: El patrón Proxy actúa como un intermediario controlando el acceso a un objeto, proporcionando funcionalidades adicionales o restricciones según sea necesario.
 - Ejemplo: Supongamos que tienes una clase que carga imágenes desde un servidor remoto. Puedes utilizar un proxy para controlar el acceso a las imágenes y proporcionar funciones como caché, carga diferida o seguridad adicional.
 - Conceptos clave: Control de acceso, Funcionalidades adicionales.
 - Analogía: Imagina que estás en una oficina y deseas tener una mayor seguridad para el acceso a ciertas áreas restringidas. Puedes utilizar un sistema de tarjetas de acceso donde necesitas mostrar una tarjeta válida en un lector para poder ingresar. El lector de tarjetas actúa como un proxy que controla el acceso a las áreas restringidas y proporciona una capa adicional de seguridad y control.
 
 Patrones de arquitectura
 Comunicación entre módulos
 
 
 Todos tienen un Model por debajo - Implícito
 
 +Complejo +Testeo
 
 MVC -> Model "ViewController" - Apps pequeñas
 - Massive ViewController
 
 MVVM -> Model - View - ViewModel
 - El usuario mira la vista, pero interactúa con el ViewModel, programación reactiva muy buena
 
 VIPER -> View - Interactor(lógica del negocio) - "Presenter (se suele omitir, y es necesario en View Complejas)" - Router (BUILDER)
 
 RIBs (es un lego) -> Router - Interactor - Builder
 - Router - desde donde puede venir o instanciarse
 - El
