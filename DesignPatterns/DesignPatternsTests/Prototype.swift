//
//  Prototype.swift
//  DesignPatternsTests
//
//  Created by Danni André on 26/6/23.
//

import XCTest

/// Swift has built-in cloning support. To add cloning support to your class,
/// you need to implement the NSCopying protocol in that class and provide the
/// implementation for the `copy` method.
class BaseClass: NSCopying, Equatable {

    private var intValue = 1
    private var stringValue = "Value"

    required init(intValue: Int = 1, stringValue: String = "value") {
        self.intValue = intValue
        self.stringValue = stringValue
    }

    /// MARK: - NSCopying
    func copy(with zone: NSZone? = nil) -> Any {
        let prototype = type(of: self).init()
        prototype.intValue = intValue
        prototype.stringValue = stringValue
        print("Values defined in BaseClass have been cloned!")
        return prototype
    }

    /// MARK: - Equatable
    static func == (lhs: BaseClass, rhs: BaseClass) -> Bool {
        return lhs.intValue == rhs.intValue && lhs.stringValue == rhs.stringValue
    }
}

/// Subclasses can override the base `copy` method to copy their own data into
/// the resulting object. But you should always call the base method first.
final class SubClass: BaseClass {

    private var boolValue = true
    
    private var regalo: Bool? // (True-False) o (nil)

    func copy() -> Any {
        return copy(with: nil)
    }

    override func copy(with zone: NSZone?) -> Any {
        
        // Precondicion
        // Optionals <- Swift
        // son como una caja, no sabes si tienes o no tienes un regalo hasta que lo abres (?)
        // guard let o if let, safe unwrapping
        
        guard let prototype = super.copy(with: zone) as? SubClass else {
            return SubClass() // oops
        }
        prototype.boolValue = boolValue
        print("Values defined in SubClass have been cloned!")
        return prototype
    }
}

/// The client code.
fileprivate final class Client {
    // ...
    static func someClientCode() {
        let original = SubClass(intValue: 2, stringValue: "Value2")

        guard let copy = original.copy() as? SubClass else {
            XCTAssert(false)
            return
        }

        /// See implementation of `Equatable` protocol for more details.
        XCTAssert(copy == original)

        print("The original object is equal to the copied object!")
    }
    // ...
}

/// Let's see how it all works together.
class PrototypeConceptual: XCTestCase {

    func testPrototype_NSCopying() {
        Client.someClientCode()
    }
}


// private modulo
// fileprivate archivo
// internal - abierto solo al modulo
// open - cualquier lugar de la app
