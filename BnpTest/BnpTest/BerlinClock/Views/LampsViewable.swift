//
//  LampFactory.swift
//  BnpTest
//
//  Created by BNP Test on 08/09/2024.
//

import Foundation
import SwiftUI

protocol LampsViewable {
    associatedtype V: View
    
    var upperRowStates: [TimeState] { get }
    var lowerRowStates: [TimeState] { get }

    func lampsView() -> V
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
                RoundedRectangle(cornerRadius: 16)
                    .fill(state.color)
                    .frame(maxHeight: 36)
            }
        }
    }
}
