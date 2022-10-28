//
//  LaunchScreenView.swift
//  Wanderlust
//
//  Created by MIkhail Borisov on 18/10/22.
//

import SwiftUI

struct LaunchScreenView: View {
    @State private var isShowingDetailView = false
    
    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()
                VStack {
                    Text("Wanderlust")
                        .fontWeight(.medium)
                        .font(.system(size: 45))
                        .padding(.vertical)
                    Spacer()
                    NavigationLink(destination: {
                        //if let _ = AppData.userSelectedAvatarImageName {
                            MainTabBarView()
                        //} else {
                            //AvatarScreenView()
                        //}
                    }) {
                        Text("Play")
                            .padding()
                            .padding(.horizontal, 30)
                            .font(.body)
                            .foregroundColor(Color.white)
                            .background(Color.orange.cornerRadius(10))
                            .buttonBorderShape(.roundedRectangle(radius: 12))
                            .fontWeight(.medium)
                    }
                }
                .padding(.all)
            }
        }
    }
}

struct LaunchScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenView()
        LaunchScreenView()
            .previewDevice("iPhone SE (3rd generation)")
        
    }
}
