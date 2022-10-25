//
//  ContentView.swift
//  Wanderlust
//
//  Created by MIkhail Borisov on 18/10/22.
//

import SwiftUI
import HalfASheet

struct ContentView: View {
    var body: some View {
                VStack {
                    
                    
                    Image("mexicoFlag")
                        .offset(y: 135)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.white)
                    
                    
                    
                   
                    HStack (spacing: 25){
                        
                        Image(systemName: "star.fill")
                            .imageScale(.large)
                            .foregroundColor(Color(.systemYellow))
                        
                        Image(systemName: "star.fill")
                            .imageScale(.large)
                            .foregroundColor(Color(.systemYellow))

                        Image(systemName: "star.fill")
                            .imageScale(.large)
                            .foregroundColor(Color(.systemYellow))

                    }
                
                    
                    Text("Great job!")
                        .font(.system(size: 36, weight: .bold))
                    
                    Text("You earned a medal!")
                        .font(.system(size: 25))
                        .foregroundColor(.black)
                        .offset(y: 10)

                    Button("Go Forward") { ///ACTION NEEDED!//
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
            }
        }
























































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
