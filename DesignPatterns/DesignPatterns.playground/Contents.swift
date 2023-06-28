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
 
 
 *************** Recursos ***************
 
 Aquí tienes una lista de recursos para aprender sobre patrones de diseño en Swift:
 
 1. Documentación oficial de Apple:
 - Documentación sobre patrones de diseño en Swift: https://developer.apple.com/design/human-interface-guidelines/ios/overview/themes/
 
 2. Libros:
 - "Design Patterns: Elements of Reusable Object-Oriented Software" de Erich Gamma, Richard Helm, Ralph Johnson y John Vlissides.
 - "Pro Design Patterns in Swift" de Adam Freeman.
 
 3. Tutoriales y artículos en línea:
 - RayWenderlich.com: https://www.raywenderlich.com/
 - Ofrece tutoriales y guías detalladas sobre diferentes patrones de diseño en Swift.
 - Swift by Sundell: https://www.swiftbysundell.com/
 - Un blog que cubre diversos temas de desarrollo de Swift, incluyendo patrones de diseño.
 - Hacking with Swift: https://www.hackingwithswift.com/
 - Proporciona tutoriales y proyectos prácticos que cubren diferentes patrones de diseño en Swift.
 
 4. Cursos en línea:
 - Udemy: https://www.udemy.com/
 - Plataforma que ofrece cursos en línea sobre Swift y desarrollo de iOS que incluyen lecciones sobre patrones de diseño.
 - Coursera: https://www.coursera.org/
 - Ofrece cursos especializados en desarrollo de iOS y patrones de diseño en Swift.
 
 5. Repositorios de código:
 - GitHub: https://github.com/
 - Explora repositorios de código abierto en Swift que implementan diferentes patrones de diseño.
 - Awesome-Swift: https://github.com/matteocrippa/awesome-swift
 - Una recopilación de recursos y bibliotecas útiles en Swift, que incluye ejemplos y proyectos relacionados con patrones de diseño.
 
 Recuerda que aprender y aplicar patrones de diseño requiere práctica y experiencia. Además de estudiar la teoría, es importante practicar la implementación de los patrones en proyectos reales para comprender mejor su utilidad y beneficios en el desarrollo de aplicaciones en Swift.
 
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
 - Conceptos clave: Construcción paso a paso, Configuraciones personalizadas, construcciones complejas.
 - Analogía: Piensa en un constructor de casas. Cada cliente puede tener requisitos personalizados para su hogar, como el número de habitaciones, el diseño del techo y los materiales de construcción. El constructor sigue un proceso paso a paso para construir la casa según las preferencias del cliente, sin importar cuán diferentes sean las especificaciones entre diferentes clientes.
 
 3. Factory Method (Método de Fábrica):
 - Descripción: Define una interfaz para crear objetos, pero permite a las subclases decidir qué clase concreta instanciar.
 - Ejemplo: Una fábrica de automóviles que tiene diferentes líneas de producción para fabricar automóviles de lujo, deportivos y utilitarios.
 - Conceptos clave: Creación de objetos, Polimorfismo.
 - Analogía: Supongamos que tienes una fábrica de pasteles con diferentes líneas de producción. Cada línea de producción puede hacer diferentes tipos de pasteles, como pasteles de chocolate, pasteles de frutas y pasteles de queso. La fábrica utiliza un método común para crear pasteles, pero las subclases de cada línea de producción determinan qué tipo de pastel se produce.
 
 4. Prototype (Prototipo):
 - Descripción: Permite crear copias de un objeto existente sin acoplar el código a la clase concreta del objeto.
 - Ejemplo: Un editor de gráficos que permite clonar figuras para crear nuevas instancias con propiedades similares.
 - Conceptos clave: Clonación de objetos.
 - Analogía: Imagina que estás diseñando tarjetas de felicitación personalizadas. En lugar de crear cada tarjeta desde cero, puedes hacer un prototipo inicial con elementos comunes y luego clonar el prototipo para crear nuevas tarjetas con diferentes mensajes y detalles. De esta manera, ahorras tiempo y esfuerzo al no tener que diseñar cada tarjeta desde cero.
 
 5. Singleton:
 - Descripción: Garantiza que una clase tenga una única instancia y proporciona un punto de acceso global a dicha instancia.
 - Ejemplo: Un gestor de conexiones de base de datos que debe ser único en toda la aplicación.
 - Conceptos clave: Única instancia, Acceso global.
 - Analogía: Piensa en un sistema de control de tráfico en una ciudad. Puede haber un solo controlador central que gestione y coordine todas las señales de tráfico para mantener el flujo ordenado. El controlador es una instancia única que garantiza que todas las señales de tráfico funcionen en armonía y evita que se produzcan conflictos o caos en las calles.
 
 ********** Patrones Estructurales **********
 
 6. Adapter (Adaptador):
 - Descripción: El patrón Adapter permite que dos interfaces incompatibles trabajen juntas mediante la conversión de la interfaz de una clase en otra interfaz esperada por el cliente.
 - Ejemplo: Supongamos que tienes un reproductor de música que reproduce archivos MP3, pero también tienes algunos archivos en formato WAV que no son compatibles. Puedes utilizar un adaptador que convierta la interfaz del reproductor de música para reproducir los archivos WAV.
 - Conceptos clave: Conversión de interfaz, Compatibilidad.
 - Analogía: Imagina que estás de viaje en un país extranjero y necesitas cargar tus dispositivos electrónicos. Sin embargo, los enchufes y voltajes son diferentes. Aquí es cuando utilizas un adaptador de enchufe que convierte la interfaz del enchufe extranjero en una interfaz compatible con tu dispositivo. De esta manera, puedes conectar y cargar tus dispositivos sin problemas.
 
 7. Bridge (Puente):
 - Descripción: El patrón Bridge desacopla una abstracción de su implementación, permitiendo que ambas varíen de forma independiente.
 - Ejemplo: Supongamos que tienes una abstracción llamada "Forma" que tiene varias implementaciones como "Círculo" y "Cuadrado". El patrón Bridge te permite cambiar la implementación de una forma sin afectar la abstracción ni las otras formas.
 - Conceptos clave: Desacoplamiento, Independencia.
 - Analogía: Imagina un puente que conecta dos islas. El puente actúa como una abstracción que permite el paso de personas y vehículos de una isla a otra. Sin embargo, el diseño del puente puede variar independientemente de las islas que conecta. Puedes tener un puente colgante, un puente de arco o un puente levadizo, y aún así cumplir su función de conectar las islas.
 
 8. Composite (Compuesto):
 - Descripción: El patrón Composite compone objetos en estructuras de árbol para representar jerarquías parte-todo. Permite tratar tanto a los objetos individuales como a las composiciones de manera uniforme.
 - Ejemplo: Imagina que tienes una aplicación de dibujo con diferentes elementos gráficos como círculos, cuadrados y triángulos. Puedes utilizar el patrón Composite para tratar tanto a los elementos individuales como a los grupos de elementos como una única entidad.
 - Conceptos clave: Jerarquía parte-todo, Tratamiento uniforme.
 - Analogía: Piensa en una empresa que tiene diferentes niveles jerárquicos, desde empleados individuales hasta equipos y departamentos. Puedes tratar a cada empleado como una entidad individual, pero también puedes agruparlos en equipos y departamentos y tratar a esas agrupaciones como una única entidad para realizar operaciones y tomar decisiones a nivel de equipo o departamento.
 
 9. Decorator (Decorador):
 - Descripción: El patrón Decorator permite agregar funcionalidades adicionales a un objeto de manera dinámica, envolviéndolo en objetos decoradores que implementan la misma interfaz.
 - Ejemplo: Supongamos que tienes una clase de café básica y deseas agregar opciones de decoración como leche, azúcar o crema sin afectar la clase base. Puedes utilizar el patrón Decorator para envolver el objeto de café en objetos decoradores que añadan las opciones de decoración deseada.
 - Conceptos clave: Extensibilidad, Composición dinámica.
 - Analogía: Piensa en un árbol de Navidad al que le agregas adornos decorativos como luces, guirnaldas y bolas. Puedes modificar la apariencia del árbol añadiendo o quitando diferentes adornos sin afectar la estructura básica del árbol. Del mismo modo, el patrón Decorator te permite agregar funcionalidades adicionales a un objeto sin alterar su estructura subyacente.
 
 10. Facade (Fachada):
 - Descripción: El patrón Facade proporciona una interfaz simplificada para un subsistema complejo, ocultando su complejidad y facilitando su uso.
 - Ejemplo: Supongamos que tienes un sistema de inicio de sesión que consta de múltiples componentes como autenticación, verificación de permisos y registro de actividad. Puedes utilizar el patrón Facade para crear una interfaz simplificada que encapsule todo el proceso de inicio de sesión y oculte la complejidad de los componentes internos.
 - Conceptos clave: Simplificación, Ocultamiento de complejidad.
 - Analogía: Imagina que estás utilizando un teléfono móvil con una interfaz de usuario intuitiva. Aunque detrás de esa interfaz hay múltiples componentes y procesos complejos que permiten el funcionamiento del teléfono, no necesitas conocer todos los detalles internos para realizar tareas básicas como hacer una llamada o enviar un mensaje. La interfaz del teléfono actúa como una fachada que simplifica y oculta la complejidad subyacente para facilitar su uso.
 
 11. Flyweight (Contrapeso):
 - Descripción: El patrón Flyweight optimiza el uso de objetos compartiendo eficientemente aquellos que son comunes a varias instancias, reduciendo así el consumo de memoria.
 - Ejemplo: Supongamos que tienes un editor de texto donde puedes cambiar el estilo de fuente y color de los caracteres. En lugar de almacenar toda la información de estilo en cada carácter individualmente, puedes utilizar el patrón Flyweight para compartir eficientemente los estilos comunes entre varios caracteres y reducir el consumo de memoria.
 - Conceptos clave: Compartir objetos, Ahorro de memoria.
 - Analogía: Piensa en un parque de diversiones donde tienes varios juegos que utilizan fichas o boletos para participar. En lugar de tener una ficha o boleto individual para cada juego, puedes utilizar un sistema de fichas compartidas donde varias atracciones utilizan la misma ficha. Esto reduce la cantidad total de fichas necesarias y optimiza el uso de recursos.
 
 12. Proxy:
 - Descripción: El patrón Proxy actúa como un intermediario controlando el acceso a un objeto, proporcionando funcionalidades adicionales o restricciones según sea necesario.
 - Ejemplo: Supongamos que tienes una clase que carga imágenes desde un servidor remoto. Puedes utilizar un proxy para controlar el acceso a las imágenes y proporcionar funciones como caché, carga diferida o seguridad adicional.
 - Conceptos clave: Control de acceso, Funcionalidades adicionales.
 - Analogía: Imagina que estás en una oficina y deseas tener una mayor seguridad para el acceso a ciertas áreas restringidas. Puedes utilizar un sistema de tarjetas de acceso donde necesitas mostrar una tarjeta válida en un lector para poder ingresar. El lector de tarjetas actúa como un proxy que controla el acceso a las áreas restringidas y proporciona una capa adicional de seguridad y control.
 
 ********** Patrones de Comportamiento **********
 
 13. Chain of Responsibility (Cadena de responsabilidad):
 - Descripción: El patrón Chain of Responsibility permite pasar una solicitud a través de una cadena de objetos receptores, cada uno de los cuales tiene la oportunidad de manejar la solicitud o pasarla al siguiente receptor de la cadena.
 - Ejemplo: Supongamos que tienes una aplicación de soporte al cliente donde los usuarios pueden enviar solicitudes de ayuda. Puedes utilizar el patrón Chain of Responsibility para crear una cadena de manejo de solicitudes, donde cada objeto receptor en la cadena tiene la opción de manejar la solicitud o pasarla al siguiente receptor.
 - Conceptos clave: Cadena de objetos, Manejo de solicitudes.
 - Analogía: Imagina que trabajas en un departamento de atención al cliente y recibes una consulta de un cliente. Si no puedes responder a la consulta, la reenvías a otro departamento más especializado que pueda manejarla. La consulta pasa a través de una cadena de responsabilidad hasta que es manejada adecuadamente.
 
 14. Command (Comando):
 - Descripción: El patrón Command encapsula una solicitud como un objeto, permitiendo así parametrizar clientes con diferentes solicitudes, encolar o hacer registro de solicitudes, y soportar operaciones reversibles.
 - Ejemplo: Supongamos que tienes una aplicación de procesamiento de texto donde los usuarios pueden realizar diversas acciones como copiar, pegar o deshacer una operación. Puedes utilizar el patrón Command para encapsular estas acciones como objetos de comando, lo que permite realizar operaciones reversibles y facilita el encolamiento o registro de solicitudes.
 - Conceptos clave: Encapsulamiento de solicitudes, Operaciones reversibles.
 - Analogía: Piensa en un control remoto de televisión donde cada botón del control representa una acción específica, como cambiar de canal o ajustar el volumen. Cada botón actúa como un comando encapsulado que envía la solicitud correspondiente a la televisión. El control remoto permite a los usuarios parametrizar sus acciones, encolar o deshacer operaciones.
 
 15. Iterator (Iterador):
 - Descripción: El patrón Iterator proporciona una forma de acceder secuencialmente a los elementos de una colección sin exponer su representación interna.
 - Ejemplo: Supongamos que tienes una aplicación de gestión de tareas donde almacenas una lista de tareas pendientes. Puedes utilizar el patrón Iterator para recorrer secuencialmente la lista de tareas sin acceder directamente a su estructura interna.
 - Conceptos clave: Acceso secuencial, Ocultamiento de la estructura interna.
 - Analogía: Imagina que tienes una caja de cartas con varias cartas en su interior. Puedes utilizar un índice o puntero para acceder a las cartas una por una sin tener que abrir la caja y revelar su contenido interno.
 
 16. Mediator (Mediador):
 - Descripción: El patrón Mediator define un objeto que encapsula la comunicación y la interacción entre varios objetos, reduciendo así las dependencias directas entre ellos.
 - Ejemplo: Supongamos que tienes una aplicación de chat donde varios usuarios pueden enviar mensajes entre sí. Puedes utilizar el patrón Mediator para crear un objeto mediador que controle y coordine la comunicación entre los diferentes usuarios, evitando que los usuarios tengan que comunicarse directamente entre sí.
 - Conceptos clave: Encapsulamiento de la comunicación, Reducción de dependencias.
 - Analogía: Piensa en un moderador en un debate donde varios participantes tienen que comunicarse entre sí. El moderador actúa como un mediador que controla y coordina la comunicación, evitando que los participantes se dirijan directamente unos a otros.
 
 17. Memento:
 - Descripción: El patrón Memento permite capturar y almacenar el estado interno de un objeto sin violar su encapsulación, y luego restaurar el objeto a ese estado posteriormente.
 - Ejemplo: Supongamos que tienes una aplicación de edición de texto donde los usuarios pueden realizar cambios en un documento. Puedes utilizar el patrón Memento para capturar y almacenar diferentes estados del documento, lo que permite a los usuarios deshacer o restaurar los cambios realizados.
 - Conceptos clave: Captura y almacenamiento del estado, Restauración del estado.
 - Analogía: Imagina que estás jugando un videojuego y quieres guardar tu progreso en diferentes momentos para poder regresar al punto guardado más tarde. El juego utiliza el patrón Memento para capturar y almacenar el estado actual del juego, permitiéndote restaurar ese estado en el futuro.
 
 18. Observer (Observador):
 - Descripción: El patrón Observer establece una relación de uno a muchos entre objetos, de modo que cuando un objeto cambia su estado, notifica y actualiza automáticamente a todos los objetos que dependen de él.
 - Ejemplo: Supongamos que tienes una aplicación de noticias donde los usuarios pueden suscribirse a diferentes categorías de noticias. Puedes utilizar el patrón Observer para establecer una relación entre los objetos de categoría de noticias y los objetos de suscriptor, de modo que cuando se publique una nueva noticia en una categoría, se notifique automáticamente a todos los suscriptores de esa categoría.
 - Conceptos clave: Relación uno a muchos, Notificación y actualización automática.
 - Analogía: Piensa en un sistema de alertas de emergencia en una comunidad. Cuando ocurre una situación de emergencia, el sistema envía automáticamente alertas a todos los residentes que se hayan suscrito a las alertas. Los residentes actúan como observadores que reciben notificaciones y toman las medidas necesarias en función de la información proporcionada.
 
 19. State (Estado):
 - Descripción: El patrón State permite que un objeto altere su comportamiento cuando su estado interno cambia. Permite el encapsulamiento de diferentes comportamientos en clases separadas y facilita la adición de nuevos estados sin modificar el código existente.
 - Ejemplo: Supongamos que tienes una aplicación de reproducción de música donde un reproductor puede estar en diferentes estados, como reproduciendo, en pausa o detenido. Puedes utilizar el patrón State para representar cada estado como una clase separada y permitir que el reproductor cambie su comportamiento según el estado actual.
 - Conceptos clave: Alteración de comportamiento, Encapsulamiento de estados.
 - Analogía: Imagina un semáforo de tráfico que cambia su comportamiento según el estado actual. Cuando el semáforo está en verde, permite que los vehículos avancen; cuando está en rojo, detiene el tráfico. El semáforo altera su comportamiento según el estado actual, sin necesidad de modificar su estructura física.
 
 20. Strategy (Estrategia):
 - Descripción: El patrón Strategy permite encapsular diferentes algoritmos en clases separadas, permitiendo que los algoritmos sean intercambiables dentro de un contexto. Esto facilita la adición o modificación de algoritmos sin afectar al contexto que los utiliza.
 - Ejemplo: Supongamos que tienes una aplicación de navegación donde los usuarios pueden seleccionar diferentes modos de transporte, como caminar, conducir o tomar el transporte público. Puedes utilizar el patrón Strategy para representar cada modo de transporte como una estrategia separada y permitir que el usuario elija la estrategia deseada en el contexto de la navegación.
 - Conceptos clave: Encapsulamiento de algoritmos, Intercambiabilidad de estrategias.
 - Analogía: Piensa en una caja de herramientas donde tienes diferentes herramientas para diferentes tareas. Cuando necesitas realizar una tarea específica, seleccionas la herramienta adecuada para esa tarea. Cada herramienta representa una estrategia y puedes intercambiarlas según la tarea que estés realizando.
 
 21. Template (Plantilla):
 - Descripción: El patrón Template define el esqueleto de un algoritmo en una clase base y permite que las subclases implementen ciertos pasos del algoritmo según sea necesario. Permite la reutilización del código común mientras permite que las subclases personalicen partes específicas del algoritmo.
 - Ejemplo: Supongamos que tienes una aplicación de generación de informes donde necesitas generar informes de diferentes tipos, como informes de ventas, informes financieros, informes de inventario, etc. Puedes utilizar el patrón Template para definir un esqueleto de generación de informes en una clase base y permitir que las subclases implementen los detalles específicos de cada tipo de informe.
 - Conceptos clave: Esqueleto de algoritmo, Personalización de pasos.
 - Analogía: Imagina una receta de cocina donde tienes una serie de pasos generales a seguir, pero puedes personalizar ciertos ingredientes o técnicas según tus preferencias. La receta establece el esqueleto del proceso de cocina, pero te permite hacer ajustes y personalizaciones en función de tus necesidades.
 
 22. Visitor:
 - Descripción: El patrón Visitor permite separar los algoritmos de las clases en las que operan, permitiendo agregar nuevos algoritmos sin modificar las clases existentes. Permite realizar operaciones en elementos de una estructura de objetos sin cambiar su estructura interna.
 - Ejemplo: Supongamos que tienes una aplicación de dibujo donde tienes diferentes formas geométricas, como círculos, cuadrados, triángulos, etc. Puedes utilizar el patrón Visitor para definir un visitante que pueda realizar diferentes operaciones en cada forma, como calcular el área, dibujar el contorno, etc., sin modificar la estructura interna de las formas.
 - Conceptos clave: Separación de algoritmos, Operaciones en objetos sin modificar su estructura.
 - Analogía: Piensa en un inspector de seguridad que realiza diferentes verificaciones en diferentes tipos de edificios, como inspeccionar la estructura, revisar los sistemas de seguridad, etc. El inspector de seguridad es capaz de realizar diferentes operaciones en cada tipo de edificio sin cambiar la estructura interna del edificio.
 
 */
