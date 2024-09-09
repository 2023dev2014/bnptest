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
            clockView()
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

private extension BerlinClockView {

    func clockView() -> some View {
        VStack {
            SecondsRow(seconds: $viewModel.seconds)
            HoursRow(upperRowStates: $viewModel.upperHours, lowerRowStates: $viewModel.lowerHours)
            MinutesRow(upperRowStates: $viewModel.upperMinutes, lowerRowStates: $viewModel.lowerMinutes)
        }
        .padding()
        .cardBackground()
        .frame(maxWidth: 320)
    }
}
