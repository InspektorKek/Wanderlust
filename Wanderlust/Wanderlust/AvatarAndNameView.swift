//
//  AvatarAndNameView.swift
//  Wanderlust
//
//  Created by Alfonso Di Monda on 25/10/22.
//

import SwiftUI

struct AvatarAndNameView: View {
    @AppStorage("user_name") var userName = ""
    @AppStorage("user_selected_avatar_image_name") var lastSelectedImageName = "icon_kid_1"
    
    var body: some View {
        HStack(spacing: 16) {
            ZStack {
                Image(lastSelectedImageName)
                    .offset(x: -8,y: 75)
                    .mask {
                        Circle()
                            .frame(width: 100, height: 100)
                    }
                Image("")
                    .resizable()
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
            Text(userName)
                .font(.system(size: 24)).bold()
                .foregroundColor(.black)
            Spacer()
        }
        .frame(height: 120)
        .padding()
    }
}

struct SwiftUIView1_Previews: PreviewProvider {
    static var previews: some View {
        AvatarAndNameView()
    }
}
