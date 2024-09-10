//
//  LampFactory.swift
//  BnpTest
//
//  Created by BNP Test on 08/09/2024.
//

import Foundation
import SwiftUI

protocol LampsViewable {
    associatedtype Lamps: View

    var upperRowStates: [TimeState] { get }
    var lowerRowStates: [TimeState] { get }

    func lampsView() -> Lamps
}

extension LampsViewable {

    func lampsView() -> some View {
        VStack {
            row(with: upperRowStates)
            row(with: lowerRowStates)
        }
    }
}

private extension LampsViewable {

    func row(with states: [TimeState]) -> some View {
        HStack {
            ForEach(states) { state in
                RoundedRectangle(cornerRadius: LampConstants.cornerRadius)
                    .fill(state.color)
                    .frame(maxHeight: LampConstants.maxHeight)
            }
        }
    }
}

enum LampConstants {
    static let cornerRadius: CGFloat = 16
    static let maxHeight: CGFloat = 36
}
