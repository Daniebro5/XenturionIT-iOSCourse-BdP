/*
 
 Patrones de arquitectura
 
 Los patrones de arquitectura y los patrones de diseño son dos conceptos diferentes en el desarrollo de software, aunque comparten ciertas similitudes.
 
 Los patrones de diseño se centran en la resolución de problemas a nivel de diseño de componentes individuales y las interacciones entre ellos. Estos patrones proporcionan soluciones probadas y optimizadas para desafíos comunes en el diseño de software. Los patrones de diseño se centran en aspectos como la estructura, comportamiento y comunicación de los componentes del software. Ejemplos de patrones de diseño son el Singleton, Adapter, Observer, entre otros.
 
 Por otro lado, los patrones de arquitectura se enfocan en la estructura y organización general de una aplicación o sistema. Estos patrones proporcionan una guía y un conjunto de reglas para la distribución y coordinación de componentes en una arquitectura de software. Los patrones de arquitectura abordan desafíos a nivel de alto nivel, como la separación de responsabilidades, la escalabilidad, la modularidad y la mantenibilidad. Ejemplos de patrones de arquitectura son el MVC (Model-View-Controller), MVVM (Model-View-ViewModel), VIPER (View-Interactor-Presenter-Entity-Router), entre otros.
 
 En resumen, los patrones de diseño se centran en la solución de problemas a nivel de componentes individuales, mientras que los patrones de arquitectura se enfocan en la estructura y organización general de una aplicación o sistema. Ambos tipos de patrones son herramientas importantes en el desarrollo de software y se complementan entre sí para crear sistemas eficientes, escalables y mantenibles.
 
 **************** Recursos Adicionales ***************
 
 Aquí tienes una lista de recursos para aprender sobre patrones de arquitectura en Swift:
 
 1. Documentación oficial de Apple:
 - Documentación sobre patrones de diseño y arquitectura en Swift: https://developer.apple.com/design/human-interface-guidelines/ios/overview/themes/
 
 2. Libros:
 - "Design Patterns: Elements of Reusable Object-Oriented Software" de Erich Gamma, Richard Helm, Ralph Johnson y John Vlissides.
 - "Design Patterns in Swift" de Vamshi Krishna
 
 3. Tutoriales y artículos en línea:
 - RayWenderlich.com: https://www.raywenderlich.com/
 - Ofrece tutoriales y guías detalladas sobre varios patrones de arquitectura en Swift.
 - Swift by Sundell: https://www.swiftbysundell.com/
 - Un blog que cubre diversos temas de desarrollo de Swift, incluidos patrones de arquitectura.
 - Hacking with Swift: https://www.hackingwithswift.com/
 - Proporciona tutoriales y proyectos prácticos que cubren diferentes patrones de arquitectura en Swift.
 
 4. Cursos en línea:
 - Udemy: https://www.udemy.com/
 - Plataforma que ofrece cursos en línea sobre Swift y desarrollo de iOS que incluyen lecciones sobre patrones de arquitectura.
 - Coursera: https://www.coursera.org/
 - Ofrece cursos especializados en desarrollo de iOS y patrones de diseño en Swift.
 
 5. Repositorios de código:
 - GitHub: https://github.com/
 - Explora repositorios de código abierto en Swift que implementan diferentes patrones de arquitectura.
 - Awesome-Swift: https://github.com/matteocrippa/awesome-swift
 - Una recopilación de recursos y bibliotecas útiles en Swift, que incluye ejemplos y proyectos relacionados con patrones de arquitectura.
 
 Recuerda que aprender y dominar los patrones de arquitectura lleva tiempo y práctica. Es recomendable combinar el estudio teórico con la implementación práctica en proyectos reales para obtener una comprensión completa de cada patrón y cómo se aplican en el desarrollo de aplicaciones en Swift.
 
 
 ************ Patrones de Arquitectura Comunes *************
 
 Aquí tienes una descripción breve de los patrones de arquitectura MVC, MVVM, VIPER y RIBs, junto con algunas ventajas y desventajas asociadas a cada uno:
 
 1. MVC (Model-View-Controller):
 - Descripción: Separación de responsabilidades en tres componentes: el Modelo (lógica de negocio y datos), la Vista (interfaz de usuario) y el Controlador (mediador entre el Modelo y la Vista).
 - Ventajas: Simplicidad, facilidad de comprensión, ampliamente utilizado, buen enfoque para aplicaciones pequeñas y sencillas.
 - Desventajas: Dificultades para escalar en aplicaciones grandes, el Controlador puede volverse pesado y difícil de mantener, acoplamiento entre el Controlador y la Vista.
 
 2. MVVM (Model-View-ViewModel):
 - Descripción: Separación de responsabilidades en tres componentes: el Modelo (lógica de negocio y datos), la Vista (interfaz de usuario) y el ViewModel (encargado de exponer los datos y acciones para la Vista).
 - Ventajas: Separación clara de responsabilidades, facilita la reutilización de código, soporte para enlace de datos (data binding), buena escalabilidad, facilita las pruebas unitarias.
 - Desventajas: Mayor complejidad en comparación con MVC, curva de aprendizaje inicial, puede ser excesivo para aplicaciones pequeñas y sencillas.
 
 3. VIPER (View-Interactor-Presenter-Entity-Router):
 - Descripción: Separación de responsabilidades en cinco componentes: la Vista (interfaz de usuario), el Interactor (lógica de negocio), el Presenter (mediador entre la Vista y el Interactor), la Entidad (datos) y el Router (navegación entre módulos).
 - Ventajas: Alta modularidad y escalabilidad, facilita las pruebas unitarias, separación clara de responsabilidades, mejora el mantenimiento y la colaboración en equipos grandes.
 - Desventajas: Mayor complejidad y cantidad de código en comparación con MVC y MVVM, curva de aprendizaje inicial, puede ser excesivo para aplicaciones pequeñas y sencillas.
 
 4. RIBs (Router-Interactor-Builder):
 - Descripción: Basado en el concepto de construcción de bloques, donde los componentes se componen jerárquicamente. Cada módulo tiene su propio Router, Interactor y Builder.
 - Ventajas: Modularidad extrema, fácil extensibilidad y reutilización, mejora el mantenimiento y la colaboración en equipos grandes, permite un enfoque LEGO-like en el desarrollo de aplicaciones.
 - Desventajas: Mayor complejidad y curva de aprendizaje inicial, más adecuado para aplicaciones grandes y complejas, puede generar un número significativo de archivos y clases.
 
 Es importante tener en cuenta que cada patrón de arquitectura tiene su lugar y su aplicabilidad depende del contexto y los requisitos del proyecto. Las ventajas y desventajas mencionadas son generales y pueden variar según la situación. Es recomendable evaluar cuidadosamente las necesidades y características del proyecto antes de seleccionar un patrón de arquitectura.
 */

// CI/CD -> DevOps -> Fastlane, Jenkins, CircleCI, Bitrise, Azure, AppCenter
// Pipelines de GIT -> reglas (si pruebas no pasan, notificar) -> Error, el build no pasa las pruebas
