//
//  BerlinClockViewModel.swift
//  BnpTest
//
//  Created by BNP Test on 07/09/2024.
//

import Combine
import Foundation

final class BerlinClockViewModel: ObservableObject {

    @Published var digitalTime: String = ""
    @Published var seconds: TimeState = .unset
    @Published var upperHours: [TimeState] = []
    @Published var lowerHours: [TimeState] = []
    @Published var upperMinutes: [TimeState] = []
    @Published var lowerMinutes: [TimeState] = []
    @Published var isStarted: Bool = false

    private var currentDate: Date {
        didSet {
            digitalTime = formatDateToString(currentDate)
            let berlinTime = formatDateToBerlinTime(currentDate)
            seconds = berlinTime.seconds
            upperHours = berlinTime.upperHours
            lowerHours = berlinTime.lowerHours
            upperMinutes = berlinTime.upperMinutes
            lowerMinutes = berlinTime.lowerMinutes
            if !isStarted {
                isStarted = true
            }
        }
    }
    private let berlinTimeAdapter: BerlinTimeAdapter
    private let dateManager: DateManagerProtocol
    private var dateCancellableSet = Set<AnyCancellable>()

    init(dateManager: DateManagerProtocol = DateManager()) {
        self.dateManager = dateManager
        berlinTimeAdapter = BerlinTimeAdapter()
        currentDate = Date()
        bindDateManager()
    }

    func start() {
        dateManager.start()
    }

    func stop() {
        dateManager.stop()
        isStarted = false
    }
}

private extension BerlinClockViewModel {

    func formatDateToString(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM-dd-yyyy HH:mm:ss"
        return dateFormatter.string(from: date)
    }

    func formatDateToBerlinTime(_ date: Date) -> BerlinTimeModel {
        return berlinTimeAdapter.convertToBerlin(date: date)
    }

    func bindDateManager() {
        dateManager.timeChangeNotifier.sink { [weak self] date in
            guard let self = self else { return }
            currentDate = date
        }
        .store(in: &dateCancellableSet)
    }
}
