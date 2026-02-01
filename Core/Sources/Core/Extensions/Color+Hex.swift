//
//  Color+Hex.swift
//  Core
//
//  Created by Aya Mashaly on 31/01/2026.
//

import SwiftUI

public extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let redComponent, greenComponent, blueComponent: UInt64
        switch hex.count {
        case 6:
            (redComponent, greenComponent, blueComponent) =
                (int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (redComponent, greenComponent, blueComponent) = (0, 0, 0)
        }
        self.init(
            .sRGB,
            red: Double(redComponent)/255,
            green: Double(greenComponent)/255,
            blue: Double(blueComponent)/255
        )
    }
}
