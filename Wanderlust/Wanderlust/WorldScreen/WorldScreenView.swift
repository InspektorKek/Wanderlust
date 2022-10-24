//
//  WorldScreenView.swift
//  Wanderlust
//
//  Created by Mikhail Borisov on 24/10/22.
//

import SwiftUI

struct WorldScreenView<Model>: View where Model: CoutriesViewModel {
    
    @ObservedObject var viewModel: Model
    
    var body: some View {
        VStack {
            Text("Choose country!")
                .font(.largeTitle)
            Spacer()
            HStack {
                Image("")
                Image("")
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
}

struct WorldScreenView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = WorldScreenViewModel()
        WorldScreenView(viewModel: viewModel)
    }
}
