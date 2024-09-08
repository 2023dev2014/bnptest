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
        VStack(spacing: 16) {
            SecondsRow(seconds: $viewModel.seconds)
            HoursRow(upperStates: $viewModel.upperHours, lowerStates: $viewModel.lowerHours)
            Divider()
            DigitalTimeView(digitalTime: $viewModel.digitalTime)
        }
        .padding()
        .onAppear() {
            viewModel.start()
        }
        .onDisappear() {
            viewModel.stop()
        }
    }
}
