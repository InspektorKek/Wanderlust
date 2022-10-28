//
//  Storyboard.swift
//  Story-board
//
//  Created by Martina Casillo on 24/10/22.
//

import SwiftUI

struct Storyboard: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView{
                    StoryOne()
                    StoryTwo()
                    StoryThree()
                    Playthegame()
                }
               
            }
            .navigationTitle("Mexico")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing:
                                    Button(action: {
                print("You're leaving from the story")
            }) {
                Image(systemName: "xmark").foregroundColor(Color.gray).imageScale(.large)
                
            }
                .padding()
                                
            )
            .foregroundColor(.black)
            .bold()
            
            
        }
        
    }}

struct Storyboard_Previews: PreviewProvider {
    static var previews: some View {
        Storyboard()
    }
}
