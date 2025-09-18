//
//  Glass.swift
//  Metaballs
//
//  Created by Blessy Elizabeth Saini on 18/09/2025.
//
import SwiftUI
struct GlassCard: View {
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: "swift").font(.system(size: 44, weight: .bold))
            Text("Liquid Glass — SwiftUI").font(.headline)
            Text("This is a demo").font(.subheadline).foregroundStyle(.secondary)
        }
        .padding(20)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 24, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 24).stroke(.white.opacity(0.25), lineWidth: 1))
        .shadow(color: .black.opacity(0.25), radius: 24, y: 10)
    }
}
