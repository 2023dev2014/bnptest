//
//  MinutesRow.swift
//  BnpTest
//
//  Created by BNP Test on 08/09/2024.
//

import SwiftUI

struct MinutesRow: View, LampsViewable {

    @Binding var upperRowStates: [TimeState]
    @Binding var lowerRowStates: [TimeState]

    var body: some View {
        lampsView()
    }
}

