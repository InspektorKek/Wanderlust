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
            .shadow(color: .gray, radius: 10)
            .padding(.horizontal)
    }
}

struct Avatar: Identifiable {
    let imageName: String
    var isSelected: Bool
    
    let id = UUID()
}

struct AvatarScreenView: View {
    @State private var imageName = "icon_kid_1"
    @State private var avatarName: String = "Type your name..."
    @State private var didTap: Bool = false
    @State private var lastSelectedIndex: Int?
    
    @State var arrayOfAvatars: [Avatar] = [
        Avatar(imageName: "icon_kid_1", isSelected: true),
        Avatar(imageName: "icon_kid_2", isSelected: false),
        Avatar(imageName: "icon_kid_3", isSelected: false),
        Avatar(imageName: "icon_kid_4", isSelected: false),
    ]
    
    var body: some View {
        NavigationView {
            VStack{
                
                
                Profileimage(imagename: imageName)
                TextField("", text: $avatarName)
                    .foregroundColor(.black)
                    .textFieldStyle(OvalTextFieldStyle())
                
                
                HStack(spacing:20){
                    ForEach(arrayOfAvatars.indices, id: \.self) { index in
                        Button(action: {
                            arrayOfAvatars[lastSelectedIndex!].isSelected.toggle()
                            self.imageName = arrayOfAvatars[index].imageName
                            arrayOfAvatars[index].isSelected.toggle()
                            lastSelectedIndex = index
                        }){
                            let entity = arrayOfAvatars[index]
                            Image(entity.imageName)
                                .resizable()
                                .frame(width: 33, height: 88)
                                .padding()
                                .border(entity.isSelected ?  .gray : .orange, width: 4)
                                .background( entity.isSelected ?  .gray.opacity(0.2) : .orange.opacity(0.2))
                        }
                    }
                }
                
                .padding(35)
                
                Button(action: {
                    AppData.userSelectedAvatarImageName = imageName
                }, label: {
                    Text("Save")
                        .padding()
                        .padding(.horizontal, 90)
                        .font(.body)
                        .foregroundColor(Color.white)
                        .background(Color.orange.cornerRadius(10))
                        .buttonBorderShape(.roundedRectangle(radius: 12))
                        .fontWeight(.medium)
                        .shadow(radius: 5)
                    
                })
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Avatar")
                            .font(.largeTitle.bold())
                            .accessibilityAddTraits(.isHeader)
                    }
                }
                
            }
        }
        .onAppear {
            if let index = arrayOfAvatars.firstIndex(where: { $0.imageName == AppData.userSelectedAvatarImageName ?? arrayOfAvatars.first!.imageName }) {
                lastSelectedIndex = index
            }
        }
    }
    
    struct AvatarScreenView_Previews: PreviewProvider {
        static var previews: some View {
            AvatarScreenView()
        }
    }
    
}
struct Profileimage: View {
    var imagename: String
    
    var body: some View {
        Image(imagename)
            .foregroundColor(.white)
            .padding(.vertical, 34)
            .padding(.horizontal, 40)
            .border(.orange, width: 6)
            .background(Color.orange.opacity(0.2))
            .position(x:45, y:10)
            .padding(150)
    }
}

