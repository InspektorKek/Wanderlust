//
//  winGameScreen.swift
//  Wanderlust
//
//  Created by Beatriz Gomes on 22/10/22.
//

import SwiftUI
import HalfASheet


struct winGameScreen: View {
    var body: some View {
        VStack {
            
            Text("Amazing job!")
                .font(.system(size: 45, weight: .bold))
                .foregroundColor(.yellow) //// TITLE COLOR???//
                .offset(y: 30)
            
            Image("mexicoFlag")
                .resizable()
                .frame(width: 290, height: 290)
                .offset(y: -15)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                .scaledToFit()


        HStack (spacing: 25){
                
            Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 55, height: 55)
                    .foregroundColor(Color(.systemYellow))
                    .offset(y: -50)
                    .shadow(color: .gray, radius: 5, x: 7, y: 2)


                
            Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 55, height: 55)
                    .foregroundColor(Color(.systemYellow))
                    .offset(y: -50)
                    .shadow(color: .gray, radius: 5, x: 7, y: 2)

                
            Image(systemName: "star")
                    .resizable()
                    .frame(width: 55, height: 55)
                    .foregroundColor(Color(.systemYellow))
                    .offset(y: -50)
                    .shadow(color: .gray, radius: 5, x: 7, y: 2)


            }
        
                        
            Text("You conquered Mexico!")
                .font(.system(size: 25))
                .foregroundColor(.black)
                .offset(y: -20)

            Button("Go Forward") { ///ACTION NEEDED!//
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .shadow(color: .gray, radius: 5, x: 7, y: 2)
            .padding()
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .foregroundColor(.white)
            .font(.system(size: 25, weight: .bold))
            .tint(.yellow)
            .offset(y: -15)

            
            Button("Go to the Map") { ///ACTION NEEDED!//
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .controlSize(.large)
            .font(.system(size: 25, weight: .bold))
            .foregroundColor(.red)
        }
        
    }
}























































struct winGameScreen_Previews: PreviewProvider {
    static var previews: some View {
        winGameScreen()
    }
}
