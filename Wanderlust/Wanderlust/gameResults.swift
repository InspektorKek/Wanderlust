//
//  gameResults.swift
//  Wanderlust
//
//  Created by Beatriz Gomes on 22/10/22.
//

import SwiftUI


struct gameResults: View {
    var body: some View {

        VStack(content: {
            Image("looser")
                .offset(y: 120)
                .frame(maxWidth: .infinity, maxHeight: .infinity) // 1
                .background(Color.white)
            
                 
            Text("Game Over")
                .font(.system(size: 36, weight: .bold, design: .monospaced))
                .offset(y: -15)
            
            Text("You can do better!")
                .font(.system(size: 25, design: .monospaced))
                .foregroundColor(.black)

            
            Button("Try Again!") { ///ACTION NEEDED!//
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .padding()
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .foregroundColor(.white)
            .font(.system(size: 25, weight: .bold))
            .tint(.yellow)
            
            Button("Go to the Map") { ///ACTION NEEDED!//
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .controlSize(.large)
            .font(.system(size: 25, weight: .bold))
            .foregroundColor(.red)

            
        }

)
       
    }
}


    


struct gameResults_Previews: PreviewProvider {
    static var previews: some View {
        gameResults()
    }
}
