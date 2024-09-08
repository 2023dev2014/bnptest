//
//  HoursRow.swift
//  BnpTest
//
//  Created by BNP Test on 08/09/2024.
//

import SwiftUI

struct HoursRow: View {

    @Binding var upperStates: [TimeState]
    @Binding var lowerStates: [TimeState]

    var body: some View {
        VStack {
            row(with: upperStates)
            row(with: lowerStates)
        }
    }
}

private extension HoursRow {

    func row(with states: [TimeState]) -> some View {
        HStack {
            ForEach(states) { state in
                RoundedRectangle(cornerRadius: 16)
                    .fill(state.color)
                    .frame(width: 8, height: 16)
            }
        }
    }
}
