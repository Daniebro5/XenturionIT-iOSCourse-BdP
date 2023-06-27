//
//  Builder.swift
//  DesignPatternsTests
//
//  Created by Danni André on 26/6/23.
//

import XCTest

/// The Builder interface specifies methods for creating the different parts of
/// the Product objects.
protocol Builder {
    func crearGarage()
    func crearVentana()
    func crearPuerta()
}

/// The Concrete Builder classes follow the Builder interface and provide
/// specific implementations of the building steps. Your program may have
/// several variations of Builders, implemented differently.
class ConcreteBuilder1: Builder {
    /// A fresh builder instance should contain a blank product object, which is
    /// used in further assembly.
    private var casa = Casa1()

    func reset() {
        casa = Casa1()
    }

    /// All production steps work with the same product instance.
    func crearGarage() {
        casa.add(part: "garage")
    }
    
    func crearVentana() {
        casa.add(part: "ventana")
    }
    
    func crearPuerta() {
        casa.add(part: "puerta")
    }
    
    func crearCimientos() {
        casa.add(part: "cimientos")
    }
    
    func crearTecho() {
        casa.add(part: "techo")
    }
    
    func crearPiscina() {
        casa.add(part: "piscina")
    }
    
    func crearPanelesSolares() {
        casa.add(part: "puerta")
    }

    /// Concrete Builders are supposed to provide their own methods for
    /// retrieving results. That's because various types of builders may create
    /// entirely different products that don't follow the same interface.
    /// Therefore, such methods cannot be declared in the base Builder interface
    /// (at least in a statically typed programming language).
    ///
    /// Usually, after returning the end result to the client, a builder
    /// instance is expected to be ready to start producing another product.
    /// That's why it's a usual practice to call the reset method at the end of
    /// the `getProduct` method body. However, this behavior is not mandatory,
    /// and you can make your builders wait for an explicit reset call from the
    /// client code before disposing of the previous result.
    func retrieveProduct() -> Casa1 {
        let result = self.casa
        reset()
        return result
    }
}

/// The Director is only responsible for executing the building steps in a
/// particular sequence. It is helpful when producing products according to a
/// specific order or configuration. Strictly speaking, the Director class is
/// optional, since the client can control builders directly.
class Director {

    private var builder: Builder?

    /// The Director works with any builder instance that the client code passes
    /// to it. This way, the client code may alter the final type of the newly
    /// assembled product.
    func update(builder: Builder) {
        self.builder = builder
    }

    /// The Director can construct several product variations using the same
    /// building steps.
    func buildMinimalViableProduct() {
        builder?.crearGarage()
    }

    func buildFullFeaturedProduct() {
        builder?.crearGarage()
        builder?.crearPuerta()
        builder?.crearVentana()
    }
}

/// It makes sense to use the Builder pattern only when your products are quite
/// complex and require extensive configuration.
///
/// Unlike in other creational patterns, different concrete builders can produce
/// unrelated products. In other words, results of various builders may not
/// always follow the same interface.
class Casa1 {

    private var parts = [String]()

    func add(part: String) {
        self.parts.append(part)
    }

    func listParts() -> String {
        return "Product parts: " + parts.joined(separator: ", ") + "\n"
    }
}

/// The client code creates a builder object, passes it to the director and then
/// initiates the construction process. The end result is retrieved from the
/// builder object.
fileprivate class Client {
    // ...
    static func someClientCode(director: Director) {
        let builder = ConcreteBuilder1()
        director.update(builder: builder)
        
        print("Standard basic product:")
        director.buildMinimalViableProduct()
        print(builder.retrieveProduct().listParts())

        print("Standard full featured product:")
        director.buildFullFeaturedProduct()
        print(builder.retrieveProduct().listParts())

        // Remember, the Builder pattern can be used without a Director class.
        print("Custom product:")
        builder.crearVentana()
        builder.crearGarage()
        print(builder.retrieveProduct().listParts())
    }
    // ...
}

/// Let's see how it all comes together.
class BuilderConceptual: XCTestCase {

    func testBuilderConceptual() {
        let director = Director()
        Client.someClientCode(director: director)
    }
}
