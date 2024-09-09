//
//  TimeState.swift
//  BnpTest
//
//  Created by BNP Test on 06/09/2024.
//

import Foundation
import SwiftUI

enum TimeState: Identifiable {

    var id: UUID { UUID() }

    case Y
    case R
    case O
    case unset

    var color: Color {
        switch self {
        case .Y: return .yellow
        case .R: return .red
        case .O: return .gray.opacity(0.5)
        case .unset: return .clear
        }
    }
}
