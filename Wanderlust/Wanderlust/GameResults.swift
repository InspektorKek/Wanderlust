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
                
                Spacer()
                
                Text("Game Over")
                    .font(.system(size: 40, weight: .bold, design: .monospaced))
                
                
                Image("looser")
                    .resizable()
                    .frame(width: 250, height: 400)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.white)
                
                
                Text("You can do better!")
                    .font(.system(size: 25, design: .monospaced))
                    .foregroundColor(.black)
                
                Spacer()
                
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
