//  WeatherApp
//
//  Created by Danni André on 28/6/23.
//

import SwiftUI

struct WeeklyWeatherView: View {
  var body: some View {
    NavigationView {
      VStack {
        NavigationLink(
          "Best weather app :] ⛅️",
          destination: CurrentWeatherView()
        )
      }
    }
  }
}
