//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Anthony on 07/05/21.
//

import Foundation

// runs the Array of the search Element selected
extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int?  {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return nil
    }
}
