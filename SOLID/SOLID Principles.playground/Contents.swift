/*
 Los principios SOLID son un conjunto de principios de diseño de software que se utilizan para hacer que el software sea más comprensible, flexible y mantenible. Los cinco principios SOLID son:

 1. **Principio de responsabilidad única (SRP, Single Responsibility Principle):** Este principio establece que una clase o módulo debe tener una sola responsabilidad. En otras palabras, una clase debe tener una sola razón para cambiar. Esto ayuda a mantener las clases pequeñas y enfocadas, lo que facilita su comprensión y mantenimiento.

 2. **Principio de abierto/cerrado (OCP, Open/Closed Principle):** Este principio establece que las entidades de software (clases, módulos, funciones, etc.) deben estar abiertas para su extensión, pero cerradas para su modificación. En otras palabras, deberías poder agregar nuevas funcionalidades sin cambiar el código existente.

 3. **Principio de sustitución de Liskov (LSP, Liskov Substitution Principle):** Este principio establece que si una clase B es una subclase de la clase A, entonces deberías poder sustituir a B por A sin alterar el comportamiento del programa. Este principio es esencial para garantizar que un sistema funcione correctamente cuando se utilizan herencia y polimorfismo.

 4. **Principio de segregación de la interfaz (ISP, Interface Segregation Principle):** Este principio establece que los clientes de una interfaz determinada no deben depender de métodos que no utilizan. En otras palabras, es mejor tener varias interfaces específicas en lugar de una sola interfaz general.

 5. **Principio de inyección de dependencias (DIP, Dependency Injection Principle):** Este principio establece que las dependencias deben ser sobre abstracciones, no sobre concreciones. En otras palabras, tus clases deben depender de interfaces o clases abstractas, no de clases concretas. Este principio ayuda a reducir el acoplamiento entre las clases y hace que tu sistema sea más flexible y más fácil de cambiar.

 Estos principios son fundamentales para escribir código que sea fácil de mantener, de entender y de modificar. Pueden parecer complicados al principio, pero con la práctica se vuelven intuitivos y forman la base para un buen diseño de software.
 
***********Las analogías son una excelente manera de entender conceptos complejos. Aquí tienes una analogía de la vida real para cada uno de los principios SOLID:

 1. **Principio de responsabilidad única (SRP):** Imagina que estás en un restaurante y un mesero te está atendiendo. Su única responsabilidad es tomar tu pedido y llevarte la comida. Si este mesero también tuviera que cocinar la comida, limpiar las mesas, hacer la contabilidad, etc., probablemente no sería muy eficiente en ninguna de estas tareas. Del mismo modo, una clase o módulo en tu código debe tener una única responsabilidad.

 2. **Principio de abierto/cerrado (OCP):** Piensa en una maleta con ruedas. Puedes agregar cosas a la maleta (está abierta para la extensión), pero no necesitas modificar la maleta en sí misma (está cerrada para la modificación). Del mismo modo, deberías poder agregar nuevas características a tu código sin tener que cambiar el código existente.

 3. **Principio de sustitución de Liskov (LSP):** Imagina que tienes una colección de aves voladoras (pájaros, halcones, etc.). Si reemplazas una de estas aves voladoras por un pingüino (que es técnicamente un ave, pero no puede volar), tu colección ya no será válida. De manera similar, si una subclase no puede funcionar de la misma manera que su clase base, viola el LSP.

 4. **Principio de segregación de la interfaz (ISP):** Imagina que tienes una televisión con un control remoto que tiene un montón de botones que nunca usas. Preferirías un control remoto que solo tenga los botones que realmente usas. Del mismo modo, las clases no deberían tener que depender de interfaces que no usan.

 5. **Principio de inversión de dependencias (DIP):** Piensa en cómo te comunicas con tus amigos. No necesitas saber cómo funciona su teléfono, su sistema operativo, su proveedor de servicios, etc. Todo lo que necesitas es su número de teléfono (una abstracción). Tu dependencia es con la abstracción (el número de teléfono), no con los detalles concretos. Del mismo modo, las clases deberían depender de abstracciones, no de detalles concretos.

 */
