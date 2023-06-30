//  WeatherApp
//
//  Created by Danni André on 28/6/23.
//

import SwiftUI

struct CurrentWeatherView: View {
    
    @ObservedObject var viewModel: CurrentWeatherViewModel
    @State var refresh: Bool = false
    
    init(viewModel: CurrentWeatherViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            List(content: content)
                .task {
                    viewModel.refresh()
                }
                .navigationTitle(viewModel.city)
                .navigationBarTitleDisplayMode(.large)
                .listStyle(.grouped)
            Button("Refresh") {
                refresh.toggle()
                viewModel.refresh()
            }
        }
        
    }
}

private extension CurrentWeatherView {
  func content() -> some View {
    if let viewModel = viewModel.dataSource {
      return AnyView(details(for: viewModel))
    } else {
      return AnyView(loading)
    }
  }

  func details(for viewModel: CurrentWeatherRowViewModel) -> some View {
    CurrentWeatherRow(viewModel: viewModel)
  }

  var loading: some View {
    Text("Loading \(viewModel.city)'s weather...")
      .foregroundColor(.gray)
  }
}

