import XCTest
import SwiftUI
import SnapshotTesting

@testable import RaysLibrary

class BookRowViewTests: XCTestCase {
  let sampleBook = DataProvider.bookList[0]

  func testBookRowView() throws {
    let bookRowView = BookRowView(book: sampleBook)
    let view: UIView = UIHostingController(rootView: bookRowView).view
    
    // cambiar esto dependiendo si introjuste un cambio en UI
    // isRecording = true
    
    assertSnapshot(
      matching: view,
      as: .image(size: view.intrinsicContentSize))
  }
}
