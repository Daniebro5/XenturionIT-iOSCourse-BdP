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
 
 **************** Uso de la palabra FINAL *****************
 
 En Swift, la palabra clave `final` se utiliza para marcar una clase, método o propiedad como final, lo que significa que no se puede heredar, sobrescribir o modificar en las clases derivadas. Aquí está el uso y la importancia de la palabra `final` en Swift:
 
 1. Evita la herencia no deseada: Al marcar una clase como final, se previene la posibilidad de que otras clases hereden de ella. Esto es útil cuando quieres asegurarte de que una clase no sea extendida o modificada de manera inapropiada, manteniendo así el control sobre su comportamiento y evitando errores o comportamientos inesperados.
 
 2. Mejora el rendimiento y el tiempo de compilación: Cuando una clase, método o propiedad se marca como final, el compilador de Swift puede realizar optimizaciones adicionales debido a que no necesita considerar la posibilidad de herencia o sobrescritura. Esto puede resultar en una mejor optimización y un tiempo de compilación más rápido.
 
 3. Fomenta el diseño seguro y la encapsulación: Al marcar ciertas clases, métodos o propiedades como final, puedes asegurarte de que su comportamiento y estado se mantengan intactos y no sean modificados de manera no deseada. Esto ayuda a mantener la integridad del diseño y la encapsulación de tus componentes.
 
 Siempre marcar una clase, método o propiedad como final no es una buena práctica en todos los casos. Debe considerarse cuidadosamente si se requiere o no la posibilidad de herencia o sobrescritura en el diseño de tu código. Si no se necesita herencia o sobrescritura, es recomendable marcar las clases, métodos o propiedades como final para evitar errores y garantizar un diseño más seguro. Sin embargo, si se desea permitir la herencia o sobrescritura en el futuro, se puede omitir el uso de la palabra final inicialmente y agregarla posteriormente según sea necesario.
 
 En resumen, la palabra `final` en Swift es importante para controlar la herencia y sobrescritura en tus clases, métodos y propiedades. Su uso adecuado puede mejorar el rendimiento, el tiempo de compilación y promover un diseño seguro y encapsulado. Sin embargo, es importante evaluar cuidadosamente si se requiere o no en función de los requisitos del diseño y la flexibilidad futura del código.
 
 **************** Preferencia del isEmpty frente al .count *****************
 
 La ventaja de utilizar `isEmpty` en lugar de `count == 0` en Swift es principalmente una cuestión de claridad y legibilidad del código. Aquí están algunas de las ventajas de utilizar `isEmpty`:
 
 1. Expresividad: El uso de `isEmpty` comunica de manera más clara la intención de verificar si una colección está vacía. Al leer el código, es más intuitivo comprender que se está evaluando si una colección no tiene elementos en lugar de comparar su conteo con cero.
 
 2. Mejor semántica: Utilizar `isEmpty` tiene una semántica más precisa y específica. Está diseñado específicamente para verificar si una colección no tiene elementos, mientras que `count == 0` simplemente compara el conteo con cero, sin indicar explícitamente que se está evaluando la vaciedad de la colección.
 
 3. Eficiencia: En algunos casos, `isEmpty` puede ser más eficiente que `count == 0`. Al utilizar `isEmpty`, Swift puede optimizar internamente la verificación de vaciedad de una colección sin tener que realizar un cálculo completo del conteo de elementos.
 
 4. Adaptabilidad a diferentes tipos de colecciones: `isEmpty` es una propiedad común a varias colecciones en Swift, como arrays, sets y strings. Al utilizar `isEmpty`, tu código será más genérico y adaptable, ya que no dependerá de la estructura específica de la colección para realizar la verificación de vaciedad.
 
 En resumen, utilizar `isEmpty` en lugar de `count == 0` en Swift proporciona una mayor expresividad, mejor semántica, posible eficiencia y adaptabilidad a diferentes tipos de colecciones. Es una práctica recomendada para mejorar la legibilidad y claridad del código al verificar si una colección está vacía.
 
 
 ******************* Opcionales ********************
 
 En Swift, los opcionales son un concepto fundamental que permite manejar valores que pueden estar presentes o ausentes. Puedes pensar en los opcionales como una "caja" que puede contener un valor o estar vacía, es decir, no tener ningún valor en su interior.
 
 La analogía de una caja que no se sabe si tiene un regalo dentro o no es bastante acertada. Imagina que tienes una caja cerrada y no puedes ver su contenido. Pueden ocurrir dos situaciones:
 
 1. La caja tiene un regalo: En este caso, puedes abrir la caja y encontrar un regalo en su interior. Es similar a cuando tienes un opcional en Swift que contiene un valor. Puedes acceder a ese valor y utilizarlo en tu código.
 
 2. La caja está vacía: En esta situación, al abrir la caja te das cuenta de que no hay ningún regalo dentro. Esto es similar a cuando tienes un opcional en Swift que no contiene ningún valor. En este caso, el opcional es `nil`, lo que indica que no hay ningún valor presente.
 
 La idea detrás de los opcionales en Swift es proporcionar una forma segura de trabajar con valores que pueden ser nulos. Al utilizar opcionales, estás obligado a comprobar si un opcional contiene un valor antes de intentar utilizarlo. Esto ayuda a evitar errores y fallos inesperados en tu código al tratar de acceder a valores que podrían estar ausentes.
 
 Puedes utilizar diferentes técnicas para trabajar con opcionales en Swift, como el uso de declaraciones `if let` o el operador de encadenamiento opcional (`optional chaining`). Estas técnicas te permiten desempaquetar el valor de un opcional solo si está presente y realizar acciones basadas en esa condición.
 
 En resumen, los opcionales en Swift te permiten manejar la incertidumbre sobre si un valor está presente o no. Utilizando la analogía de una caja que puede contener un regalo o estar vacía, puedes comprender cómo los opcionales te ayudan a manejar y trabajar de manera segura con valores opcionales en Swift.
 
 
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




// Static vars
// Variables computadas
// alternativas a singleton y repercusiones en pruebas (xq es antipatron)
// alta cohesiòn y bajo acoplamiento -> reutilizable
// Composite para transiciòn a SwiftUI
// notación de diccionario y arrays de multiples dimensiones
// Porque un diccionario es rápido, complejidad temporal, comparación con otras estructuras de datos
// Proxy para debug de llamadas API
// Frameworks iOS para VideoJuegos
// VisionPro (2D)
