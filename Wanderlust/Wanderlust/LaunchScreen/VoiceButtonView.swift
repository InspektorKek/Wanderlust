//
//  VoiceButtonView.swift
//  Wanderlust
//
//  Created by Valentina Tarantino on 26/10/22.
//

import SwiftUI

struct VoiceButton: View {
    @State var isPressed = false
    
    var imageName: String {
        isPressed ? "speaker.wave.2.fill" : "speaker.slash.fill"
    }
    
    var body: some View {
        VStack(alignment: .trailing) {
            Button {
                isPressed.toggle()
            } label: {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 29, height: 24)
                
            }
            .offset(x: 150, y: -700)
            .padding()
            
        }
    }
}

struct VoiceButtonView_Previews: PreviewProvider {
    static var previews: some View {
        VoiceButton()
    }
}
