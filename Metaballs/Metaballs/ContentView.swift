//
//  ContentView.swift
//  Metaballs
//
//  Created by Blessy Elizabeth Saini on 18/09/2025.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.accessibilityReduceMotion) private var sysReduceMotion
    @AppStorage("prefersReducedMotion") private var userReduceMotion = false  // persists across launches

    private var effectiveReduceMotion: Bool {
        sysReduceMotion || userReduceMotion
    }

    @State private var showDetails = false
    @State private var qty = 1

    var body: some View {
        ZStack {
            // Background respects Reduce Motion
            LiquidField(reduceMotion: effectiveReduceMotion)
                .ignoresSafeArea()

            // Product card
            ProductGlassCard(
                title: "Brake Pad — OEM",
                subtitle: "High-durability ceramic • 12‑month warranty",
                priceAED: 129,
                inStock: true,
                tags: ["Auto", "Brakes", "OEM"],
                onAddToCart: {
                    Haptics.success()
                    qty = max(1, qty)
                },
                onDetails: { showDetails = true }
            )
            .padding()
            VStack {
                
                HStack {
                    Spacer()
                    Button {
                        userReduceMotion.toggle()
                    } label: {
                        Label(
                            userReduceMotion
                                ? "Animations Off" : "Animations On",
                            systemImage: userReduceMotion
                                ? "waveform.slash" : "waveform"
                        )
                        .font(.caption.weight(.semibold))
                        .padding(.horizontal, 10).padding(.vertical, 8)
                        .background(.ultraThinMaterial, in: Capsule())
                    }
                }
                .padding()
                TiltWrapper()
                Spacer()
               
            }
        }
        .preferredColorScheme(.dark)
        .sheet(isPresented: $showDetails) {
            ProductDetailsSheet(qty: $qty, onClose: { showDetails = false })
                .presentationDetents([.medium, .large])
                .presentationDragIndicator(.visible)
        }
    }
}





#Preview {
    ContentView()
}
