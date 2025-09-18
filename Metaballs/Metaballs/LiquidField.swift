//
//  LiquidField.swift
//  Metaballs
//
//  Created by Blessy Elizabeth Saini on 18/09/2025.
//
import SwiftUI

struct LiquidField: View {
    var reduceMotion: Bool
    var body: some View {
        LinearGradient(
            colors: [.purple, .pink, .orange, .yellow],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .mask(
            reduceMotion
                ? AnyView(StaticMetaballs()) : AnyView(AnimatedMetaballs())
        )
    }
}
