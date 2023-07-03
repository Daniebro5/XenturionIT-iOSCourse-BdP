import SwiftUI

struct BookRowView: View {
  var book: BookModel

  var body: some View {
    HStack {
      Image(book.image)
        .resizable()
        .scaledToFit()
        .frame(width: 100, height: 100, alignment: .leading)
        .padding()
      VStack(alignment: .leading) {
        Text(book.title)
          .font(.title3)
          .foregroundColor(.orange)
        Text(book.description)
          .font(.footnote)
          .foregroundColor(Color("rw-green"))
        HStack {
          // Insert release Text
          Text(book.author)
            .font(.subheadline)
            .italic()
            .foregroundColor(.secondary)
        }
      }
      Spacer()
    }
  }
}

struct BookRowPreviews: PreviewProvider {
  static var previews: some View {
    if let aBook = DataProvider.bookList.first {
      BookRowView(book: aBook)
    }
  }
}
