//
//  StoryView.swift
//  Wanderlust
//
//  Created by Beatriz Gomes on 24/10/22.
//

import SwiftUI

struct StoryView: View {
    var body: some View {
        NavigationView {
            Text("Hello, SwiftUI!")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                       
                        
                        HStack {
                            Button(action: {
                            }) {
                                Image(systemName: "xmark.circle")
                                    .padding(10)
                            }
                            Spacer().frame(width:, height: 36.0, alignment: .topLeading)
                            
               Divider()
                            Text("Mexico")
                                .font(.title)
                                .bold()
                                .offset(y: 15)
                                .alignment: topLeading
                            
                        
                        }
                        .padding(.top, 5)
                        Spacer()
                        
                            Text("Mexico")
                                .font(.title)
                                .bold()
                                .offset(y: 15)
            
                    }
                    
                }
            
            
            Button("Go to the Map") { ///ACTION NEEDED!//
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .controlSize(.large)
            .font(.system(size: 25, weight: .bold))
            .foregroundColor(.red)
        }
    }
}
































struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
