//
//  StoryThree.swift
//  Story-board
//
//  Created by Martina Casillo on 25/10/22.
//

import SwiftUI

struct StoryThree: View {
    var body: some View {
        VStack {
            HStack  {
                Image("Granny")
                    .resizable()
                    .frame(width: 96 , height: 96)
                    .aspectRatio(contentMode: .fill)
                Text("Yes! Because on this day we celebrate our family members by remembering them.They are here with us, we just can’t see them! That’s why we use happy colours.")
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .lineLimit(20)
                    .padding()
                    .background(Rectangle().fill(Color.blue).shadow(radius: 2))
                    .cornerRadius(15)
              
            }.padding()
            HStack {
                Text("But are they sad because they died?")
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .lineLimit(20)
                    .padding()
                    .background(Rectangle().fill(Color.orange).shadow(radius: 2))
                    .cornerRadius(15)
            
                Image("BambinoDue")
                    .resizable()
                    .frame(width: 96 , height: 96)
                    .aspectRatio(contentMode: .fill)
                    
            }.padding()
            HStack  {
                Image("Granny")
                    .resizable()
                    .frame(width: 96 , height: 96)
                    .aspectRatio(contentMode: .fill)
                
                Text("No! Imagine their souls dancing in the cemetery, all dressed up and loud music playing, because it’s like a party. They are happy and having a blast!")
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .lineLimit(20)
                    .padding()
                    .background(Rectangle().fill(Color.blue).shadow(radius: 2))
                    .cornerRadius(15)
                 
            } .padding()
        }
    }
}

struct StoryThree_Previews: PreviewProvider {
    static var previews: some View {
        StoryThree()
    }
}
