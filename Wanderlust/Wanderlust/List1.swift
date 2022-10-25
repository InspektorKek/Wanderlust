//
//  List1.swift
//  Wanderlust
//
//  Created by Alfonso Di Monda on 25/10/22.
//

import Foundation
import SwiftUI

struct Rewardslistofyou: View {
    
    
    
    var body: some View{
       
        NavigationStack{
            
            SwiftUIView1()
            List {
                VStack(alignment: .leading) {
                    Text("Rewards")
                        .font(.system(size: 40).bold())
                    HStack {
                        Image(systemName: "rewards")
                            .foregroundColor(.black)
                        Image("Mexico")
                            .resizable()
                            .frame(width: 63, height: 63)
                            .clipShape(Circle())
                            .overlay {
                                Circle().stroke(.orange, lineWidth: 4)
                            }
                            .bold()
                        Text("Mexican Explorer")
                            .foregroundColor(.black)
                        Image("Star")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Spacer()
                        
                    }
                    
                    HStack {
                        Image(systemName: "rewards")
                            .foregroundColor(.black)
                        Image("Brazil")
                            .resizable()
                            .frame(width: 63, height: 63)
                            .clipShape(Circle())
                            .overlay {
                                Circle().stroke(.gray, lineWidth: 4)
                                Spacer()
                            }
                            .bold()
                        Text("Brazil Explorer")
                            .foregroundColor(.black)
                        Image("Starg")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Spacer()
                    }
                    HStack {
                        Image(systemName: "rewards")
                            .foregroundColor(.black)
                        Image("South Africa")
                            .resizable()
                            .frame(width: 63, height: 63)
                            .clipShape(Circle())
                            .overlay {
                                Circle().stroke(.gray, lineWidth: 4)
                                Spacer()
                            }
                            .bold()
                        Text("South Africa Explorer")
                            .foregroundColor(.black)
                        Image("Starg")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Spacer()
                    }
                    HStack {
                        Image(systemName: "rewards")
                            .foregroundColor(.black)
                        Image("Russia")
                            .resizable()
                            .frame(width: 63, height: 63)
                            .clipShape(Circle())
                            .overlay {
                                Circle().stroke(.gray, lineWidth: 4)
                            }
                            .bold()
                        Text("Russian Explorer")
                            .foregroundColor(.black)
                        Image("Starg")
                            .resizable()
                            .frame(width: 30, height: 30)
                      Spacer()
                    }
                }
            }
           // .navigationTitle("Rewards")
        }
    }
    
    struct Rewardslistofyou_Previews: PreviewProvider {
        static var previews: some View {
            Rewardslistofyou()
            
        }
    }
    
    
}
