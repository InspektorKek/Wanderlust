//
//  Colors.swift
//  Wanderlust
//
//  Created by Beatriz Gomes on 26/10/22.
//

import SwiftUI

extension Color {
    static let salad = Color("Salad")
    static let winColor = Color("WinColor")
    static let lightBlue = Color("LightBlue")
    static let grayColor = Color("GrayColor")
    static let clearBlue = Color("ClearBlue")
    static let darkGray = Color("DarkGray")
    static let grayButton = Color("GrayButton")
    static let wrongRed = Color("WrongRed")
    static let circleOrange = Color("CircleOrange")
    static let circlePurple = Color("CirclePurple")
}

struct CardsColors {
    static let blueCard = Color("BlueCard")
    static let lightGreenCard = Color("LightGreenCard")
    static let orangeCard = Color("OrangeCard")
    static let purpleCard = Color("PurpleCard")
    static let yellowCard = Color("YellowCard")
    static let darkGreenCard = Color("DarkGreenCard")
    
    static var allCases: [Color] {
        return [Self.blueCard, Self.lightGreenCard, Self.orangeCard, Self.purpleCard, Self.yellowCard, Self.darkGreenCard]
    }
}
