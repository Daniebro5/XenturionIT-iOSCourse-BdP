import SwiftUI

struct BookListView: View {
  let bookList = DataProvider.bookList

  var body: some View {
    NavigationView {
      List(bookList) { book in
        ZStack {
          BookRowView(book: book)
          NavigationLink("", destination: BookDetailView(book: book))
        }
      }
      .navigationTitle("Ray's Library")
    }
    .navigationViewStyle(StackNavigationViewStyle())
  }
}

struct ContentViewPreviews: PreviewProvider {
  static var previews: some View {
    BookListView()
  }
}
