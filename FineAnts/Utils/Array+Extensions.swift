//
//  Array+Extensions.swift
//  FineAnts
//
//  Created by Blumer, Seth on 5/23/22.
//

import Foundation

extension Array where Element: Hashable {
    func difference(from other: [Element]) -> [Element] {
        let thisSet = Set(self)
        let otherSet = Set(other)
        return Array(thisSet.symmetricDifference(otherSet))
    }
}
