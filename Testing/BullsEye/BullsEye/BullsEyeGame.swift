import Foundation

class BullsEyeGame {
  var round = 0
  let startValue = 50
  var targetValue = 50
  var scoreRound = 0
  var scoreTotal = 0

  var urlSession: URLSessionProtocol

  init(urlSession: URLSessionProtocol) {
    self.urlSession = urlSession
    startNewGame()
  }

  func startNewGame() {
    round = 1
    scoreTotal = 0
  }

  func startNewRound(completion: @escaping () -> Void) {
    round += 1
    scoreRound = 0
    getRandomNumber { newTarget in
      self.targetValue = newTarget
      DispatchQueue.main.async {
        completion()
      }
    }
  }

  @discardableResult
  func check(guess: Int) -> Int {
    let difference = abs(targetValue - guess)
    scoreRound = 100 - difference
    scoreTotal += scoreRound
    return difference
  }

  func getRandomNumber(completion: @escaping (Int) -> Void,
                       url: URL? = URL(string: "http://www.randomnumberapi.com/api/v1.0/random?min=0&max=100&count=1")) {
    guard let url = url else {
      return
    }
    let task = urlSession.dataTask(with: url) { data, _, error in
      do {
        guard
          let data = data,
          error == nil,
          let newTarget = try JSONDecoder().decode([Int].self, from: data).first
        else {
          return
        }
        completion(newTarget)
      } catch {
        print("Decoding of random numbers failed.")
      }
    }
    task.resume()
  }
}
