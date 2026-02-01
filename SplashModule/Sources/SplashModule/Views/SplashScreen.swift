//
//  SplashScreen.swift
//  SplashModule
//
//  Created by Aya Mashaly on 31/01/2026.
//

import SwiftUI
import Core

public struct SplashScreen: View {
    public init() {}

    public var body: some View {
        ZStack {
            LinearGradient(
                 colors: [
                    Color(asset: Asset.Colors.primaryOrange),
                    Color(asset: Asset.Colors.lightOrange),
                    Color(asset: Asset.Colors.brightYellow)
                 ],
                 startPoint: .topLeading,
                 endPoint: .bottomTrailing
             )
            .ignoresSafeArea()

            VStack(spacing: 30) {
                LogoSection()
                TitleSection()
            }
        }
    }
}

#Preview {
    SplashScreen()
}
