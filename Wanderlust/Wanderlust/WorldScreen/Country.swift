//
//  Country.swift
//  Wanderlust
//
//  Created by Mikhail Borisov on 24/10/22.
//

import Foundation

protocol Countriable {
    var name: String { get }
    var isAvailable: Bool { get set }
    var id: UUID { get }
}

struct Country: Countriable, Identifiable {
    let name: String
    var isAvailable: Bool
    let id = UUID()
}
