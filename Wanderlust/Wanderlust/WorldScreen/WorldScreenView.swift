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
                        ForEach(viewModel.datasource.data.indices, id: \.self) { index in
                            let model = self.viewModel.datasource.data[index]
                            Button(action: {
                                print("\(model.name)")
                            }, label: {
                                CoutryView(model: model)
                            })
                            .disabled(!model.isAvailable)
                            .offset(x: self.size.width * model.constantOffset.x, y: self.size.height * model.constantOffset.y)
                        }
                    }
                }
            HStack {
                Image("icon_map_girl")
                Image("icon_map_boy")
            }
        }
        .onAppear {
            self.viewModel.action.fetchCountries()
        }
    }
}

struct WorldScreenView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = WorldScreenViewModel()
        WorldScreenView(viewModel: viewModel)
//            .previewLayout(.sizeThatFits)
            .previewDevice("iPhone SE (3rd generation)")
    }
}
