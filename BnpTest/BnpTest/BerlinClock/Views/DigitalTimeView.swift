//
//  DigitalTimeView.swift.swift
//  BnpTest
//
//  Created by BNP Test on 08/09/2024.
//

import SwiftUI

struct DigitalTimeView: View {

    @Binding var digitalTime: String

    var body: some View {
        Text(digitalTime)
    }
}
