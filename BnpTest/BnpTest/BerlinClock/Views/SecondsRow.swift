//
//  SecondsRow.swift
//  BnpTest
//
//  Created by BNP Test on 08/09/2024.
//

import SwiftUI

struct SecondsRow: View {

    @Binding var seconds: TimeState

    var body: some View {
        Circle()
            .fill(seconds.color)
            .frame(width: 48, height: 48)
    }
}
