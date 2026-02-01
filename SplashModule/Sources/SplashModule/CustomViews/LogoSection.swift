//
//  LogoSection.swift
//  SplashModule
//
//  Created by Aya Mashaly on 31/01/2026.
//

import SwiftUI

struct LogoSection: View {
    @State private var pulse = false

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.white)
                .frame(width: 120, height: 120)
                .shadow(radius: 8)
                .scaleEffect(pulse ? 1.09 : 0.9)
                .animation(.easeInOut(duration: 2).repeatForever(autoreverses: true), value: pulse)

            Text("🏃‍♂️")
                .font(.system(size: 60))
        }
        .onAppear { pulse.toggle() }
    }
}

#Preview {
    LogoSection()
}
