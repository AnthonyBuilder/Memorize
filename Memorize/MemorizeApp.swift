//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Anthony José on 30/03/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: EmojiMemoryGame())
        }
    }
}
