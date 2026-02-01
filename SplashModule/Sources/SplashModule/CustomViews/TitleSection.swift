//
//  TitleSection.swift
//  SplashModule
//
//  Created by Aya Mashaly on 31/01/2026.
//

import SwiftUI
import Core

struct TitleSection: View {
    @State private var pulse = false

    var body: some View {
        Text(L10n.hatli)
            .font(.system(size: 35, weight: .black, design: .default))
            .foregroundColor(.white)
            .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 5)
            .scaleEffect(pulse ? 1.09 : 0.9)
            .animation(.easeInOut(duration: 2).repeatForever(autoreverses: true), value: pulse)

            .onAppear { pulse.toggle() }
    }
}

#Preview {
    TitleSection()
}
