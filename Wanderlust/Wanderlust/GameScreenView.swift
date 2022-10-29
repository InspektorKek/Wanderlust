//
//  GameScreenView.swift
//  Wanderlust
//
//  Created by Mikhail Borisov on 25/10/22.
//

import SwiftUI

struct GameScreenView: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var isGamePresented = false
    @State private var isLosePresented = false
    @State private var isWinPresented = false
    
    let game = EmojiMemoryGameViewModel(theme: DefaultThemes.theme0)
    var country: Country
    
    var body: some View {
        NavigationView {
            VStack {
                if isGamePresented {
                    ImageMemoryGameView(viewModel: game)
                } else {
                    
                }
//                .fullScreenCover(isPresented: $isWinPresented) {
//                    WinGameScreen(country: country)
//                }
//                .fullScreenCover(isPresented: $isLosePresented, content: GameResults.init)
            }
            .navigationTitle(country.name.rawValue)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }
                }
            }
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

struct GameScreenView_Previews: PreviewProvider {
    static var previews: some View {
        GameScreenView(country: Country(name: .southAfrica, isAvailable: true))
    }
}
