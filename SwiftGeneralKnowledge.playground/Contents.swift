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
 
 */

// @discardableResult -> diferentes anotaciones '@'
// lazy vars
// defer
// a++ - ++a
// indices empiezan en 0 en colecciones
// plantillas en swift y genericos
// weak -> ARC (Automatic Reference Counting) -> referencias cíclicas -> deinit
// private(set) como buena práctica y ayuda para pruebas
// UIDevice
// Apps para Watch, Widgets, TVOs, MacOS
// Contexto en programación
// VisionPro

class Humano {
    // ARC = 1
    var perro: Perro
    
    init(perro: Perro) {
        self.perro = perro
    }
    
    // ARC = 0 ahí se ejecuta
    deinit {
        print("el objeto ya no existe en memoria")
    }
}

class Perro {
    var humano: Humano
    // ARC = 1
    
    init(humano: Humano) {
        self.humano = humano
    }
}

// ARC = 0
// referencia Strong
let perro = Perro(humano: Humano())
let a = Humano(perro: perro)

// ARC = 1
a = nil

// ARC = 0 -> libera de memoria a Humano

// ARC = 0
weak var b = Humano()
// b es nil

// ARC = 0


