//
//  AvatarAndNameView.swift
//  Wanderlust
//
//  Created by Alfonso Di Monda on 25/10/22.
//

import SwiftUI

struct AvatarAndNameView: View {
    var body: some View {
        ZStack {
            HStack(spacing: 16) {
                ZStack {
                    Image("Kid2")
                        .resizable()
                        .clipShape(Circle())
                        .overlay {
                            Circle().stroke(.orange, lineWidth: 4)
                        }
                        .frame(width: 100, height: 100)
                        .overlay {
                            Image("Edit")
                                .resizable()
                                .frame(width: 80, height: 20)
                                .overlay {
                                    Text("Edit")
                                        .foregroundColor(.white)
                                }
                                .frame(maxHeight: .infinity, alignment: .bottom)
                        }
                }
                Text("Miguel")
                    .font(.system(size: 40)).bold()
                    .foregroundColor(.black)
            }
        }
    }
}

struct SwiftUIView1_Previews: PreviewProvider {
    static var previews: some View {
        AvatarAndNameView()
    }
}
