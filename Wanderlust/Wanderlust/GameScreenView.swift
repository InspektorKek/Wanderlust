//
//  GameScreenView.swift
//  Wanderlust
//
//  Created by Mikhail Borisov on 25/10/22.
//

import SwiftUI

struct GameScreenView: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var isLosePresented = false
    @State private var isWinPresented = false
    
    var country: Country
    
    var body: some View {
        NavigationView {
            VStack {
                Button("WIN") {
                    isWinPresented.toggle()
                }
                .fullScreenCover(isPresented: $isWinPresented, content: WinGameScreen.init)
                
                Button("LOSE") {
                    isLosePresented.toggle()
                }
                .fullScreenCover(isPresented: $isLosePresented, content: GameResults.init)
            }
            Text("")
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
