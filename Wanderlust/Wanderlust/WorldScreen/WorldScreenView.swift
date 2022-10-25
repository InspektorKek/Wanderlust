//
//  WorldScreenView.swift
//  Wanderlust
//
//  Created by Mikhail Borisov on 24/10/22.
//

import SwiftUI

struct WorldScreenView<Model>: View where Model: CoutriesViewModel {
    
    @ObservedObject var viewModel: Model
    
    @State private var size: CGSize = .zero
    
    @State var isAvailable: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            Text("Choose country!")
                .font(.largeTitle)
            Spacer()
            Image("icon_map_world")
                .background {
                    GeometryReader { proxy in
                        Color.clear.onAppear {
                            self.size = proxy.size
                        }
                    }
                }
                .overlay {
                    Group {
                        Button(action: {
                            print("Africa")
                        }, label: {
                            CircleView()
                        })
                        .offset(x: self.size.width * 0.25, y: self.size.height * 0.2)
                        
                        Button(action: {
                            print("Mexico")
                        }, label: {
                            CircleView()
                        })
                        .offset(x: -self.size.width * 0.45, y: 20)
                    }
                }
            HStack {
                Image("icon_map_girl")
                Image("icon_map_boy")
            }
        }
//        List {
//            ForEach(viewModel.datasource.data.indices, id:           \.self) { index in
//                Text("\(self.viewModel.datasource.data[index].name)")
//            }
//        }
        .onAppear {
            self.viewModel.action.fetchCountries()
        }
    }
    
    var circle: some View {
        Circle()
            .frame(width: 16, height: 16)
            .foregroundColor(.black)
            .frame(width: 50, height: 50)
    }
}

struct CircleView: View {
    @State var isAvailable: Bool = false
    
    var body: some View {
        Circle()
            .frame(width: 16, height: 16)
            .foregroundColor(isAvailable ? .red : .black)
            .frame(width: 50, height: 50)
            .onTapGesture {
                isAvailable.toggle()
            }
    }
}

struct WorldScreenView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = WorldScreenViewModel()
        WorldScreenView(viewModel: viewModel)
//            .previewLayout(.sizeThatFits)
//            .previewDevice("iPhone SE (3rd generation)")
    }
}
