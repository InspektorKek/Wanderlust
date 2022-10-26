//
//  WinGameScreen.swift
//  Wanderlust
//
//  Created by Beatriz Gomes on 22/10/22.
//

import SwiftUI

struct WinGameScreen: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Amazing job!")
                    .font(.system(size: 45, weight: .bold))
                    .foregroundColor(.accentColor) //Title color//
                
                Spacer()
                
                Text("You conquered Mexico")
                    .font(.system(size: 25))
                    .foregroundColor(.black)
                
                Spacer()
                ZStack {
                    Image(systemName: "trophy.fill")
                        .resizable()
                        .foregroundColor(.yellow)
                        .frame(width: 290, height: 290)
                    
                    Image("mexicoFlag")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .offset(y: -60)
                    
                }
                
                Text("Mexican Explorer \n 🏆🏅🗺")
                    .font(.system(size: 25))

                Spacer()
                
                Text("You unlocked another country")
                    .font(.system(size: 25))
                    .foregroundColor(.black)
                
                Spacer()
                
                Button(action: {
                    print("sone")
                }
                       , label: {
                    NavigationLink(destination: LaunchScreen()) { Text("Got to the Map") }
                })
                .shadow(color: .gray, radius: 5, x: 7, y: 2)
                .buttonStyle(.borderedProminent)
                .font(.system(size: 25, weight: .bold))
                .foregroundColor(.white)
                .controlSize(.large)
                
            }
            .padding(.vertical)
        }
    }
}
























































struct winGameScreen_Previews: PreviewProvider {
    static var previews: some View {
        WinGameScreen()
    }
}
