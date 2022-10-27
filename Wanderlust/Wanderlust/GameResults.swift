//
//  GameResults.swift
//  Wanderlust
//
//  Created by Beatriz Gomes on 22/10/22.
//

import SwiftUI


struct GameResults: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        NavigationStack {
            VStack(content: {
                
                Text("Game Over")
                    .font(.system(size: 40, weight: .bold, design: .monospaced))
                    .offset(y: 30)
                
                
                Image("looser")
                    .resizable()
                    .frame(width: 250, height: 400)
                    .offset(y: 10)
                    .frame(maxWidth: .infinity, maxHeight: .infinity) // 1
                    .background(Color.white)
                
                
                Text("You can do better!")
                    .font(.system(size: 25, design: .monospaced))
                    .foregroundColor(.black)
                    .offset(y: -20)
                
                
                Button(action: {
                    print("sone")
                }
                       , label: {
                    NavigationLink(destination: MainTabBarView()) { Text("Try Again!") }
                })
                
                .shadow(color: .gray, radius: 5, x: 7, y: 2)
                .padding()
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .foregroundColor(.white)
                .font(.system(size: 25, weight: .bold))
                .tint(.yellow)
                .offset(y: -15)
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }
                       , label: {
                    Text("Go to the Map")
                })
                .controlSize(.large)
                .font(.system(size: 25, weight: .bold))
                .foregroundColor(.red)
                
                }
            )
        }
    }
}


    


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
struct GameResults_Previews: PreviewProvider {
    static var previews: some View {
        GameResults()
    }
}
