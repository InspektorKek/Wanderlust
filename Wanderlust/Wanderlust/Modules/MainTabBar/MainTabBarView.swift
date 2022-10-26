//
//  MainTabBarView.swift
//  Wanderlust
//
//  Created by Mikhail Borisov on 24/10/22.
//

import SwiftUI

struct MainTabBarView: View {
    @StateObject var viewModel = WorldScreenViewModel()
    
    var body: some View {
        TabView {
            WorldScreenView(viewModel: viewModel)
                .environmentObject(viewModel)
                .tabItem {
                    Label("Map", systemImage: "globe.europe.africa.fill")
                }
                .toolbar(.visible, for: .tabBar)
                .toolbarBackground(.visible, for: .tabBar)
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
