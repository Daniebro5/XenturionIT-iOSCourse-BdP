import Foundation

struct BookModel: Codable, Identifiable {
  var id: String
  var image: String
  var title: String
  var author: String
  var release: String
  var rating: Int
  var description: String
  var summary: String
}
