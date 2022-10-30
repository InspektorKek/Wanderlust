//
//  StoryOne.swift
//  Story-board
//
//  Created by Martina Casillo on 27/10/22.
//

import SwiftUI

struct StoryOne: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        VStack{
            Group {
                Text("Hi \(Text("Meguel").foregroundColor(Color.blue))! Have you ever heard about the Day of the Dead? It's an important tradition in Mexico!")
                    .padding(.all)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .background(Rectangle().fill(Color.green).shadow(radius: 2))
                    .cornerRadius(15)
                    .padding(.all)
            }
            HStack() {
                HStack() {
                    Image("Bambino")
                        .resizable()
                        .frame(width: 96 , height: 96)
                        .aspectRatio(contentMode: .fill)
                    Text("Let's hear the story my granmother told me!")
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .padding()
                        .background(Rectangle().fill(Color.orange).shadow(radius: 2))
                        .cornerRadius(15)
                }
                .padding(.horizontal)
                Spacer()
            }
            
            VStack(spacing: 40) {
                HStack {
                    Image ("chili")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                    Spacer()
                }
                Image ("skullTwo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250, height: 100)
                HStack {
                    Spacer()
                    Image ("chili")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                }
            }
            Image("scroll_down_arrow")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .foregroundColor(Color.accentColor)
                .scaleEffect(animationAmount)
                            .animation(
                                .linear(duration: 0.3)
                                    .delay(0.5)
                                    .repeatForever(autoreverses: true),
                                value: animationAmount)
                            .onAppear {
                                animationAmount = 1.2
                            }
            Spacer()
        }
    }
}

struct StoryOne_Previews: PreviewProvider {
    static var previews: some View {
        StoryOne()
    }
}
