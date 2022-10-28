//
//  ButtonContinue.swift
//  Story-board
//
//  Created by Martina Casillo on 25/10/22.
//

import SwiftUI

struct ButtonContinue: View {
    var body: some View {
        VStack{
            Button {
                print("Button pressed")
            } label: {
                Text("Tap to continue")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(20)
            }
            .contentShape(Rectangle())
            .accessibilityIdentifier("Identifier")
            
            
            Button {
                print("Button pressed")
            } label: {
                Text("Play the game")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding(20)
            }
            .padding(.all, 15.0)
            .accessibilityAddTraits([.isButton])
            .contentShape(Rectangle())
            .accessibilityIdentifier("Identifier")
            .background(Color.orange)
            .cornerRadius(10)
            
            
        }
    }}

struct ButtonContinue_Previews: PreviewProvider {
    static var previews: some View {
        ButtonContinue()
    }
}
