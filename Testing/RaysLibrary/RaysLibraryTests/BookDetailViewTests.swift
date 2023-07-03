import XCTest
import SwiftUI
import SnapshotTesting
@testable import RaysLibrary

class BookDetailViewTests: XCTestCase {
  let sampleBook = DataProvider.bookList[0]
  var viewController: UIViewController!
  
  override func setUpWithError() throws {
    try super.setUpWithError()
    let bookDetailView = BookDetailView(book: sampleBook)
    viewController = UIHostingController(rootView: bookDetailView)
  }
  
  override func tearDownWithError() throws {
    try super.tearDownWithError()
    viewController = nil
  }

  // Setup - creating an instance of the BookDetailView

  // Tear down - Clear any instance variables

  func testBookDetailViewOniPhone() throws {
    assertSnapshot(
      matching: viewController,
      as: .image(on: .iPhoneX))
  }

  func testBookDetailViewOniPhoneLandscape() throws {
    assertSnapshot(
      matching: viewController,
      as: .image(on: .iPhoneX(.landscape)))
  }

  func testBookDetailViewOniPadPortrait() throws {
    assertSnapshot(
      matching: viewController,
      as: .image(on: .iPhoneX(.portrait)))
  }

  func testBookDetailViewOniPhoneDarkMode() throws {
    assertSnapshot(
      matching: viewController,
      as: .image(on: .iPadPro11(.portrait)))

  }
}
