import SwiftUI

struct BookDetailView: View {
  var book: BookModel
  @State private var showAlert = false

  var body: some View {
    ScrollView(.vertical) {
      VStack {
        BookRowView(book: book)
          .padding(.trailing)
        HStack {
          Text("Rating")
            .font(.title3)
            .foregroundColor(.yellow)
          ForEach(1..<6) { index in
            let imageName = (index <= book.rating) ? "star.fill" : "star"
            Image(systemName: imageName)
              .foregroundColor(.yellow)
          }
          Spacer()
          Button("Buy Now") {
            showAlert = true
          }
          .alert(isPresented: $showAlert) {
            Alert(
              title: Text("Order Confirmed!"),
              message: Text("The book will be delivered to you shortly."))
          }
        }
        .padding()
        Text(book.summary)
          .multilineTextAlignment(.leading)
          .padding()
        Spacer()
      }
      .navigationTitle("Book Details")
    }
  }
}

struct BookDetailViewPreviews: PreviewProvider {
  static var previews: some View {
    if let aBook = DataProvider.bookList.first {
      BookDetailView(book: aBook)
    }
  }
}
