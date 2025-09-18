//
//  TiltWrapper.swift
//  Metaballs
//
//  Created by Blessy Elizabeth Saini on 18/09/2025.
//
import SwiftUI
struct TiltWrapper: View {
    @State private var drag: CGSize = .zero
    private let maxTilt: Double = 14

    var body: some View {
        let nx = Double(drag.width / 150).clamped(-1, 1)
        let ny = Double(drag.height / 90).clamped(-1, 1)
        let tiltY = nx * maxTilt
        let tiltX = -ny * maxTilt

        GlassCard()
            .rotation3DEffect(.degrees(tiltX), axis: (1,0,0), perspective: 0.6)
            .rotation3DEffect(.degrees(tiltY), axis: (0,1,0), perspective: 0.6)
            .gesture(
                DragGesture(minimumDistance: 0)
                    .onChanged { drag = $0.translation }
                    .onEnded { _ in withAnimation(.spring(response: 0.4, dampingFraction: 0.7)) { drag = .zero } }
            )
            .animation(.spring(response: 0.25, dampingFraction: 0.8), value: drag)
    }
}

fileprivate extension Comparable {
    func clamped(_ a: Self, _ b: Self) -> Self {
        let lo = min(a,b), hi = max(a,b)
        return min(max(self, lo), hi)
    }
}
