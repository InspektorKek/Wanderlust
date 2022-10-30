//
//  RewardsList.swift
//  Wanderlust
//
//  Created by Alfonso Di Monda on 25/10/22.
//

import Foundation
import SwiftUI

struct RewardsList: View {
    @AppStorage("isMexicoRawardGained") var isMexicoRawardGained = false
    @State private var isAvatarSelectorPresented = false
    
    var body: some View {
        NavigationView {
            VStack {
                AvatarAndNameView()
                    .onTapGesture {
                        isAvatarSelectorPresented.toggle()
                    }
                Spacer()
                List() {
                    VStack(alignment: .leading) {
                        Text("Rewards")
                            .font(.system(size: 24))
                            .fontWeight(.semibold)
                        Divider()
                        HStack {
                            Image(systemName: "rewards")
                                .foregroundColor(.black)
                            Image("Mexico")
                                .resizable()
                                .frame(width: 63, height: 63)
                                .clipShape(Circle())
                                .overlay {
                                    Circle().stroke(isMexicoRawardGained ? .orange : .gray, lineWidth: 4)
                                }
                                .bold()
                            Text("Mexican Explorer")
                                .foregroundColor(.black)
                            Image(isMexicoRawardGained ? "Star" : "Starg")
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
                            Text("Brazillian Explorer")
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
                            Text("South African Explorer")
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
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.large)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarBackground(.visible, for: .bottomBar)
        }
        .sheet(isPresented: $isAvatarSelectorPresented) {
            AvatarScreenView()
        }
    }
}
struct Rewardslistofyou_Previews: PreviewProvider {
    static var previews: some View {
        RewardsList()
    }
}
