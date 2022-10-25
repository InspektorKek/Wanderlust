//
//  SwiftUIView1.swift
//  Wanderlust
//
//  Created by Alfonso Di Monda on 25/10/22.
//

import SwiftUI

struct SwiftUIView1: View {
    var body: some View {
        
        HStack() {
            
            Image("Kid2")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.orange, lineWidth: 4)
            }
                .padding()
            Text("Miguel")
                .font(.system(size: 40)).bold()
        }
        
    
             
    }
}

struct SwiftUIView1_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView1()
    }
}
