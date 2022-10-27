//
//  Reward.swift
//  Wanderlust
//
//  Created by Mikhail Borisov on 25/10/22.
//

import Foundation

struct Reward: Codable, Identifiable {
    let id: UUID
    let name: String
    var isReceived: Bool
    
    init(name: String, isReceived: Bool = false) {
        id = UUID()
        self.name = name
        self.isReceived = isReceived
    }
}
