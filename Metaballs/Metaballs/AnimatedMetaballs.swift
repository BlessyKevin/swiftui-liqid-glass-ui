//
//  AnimatedMetaballs.swift
//  Metaballs
//
//  Created by Blessy Elizabeth Saini on 18/09/2025.
//
import SwiftUI
struct AnimatedMetaballs: View {
    let count = 7
    let blur: CGFloat = 24

    var body: some View {
        TimelineView(.animation(minimumInterval: 1.0 / 30.0)) { timeline in
            let t = timeline.date.timeIntervalSinceReferenceDate
            Canvas { ctx, size in
                ctx.addFilter(.alphaThreshold(min: 0.5, color: .white))
                ctx.addFilter(.blur(radius: blur))
                ctx.drawLayer { layer in
                    for i in 0..<count {
                        let s = 0.6 + Double(i) * 0.08
                        let x =
                            size.width * 0.5 + CGFloat(cos(t * s + Double(i)))
                            * size.width * 0.35
                        let y =
                            size.height * 0.5 + CGFloat(
                                sin(t * s * 1.3 + Double(i))
                            ) * size.height * 0.3
                        let r: CGFloat = 70
                        layer.fill(
                            Path(
                                ellipseIn: CGRect(
                                    x: x - r,
                                    y: y - r,
                                    width: r * 2,
                                    height: r * 2
                                )
                            ),
                            with: .color(.white)
                        )
                    }
                }
            }
        }
    }
}
