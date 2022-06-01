//
//  GlobalQuote.swift
//  FineAnts
//
//  Created by Blumer, Seth on 5/17/22.
//

import Foundation

struct GlobalQuoteResponse: Codable {
    var quote: Quote
    
    private enum CodingKeys: String, CodingKey {
        case quote = "Global Quote"
    }
}
