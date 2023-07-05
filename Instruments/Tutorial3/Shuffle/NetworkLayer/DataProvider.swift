import UIKit

enum DataAPI {
  case randomImage
  case quoteOfTheDay
  case listOfQuotes
  case login
  case activities
  case favorite(quoteId: Int)

  var urlString: String {
    switch self {
    case .randomImage:
      return "https://picsum.photos/300/600.jpg?blur=6"
    case .quoteOfTheDay:
      return "https://favqs.com/api/qotd"
    case .listOfQuotes:
      return "https://favqs.com/api/quotes"
    case .login:
      return "https://favqs.com/api/session"
    case .activities:
      return "https://favqs.com/api/activities"
    case .favorite(let quoteId):
      return "https://favqs.com/api/quotes/\(quoteId)/fav"
    }
  }

  var url: URL? {
    URL(string: urlString)
  }
}

enum Secrets {
  static let AppToken = "Token token=8907417c6c8a4e1180dc27725d4ff24b"
}

class DataProvider {
  var dataTaskFetchQuote: URLSessionDataTask?
  var dataTaskFetchImage: URLSessionDataTask?
  static let sharedInstance = DataProvider()

  func getRandomPicture(completion: @escaping (UIImage?) -> Void) {
    dataTaskFetchImage?.cancel()
    guard let url = DataAPI.randomImage.url else {
      return
    }
    dataTaskFetchImage = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
      defer {
        self?.dataTaskFetchImage = nil
      }
      if let anError = error {
        debugPrint("DataTask Error: " + anError.localizedDescription)
        return completion(nil)
      }
      guard
        let aData = data,
        let image = UIImage(data: aData)
      else {
        return completion(nil)
      }
      completion(image)
    }
    dataTaskFetchImage?.taskDescription = "RandomImageDownloadTask"
    dataTaskFetchImage?.resume()
  }

  func getQOTD(completion:@escaping (QuoteOfTheDay?) -> Void) {
    dataTaskFetchQuote?.cancel()
    guard let url = DataAPI.quoteOfTheDay.url else {
      return
    }
    let urlRequest = URLRequest(url: url, cachePolicy: .returnCacheDataElseLoad)
    dataTaskFetchQuote = URLSession.shared.dataTask(with: urlRequest) { [weak self] data, _, error in
      defer {
        self?.dataTaskFetchQuote = nil
      }
      if let anError = error {
        debugPrint("DataTask error: " + anError.localizedDescription)
        return completion(nil)
      }
      guard
        let aData = data,
        let qotd = try? JSONDecoder().decode(QuoteOfTheDay.self, from: aData)
      else {
        return completion(nil)
      }
      completion(qotd)
    }
    dataTaskFetchQuote?.taskDescription = "QuoteOfTheDayDownloadTask"
    dataTaskFetchQuote?.resume()
  }

  func getQuoteList(completion:@escaping (QuoteList?) -> Void) {
    guard let url = DataAPI.listOfQuotes.url else {
      return
    }
    var urlRequest = URLRequest(url: url, cachePolicy: .returnCacheDataElseLoad)
    urlRequest.setValue(Secrets.AppToken, forHTTPHeaderField: "Authorization")
    URLSession.shared.dataTask(with: urlRequest) { data, _, error in
      if let anError = error {
        debugPrint("DataTask error: " + anError.localizedDescription)
        return completion(nil)
      }
      guard
        let aData = data,
        let quoteList = try? JSONDecoder().decode(QuoteList.self, from: aData)
      else {
        return completion(nil)
      }
      completion(quoteList)
    }
    .resume()
  }

  func login(userName: String, password: String, completion:@escaping (User?) -> Void) {
    guard let url = DataAPI.login.url else { return }
    var urlRequest = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalAndRemoteCacheData)
    urlRequest.httpMethod = "POST"
    urlRequest.setValue("application/json", forHTTPHeaderField: "Accept")
    urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
    urlRequest.setValue(Secrets.AppToken, forHTTPHeaderField: "Authorization")
    let requestBody: NSDictionary = ["user": ["login": userName, "password": password]]
    urlRequest.httpBody = try? JSONSerialization.data(withJSONObject: requestBody, options: .prettyPrinted)
    URLSession.shared.dataTask(with: urlRequest) { data, _, error in
      if let anError = error {
        debugPrint("DataTask error: " + anError.localizedDescription)
        return completion(nil)
      }
      guard
        let aData = data,
        let user = try? JSONDecoder().decode(User.self, from: aData)
      else {
        return completion(nil)
      }
      completion(user)
    }
    .resume()
  }

  func getActivities(forUser user: User, completion:@escaping (ActivityList?) -> Void) {
    guard let url = DataAPI.activities.url else { return }
    var urlRequest = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalAndRemoteCacheData)
    urlRequest.setValue(Secrets.AppToken, forHTTPHeaderField: "Authorization")
    urlRequest.setValue("Token token=\(user.token)", forHTTPHeaderField: "User-Token")
    URLSession.shared.dataTask(with: urlRequest) { data, _, error in
      if let anError = error {
        debugPrint("DataTask error: " + anError.localizedDescription)
        return completion(nil)
      }
      guard
        let aData = data,
        let activityList = try? JSONDecoder().decode(ActivityList.self, from: aData)
      else {
        return completion(nil)
      }
      completion(activityList)
    }
    .resume()
  }

  func bookmark(quote: Quote, forUser user: User, completion:@escaping (Bool) -> Void) {
    guard let url = DataAPI.favorite(quoteId: quote.id).url else { return }
    var urlRequest = URLRequest(url: url)
    urlRequest.httpMethod = "PUT"
    urlRequest.setValue(Secrets.AppToken, forHTTPHeaderField: "Authorization")
    urlRequest.setValue("Token token=\(user.token)", forHTTPHeaderField: "User-Token")
    URLSession.shared.dataTask(with: urlRequest) { _, _, error in
      if let anError = error {
        debugPrint("DataTask error: " + anError.localizedDescription)
        return completion(false)
      }
      return completion(true)
    }
    .resume()
  }
}
