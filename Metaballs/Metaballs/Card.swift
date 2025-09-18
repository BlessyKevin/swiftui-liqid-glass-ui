//
//  Card.swift
//  Metaballs
//
//  Created by Blessy Elizabeth Saini on 18/09/2025.
//

import  SwiftUI

struct Card:View {
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Text("Brake Pad — OEM").font(.headline)
                Spacer()
                Text("AED 129").font(.headline)
            }
            Text("Ships today • Free return").font(.footnote).foregroundStyle(.secondary)
            Button("Add to Cart") { /* action */ }
                .buttonStyle(.borderedProminent).controlSize(.small)
        }
        .padding(16)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20))
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(.white.opacity(0.25), lineWidth: 1))
    }
}
