//
//  MemoryGame.swift
//  Memorize
//
//  Created by Anthony José on 31/03/21.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    // mutating function sets struct reactive to the action
    mutating func choose(card: Card) {
        print("card chosen: \(card)")
        
        let chosenIndex: Int = self.index(of: card)
        cards[chosenIndex].isFaceUp = !cards[chosenIndex].isFaceUp
    }
    
    // runs the Array Card of the search Card selected
    func index(of card: Card) -> Int {
        for index in 0..<cards.count {
            if cards[index].id == card.id {
                return index
            }
        }
        
        return 0 // TODO: bogus!
    }
    
    init(numberOfPairOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        
        for pairIndex in 0..<numberOfPairOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
