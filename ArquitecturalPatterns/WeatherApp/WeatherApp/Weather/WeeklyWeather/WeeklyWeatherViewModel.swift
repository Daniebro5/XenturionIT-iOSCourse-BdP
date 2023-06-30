//  WeatherApp
//
//  Created by Danni André on 28/6/23.
//

import Combine
import SwiftUI

class WeeklyWeatherViewModel: ObservableObject, Identifiable {
    
    @Published var city: String = ""
    @Published var dataSource: [DailyWeatherRowViewModel] = []
    
    private let weatherFetcher: WeatherFetchable
    private var cancellables = Set<AnyCancellable>()
    
    init(weatherFetcher: WeatherFetcher) {
        self.weatherFetcher = weatherFetcher
    }
    
    func fetchWeather(forCity city: String) {
      weatherFetcher.weeklyWeatherForecast(forCity: city)
        .map { response in
          response.list.map(DailyWeatherRowViewModel.init)
        }
        .map(Array.removeDuplicates)
        .receive(on: DispatchQueue.main)
        .sink(
          receiveCompletion: { [weak self] value in
            guard let self = self else { return }
            switch value {
            case .failure:
              self.dataSource = []
            case .finished:
              break
            }
          }, receiveValue: { [weak self] forecast in
            guard let self = self else { return }
            self.dataSource = forecast
        })
        .store(in: &cancellables)
    }
}
