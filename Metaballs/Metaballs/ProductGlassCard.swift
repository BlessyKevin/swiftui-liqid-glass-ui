//
//  ProductGlassCard.swift
//  Metaballs
//
//  Created by Blessy Elizabeth Saini on 18/09/2025.
//

import SwiftUI

struct ProductGlassCard: View {
    var title: String
    var subtitle: String
    var priceAED: Int
    var inStock: Bool
    var tags: [String]

    var onAddToCart: () -> Void
    var onDetails: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(alignment: .firstTextBaseline) {
                Text(title).font(.headline)
                Spacer()
                Text("AED \(priceAED)").font(.headline)
            }

            Text(subtitle)
                .font(.footnote)
                .foregroundStyle(.secondary)

            HStack(spacing: 8) {
                ForEach(tags, id: \.self) { tag in
                    Text(tag).font(.caption.weight(.medium))
                        .padding(.horizontal, 8).padding(.vertical, 4)
                        .background(.thinMaterial, in: Capsule())
                }
                Spacer()
                Label(
                    inStock ? "In stock" : "Out of stock",
                    systemImage: inStock
                        ? "checkmark.circle.fill"
                        : "exclamationmark.triangle.fill"
                )
                .font(.caption)
                .foregroundStyle(inStock ? .green : .orange)
                .padding(.horizontal, 8).padding(.vertical, 4)
                .background(.thinMaterial, in: Capsule())
            }

            HStack(spacing: 10) {
                Button("Add to Cart", action: onAddToCart)
                    .buttonStyle(.borderedProminent)

                Button("Details", action: onDetails)
                    .buttonStyle(.bordered)
            }
            .padding(.top, 2)
        }
        .padding(18)
        .background(
            .ultraThinMaterial,
            in: RoundedRectangle(cornerRadius: 22, style: .continuous)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 22, style: .continuous)
                .stroke(
                    LinearGradient(
                        colors: [.white.opacity(0.5), .white.opacity(0.15)],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    ),
                    lineWidth: 1
                )
        )
        .shadow(color: .black.opacity(0.25), radius: 24, x: 0, y: 10)
        .overlay(alignment: .topTrailing) { shine }
    }

    private var shine: some View {
        RoundedRectangle(cornerRadius: 22, style: .continuous)
            .fill(
                LinearGradient(
                    colors: [
                        .white.opacity(0.10), .white.opacity(0.02),
                        .white.opacity(0.14),
                    ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
            .blendMode(.screen)
            .frame(width: 220, height: 140)
            .rotationEffect(.degrees(12))
            .offset(x: 20, y: -24)
            .allowsHitTesting(false)
    }
}
