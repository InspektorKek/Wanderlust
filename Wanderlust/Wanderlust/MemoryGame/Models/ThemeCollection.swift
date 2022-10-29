//
//  ThemeCollection.swift
//  memory-card-matching-game
//
//  Created by Archie Liu on 2021-05-07.
//

import SwiftUI

struct ThemeCollection: Codable {
    var themes = [Theme]()
    
    struct Theme: Identifiable, Codable {
        var name: String
        var accentColor: UIColor.RGB
        var emojiSet: [String]
        var id = UUID()
        
        init(name: String, accentColor: UIColor, emojiSet: [String]) {
            self.name = name
            self.accentColor = accentColor.rgb
            self.emojiSet = emojiSet
        }
    }
    var json: Data? {
        return try? JSONEncoder().encode(self)
    }
    
    init?(json: Data?) {
        if json != nil, let newThemeCollection = try? JSONDecoder().decode(ThemeCollection.self, from: json!) {
            self = newThemeCollection
        } else {
            return nil
        }
    }
    
    init() {
        self.themes = [DefaultThemes.theme0]
    }
}
