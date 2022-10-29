//
//  ImageMemoryGameView.swift
//  Wanderlust
//
//  Created by Mikhail Borisov on 28/10/22.
//

import SwiftUI

struct ImageMemoryGameView: View {
    @ObservedObject var viewModel: EmojiMemoryGameViewModel
    
    var body: some View {
        return VStack{
            Grid(items: viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        viewModel.choose(card: card)
                    }
                }
                .padding(5)
            }
            .padding()
            .foregroundColor(Color(viewModel.theme.accentColor))
        }
        .accentColor(Color(viewModel.theme.accentColor))
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    var body: some View {
        GeometryReader { geometry in
            body(for: geometry.size)
        }
    }
    
    @ViewBuilder
    private func body(for size: CGSize) -> some View {
        if card.isFaceUp || !card.isMatched {
            ZStack {
                Group {
                    Pie(
                        startAngle: Angle.degrees(0-90),
                        endAngle: Angle.degrees(0-90),
                        clockwise: true
                    )
                }.padding(5).opacity(0.25).transition(.identity)
                Image(card.content)
                    .font(Font.system(size: fontSize(for: size)))
                    .rotationEffect(Angle.degrees(card.isMatched ? 360:0))
                    .animation(card.isMatched ? Animation.linear(duration: 1).repeatForever(autoreverses: false) : .default)
            }
            .cardify(isFaceUp: card.isFaceUp)
            .foregroundColor(Color.random())
            .transition(.scale)
        }
    }
    // MARK: - drawing constants
    
    private func fontSize(for size: CGSize) -> CGFloat {
        return min(size.width, size.height) * 0.7
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGameViewModel(theme: DefaultThemes.theme0)
        game.choose(card: game.cards[0])
        return ImageMemoryGameView(viewModel: game)
    }
}

