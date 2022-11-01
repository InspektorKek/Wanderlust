//
//  AvatarScreenView.swift
//  Wanderlust
//
//  Created by Valentina Tarantino on 27/10/22.
//

import SwiftUI

struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(20)
            .padding(.horizontal)
    }
}

struct AvatarScreenView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @AppStorage("user_selected_avatar_image_name") var lastSelectedImageName = "icon_kid_1"
    @AppStorage("user_name") var userName = ""
    @State private var didTap: Bool = false
    
    @State var kidImages: [String] = [
        "icon_kid_1",
        "icon_kid_2",
        "icon_kid_3",
        "icon_kid_4",
    ]
    
    var body: some View {
        NavigationView {
            VStack(spacing: 36) {
                Spacer()
                Image(lastSelectedImageName)
                    .resizable()
                    .scaledToFit()
                TextField(userName.isEmpty ? "Your name..." : userName, text: $userName)
                    .foregroundColor(.black)
                    .textFieldStyle(OvalTextFieldStyle())
                HStack(spacing: 16) {
                    ForEach(kidImages, id: \.self) { name in
                        Button(action: {
                            lastSelectedImageName = name
                        }){
                            Image(name)
                                .resizable()
                                .frame(width: 43, height: 100)
                                .padding()
                                .border(name == lastSelectedImageName ? .orange : .gray, width: 4)
                                .background(name == lastSelectedImageName ? .orange.opacity(0.2) : .gray.opacity(0.2))
                        }
                    }
                }
                Spacer()
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Save")
                        .padding()
                        .padding(.horizontal, 30)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .background(Color.orange.cornerRadius(10))
                        .buttonBorderShape(.roundedRectangle(radius: 12))
                        .fontWeight(.medium)
                })
            }
            .navigationTitle("Avatar")
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarBackground(.visible, for: .bottomBar)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct AvatarScreenView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarScreenView()
    }
}
