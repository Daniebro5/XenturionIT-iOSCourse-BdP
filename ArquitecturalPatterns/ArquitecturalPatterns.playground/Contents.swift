/*
 
 Patrones de arquitectura
 
 Los patrones de arquitectura y los patrones de diseño son dos conceptos diferentes en el desarrollo de software, aunque comparten ciertas similitudes.

 Los patrones de diseño se centran en la resolución de problemas a nivel de diseño de componentes individuales y las interacciones entre ellos. Estos patrones proporcionan soluciones probadas y optimizadas para desafíos comunes en el diseño de software. Los patrones de diseño se centran en aspectos como la estructura, comportamiento y comunicación de los componentes del software. Ejemplos de patrones de diseño son el Singleton, Adapter, Observer, entre otros.

 Por otro lado, los patrones de arquitectura se enfocan en la estructura y organización general de una aplicación o sistema. Estos patrones proporcionan una guía y un conjunto de reglas para la distribución y coordinación de componentes en una arquitectura de software. Los patrones de arquitectura abordan desafíos a nivel de alto nivel, como la separación de responsabilidades, la escalabilidad, la modularidad y la mantenibilidad. Ejemplos de patrones de arquitectura son el MVC (Model-View-Controller), MVVM (Model-View-ViewModel), VIPER (View-Interactor-Presenter-Entity-Router), entre otros.

 En resumen, los patrones de diseño se centran en la solución de problemas a nivel de componentes individuales, mientras que los patrones de arquitectura se enfocan en la estructura y organización general de una aplicación o sistema. Ambos tipos de patrones son herramientas importantes en el desarrollo de software y se complementan entre sí para crear sistemas eficientes, escalables y mantenibles.
 
 
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
