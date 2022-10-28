//
//  Playthegame.swift
//  Story-board
//
//  Created by Martina Casillo on 26/10/22.
//

import SwiftUI

struct Playthegame: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Image ("SkullFlowerss")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    
                    
                }
                
                
                
                
                
            }
            Button {
                print("Button pressed")
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
    
    
    struct Playthegame_Previews: PreviewProvider {
        static var previews: some View {
            Playthegame()
        }
    }

