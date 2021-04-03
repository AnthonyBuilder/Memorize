//
//  ContentView.swift
//  Memorize
//
//  Created by Anthony José on 30/03/21.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        return HStack() {
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    viewModel.choose(card: card)
                }
            }
        }.padding()
        .font(.largeTitle)
        .foregroundColor(.orange)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: 25.0)
                    .stroke(lineWidth: 3.0)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 25.0).fill()
            }
        }
    }
}
