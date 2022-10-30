//
//  StoryTwo.swift
//  Story-board
//
//  Created by Martina Casillo on 26/10/22.
//

import SwiftUI

struct StoryTwo: View {
    var body: some View {
        VStack {
            HStack {
                Image("Granny")
                    .resizable()
                    .frame(width: 96 , height: 96)
                    .aspectRatio(contentMode: .fill)
                Text("The day of the dead is the day when we celebrate our family members who have died.")
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Rectangle().fill(Color.blue).shadow(radius: 2))
                    .cornerRadius(15)
            }
            HStack() {
                Spacer()
                HStack() {
                    Text("How?")
                        .fontWeight(.medium)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Rectangle().fill(Color.orange).shadow(radius: 2))
                        .cornerRadius(15)
                    
                    Image("BambinoDue")
                        .resizable()
                        .frame(width: 96 , height: 96)
                        .aspectRatio(contentMode: .fill)
                }
            }
            HStack  {
                Image("Granny")
                    .resizable()
                    .frame(width: 96 , height: 96)
                    .aspectRatio(contentMode: .fill)
                
                Text("Usually, we put flowers on their graves, and create an altar with photos, candles, food and Mexican marigold flowers.")
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Rectangle().fill(Color.blue).shadow(radius: 2))
                    .cornerRadius(15)
            }
            
            HStack {
                Image("Taco")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 100)
                Spacer()
                Image("icon_chips")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 100)
            }
            .padding()
            HStack {
                Spacer()
                Text("Are those the orange flowers that we see everywhere?")
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Rectangle().fill(Color.orange).shadow(radius: 2))
                    .cornerRadius(15)
                Image("BambinoDue")
                    .resizable()
                    .frame(width: 96 , height: 96)
                    .aspectRatio(contentMode: .fill)
            }
            Spacer(minLength: 24)
            HStack(spacing: 40) {
                Image("icon_story_flowers")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                Image("icon_story_flowers_green")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                Image("icon_story_flowers_yellow")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
            }
            .padding()
        }
        .padding(.all)
    }
}


struct StoryTwo_Previews: PreviewProvider {
    static var previews: some View {
        StoryTwo()
    }
}
