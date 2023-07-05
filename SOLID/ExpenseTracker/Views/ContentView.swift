import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      List {
        ForEach(ReportRange.allCases, id: \.self) { value in
          NavigationLink(
            value.rawValue,
            destination: expenseView(for: value)
              .navigationTitle(value.rawValue))
        }
      }
      .navigationTitle("Reports")
    }
  }
  
  func expenseView(for range: ReportRange) -> ExpensesView {
    let dataSource = ReportsDataSource(reportRange: range)
    return ExpensesView(dataSource: dataSource)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
