import XCTest

@testable import BullsEye

final class BullsEyeSlowTests: XCTestCase {
  
  let networkMonitor = NetworkMonitor.shared
  var sut: URLSession!
  
  override func setUpWithError() throws {
    try super.setUpWithError()
    sut = URLSession(configuration: .default)
  }
  
  override func tearDownWithError() throws {
    sut = nil
    try super.tearDownWithError()
  }
  
  // Asynchronous test: success fast, failure slow
  // Asumir que primero va a fallar
  func testValidApiCallGetsHTTPStatusCode200() throws {
    // given
    try XCTSkipUnless(networkMonitor.isReachable,
                      "necesitamos internet para esta prueba")
    let url = URL(string: "http://www.randomnumberapi.com/test")!

    // 1
    let promise = expectation(description: "Status code: 200")

    // when
    let dataTask = sut.dataTask(with: url) { _, response, error in
      // then
      if let error = error {
        XCTFail("Error: \(error.localizedDescription)")
        return
      } else if let statusCode = (response as? HTTPURLResponse)?.statusCode {
        if statusCode == 200 {
          // 2
          promise.fulfill()
        } else {
          XCTFail("Status code: \(statusCode)")
        }
      }
    }
    dataTask.resume()
    // 3
    wait(for: [promise], timeout: 20)
  }
  
  // Asumir que se va a fallar primero y fallar lo más rápido posible
  func testApiCallCompletes() throws {
    try XCTSkipUnless(networkMonitor.isReachable,
                      "necesitamos internet para esta prueba")
    // given
    let urlString = "http://www.randomnumberapi.com/test"
    let url = URL(string: urlString)!
    let promise = expectation(description: "Completion handler invoked")
    var statusCode: Int?
    var responseError: Error?

    // when
    let dataTask = sut.dataTask(with: url) { _, response, error in
      statusCode = (response as? HTTPURLResponse)?.statusCode
      responseError = error
      promise.fulfill()
    }
    dataTask.resume()
    wait(for: [promise], timeout: 5)

    // then
    XCTAssertNil(responseError)
    XCTAssertEqual(statusCode, 200)
  }
}
