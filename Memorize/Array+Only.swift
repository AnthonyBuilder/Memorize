//
//  Array+Only.swift
//  Memorize
//
//  Created by Anthony on 11/05/21.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
