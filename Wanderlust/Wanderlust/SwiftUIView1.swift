//
//  SwiftUIView1.swift
//  Wanderlust
//
//  Created by Alfonso Di Monda on 25/10/22.
//

import SwiftUI

struct SwiftUIView1: View {
    var body: some View {
        
        ZStack {
    HStack() {
                
                Image("Kid2")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(.orange, lineWidth: 4)
                        Image("Edit")
                        .resizable()
                        .frame(width: 80, height: 20)
                        .offset(x:0, y:38
                        )
                        Text("Edit")
                            .foregroundColor(.white)
                            .offset(x:0, y:38
                            )

                }
                    .padding()
                Text("Miguel")
                    .font(.system(size: 40)).bold()
                    .foregroundColor(.black)
            }
        }
        
    
             
    }
}

struct SwiftUIView1_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView1()
    }
}
