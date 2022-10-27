//
//  Background.swift
//  Wanderlust
//
//  Created by Valentina Tarantino on 26/10/22.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                Image("icon_earth")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 635, height: 635)
                    .position(x: 317, y: 635)
                
                Image("Kid_icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 259, height: 400)
                    .position(x: 340, y: 260)
            }
            .frame(width: 635, height: 635)
        }
        .ignoresSafeArea()
    }
}


struct Background_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
