/*
 
 **************** Niveles de Acceso *****************
 
 En Swift, los niveles de acceso se utilizan para controlar la visibilidad y el alcance de las propiedades, métodos, clases, estructuras y otros elementos dentro de un módulo. Aquí están los diferentes niveles de acceso disponibles en Swift:
 
 1. Private:
 - Descripción: El acceso está limitado al ámbito de la definición en la que se declara.
 - Características clave:
 - Solo es visible y accesible desde el mismo archivo de origen.
 - No es accesible desde otros archivos dentro del mismo módulo o desde módulos externos.
 
 2. File Private:
 - Descripción: El acceso está limitado al archivo de origen en el que se declara.
 - Características clave:
 - Solo es visible y accesible desde el mismo archivo de origen.
 - No es accesible desde otros archivos dentro del mismo módulo o desde módulos externos.
 
 3. Internal:
 - Descripción: Es el nivel de acceso predeterminado cuando no se especifica ningún nivel de acceso explícito.
 - Características clave:
 - Es visible y accesible desde cualquier archivo dentro del mismo módulo.
 - No es accesible desde módulos externos.
 
 4. Public:
 - Descripción: Es visible y accesible desde cualquier archivo dentro del mismo módulo y desde módulos externos.
 - Características clave:
 - Puede ser utilizado por otros módulos.
 - Puede ser heredado y sobreescrito en módulos externos.
 
 5. Open:
 - Descripción: Es el nivel de acceso más alto y permite que los elementos sean heredados y sobreescritos en módulos externos.
 - Características clave:
 - Proporciona el nivel de acceso más amplio.
 - Puede ser utilizado y modificado en módulos externos.
 
 Es importante elegir el nivel de acceso adecuado según las necesidades de tu código. Utilizar un nivel de acceso más restrictivo puede ayudar a encapsular y proteger mejor la implementación interna de tus componentes, mientras que un nivel de acceso más amplio puede permitir una mayor interoperabilidad entre módulos.
 */

// Clase con nivel de acceso "open"
open class OpenClass {
    open var openProperty = "Open Property" // Propiedad con nivel de acceso "open"
    public var publicProperty = "Public Property" // Propiedad con nivel de acceso "public"
    internal var internalProperty = "Internal Property" // Propiedad con nivel de acceso "internal"
    fileprivate var filePrivateProperty = "FilePrivate Property" // Propiedad con nivel de acceso "fileprivate"
    private var privateProperty = "Private Property" // Propiedad con nivel de acceso "private"
}

// Clase con nivel de acceso "public"
public class PublicClass {
    public var publicProperty = "Public Property"
    internal var internalProperty = "Internal Property"
    fileprivate var filePrivateProperty = "FilePrivate Property"
    private var privateProperty = "Private Property"
}

// Clase con nivel de acceso "internal" (por defecto si no se especifica)
class InternalClass {
    public var publicProperty = "Public Property"
    internal var internalProperty = "Internal Property"
    fileprivate var filePrivateProperty = "FilePrivate Property"
    private var privateProperty = "Private Property"
}

// Clase con nivel de acceso "fileprivate"
fileprivate class FilePrivateClass {
    public var publicProperty = "Public Property"
    internal var internalProperty = "Internal Property"
    fileprivate var filePrivateProperty = "FilePrivate Property"
    private var privateProperty = "Private Property"
}

// Clase con nivel de acceso "private"
private class PrivateClass {
    public var publicProperty = "Public Property"
    internal var internalProperty = "Internal Property"
    fileprivate var filePrivateProperty = "FilePrivate Property"
    private var privateProperty = "Private Property"
}

/*
 Es importante recordar que un miembro no puede tener un nivel de acceso más amplio que su contenedor. Por ejemplo, no puedes tener una propiedad public en una clase private.
 
 Además, vale la pena mencionar que los niveles de acceso open y public se diferencian en que open permite que la clase sea heredada y que sus métodos sean sobrescritos por otras clases fuera del módulo en el que se definen, mientras que public no lo permite.
 
 **************** Uso de la palabra FINAL *****************
 
 En Swift, la palabra clave `final` se utiliza para marcar una clase, método o propiedad como final, lo que significa que no se puede heredar, sobrescribir o modificar en las clases derivadas. Aquí está el uso y la importancia de la palabra `final` en Swift:
 
 1. Evita la herencia no deseada: Al marcar una clase como final, se previene la posibilidad de que otras clases hereden de ella. Esto es útil cuando quieres asegurarte de que una clase no sea extendida o modificada de manera inapropiada, manteniendo así el control sobre su comportamiento y evitando errores o comportamientos inesperados.
 
 2. Mejora el rendimiento y el tiempo de compilación: Cuando una clase, método o propiedad se marca como final, el compilador de Swift puede realizar optimizaciones adicionales debido a que no necesita considerar la posibilidad de herencia o sobrescritura. Esto puede resultar en una mejor optimización y un tiempo de compilación más rápido.
 
 3. Fomenta el diseño seguro y la encapsulación: Al marcar ciertas clases, métodos o propiedades como final, puedes asegurarte de que su comportamiento y estado se mantengan intactos y no sean modificados de manera no deseada. Esto ayuda a mantener la integridad del diseño y la encapsulación de tus componentes.
 
 Siempre marcar una clase, método o propiedad como final no es una buena práctica en todos los casos. Debe considerarse cuidadosamente si se requiere o no la posibilidad de herencia o sobrescritura en el diseño de tu código. Si no se necesita herencia o sobrescritura, es recomendable marcar las clases, métodos o propiedades como final para evitar errores y garantizar un diseño más seguro. Sin embargo, si se desea permitir la herencia o sobrescritura en el futuro, se puede omitir el uso de la palabra final inicialmente y agregarla posteriormente según sea necesario.
 
 En resumen, la palabra `final` en Swift es importante para controlar la herencia y sobrescritura en tus clases, métodos y propiedades. Su uso adecuado puede mejorar el rendimiento, el tiempo de compilación y promover un diseño seguro y encapsulado. Sin embargo, es importante evaluar cuidadosamente si se requiere o no en función de los requisitos del diseño y la flexibilidad futura del código.
 */

// Clase final - No puede ser heredada
final class FinalClass {
    var nonFinalProperty = "Non Final Property"
    
    final var finalProperty = "Final Property" // Propiedad final - No puede ser sobrescrita
    var property = "Property"
    
    final func finalMethod() { // Método final - No puede ser sobrescrito
        print("Final Method in Final Class")
    }
    
    func nonFinalMethod() {
        print("Non Final Method in Final Class")
    }
}

class NonFinalClass {
    final var finalProperty = "Final Property" // Propiedad final - No puede ser sobrescrita
    var nonFinalProperty = "Non Final Property"
    
    final func finalMethod() { // Método final - No puede ser sobrescrito
        print("Final Method in Non Final Class")
    }
    
    func nonFinalMethod() {
        print("Non Final Method in Non Final Class")
    }
}

// Error: Las clases marcadas como 'final' no pueden ser heredadas
class ChildClass: FinalClass {}

// Error: Las propiedades y métodos marcados como 'final' no pueden ser sobrescritos
class ChildNonFinalClass: NonFinalClass {
    override var finalProperty: String {
        didSet {
            print("Trying to override final property")
        }
    }
    
    override func finalMethod() {
        print("Trying to override final method")
    }
}

/*
 En el ejemplo anterior, verás que la clase FinalClass está marcada como final, lo que significa que ninguna otra clase puede heredar de ella. De manera similar, la propiedad finalProperty y el método finalMethod en la clase NonFinalClass también están marcados como final, por lo que no pueden ser sobrescritos por las clases que heredan de NonFinalClass.
 
 Los intentos de heredar de una clase final o de sobrescribir una propiedad o método final darán lugar a errores de compilación. Estos son ejemplos de cómo la palabra clave final puede utilizarse para controlar la herencia y la sobrescritura en Swift.
 
 **************** Preferencia del isEmpty frente al .count *****************
 
 La ventaja de utilizar `isEmpty` en lugar de `count == 0` en Swift es principalmente una cuestión de claridad y legibilidad del código. Aquí están algunas de las ventajas de utilizar `isEmpty`:
 
 1. Expresividad: El uso de `isEmpty` comunica de manera más clara la intención de verificar si una colección está vacía. Al leer el código, es más intuitivo comprender que se está evaluando si una colección no tiene elementos en lugar de comparar su conteo con cero.
 
 2. Mejor semántica: Utilizar `isEmpty` tiene una semántica más precisa y específica. Está diseñado específicamente para verificar si una colección no tiene elementos, mientras que `count == 0` simplemente compara el conteo con cero, sin indicar explícitamente que se está evaluando la vaciedad de la colección.
 
 3. Eficiencia: En algunos casos, `isEmpty` puede ser más eficiente que `count == 0`. Al utilizar `isEmpty`, Swift puede optimizar internamente la verificación de vaciedad de una colección sin tener que realizar un cálculo completo del conteo de elementos.
 
 4. Adaptabilidad a diferentes tipos de colecciones: `isEmpty` es una propiedad común a varias colecciones en Swift, como arrays, sets y strings. Al utilizar `isEmpty`, tu código será más genérico y adaptable, ya que no dependerá de la estructura específica de la colección para realizar la verificación de vaciedad.
 
 En resumen, utilizar `isEmpty` en lugar de `count == 0` en Swift proporciona una mayor expresividad, mejor semántica, posible eficiencia y adaptabilidad a diferentes tipos de colecciones. Es una práctica recomendada para mejorar la legibilidad y claridad del código al verificar si una colección está vacía.
 */

// Ejemplo con un Array
let array = [1, 2, 3, 4, 5]

// Verificar si el Array está vacío utilizando count
if array.count == 0 {
    print("El array está vacío.")
} else {
    print("El array tiene elementos.")
}

// Verificar si el Array está vacío utilizando isEmpty
if array.isEmpty {
    print("El array está vacío.")
} else {
    print("El array tiene elementos.")
}

// Ejemplo con un String
let string = "Hello, world!"

// Verificar si el String está vacío utilizando count
if string.count == 0 {
    print("El string está vacío.")
} else {
    print("El string tiene caracteres.")
}

// Verificar si el String está vacío utilizando isEmpty
if string.isEmpty {
    print("El string está vacío.")
} else {
    print("El string tiene caracteres.")
}

/*
 En estos ejemplos, el uso de isEmpty hace que el código sea más claro y legible. Es inmediatamente obvio que estamos verificando si el array o el string están vacíos, en lugar de comparar el número de elementos o caracteres con cero. Además, en algunos casos, isEmpty puede ser más eficiente que count == 0, ya que Swift puede optimizar la verificación de vacío sin tener que contar todos los elementos o caracteres.
 */

/*
 ******************* Opcionales ********************
 
 En Swift, los opcionales son un concepto fundamental que permite manejar valores que pueden estar presentes o ausentes. Puedes pensar en los opcionales como una "caja" que puede contener un valor o estar vacía, es decir, no tener ningún valor en su interior.
 
 La analogía de una caja que no se sabe si tiene un regalo dentro o no es bastante acertada. Imagina que tienes una caja cerrada y no puedes ver su contenido. Pueden ocurrir dos situaciones:
 
 1. La caja tiene un regalo: En este caso, puedes abrir la caja y encontrar un regalo en su interior. Es similar a cuando tienes un opcional en Swift que contiene un valor. Puedes acceder a ese valor y utilizarlo en tu código.
 
 2. La caja está vacía: En esta situación, al abrir la caja te das cuenta de que no hay ningún regalo dentro. Esto es similar a cuando tienes un opcional en Swift que no contiene ningún valor. En este caso, el opcional es `nil`, lo que indica que no hay ningún valor presente.
 
 La idea detrás de los opcionales en Swift es proporcionar una forma segura de trabajar con valores que pueden ser nulos. Al utilizar opcionales, estás obligado a comprobar si un opcional contiene un valor antes de intentar utilizarlo. Esto ayuda a evitar errores y fallos inesperados en tu código al tratar de acceder a valores que podrían estar ausentes.
 
 Puedes utilizar diferentes técnicas para trabajar con opcionales en Swift, como el uso de declaraciones `if let` o el operador de encadenamiento opcional (`optional chaining`). Estas técnicas te permiten desempaquetar el valor de un opcional solo si está presente y realizar acciones basadas en esa condición.
 
 En resumen, los opcionales en Swift te permiten manejar la incertidumbre sobre si un valor está presente o no. Utilizando la analogía de una caja que puede contener un regalo o estar vacía, puedes comprender cómo los opcionales te ayudan a manejar y trabajar de manera segura con valores opcionales en Swift.
 */

// Ejemplo de uso de opcionales

// Declaramos un String opcional
var nombreOpcional: String? = "Juan"

// Intentar imprimir el nombre directamente resultará en una advertencia, ya que es opcional
print(nombreOpcional) // imprimirá "Optional("Juan")"

// Podemos utilizar "if let" para desempaquetar el valor del opcional
if let nombre = nombreOpcional {
    print("Hola, \(nombre)") // imprimirá "Hola, Juan"
} else {
    print("No tengo un nombre para saludar.")
}

// Ahora establecemos el nombreOpcional a nil
nombreOpcional = nil

// Si intentamos desempaquetar de nuevo, el valor nil nos llevará al bloque else
if let nombre = nombreOpcional {
    print("Hola, \(nombre)")
} else {
    print("No tengo un nombre para saludar.") // imprimirá "No tengo un nombre para saludar."
}

// Un ejemplo de encadenamiento opcional

// Imaginemos que tenemos una estructura que puede tener un jefe, pero el jefe es opcional
struct Empleado {
    var jefe: Jefe?
}

struct Jefe {
    var nombre: String
}

// Creamos un empleado sin un jefe
let empleadoSinJefe = Empleado(jefe: nil)

// Intentamos acceder al nombre del jefe utilizando encadenamiento opcional
let nombreDelJefe = empleadoSinJefe.jefe?.nombre

// Como el empleado no tiene un jefe, el resultado es nil
print(nombreDelJefe) // imprimirá "nil"

/*
 Estos ejemplos muestran cómo manejar los opcionales en Swift. En el primer ejemplo, utilizamos if let para desempaquetar el valor de un opcional y manejar los casos en los que el opcional contiene un valor y cuando no lo hace. En el segundo ejemplo, utilizamos encadenamiento opcional para acceder a una propiedad de un valor opcional, que nos devuelve otro opcional. Esto nos permite manejar de forma segura el caso en el que la propiedad a la que estamos intentando acceder no existe.
 
 ******************* Uso de IF LET y GUARD LET con opcionales *****************
 
 En Swift, if let y guard let son dos constructos que se utilizan para manejar de manera segura los opcionales y evitar errores al tratar de desempaquetar valores opcionales que podrían ser nil.
 
 if let se utiliza para desempaquetar un opcional y realizar una acción solo si el opcional contiene un valor no nulo. Tiene la siguiente sintaxis:
 
 if let unwrappedValue = optionalValue {
 // Acciones a realizar si optionalValue no es nil
 }
 
 En este caso, optionalValue es el opcional que se está evaluando. Si optionalValue contiene un valor, se desempaqueta y se asigna a unwrappedValue, y luego se ejecutan las acciones dentro del bloque de código. Si optionalValue es nil, el bloque de código se omite y no se ejecuta.
 
 Por otro lado, guard let se utiliza para desempaquetar un opcional y salir tempranamente de una función, método o bucle si el opcional contiene un valor nulo. Tiene la siguiente sintaxis:
 
 guard let unwrappedValue = optionalValue else {
 // Acciones a realizar si optionalValue es nil
 // Puede incluir un return, throw, break, continue, etc.
 // para salir de la función, método o bucle actual
 }
 
 En este caso, optionalValue es el opcional que se está evaluando. Si optionalValue contiene un valor, se desempaqueta y se asigna a unwrappedValue, y luego el código continúa ejecutándose después del bloque de guard. Si optionalValue es nil, se ejecutan las acciones dentro del bloque de código, que generalmente incluyen una salida temprana utilizando una instrucción como return, throw, break o continue.
 
 La diferencia principal entre if let y guard let radica en el alcance de las variables desempaquetadas. Con if let, la variable desempaquetada solo es válida dentro del bloque de código donde se realiza la asignación. En cambio, con guard let, la variable desempaquetada es válida en todo el alcance del bloque que contiene el guard, lo que te permite utilizarla más adelante en el código.
 
 En resumen, if let y guard let son constructos útiles para trabajar con opcionales en Swift y garantizar un manejo seguro de los valores opcionales. if let se utiliza para realizar acciones específicas cuando un opcional contiene un valor no nulo, mientras que guard let se utiliza para salir tempranamente de un bloque de código si el opcional es nil.
 */

// Ejemplo de uso de if let

// Tenemos un String opcional
var saludoOpcional: String? = "Hola, mundo"

// Utilizamos if let para desempaquetar el valor
if let saludo = saludoOpcional {
    print(saludo) // Imprimirá "Hola, mundo"
} else {
    print("No hay un saludo para imprimir")
}

// Ahora ponemos saludoOpcional a nil
saludoOpcional = nil

// Si intentamos desempaquetar de nuevo, nos lleva al bloque else
if let saludo = saludoOpcional {
    print(saludo)
} else {
    print("No hay un saludo para imprimir") // Imprimirá "No hay un saludo para imprimir"
}

// Ejemplo de uso de guard let

func imprimirSaludo(saludoOpcional: String?) {
    // Usamos guard let para desempaquetar el valor
    guard let saludo = saludoOpcional else {
        print("No hay un saludo para imprimir")
        return
    }
    
    // Si llegamos aquí, es porque el saludoOpcional tenía un valor
    print(saludo)
}

// Probamos nuestra función con un valor no nil
imprimirSaludo(saludoOpcional: "Hola, mundo") // Imprimirá "Hola, mundo"

// Y probamos nuestra función con nil
imprimirSaludo(saludoOpcional: nil) // Imprimirá "No hay un saludo para imprimir"

/*
 Estos ejemplos ilustran cómo usar if let y guard let para trabajar con valores opcionales. if let desempaqueta un opcional y realiza acciones solo si el opcional tiene un valor, mientras que guard let desempaqueta un opcional y permite una salida temprana de la función si el opcional es nil. En ambos casos, se evita un error al intentar desempaquetar un valor opcional que es nil.
 
 ********** Static Vars **********
 
 Las `static vars`, o variables estáticas, son propiedades de una clase específica, en lugar de una instancia de esa clase. Lo que las hace únicas es que solo existen en una copia, sin importar cuántas instancias de la clase crees. Esto significa que si cambias el valor de una variable estática, ese cambio se reflejará en todas las instancias de la clase. Puedes pensar en las variables estáticas como un espacio de almacenamiento común para todas las instancias de una clase.
 */

// Definimos una clase de Ejemplo
class Ejemplo {
    // Definimos una variable estática
    static var contador: Int = 0
    
    // Un método que incrementa el contador
    func incrementarContador() {
        Ejemplo.contador += 1
    }
}

// Creamos la primera instancia de Ejemplo
let ejemplo1 = Ejemplo()

// Incrementamos el contador utilizando ejemplo1
ejemplo1.incrementarContador()

// Imprimimos el valor de contador. Debería ser 1.
print(Ejemplo.contador) // Imprimirá 1

// Creamos una segunda instancia de Ejemplo
let ejemplo2 = Ejemplo()

// Incrementamos el contador utilizando ejemplo2
ejemplo2.incrementarContador()

// Imprimimos el valor de contador. Aunque hemos utilizado una nueva instancia, el contador se ha incrementado a 2.
print(Ejemplo.contador) // Imprimirá 2

/*
 
 En este ejemplo, contador es una variable estática en la clase Ejemplo. Cuando llamamos al método incrementarContador() en una instancia de Ejemplo, en realidad estamos modificando la variable estática contador de la clase. Como resultado, no importa cuántas instancias de Ejemplo creemos, todas comparten y pueden modificar la misma variable contador. Esto demuestra cómo las variables estáticas son comunes a todas las instancias de una clase y son útiles cuando quieres tener un estado compartido entre todas las instancias.
 
 ********** Variables Computadas **********
 
 Las variables computadas son propiedades de una clase o estructura que no almacenan un valor directamente. En cambio, calculan (o "computan") su valor basándose en alguna lógica que tú defines. Por ejemplo, podrías tener una clase `Circle` con variables `radius` y `diameter`. En lugar de almacenar el diámetro como una variable separada, podrías hacer que `diameter` sea una variable computada que simplemente devuelve el radio multiplicado por dos.
 */

// Definimos una clase Circle
class Circle {
    // Creamos una variable de instancia para el radio
    var radius: Double
    
    // Creamos una variable computada para el diámetro
    var diameter: Double {
        get {
            return radius * 2
        }
        set(newDiameter) {
            radius = newDiameter / 2
        }
    }
    
    // Inicializador para la clase Circle
    init(radius: Double) {
        self.radius = radius
    }
}

// Creamos una instancia de Circle con un radio de 5
let circle = Circle(radius: 5)

// Imprimimos el diámetro utilizando nuestra variable computada. Debería ser 10.
print(circle.diameter) // Imprimirá 10.0

// Ahora cambiamos el diámetro a 20 utilizando nuestra variable computada.
circle.diameter = 20

// Si imprimimos el radio y el diámetro, veremos que ambos se han actualizado.
print(circle.radius) // Imprimirá 10.0
print(circle.diameter) // Imprimirá 20.0

/*
 En este ejemplo, diameter es una variable computada que está basada en el valor de radius. Cuando accedemos a diameter, obtenemos el valor de radius multiplicado por dos. Cuando establecemos diameter, actualizamos el valor de radius a la mitad del nuevo diámetro. Esto demuestra cómo puedes utilizar variables computadas en Swift para manejar propiedades que son dependientes o derivadas de otras propiedades.
 
 ********** Alternativas a Singleton y sus repercusiones en pruebas **********
 
 El patrón Singleton es un diseño común que restringe la instanciación de una clase a un solo objeto. Esto puede ser útil en algunos casos, como cuando se necesita un punto de acceso global a un recurso, pero puede tener inconvenientes, especialmente en términos de pruebas. Debido a que Singleton introduce un estado global en la aplicación, puede hacer que las pruebas sean más difíciles de escribir y menos confiables. El estado global puede ser modificado por cualquier parte de la aplicación en cualquier momento, lo que puede llevar a resultados de pruebas inesperados o inconsistentes.
 
 Las alternativas al patrón Singleton incluyen:
 
 - **Inyección de dependencia:** En lugar de utilizar una instancia Singleton, puedes pasar las dependencias requeridas como parámetros a las funciones o métodos que las necesitan. Esto hace que las pruebas sean más predecibles y evita la necesidad de un estado global.
 
 - **Usar instancias por escopo:** En lugar de tener una sola instancia global, puedes tener instancias que existan solo durante un cierto "escopo" o período de vida (por ejemplo, durante la duración de una solicitud específica).
 
 Estas alternativas pueden hacer que tu código sea más fácil de probar y mantener. Sin embargo, también pueden requerir más trabajo para implementar y pueden no ser adecuadas para todos los casos de uso.
 
 ********** Alta Cohesión y Bajo Acoplamiento -> Reutilizable **********
 
 Estos son dos principios fundamentales en el diseño de software.
 
 - **Alta Cohesión**: Se refiere a la idea de que cada módulo o clase en un sistema debería tener una responsabilidad claramente definida y limitada. Debería hacer una cosa y hacerla bien. La alta cohesión facilita la comprensión, el mantenimiento y la modificación de las clases.
 
 - **Bajo Acoplamiento**: Significa que las diferentes partes de un sistema deberían depender lo menos posible entre sí. En otras palabras, un cambio en una parte del sistema no debería requerir cambios en otra parte del sistema. El bajo acoplamiento facilita la prueba y la reutilización de las clases.
 
 En general, si un sistema de software se diseña con alta cohesión y bajo acoplamiento, será más fácil de mantener, probar, entender y reutilizar.
 
 ********** Composite para transición a SwiftUI **********
 
 El patrón de diseño Composite se utiliza para tratar objetos individuales y composiciones de objetos de manera uniforme. En SwiftUI, esto se ve en cómo las vistas se componen en otras vistas, creando una jerarquía de vistas, donde cada vista puede contener otras vistas. Esto facilita la creación de interfaces de usuario complejas a partir de componentes más pequeños y reutilizables.
 
 La transición a SwiftUI puede requerir un cambio en la forma de pensar sobre el diseño de la interfaz de usuario, de un enfoque más orientado a objetos a un enfoque más declarativo y funcional. Sin embargo, los beneficios incluyen una mayor reutilización del código, una mayor facilidad para probar y depurar las vistas, y la posibilidad de crear interfaces de usuario más complejas con menos código.
 
 ********** Notación de Diccionario y Arrays de Múltiples Dimensiones **********
 
 Un diccionario en Swift es una colección de pares clave-valor, donde cada clave es única. La notación para acceder a los valores en un diccionario es `dictionary[key]`, donde `dictionary` es el nombre del diccionario y `key` es la clave del valor que se desea recuperar.
 
 Un array de múltiples dimensiones es esencialmente un "array de arrays". Puedes pensar en un array bidimensional (el caso más común de un array de múltiples dimensiones) como una tabla, donde el primer índice determina la fila y el segundo índice determina la columna. Por ejemplo, `multiArray[2][3]` te dará el valor en la tercera fila, cuarta columna (ya que la indexación en Swift comienza en 0) de `multiArray`.
 */

// Creación de un diccionario con claves de tipo String y valores de tipo Int
var ages = ["Juan": 27, "María": 25, "Pedro": 30]

// Accediendo a un valor utilizando la clave
if let ageJuan = ages["Juan"] {
    print("Juan tiene \(ageJuan) años.") // Imprimirá: Juan tiene 27 años.
} else {
    print("No se encontró la edad de Juan.")
}

// Añadiendo un nuevo par clave-valor al diccionario
ages["Ana"] = 33

// Creación de un array de dos dimensiones de tipo Int
var matrix: [[Int]] = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

// Accediendo a un valor utilizando dos índices
let value = matrix[1][2] // Esto te dará el valor 6, que se encuentra en la segunda fila, tercera columna.
print(value) // Imprimirá: 6

// Actualizando un valor en el array
matrix[0][1] = 10

/*
 En estos ejemplos, puedes ver cómo acceder y actualizar valores en un diccionario y un array de múltiples dimensiones en Swift. En el caso del diccionario, utilizamos las claves para acceder a los valores. En el caso del array de múltiples dimensiones, utilizamos dos índices para acceder a los valores: el primer índice para la fila y el segundo índice para la columna.
 
 ********** Por qué un Diccionario es Rápido, Complejidad Temporal, Comparación con Otras Estructuras de Datos **********
 
 Un diccionario es una estructura de datos que almacena pares de elementos clave-valor. Lo que hace que los diccionarios sean rápidos para ciertas operaciones es cómo están implementados bajo el capó: utilizan una técnica llamada "hashing". Cada clave se pasa a través de una función de hash para producir un número que luego se utiliza para buscar el valor correspondiente en el almacenamiento interno del diccionario. Esto permite un acceso a los datos en tiempo constante, O(1), lo que significa que el tiempo que toma buscar un valor no está relacionado con el número de elementos que hay en el diccionario.
 
 En comparación con otras estructuras de datos, como los arrays o listas enlazadas, que tienen un tiempo de búsqueda de O(n) (donde 'n' es el número de elementos en la lista), los diccionarios pueden ser significativamente más rápidos para buscar datos. Sin embargo, los diccionarios no mantienen el orden de los elementos y no son la mejor elección si necesitas iterar sobre los elementos en un orden específico.
 
 ********** Proxy para Debug de Llamadas API **********
 
 Un proxy es un intermediario que puede interceptar las comunicaciones entre tu aplicación y un servidor. Al utilizar un proxy para debug de llamadas API, puedes ver exactamente qué se está enviando y recibiendo, lo que puede ayudarte a identificar y solucionar problemas.
 
 Un proxy puede permitirte ver detalles como los encabezados HTTP, los cuerpos de las solicitudes y respuestas, los códigos de estado, los tiempos de respuesta y mucho más. Además, algunos proxies incluso te permiten modificar las solicitudes y respuestas, lo que puede ser útil para probar cómo maneja tu aplicación diferentes escenarios.
 
 ********** Frameworks iOS para Videojuegos **********
 
 Existen varios frameworks que puedes utilizar para desarrollar videojuegos en iOS. Aquí tienes tres ejemplos:
 
 - **SpriteKit**: Este es un framework proporcionado por Apple específicamente para el desarrollo de juegos 2D. Proporciona una serie de características útiles, como el manejo de gráficos y animaciones, físicas, detección de colisiones y más.
 
 - **SceneKit**: Otro framework de Apple, pero este es para juegos 3D. SceneKit incluye una gama de características para la creación de gráficos 3D, efectos visuales y físicas.
 
 - **Unity**: Este es un motor de juego que se utiliza para el desarrollo de juegos 2D y 3D. Aunque no es específico de iOS (es multiplataforma), es muy popular y poderoso, y se puede utilizar para desarrollar juegos para iOS.
 
 Cada uno de estos tiene sus propias fortalezas y debilidades, y la elección de cuál usar dependerá de las necesidades específicas de tu juego.
 
 ************* Anotaciones en Swift **************
 
 En Swift, las anotaciones con '@' se utilizan para proporcionar metadatos adicionales o modificar el comportamiento de los elementos de código a los que se aplican. Aquí te presento algunas de estas anotaciones y su uso:
 
 1. @discardableResult
 
 La anotación @discardableResult se utiliza cuando una función o método devuelve un valor que puede ser ignorado. Es decir, si llamas a esta función o método y no utilizas su valor de retorno, no recibirás una advertencia del compilador.
 
 Por ejemplo, digamos que tienes una función que suma dos números y devuelve el resultado:
 */

func sum(_ a: Int, _ b: Int) -> Int {
    return a + b
}

// Si llamas a esta función sin usar su valor de retorno, recibirás una advertencia del compilador
sum(3, 5)

// Para evitar esta advertencia, puedes añadir @discardableResult a la definición de la función:
@discardableResult
func sum(_ a: Int, _ b: Int) -> Int {
    return a + b
}

// Ahora puedes llamar a la función sin usar su valor de retorno y no recibirás una advertencia
sum(3, 5)


/*
 2. @escaping
 
 El atributo @escaping se utiliza para indicar que una closure se invocará después de que la función en la que se pasa como parámetro haya terminado. Por defecto, las closures son @nonescaping, lo que significa que la closure debe completarse antes de que termine la función.
 
 Por ejemplo, si estás haciendo una llamada de red y tienes una closure que manejará el resultado cuando la llamada de red termine, esa closure sería @escaping porque se ejecutará después de que la función de la llamada de red haya terminado.
 */

func fetchData(completion: @escaping (Data?) -> Void) {
    // Simulando una llamada de red
    DispatchQueue.global().async {
        let data = ... // Obtener los datos
        DispatchQueue.main.async {
            completion(data)
        }
    }
}

/*
 3. @autoclosure
 
 El atributo @autoclosure se utiliza para envolver automáticamente una expresión en una closure cuando se pasa a una función. Esto puede hacer que el código sea más limpio y más fácil de leer.
 
 Por ejemplo, puedes tener una función que acepte una closure que no tenga parámetros y devuelva un Booleano:
 */

func logIfTrue(predicate: () -> Bool) {
    if predicate() {
        print("El resultado es verdadero")
    }
}

// Llamar a la función con una closure sería así
logIfTrue(predicate: { return 2 > 1 })

// Si añades @autoclosure a la definición de la función, Swift envolverá automáticamente { return 2 > 1 } en una closure, por lo que puedes llamar a la función como si estuvieras pasando el resultado de 2 > 1 directamente:

func logIfTrue(@autoclosure predicate: () -> Bool) {
    if predicate() {
        print("El resultado es verdadero")
    }
}

// Ahora puedes llamar a la función de esta manera, lo cual es más limpio y fácil de leer
logIfTrue(predicate: 2 > 1)

/*
 Estas son solo algunas de las anotaciones con '@' que puedes encontrar en Swift. Existen muchas más, cada una con sus propios usos y propósitos.
 
 *************** Lazy Vars *****************
 
 Las lazy vars o variables perezosas son una característica de Swift que permite retrasar la creación de un objeto o el cálculo de un valor hasta que se utiliza por primera vez. Esto puede ser útil cuando la inicialización de un objeto es costosa en términos de memoria o tiempo de CPU y puede que no se necesite el objeto en absoluto, dependiendo de cómo fluye el programa.
 
 Vamos a tomar un ejemplo sencillo para entender cómo funciona.
 */

class ExpensiveObject {
    init() {
        print("Objeto costoso creado!")
    }
}

class MyClass {
    lazy var expensiveObject = ExpensiveObject()
    
    init() {
        print("MyClass inicializado")
    }
}

let myClass = MyClass() // imprimirá "MyClass inicializado"

//En este caso, la inicialización de MyClass no iniciará la creación de ExpensiveObject. Pero, tan pronto como accedamos a expensiveObject, se creará:
print(myClass.expensiveObject) // imprimirá "Objeto costoso creado!"

/*
 ************** Defer ****************
 
 El bloque defer en Swift es una forma de especificar un bloque de código que debe ejecutarse cuando se termina la ejecución del alcance en el que se encuentra, sin importar cómo se termina ese alcance. Esto puede ser muy útil para limpiar o liberar recursos, cerrar archivos, invalidar timers, etc., garantizando que estas tareas se realizarán sin importar cómo se sale de la función, método, bucle, etc.
 
 Por ejemplo, considera un escenario donde estás manejando un archivo:
 */

func processFile(filename: String) throws {
    let file = openFile(filename)
    defer {
        closeFile(file)
    }
    while let line = try file.readline() {
        // Procesa la línea
    }
    // closeFile se llama aquí, al final del alcance
}

/*
 En este caso, el método closeFile(_:) se llama al final del alcance de la función processFile(_:), sin importar cómo se sale de la función. Si todas las líneas del archivo se procesan con éxito, closeFile(_:) se llama. Si se lanza un error al procesar una línea, closeFile(_:) también se llama. Esto garantiza que el archivo siempre se cerrará, evitando así posibles fugas de recursos.
 
 Otra cosa que vale la pena mencionar es que los bloques defer se ejecutan en el orden inverso al que se definen. Así, si tienes varios bloques defer en tu función, el último definido será el primero en ejecutarse.
 */


func deferExample() {
    defer { print("1") }
    defer { print("2") }
    defer { print("3") }
}
deferExample()
// Imprimirá:
// 3
// 2
// 1

/*
 En resumen, defer te proporciona una manera segura de asegurarte de que ciertos bloques de código siempre se ejecutan antes de que se termine un alcance, lo que es especialmente útil para la limpieza o liberación de recursos.
 
 ***************** Operadores A++ y ++A ******************
 
 Hasta la versión Swift 2.2, el lenguaje Swift soportaba los operadores de incremento ++ y --. Sin embargo, estos operadores fueron descontinuados en Swift 3.0 y versiones posteriores. En lugar de usar a++ y ++a (y sus equivalentes de decremento a-- y --a), Swift ahora promueve el uso de a += 1 y a -= 1.
 
 El motivo principal de este cambio es mejorar la claridad y la consistencia del lenguaje. a++ y a-- se consideran menos claros que a += 1 y a -= 1, especialmente para los nuevos programadores que pueden no estar familiarizados con la semántica de ++ y -- desde otros lenguajes.
 
 Aquí tienes un ejemplo de cómo incrementar y decrementar una variable en Swift:
 */

var a = 0

// Incremento
a += 1
print(a) // Imprime 1

// Decremento
a -= 1
print(a) // Imprime 0

/*
 Así que en resumen, en Swift actual, a++ y ++a no son válidos, y se deben utilizar a += 1 y a -= 1 para incrementar y decrementar respectivamente.
 
 *************** Indices en Colecciones *****************
 
 En Swift, al igual que en muchos otros lenguajes de programación, los índices de las colecciones (como los arrays) comienzan en 0. Esto significa que el primer elemento de una colección se encuentra en la posición 0, el segundo elemento se encuentra en la posición 1, el tercer elemento se encuentra en la posición 2, y así sucesivamente.
 
 Esta es una convención de la mayoría de los lenguajes de programación que proviene de la forma en que los computadores almacenan la información en la memoria.
 
 Aquí te dejo un ejemplo simple para ilustrar este concepto:
 */

var frutas = ["Manzana", "Banana", "Cereza", "Durazno", "Uva"]

print(frutas[0]) // Imprime "Manzana"
print(frutas[1]) // Imprime "Banana"
print(frutas[2]) // Imprime "Cereza"
print(frutas[3]) // Imprime "Durazno"
print(frutas[4]) // Imprime "Uva"

/*
 En este ejemplo, el array frutas tiene cinco elementos. El primer elemento, "Manzana", está en el índice 0. El último elemento, "Uva", está en el índice 4, no en el índice 5, aunque "Uva" sea el quinto elemento del array.
 
 Es importante recordar que intentar acceder a un índice que no existe en el array (como frutas[5] en este ejemplo) causará un error en tiempo de ejecución. Por esta razón, siempre es importante asegurarte de que el índice esté dentro del rango válido de la colección.
 
 **************** Genericos ******************
 
 Los genéricos son una poderosa característica de Swift que te permite escribir código flexible y reutilizable. A través de los genéricos, puedes escribir funciones y tipos que pueden trabajar con cualquier tipo, mientras aún conservas la seguridad de tipos que Swift proporciona.
 
 Imagina que estás escribiendo una función para intercambiar los valores de dos variables. Podrías escribir una función para cada tipo de datos, pero eso sería repetitivo y poco práctico. Aquí es donde los genéricos son útiles. En lugar de escribir una función para cada tipo de dato, puedes escribir una única función genérica.
 
 Aquí hay un ejemplo:
 */

func intercambiaValores<T>(a: inout T, b: inout T) {
    let valorTemporal = a
    a = b
    b = valorTemporal
}

var numero1 = 100
var numero2 = 200

print("Antes del intercambio: \(numero1), \(numero2)") // Antes del intercambio: 100, 200
intercambiaValores(a: &numero1, b: &numero2)
print("Después del intercambio: \(numero1), \(numero2)") // Después del intercambio: 200, 100

var cadena1 = "Hola"
var cadena2 = "Mundo"

print("Antes del intercambio: \(cadena1), \(cadena2)") // Antes del intercambio: Hola, Mundo
intercambiaValores(a: &cadena1, b: &cadena2)
print("Después del intercambio: \(cadena1), \(cadena2)") // Después del intercambio: Mundo, Hola

/*
 En este ejemplo, T es un marcador de posición para cualquier tipo. Cuando llamas a intercambiaValores(a: &numero1, b: &numero2), T es reemplazado por Int, y cuando llamas a intercambiaValores(a: &cadena1, b: &cadena2), T es reemplazado por String. De este modo, puedes usar la misma función para intercambiar valores de diferentes tipos de datos.
 
 Además de las funciones, también puedes usar genéricos para definir tus propias clases, estructuras y enumeraciones genéricas. Esto puede hacer que tu código sea más flexible y reutilizable.
 
 
 ******************* ARC *********************
 
 Swift utiliza un sistema llamado Automatic Reference Counting (ARC) para hacer un seguimiento y manejar la memoria de las instancias de las clases. ARC se asegura de que las instancias no sean desasignadas mientras aún están en uso, pero también asegura que las instancias que ya no están en uso sean liberadas para liberar memoria.
 
 Las referencias cíclicas pueden causar problemas en ARC. Una referencia cíclica ocurre cuando dos o más instancias se mantienen mutuamente en memoria porque tienen referencias fuertes entre sí. En otras palabras, no pueden ser desasignadas porque cada una de ellas tiene al menos una referencia fuerte que la mantiene viva.
 
 Para resolver este problema, Swift proporciona dos formas de crear referencias débiles o no propietarias: weak y unowned. Estas referencias permiten referirse a instancias sin mantenerlas en memoria de forma fuerte, evitando así las referencias cíclicas.
 
 Las referencias weak se utilizan cuando la referencia puede llegar a ser nil en algún momento. Se deben declarar como opcionales y se establecerán en nil automáticamente cuando la instancia a la que se refieren es desasignada.
 
 Aquí un ejemplo:
 */

class Persona {
    let nombre: String
    init(nombre: String) { self.nombre = nombre }
    var mascota: Mascota?
    deinit { print("\(nombre) está siendo desasignado.") }
}

class Mascota {
    let nombre: String
    weak var dueño: Persona?
    init(nombre: String) { self.nombre = nombre }
    deinit { print("\(nombre) está siendo desasignado.") }
}

do {
    let juan = Persona(nombre: "Juan")
    let fido = Mascota(nombre: "Fido")
    juan.mascota = fido
    fido.dueño = juan
}

/*
 En este ejemplo, Persona tiene una referencia fuerte a Mascota y Mascota tiene una referencia débil a Persona. Cuando el bloque do termina, juan y fido quedan fuera de alcance y son desasignados. Si Mascota tuviera una referencia fuerte a Persona, tendríamos una referencia cíclica y ni juan ni fido serían desasignados.
 
 Por último, deinit es un desinicializador que es llamado justo antes de que una instancia de una clase sea desasignada. En este ejemplo, deinit se utiliza para imprimir un mensaje cuando Persona y Mascota son desasignados. Esto ayuda a demostrar que ARC está funcionando correctamente y que las instancias son desasignadas cuando ya no están en uso.
 
 ************* private(set) **************
 
 El modificador private(set) es una práctica común en Swift para mejorar la encapsulación y controlar la mutabilidad de las propiedades de una clase o estructura. Es especialmente útil cuando quieres que una propiedad sea de solo lectura fuera de su propia definición de clase o estructura, pero necesita ser modificada internamente.
 
 La ventaja de usar private(set) es que previene cambios no controlados en la propiedad desde fuera de la clase o estructura, pero aún permite que la propiedad sea modificada dentro de la definición de la misma. Esto puede ayudar a mantener la integridad de tus datos y evitar errores difíciles de detectar.
 
 Además, private(set) puede facilitar las pruebas unitarias de tu código. Puedes probar el comportamiento de tu clase o estructura basándote en los valores observados de las propiedades private(set), sin preocuparte de que estos valores sean modificados por accidente durante las pruebas.
 
 Aquí hay un ejemplo simple de cómo puedes usar private(set):
 */

class Counter {
    private(set) var count = 0
    func increment() {
        count += 1
    }
}

let counter = Counter()
counter.increment()
print(counter.count)  // Imprime: 1
// counter.count = 5  // Esto causaría un error de compilación

/*
 En este ejemplo, Counter tiene una propiedad count que solo puede ser modificada internamente. La función increment puede modificar count, pero si intentas cambiar count directamente desde fuera de Counter, obtendrás un error de compilación. Esto asegura que el valor de count solo cambie de la manera que tú has definido en la clase Counter, que en este caso es incrementándolo en 1 cada vez que llamas a la función increment.
 
 ****************** Progrmación iOS, Watch, Widgets, TVOS, MacOS ********************
 
 Programar aplicaciones para iOS, watchOS, macOS y tvOS puede ser bastante similar en muchos aspectos, ya que todos utilizan Swift y muchas de las mismas bibliotecas y patrones de diseño, como el diseño MVC (Modelo-Vista-Controlador) y las vistas basadas en UIKit o SwiftUI. Sin embargo, también hay diferencias importantes a tener en cuenta, tanto en términos de funcionalidades como de las mejores prácticas de diseño e interacción del usuario. Aquí hay una descripción general de algunas de las diferencias clave:
 
 1. **iOS (iPhone y iPad)**: La programación de aplicaciones para iOS suele ser la más versátil. Las aplicaciones pueden ser diseñadas para funcionar tanto en modo retrato como en modo paisaje, y las interfaces suelen ser más complejas que en otras plataformas debido al tamaño de la pantalla. Los desarrolladores de iOS necesitan considerar cómo manejar múltiples tamaños de pantalla y adaptarse a las interacciones basadas en el tacto.
 
 2. **watchOS (Apple Watch)**: Las aplicaciones para watchOS están diseñadas para adaptarse a una pantalla mucho más pequeña. Estas aplicaciones suelen proporcionar funcionalidades muy centradas y simplificadas, ya que los usuarios generalmente interactúan con ellas durante periodos de tiempo más cortos. Además, las aplicaciones para watchOS pueden aprovechar las capacidades únicas del Apple Watch, como los sensores de salud y fitness.
 
 3. **Widgets**: Los widgets de iOS son extensiones de aplicaciones que muestran información y funcionalidades básicas en la pantalla de inicio del usuario. Debido a su naturaleza y ubicación, los widgets deben ser simples, claros y proporcionar valor inmediato. No son aplicaciones completas, sino complementos de las mismas.
 
 4. **tvOS (Apple TV)**: Las aplicaciones de tvOS están diseñadas para una pantalla de televisión y se controlan con el Apple TV Remote, por lo que las interacciones son diferentes a las de las aplicaciones para dispositivos de pantalla táctil. El diseño de la interfaz de usuario debe ser más simple y fácil de navegar desde lejos, y el contenido debe estar optimizado para una experiencia de visualización de alta definición.
 
 5. **macOS (Mac)**: Aunque macOS comparte muchas similitudes con iOS, las aplicaciones de Mac suelen ser más robustas y completas, ya que tienen más potencia de procesamiento y más espacio en la pantalla. Las interacciones del usuario también son diferentes, ya que se basan principalmente en el uso del teclado y el ratón en lugar de la pantalla táctil.
 
 Por lo tanto, aunque la programación básica es similar en todas estas plataformas, los desarrolladores deben considerar las diferencias en el diseño de la interfaz de usuario, las interacciones del usuario y las capacidades específicas de cada plataforma al crear aplicaciones para iOS, watchOS, macOS y tvOS.
 */


// capture list
// [self] -> ARC + 1 self.propiedad
// [weak self] -> ARC -> self?.propiedad
// [unowned self] -> ARC -> self.propiedad
