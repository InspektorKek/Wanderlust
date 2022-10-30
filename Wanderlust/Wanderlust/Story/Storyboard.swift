//
//  Storyboard.swift
//  Story-board
//
//  Created by Martina Casillo on 24/10/22.
//

import SwiftUI

struct Storyboard: View {
    @Binding var isPlayGameTapped: Bool
    
    var body: some View {
        VStack {
            ScrollView {
                StoryOne()
                StoryTwo()
                StoryThree()
                Playthegame(isPlayGameTapped: $isPlayGameTapped)
            }
        }
    }
}
