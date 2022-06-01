//
//  News.swift
//  FineAnts
//
//  Created by Blumer, Seth on 5/17/22.
//

import Foundation

struct News: Identifiable, Codable {
    var id: UUID { return UUID() }
    var title: String
    var url: String
    var urlToImage: String?
    var imageUrl: String {
        return urlToImage?.replacingOccurrences(of: "http://", with: "https://") ?? "https://i.pinimg.com/originals/7b/28/98/7b2898990ae6ce6d6b277113d51b14e8.png"
    }
}


