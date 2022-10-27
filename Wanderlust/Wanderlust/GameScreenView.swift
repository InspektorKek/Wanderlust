//
//  GameScreenView.swift
//  Wanderlust
//
//  Created by Mikhail Borisov on 25/10/22.
//

import SwiftUI

struct GameScreenView: View {
    @Environment(\.dismiss) var dismiss
    
    var country: Country
    
    var body: some View {
        NavigationView {
            Text("")
                .navigationTitle(country.name.rawValue)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "xmark")
                        }
                    }
                }
                .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

struct GameScreenView_Previews: PreviewProvider {
    static var previews: some View {
        GameScreenView(country: Country(name: .southAfrica, isAvailable: true))
    }
}
