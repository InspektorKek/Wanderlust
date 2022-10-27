//
//  Country.swift
//  Wanderlust
//
//  Created by Mikhail Borisov on 24/10/22.
//

import Foundation

struct Country: Codable, Identifiable {
    let name: Name
    var isAvailable: Bool
    let id: UUID
    
    var worldOffset: OffsetMultiply {
        switch name {
        case .mexico:
            return OffsetMultiply(x: -0.45, y: 0.1)
        case .southAfrica:
            return OffsetMultiply(x: 0.25, y: 0.2)
        case .brazil:
            return OffsetMultiply(x: -0.22, y: 0.25)
        case .russia:
            return OffsetMultiply(x: 0.3, y: -0.3)
        }
    }
    
    init(name: Name, isAvailable: Bool) {
        self.name = name
        self.isAvailable = isAvailable
        
        self.id = UUID()
    }
    
    enum Name: String, CaseIterable, Codable {
        case mexico = "Mexico"
        case southAfrica = "South Africa"
        case brazil = "Brazil"
        case russia = "Russia"
        
        var defaultAvailability: Bool {
            switch self {
            case .mexico:
                return true
            case .southAfrica, .brazil, .russia:
                return false
            }
        }
        
        var rewardName: String {
            switch self {
            case .mexico:
                return "Mexican Explirer"
            case .southAfrica:
                return "South African Explorer"
            case .brazil:
                return "Brazilian Explorer"
            case .russia:
                return "Russian Explorer"
            }
        }
    }

}

struct OffsetMultiply: Codable {
    let x,y: Double
}

extension Country: Equatable {
    static func == (lhs: Country, rhs: Country) -> Bool {
        lhs.id == rhs.id
    }
}
