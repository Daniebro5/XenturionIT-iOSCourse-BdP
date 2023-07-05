import SwiftUI

struct ContentView: View {
  @State var horcruxes: [Horcrux] = []
  let secretsURL = FileManager.documentsDirectoryURL
    .appendingPathComponent("Secrets.enc")

  // Call initHorcruxes to create 1.3MB Secrets.enc
  let names = ["Cup", "Diadem", "Journal", "Locket", "Ring", "Snake"]
  let labels = [
    "Hufflepuff's Cup",
    "Ravenclaw's Diadem",
    "Riddle's Diary",
    "Slytherin's Locket",
    "Gaunt's Ring",
    "Nagini"
  ]
  func initHorcruxes() {
    for i in 0..<names.count {
      // swiftlint:disable:next force_unwrapping
      let horcrux = Horcrux(name: names[i], imageData: (UIImage(named: names[i])?.pngData())!, label: labels[i])
      horcruxes.append(horcrux)
    }
  }

  // Once Secrets.enc exists, call readFile instead of initHorcruxes
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

  func writeFile(items: [Horcrux]) {
    // Don't overwrite Secrets.enc with empty array
    guard !items.isEmpty else { return }
    let encoder = PropertyListEncoder()
    encoder.outputFormat = .xml
    do {
      let data = try encoder.encode(items)
        // try data.write(to: secretsURL)
        // solo se accede cuando el dispositivo está desbloqueado
        try data.write(to: secretsURL, options: .completeFileProtection)
      print("Secrets written to file \(secretsURL.absoluteString)")
    } catch {
      print(error)
    }
  }

  var body: some View {
    List(horcruxes, id: \.name) { horcrux in
      HStack {
        // swiftlint:disable:next force_unwrapping
        Image(uiImage: UIImage(data: horcrux.imageData)!)
          .resizable()
          .frame(maxHeight: 100)
          .aspectRatio(1 / 1, contentMode: .fit)
        Text(horcrux.label)
      }
    }
    .onAppear {
      self.initHorcruxes()
      self.readFile()
      self.writeFile(items: self.horcruxes)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(horcruxes: [])
  }
}

public extension FileManager {
  static var documentsDirectoryURL: URL {
    `default`.urls(for: .documentDirectory, in: .userDomainMask)[0]
  }
}
