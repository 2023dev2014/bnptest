//
//  RoundedRectangleShadowedBackground.swift
//  BnpTest
//
//  Created by BNP Test on 09/09/2024.
//

import SwiftUI

struct RoundedRectangleShadowedBackground: ViewModifier {

    var radius: CGFloat
    var background: Color

    func body(content: Content) -> some View {
        content
            .background {
                RoundedRectangle(cornerRadius: radius, style: .continuous)
                    .fill(background)
                    .shadow(
                        color: CardConstants.shadowBackgroundColor,
                        radius: CardConstants.shadowRadius,
                        x: CardConstants.shadowWidth,
                        y: CardConstants.shadowHeight)
            }
            .padding(CardConstants.padding)
    }
}

extension View {

    func cardBackground(
        radius: CGFloat = CardConstants.cornerRadius,
        background: Color = CardConstants.backgroundColor) -> some View {
            let shape = RoundedRectangleShadowedBackground(radius: radius, background: background)
            return modifier(shape)
        }
}

fileprivate enum CardConstants {
    static let backgroundColor: Color = .gray.opacity(0.08)
    static let padding: CGFloat = 1
    static let cornerRadius: CGFloat = 20
    static let shadowWidth: CGFloat = 0.2
    static let shadowHeight: CGFloat = 0.4
    static let shadowRadius: CGFloat = 0.5
    static let shadowBackgroundColor: Color = .gray
}
