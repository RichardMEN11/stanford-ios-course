//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Richard Menning on 28.09.20.
//  Copyright © 2020 Richard Menning. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject{
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
        
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻", "🎃", "🕷", "🏺", "🦇", "🦉"]
        let randCardNum: Int = Int.random(in: 2...5)
        return  MemoryGame<String>(numberOfPairsOfCards: randCardNum) { pairIndex in
            return emojis[pairIndex]
        }
    }
        
    
    // MAKR: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card){
        model.choose(card)
    }
}

