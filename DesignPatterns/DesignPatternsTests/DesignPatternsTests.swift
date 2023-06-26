//
//  DesignPatternsTests.swift
//  DesignPatternsTests
//
//  Created by Danni André on 26/6/23.
//

import XCTest
@testable import DesignPatterns

// .count == 0
// .isEmpty

// "".isEmpty

// Sintactyc suggar

// final
//

final class DesignPatternsTests: XCTestCase {
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
}

// Herencia
// Compilador hace un checkeo de todas las clases y sus herencias
final class Persona {
    func caminar() { }
}
