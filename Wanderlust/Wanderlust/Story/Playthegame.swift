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
                        Image ("chili")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 80)
                        
                        Image ("Taco")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 130, height: 160)
                    }
                    
                    Image ("Man")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                }
                .padding(.all)
            
            HStack {
                Image ("ManTwo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                    
                
                VStack {
                    Image ("skull")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:200 , height: 140)
                    
                    Image ("chili")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:90 , height: 80)
                    
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
