//
//  BerlinClockView.swift
//  BnpTest
//
//  Created by BNP Test on 07/09/2024.
//

import SwiftUI

struct BerlinClockView: View {

    @StateObject var viewModel: BerlinClockViewModel = BerlinClockViewModel()

    var body: some View {
        VStack {
            Text(viewModel.currentDigitTime)
        }
        .onAppear() {
            viewModel.start()
        }
        .onDisappear() {
            viewModel.stop()
        }
    }
}
