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
        VStack(spacing: Constants.rowsSpacing) {
            DigitalTimeView(digitalTime: $viewModel.digitalTime)
            clockView()
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

    @ViewBuilder
    func clockView() -> some View {
        if viewModel.isStarted {
            VStack {
                SecondsRow(seconds: $viewModel.seconds)
                HoursRow(upperRowStates: $viewModel.upperHours, lowerRowStates: $viewModel.lowerHours)
                MinutesRow(upperRowStates: $viewModel.upperMinutes, lowerRowStates: $viewModel.lowerMinutes)
            }
            .padding()
            .cardBackground()
            .frame(maxWidth: Constants.maxClockWidth)
        }
    }

    enum Constants {
        static let maxClockWidth: CGFloat = 320
        static let rowsSpacing: CGFloat = 16
    }
}
