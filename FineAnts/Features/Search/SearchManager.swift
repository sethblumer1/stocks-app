//
//  SearchManager.swift
//  FineAnts
//
//  Created by Blumer, Seth on 5/23/22.
//

import Foundation

final class SearchManager: ObservableObject {
    @Published var searches = [Search]()
    
    func searchStocks(keyword: String) {
        NetworkManager<SearchResponse>().fetch(from: URL(string: API.symbolSearchUrl(for: keyword))!) { (result) in
            switch result {
            case .failure(let err):
                print(err)
            case .success(let resp):
                DispatchQueue.main.async {
                    self.searches = resp.bestMatches
                }
            }
        }
    }
}
