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

struct Avatar: Identifiable {
    let imageName: String
    var isSelected: Bool
    
    let id = UUID()
}

struct AvatarScreenView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State private var lastSelectedImageName: String = AppData.userSelectedAvatarImageName
    @State private var avatarName: String = ""
    @State private var didTap: Bool = false
    
    @State var arrayOfAvatars: [Avatar] = [
        Avatar(imageName: "icon_kid_1", isSelected: true),
        Avatar(imageName: "icon_kid_2", isSelected: false),
        Avatar(imageName: "icon_kid_3", isSelected: false),
        Avatar(imageName: "icon_kid_4", isSelected: false),
    ]
    
    var body: some View {
        NavigationView {
            VStack(spacing: 36) {
                Spacer()
                Image(lastSelectedImageName)
                    .resizable()
                    .scaledToFit()
                TextField("Your name...", text: $avatarName)
                    .foregroundColor(.black)
                    .textFieldStyle(OvalTextFieldStyle())
                HStack(spacing: 16) {
                    ForEach(arrayOfAvatars.indices, id: \.self) { index in
                        Button(action: {
                            if let index = arrayOfAvatars.firstIndex(where: { $0.imageName == lastSelectedImageName }) {
                                arrayOfAvatars[index].isSelected.toggle()
                            }
                            lastSelectedImageName = arrayOfAvatars[index].imageName
                            arrayOfAvatars[index].isSelected.toggle()
                        }){
                            let entity = arrayOfAvatars[index]
                            Image(entity.imageName)
                                .resizable()
                                .frame(width: 43, height: 100)
                                .padding()
                                .border(entity.isSelected ? .orange : .gray, width: 4)
                                .background(entity.isSelected ? .orange.opacity(0.2) : .gray.opacity(0.2))
                        }
                    }
                }
                Spacer()
                Button(action: {
                    AppData.userSelectedAvatarImageName = lastSelectedImageName
                    AppData.userName = avatarName
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
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

struct AvatarScreenView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarScreenView()
    }
}
