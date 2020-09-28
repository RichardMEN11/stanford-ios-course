//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Richard Menning on 28.09.20.
//  Copyright © 2020 Richard Menning. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame{
    private var model: MemoryGame<String> = MemoryGame<String>(numberOfPairsOfCards: 2) { _ in "👻"}
    
    // MAKR: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card){
        model.choose(card: card)
    }
}

