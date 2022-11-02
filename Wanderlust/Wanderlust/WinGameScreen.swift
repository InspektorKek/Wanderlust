//
//  WinGameScreen.swift
//  Wanderlust
//
//  Created by Beatriz Gomes on 22/10/22.
//

import SwiftUI

struct WinGameScreen: View {
    @Binding var shouldShow: Bool
    @AppStorage("isMexicoRawardGained") var isMexicoRawardGained = false
    
    var country: Country
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Text("Amazing job!")
                    .foregroundColor(.accentColor)
                    .font(.system(size: 45, weight: .bold))
                
                Spacer()
                
                Text("You conquered \(country.name.rawValue)")
                    .foregroundColor(.black)
                    .font(.system(size: 25))
                
                Spacer()
                
                ZStack {
                    Image(systemName: "trophy.fill")
                        .resizable()
                        .foregroundColor(.yellow)
                        .frame(width: 290, height: 290)
                        .overlay(alignment: .top) {
                            
                            Image("mexicoFlag")
                                .resizable()
                                .frame(width: 150, height: 150)
                            
                        }
                }
                
                Text("Mexican Explorer 🏅")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.accentColor)
                    .font(.system(size: 25))
                    .bold()
                
                
                Spacer()
                Button(action: {
                    isMexicoRawardGained = true
                    shouldShow.toggle()
                }
                       , label: {
                    Text("Go to the Map")
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

struct WinGameScreen_Previews: PreviewProvider {
    static var previews: some View {
        WinGameScreen(shouldShow: .constant(false), country: Country(name: .mexico, isAvailable: true))
    }
}
