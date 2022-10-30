//
//  MainTabBarView.swift
//  Wanderlust
//
//  Created by Mikhail Borisov on 24/10/22.
//

import SwiftUI

struct MainTabBarView: View {
    @StateObject var viewModel = WorldScreenViewModel()
    @State private var isAvatarSelectorPresented = false
    
    var body: some View {
        TabView {
            WorldScreenView(viewModel: viewModel)
                .environmentObject(viewModel)
                .tabItem {
                    Label("Map", systemImage: "globe.europe.africa.fill")
                }
                .toolbar(.visible, for: .tabBar)
                .toolbarBackground(.visible, for: .tabBar)
            RewardsList()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle.fill")
                }
        }
        .navigationBarBackButtonHidden(true)
        .tint(.accentColor)
        .sheet(isPresented: $isAvatarSelectorPresented) {
            AvatarScreenView()
        }
        .onAppear {
            if !AppData.isAvatarScreenShown {
                isAvatarSelectorPresented.toggle()
                AppData.isAvatarScreenShown = true
            }
        }
    }
}

struct MainTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBarView()
    }
}
