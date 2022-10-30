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
    @State private var isGameFlowPresented = false
    
    @AppStorage("user_name") var userName = "Helena"
    
    var body: some View {
        VStack {
            Spacer()
            Text("Hey \(Text(userName).foregroundColor(Color.circlePurple)), choose the country!")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .padding()
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
                                self.isGameFlowPresented.toggle()
                            }, label: {
                                CoutryView(model: model)
                            })
                            .disabled(!model.isAvailable)
                            .fullScreenCover(isPresented: $isGameFlowPresented) {
                                GameScreenView(isGameFlowPresented: $isGameFlowPresented, country: model)
                            }
                            .offset(x: self.size.width * model.worldOffset.x, y: self.size.height * model.worldOffset.y)
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
            .previewDevice("iPhone SE (3rd generation)")
    }
}
