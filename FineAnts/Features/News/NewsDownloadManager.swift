//
//  NewsDownloadManager.swift
//  FineAnts
//
//  Created by Blumer, Seth on 5/20/22.
//

import Foundation

final class NewsDownloadManager: ObservableObject {
    @Published var newsArticles = [News]()

    private let newsUrlString = "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=\(NewsAPI.key)"

    init() {
        download()
    }
    
    func download() {
        NetworkManager<NewsResponse>().fetch(from: URL(string: newsUrlString)!) { (result) in
            switch result {
            case .failure(let err):
                print(err)
                
            case .success(let resp):
                DispatchQueue.main.async {
                    self.newsArticles = resp.articles
                }
            }
        }
    }
}

