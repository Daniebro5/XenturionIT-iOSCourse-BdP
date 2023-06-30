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
}
