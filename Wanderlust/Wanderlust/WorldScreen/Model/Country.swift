//
//  Country.swift
//  Wanderlust
//
//  Created by Mikhail Borisov on 24/10/22.
//

import Foundation

struct Country: Identifiable {
    let name: String
    var isAvailable: Bool
    let id = UUID()
    
    let constantOffset: OffsetMultiply
    
    struct OffsetMultiply {
        let x,y: Double
    }
}
