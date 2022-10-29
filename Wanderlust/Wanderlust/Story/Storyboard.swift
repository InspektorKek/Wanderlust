//
//  Storyboard.swift
//  Story-board
//
//  Created by Martina Casillo on 24/10/22.
//

import SwiftUI

struct Storyboard: View {
    var body: some View {
        VStack {
            ScrollView {
                StoryOne()
                StoryTwo()
                StoryThree()
                Playthegame()
            }
        }
    }
}

struct Storyboard_Previews: PreviewProvider {
    static var previews: some View {
        Storyboard()
    }
}
