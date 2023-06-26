// Design Patterns in Swift // Gang of Four GoF
// Resolver problemas de lógica de negocio

// Patrones de Creación
// Abstract Factory
// Builder
// Factory Method
// Prototype
// Singleton

// Patrones Estructurales
// Adapter
// Bridge
// Composite
// Decorator
// Facade
// Flyweight
// Proxy

// Patrones de Comportamiento
// Chain of Responsibility
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

 Construimos una familia de Productos: Mesa, silla y sillón
 Variantes de Productos: Moderna, Victoriana, Clásica
 
 Necesidad: Hacer un match de las variantes con los productos que necesita, es decir, vender los productos que quiera el cliente de la misma variante, a la vez que adaptarnos al crecimiento de productos y variantes
 
 Primero debemos abstraer los productos como interfaces (Protocolos) y luego aplicar las variantes a estas interfaces
 
 Protocolo Silla {
    func hasLegs()
    func sitOn()
 }
 
 Protocolo Mesa {
    func hasLegs()
    func putThingsOn()
 }
 
 Protocolo Sillon {
    func hasLegs()
    func sitOn()
 }

*/


/* BUILDER
 
 Permite crear objetos complejos paso a paso, especialmente útil cuando existen muchísimas subvariantes del objeto
 
 Casa(conGarage: Bool, conPatio: Bool, cuantosPisos: Int, queTecho: String)
 
 Protocolo Casa {
    var garage: Bool { get }
    var patio: Bool { get }
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
 
 Protocolo House {
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
 
 ¿De qué clase es esto?
 ¿Qué rol juega esta clase?
 ¿En qué sentido están relacionados el comportamiento de la clase?
 
 */

/*
 Prototype
 
 Nos permite clonar clases, incluso las más complejas, sin necesidad de enviar las dependencias de esa clase.
 Persona(Danni Brito) -> Persona(nombre, apellido, trabajo, exp, papá, mamá, .......) private exNovia
 
 let a = Danni()
 let b = a
 b
 a.exNovia // error
 
 */

/*
 
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
