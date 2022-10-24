//
//  ContentView.swift
//  Wanderlust
//
//  Created by MIkhail Borisov on 18/10/22.
//

import SwiftUI

struct ContentView: View {


var body: some View {
    ZStack {
        backgroundView
        VStack(alignment: .center) {
            Spacer()
            Text("Wanderlust")
               .font(.system(size:35))
                .fontWeight(.medium)
                .font(.title)
        Spacer()
           
            startButton
            VoiceButton()
        }
    }
}

    var backgroundView: some View {
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
                    .position(x: 317, y: 275)
            }
            .frame(width: 635, height: 635)
        }
        .ignoresSafeArea()
    }
    }
    
    var startButton: some View {
        Button(action: {
            print("Rounded Button")
        }, label: {
            Text("Play               ")
                .font(.body)
                .foregroundColor(Color.white)
        .background(Color.orange.cornerRadius(10))
        .buttonBorderShape(.roundedRectangle(radius: 12))
                        .fontWeight(.medium)
                        .position(x:310, y: 620)
            

    
        })
        
    }

struct VoiceButton: View {
    @State var isPressed = false
    
    var imageName: String {
        isPressed ? "speaker.wave.2.fill" : "speaker.slash.fill"
    }
    var body: some View {
        VStack {
            Button {
                isPressed.toggle()
            } label: {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 50, height: 50)
                  
            }
            .padding()
            
        }

        
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
            ContentView()
                .previewDevice("iPhone SE (3rd generation)")
            
        }
    }
    
    
    
}
