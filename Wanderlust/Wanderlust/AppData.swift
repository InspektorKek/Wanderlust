//
//  AppData.swift
//  Wanderlust
//
//  Created by Mikhail Borisov on 25/10/22.
//

import Foundation

struct AppData {
    @Storage(key: "user_profile", defaultValue: "")
    static var userProfile: String
    
    // Declare a User object
    @Storage(key: "countries", defaultValue: defaultCountries)
    static var countries: [Country]
    
    @Storage(key: "rewards", defaultValue: defaultRewards)
    static var rewards: [Reward]
    
    @Storage(key: "user_selected_avatar_image_name", defaultValue: "icon_kid_1")
    static var userSelectedAvatarImageName: String
    
    @Storage(key: "user_name", defaultValue: "")
    static var userName: String
    
    @Storage(key: "is_avatar_selection_screen_shown", defaultValue: false)
    static var isAvatarScreenShown: Bool
}

private extension AppData {
    static var defaultCountries: [Country] {
        return Country.Name.allCases.map { Country(name: $0, isAvailable: $0.defaultAvailability) }
    }
    
    static var defaultRewards: [Reward] {
        return Country.Name.allCases.map { Reward(name: $0.rewardName) }
    }
}
