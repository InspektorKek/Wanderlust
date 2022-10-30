//
//  Playthegame.swift
//  Story-board
//
//  Created by Martina Casillo on 26/10/22.
//

import SwiftUI

struct Playthegame: View {
    @Binding var isPlayGameTapped: Bool
    
    var body: some View {
        VStack {
            Image ("SkullFlowerss")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Button {
                isPlayGameTapped = true
            } label: {
                Text("Play the game")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding(12)
                    .padding(.horizontal, 55)
            }
            .padding(.all, 10)
            .accessibilityAddTraits([.isButton])
            .contentShape(Rectangle())
            .accessibilityIdentifier("Identifier")
            .background(Color.orange)
            .cornerRadius(10)
        }
    }
}
