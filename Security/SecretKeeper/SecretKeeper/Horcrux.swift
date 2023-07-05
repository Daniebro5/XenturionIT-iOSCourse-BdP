import Foundation

struct Horcrux: Codable {
  let name: String
  let imageData: Data
  let label: String
}


func readFile() {
  let decoder = PropertyListDecoder()
  do {
    let data = try Data.init(contentsOf: secretsURL)
    horcruxes = try decoder.decode([Horcrux].self, from: data)
    print("Secrets read from file \(secretsURL.absoluteString)")
  } catch {
    print(error)
  }
}
