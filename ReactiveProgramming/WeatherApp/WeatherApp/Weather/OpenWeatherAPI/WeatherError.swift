//  WeatherApp
//
//  Created by Danni André on 28/6/23.
//

import Foundation

enum WeatherError: Error {
  case parsing(description: String)
  case network(description: String)
}
