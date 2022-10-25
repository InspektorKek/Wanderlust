//
//  ContentView.swift
//  Wanderlust
//
//  Created by MIkhail Borisov on 18/10/22.
//

import SwiftUI

struct ContentView: View {
    let viewModel = WorldScreenViewModel()
    
    var body: some View {
        TabView {
            WorldScreenView(viewModel: viewModel)
                 .tabItem {
                     Label("Map", systemImage: "globe.europe.africa.fill")
                 }
             ContentView()
                 .tabItem {
                     Label("Profile", systemImage: "person.crop.circle.fill")
                 }
         }
         .tint(.accentColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
