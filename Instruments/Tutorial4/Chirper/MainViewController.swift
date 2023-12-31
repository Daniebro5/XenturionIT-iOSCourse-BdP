/// Copyright (c) 2019 Razeware LLC
/// 
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
/// 
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
/// 
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
/// 
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import UIKit

enum State {
  case loading
  case paging([Recording], next: Int)
  case populated([Recording])
  case empty
  case error(Error)
  
  var currentRecordings: [Recording] {
    switch self {
    case .paging(let recordings, _):
      return recordings
    case .populated(let recordings):
      return recordings
    default:
      return []
    }
  }
}

class MainViewController: UIViewController {
  @IBOutlet weak var tableView: UITableView!
  @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
  @IBOutlet weak var loadingView: UIView!
  @IBOutlet weak var emptyView: UIView!
  @IBOutlet weak var errorLabel: UILabel!
  @IBOutlet weak var errorView: UIView!
  
  let searchController = UISearchController(searchResultsController: nil)
  let networkingService = NetworkingService()
  let darkGreen = UIColor(red: 11/255, green: 86/255, blue: 14/255, alpha: 1)
  
  var state = State.loading {
    didSet {
      setFooterView()
      tableView.reloadData()
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    title = "Chirper"
    activityIndicator.color = darkGreen
    prepareNavigationBar()
    prepareSearchBar()
    prepareTableView()
    loadRecordings()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    searchController.searchBar.becomeFirstResponder()
  }
  
  // MARK: - Loading recordings
  
  @objc func loadRecordings() {
    state = .loading
    loadPage(1)
  }
  
  func loadPage(_ page: Int) {
    let query = searchController.searchBar.text
    networkingService.fetchRecordings(matching: query, page: page) { [weak self] response in
      guard let self = self else {
        return
      }
      
      self.searchController.searchBar.endEditing(true)
      self.update(response: response)
    }
  }
  
  func update(response: RecordingsResult) {
    print("Updating with network response.")
    
    if let error = response.error {
      print("Setting state to .error: \(error)")
      state = .error(error)
      return
    }
    
    guard
      let newRecordings = response.recordings,
      !newRecordings.isEmpty
      else {
        print("No recordings. Setting state to .empty")
        state = .empty
        return
    }
    
    var allRecordings = state.currentRecordings
    allRecordings.append(contentsOf: newRecordings)
    
    if response.hasMorePages {
      print("Setting state to .paging with next page as \(response.nextPage)")
      state = .paging(allRecordings, next: response.nextPage)
    } else {
      print("Setting state to .populated. Total recordings: \(newRecordings.count)")
      state = .populated(allRecordings)
    }
  }
  
  // MARK: - View Configuration
  
  func setFooterView() {
    switch state {
    case .error(let error):
      errorLabel.text = error.localizedDescription
      tableView.tableFooterView = errorView
    case .loading:
      tableView.tableFooterView = loadingView
    case .paging:
      tableView.tableFooterView = loadingView
    case .empty:
      tableView.tableFooterView = emptyView
    case .populated:
      tableView.tableFooterView = nil
    }
  }
  
  func prepareSearchBar() {
    definesPresentationContext = true
    searchController.obscuresBackgroundDuringPresentation = false
    searchController.searchBar.delegate = self
    searchController.searchBar.autocapitalizationType = .none
    searchController.searchBar.autocorrectionType = .no
    
    searchController.searchBar.tintColor = .white
    searchController.searchBar.barTintColor = .white
    searchController.searchBar.searchTextField.backgroundColor = .black
    
    let whiteTitleAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    let textFieldInSearchBar = UITextField.appearance(whenContainedInInstancesOf: [UISearchBar.self])
    textFieldInSearchBar.defaultTextAttributes = whiteTitleAttributes
    
    navigationItem.searchController = searchController
    searchController.searchBar.becomeFirstResponder()
  }
  
  func prepareNavigationBar() {
    navigationController?.navigationBar.barTintColor = darkGreen
    
    let whiteTitleAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    navigationController?.navigationBar.titleTextAttributes = whiteTitleAttributes
  }
  
  func prepareTableView() {
    tableView.dataSource = self
    
    let nib = UINib(nibName: BirdSoundTableViewCell.NibName, bundle: .main)
    tableView.register(nib, forCellReuseIdentifier: BirdSoundTableViewCell.ReuseIdentifier)
  }
  
}

// MARK: -

extension MainViewController: UISearchBarDelegate {
  func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
  }
  
  func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
    NSObject.cancelPreviousPerformRequests(withTarget: self,
                                           selector: #selector(loadRecordings),
                                           object: nil)
    
    perform(#selector(loadRecordings), with: nil, afterDelay: 0.5)
  }
  
}

extension MainViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return state.currentRecordings.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(
      withIdentifier: BirdSoundTableViewCell.ReuseIdentifier)
      as? BirdSoundTableViewCell else {
        return UITableViewCell()
    }
    
    let recording = state.currentRecordings[indexPath.row]
    print("Loading \(recording)")
    
    cell.load(recording: recording)
    
    if case .paging(_, let nextPage) = state,
      indexPath.row == state.currentRecordings.count - 1 {
      print("Reached end of table view. Loading next page.")
      loadPage(nextPage)
    }
    
    return cell
  }
}

