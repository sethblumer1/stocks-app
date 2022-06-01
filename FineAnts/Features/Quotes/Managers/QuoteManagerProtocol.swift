//
//  QuoteManagerProtocol.swift
//  FineAnts
//
//  Created by Blumer, Seth on 5/17/22.
//

import Foundation

protocol QuoteManagerProtocol {
    var quotes: [Quote] { get set }
    
    func download(stocks: [String], completion: @escaping (Result<[Quote], NetworkError>) -> Void)
}
