//
//  MainTabBarView.swift
//  Wanderlust
//
//  Created by Mikhail Borisov on 24/10/22.
//

import SwiftUI

struct MainTabBarView: View {
    let viewModel = WorldScreenViewModel()
    
    var body: some View {
        TabView {
            WorldScreenView(viewModel: viewModel)
                .tabItem {
                    Label("Map", systemImage: "globe.europe.africa.fill")
                }
            ProfileScreenView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle.fill")
                }
        }
        .tint(.accentColor)
    }
}

struct MainTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBarView()
            .previewDevice("iPhone SE (3rd generation)")
    }
}
