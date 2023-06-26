// Design Patterns in Swift // Gang of Four GoF
// Resolver problemas de lógica de negocio

// Patrones de Creacion
// Abstract Factory
// Builder
// Factory Method
// Prototype
// Singleton***

// Patrones Estructurales
// Adapter
// Bridge
// Composite
// Decorator
// Facade
// Flyweight
// Proxy

// Patrones de Comportamiento
// Chain of responsability
// Command
// Iterator
// Mediator
// Memento
// Observer
// State
// Strategy
// Template
// Visitor



/* Abstract Factory

 Constuimos una familia de Productos: Mesa, silla y sillón
 Variantes de Productos: Modern, Victoriana, Clásica
 
 Necesidad: Hacer un match de las variantes con los productos que necesita, es decir vender los productos que quiera el cliente de la misma variante, a la vez que adaptarnos al crecimiento de productos y variantes
 
 Primero debemos abstraer los productos como interfaces (Protocolos) y luego aplicar las variantes a estas interfaces
 
 Interfaz Silla (hasLegs(), sitOn()) <- (Victoriana)
 Interfaz Silla (hasLegs(), sitOn()) <- (Moderna)

*/



/* BUILDER
 
 permite crear objetos complejos paso por paso, especialmente util cuando existen muchìsimas subvariantes del objeto
 
 Casa(conGarage: Bool, conPatio: Bool, cuantosPisos: Int, queTecho: "String")
 
 protocol (interfaz) Casa {
    var garage: Bool
    var patio: Bool
    ......
 
 }
 
 class CasaConGarageSinPatio: Casa {
    var garage: Bool
    var patio: Bool
 
 }
 
 class CasaConGarageConPatio: Casa {
    var garage: Bool
    var patio: Bool
 
 }
 ...
 ...
 
 SOLUCIÓN
 
 protocol House {
    func mudarseAhí()
    func cambiarTechoAMadera()
    func construirGarage()
 ...
 }
 
 class BuilderGarages {
    func construirGarage(casa: House) {
        casa.construirGarage()
    }
 }
 
 class BuilderVentanas {
 
 }
 
 */

/*
 Factory Method
 
 de que clase es esto?
 que rol juega esta clase?
 en que sentido estàn relacionados el comportamiento de la clase?
 
 */

/*
 Prototype
 
 Nos permite clonar clases, incluso las màs complejas, sin necesidad de enviar las dependencias de esa clase.
 Persona(Danni Brito) -> Persona(nombre, apellido, trabajo, exp, papa, mama, .......) private exNovia
 
 let a = Danni()
 let b = a
 b
 a.exNovia // error
 
 */

/*
 
 Patrones de arquitectura
 Comunicaciòn entre mòdulos
 
 
 Todos tienen un Model por debajo - Implícito
 
 +Complejo +Testeo
 
 MVC -> Model "ViewController" - Apps pequeñas
 - Massive ViewController
 
 MVVM -> Model - View - ViewModel
 - Usuario mira la vista, pero interactua con el ViewModel, progracion reactiva very good
 
 VIPER -> View - Interactor(logica del negocio) - "Presenter (se suele omitir, y es necesario en View Complejas)" - Router (BUILDER)
 
 RIBs (es un lego) -> Router - Interactor - Builder
    - Router - desde donde puede venir o instanciarse
    - El builder lo construye
    - el interactor maneja la logica del negocio y llama al router
 
    // PantallaA - TocamosImageParaIrB - Llamo al router
 
 */

