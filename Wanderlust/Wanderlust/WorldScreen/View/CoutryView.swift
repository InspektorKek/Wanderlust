//
//  CoutryView.swift
//  Wanderlust
//
//  Created by Mikhail Borisov on 25/10/22.
//

import SwiftUI

struct CoutryView: View {
    let model: Country
            
    var body: some View {
        VStack {
            Image(systemName: model.isAvailable ? "play.fill" : "lock.fill")
                .frame(width: 16, height: 16)
                .foregroundColor(model.isAvailable ? .accentColor : .gray)
            Text(verbatim: model.name)
                .padding(.horizontal)
                .background(model.isAvailable ? Color.accentColor : .gray)
                .foregroundColor(.white)
                .cornerRadius(8)
        }
    }
}
