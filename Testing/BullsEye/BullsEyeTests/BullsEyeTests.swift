import XCTest

// Sube un nivel la encapsulación: Internal -> Public
@testable import BullsEye

final class BullsEyeTests: XCTestCase {
  
  // Subject Under Test: Sujeto a Pruebas
  var sut: BullsEyeGame!
  
  override func setUpWithError() throws {
    try super.setUpWithError()
    sut = BullsEyeGame()
  }
  
  override func tearDownWithError() throws {
    sut = nil
    try super.tearDownWithError()
  }
  
  func testScoreIsComputedWhenGuessIsHigherThanTarget() {
    // given (dados)
    let guess = sut.targetValue + 5

    // when (cuando)
    sut.check(guess: guess)

    // then (entonces)
    XCTAssertEqual(sut.scoreRound, 95, "Score computed from guess is wrong")
  }
  
  func testScoreIsComputedWhenGuessIsLowerThanTarget() {
    // Given
    let guess = sut.targetValue - 5
    
    // when (cuando)
    sut.check(guess: guess)

    // then (entonces)
    XCTAssertEqual(sut.scoreRound, 95, "Score computed from guess is wrong")
  }
  
  func testScoreIsComputedPerformance() {
    measure(
      metrics: [
        XCTClockMetric(),
        XCTCPUMetric(),
        XCTStorageMetric(),
        XCTMemoryMetric()
      ]
    ) {
      sut.check(guess: 100)
    }
  }
  
  func testBadURLDoesNotChangeBaseScore() {
    // given
    let initialValue = sut.targetValue
    var newValue = 0
    
    // when
    sut.getRandomNumber (completion: { newValueServer in
      newValue = newValueServer
      return
    }, url: URL(string: "badUrl"))
    
    // then
    XCTAssertNotEqual(initialValue, newValue)
  }
}
