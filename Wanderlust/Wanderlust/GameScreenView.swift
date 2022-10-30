//
//  GameScreenView.swift
//  Wanderlust
//
//  Created by Mikhail Borisov on 25/10/22.
//

import SwiftUI

struct GameScreenView: View {
    @Environment(\.dismiss) var dismiss
    
    @Binding var isGameFlowPresented: Bool
    @State private var isGamePresented = false
    
    @ObservedObject var game = EmojiMemoryGameViewModel(theme: DefaultThemes.theme0)
    var country: Country
    
    var body: some View {
        NavigationView {
            VStack {
                if isGamePresented {
                    if game.isFinished {
                        WinGameScreen(shouldShow: $isGameFlowPresented, country: country)
                    } else {
                        ImageMemoryGameView(viewModel: game)
                    }
                } else {
                    Storyboard(isPlayGameTapped: $isGamePresented)
                }
            }
            .navigationTitle(country.name.rawValue)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                if !game.isFinished {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "xmark")
                        }
                    }
                }
            }
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

struct GameScreenView_Previews: PreviewProvider {
    static var previews: some View {
        GameScreenView(isGameFlowPresented: .constant(false), country: Country(name: .southAfrica, isAvailable: true))
    }
}
