//
//  RewardsList.swift
//  Wanderlust
//
//  Created by Alfonso Di Monda on 25/10/22.
//

import Foundation
import SwiftUI

struct RewardsList: View {
    var body: some View {
        NavigationStack {
            NavigationLink {
                // AvatarView
            } label: {
                AvatarAndNameView()
                    Spacer()
            }
            
            List() {
                
                VStack(alignment: .leading) {
                    Text("Rewards")
                        .font(.system(size: 40).bold())
                        Divider()
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
                        Text("Mexico Explorer")
                            .foregroundColor(.black)
                        Image("Star")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Spacer()
                        
                    }
                    .navigationTitle("Profile")
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
                        Text("Russia Explorer")
                            .foregroundColor(.black)
                        Image("Starg")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Spacer()
                    }
                }
            }
            .listStyle(PlainListStyle())
        }
    }
}
struct Rewardslistofyou_Previews: PreviewProvider {
    static var previews: some View {
        RewardsList()
        
    }
}
