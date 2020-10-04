//
//  ContentView.swift
//  Memorize
//
//  Created by Richard Menning on 06.09.20.
//  Copyright © 2020 Richard Menning. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card, isSmallFont: self.viewModel.cards.count == 5*2 ? true: false).frame(height: 200).onTapGesture {
                    self.viewModel.choose(card: card)
                }
            }
        }
        .foregroundColor(Color.orange).padding()
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    var isSmallFont: Bool
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content).font(isSmallFont ? Font.body : Font.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
