//
//  StaticMetaballs.swift
//  Metaballs
//
//  Created by Blessy Elizabeth Saini on 18/09/2025.
//

import SwiftUI
struct StaticMetaballs: View {
    let blur: CGFloat = 24
    var body: some View {
        Canvas { ctx, size in
            ctx.addFilter(.alphaThreshold(min: 0.5, color: .white))
            ctx.addFilter(.blur(radius: blur))
            ctx.drawLayer { layer in
                let r: CGFloat = 70
                let points: [CGPoint] = [
                    .init(x: size.width * 0.30, y: size.height * 0.40),
                    .init(x: size.width * 0.55, y: size.height * 0.50),
                    .init(x: size.width * 0.78, y: size.height * 0.35),
                    .init(x: size.width * 0.65, y: size.height * 0.70),
                    .init(x: size.width * 0.35, y: size.height * 0.72),
                ]
                for p in points {
                    layer.fill(
                        Path(
                            ellipseIn: CGRect(
                                x: p.x - r,
                                y: p.y - r,
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
