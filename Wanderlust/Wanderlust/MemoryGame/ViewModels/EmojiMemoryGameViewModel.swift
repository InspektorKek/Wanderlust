//
//  EmojiMemoryGame.swift
//  memory-card-matching-game
//
//  Created by Archie Liu on 2021-04-24.
//

import SwiftUI

class EmojiMemoryGameViewModel: ObservableObject {
    @Published private var model: MemoryGame<String>
    @Published var isFinished: Bool = false
    
    var theme: ThemeCollection.Theme
    init(theme: ThemeCollection.Theme) {
        self.theme = theme
        model = EmojiMemoryGameViewModel.createMemoryGame(theme: theme)
    }
    
    private static func createMemoryGame(theme: ThemeCollection.Theme) -> MemoryGame<String> {
        return MemoryGame<String>(numberOfPairsOfCards: theme.emojiSet.count) { pairIndex in
            return theme.emojiSet[pairIndex]
        }
    }

    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
        isFinished = model.isFinished
    }
    
    // MARK: - Reset the game by changing the model to a new one
    func resetGame() {
        model = EmojiMemoryGameViewModel.createMemoryGame(theme: theme)
        isFinished = false
    }
}
