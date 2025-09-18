# swiftui-liqid-glass-ui
# Product Glass Card + Bottom Sheet (SwiftUI, iOS 16+)

Real-world SwiftUI UI pattern:
- Glassmorphic **product card** with price, stock badge, tags, and CTAs
- **Bottom sheet** for details/specs/shipping (detents + drag indicator)
- **Accessibility:** respects iOS **Reduce Motion** (animated background → static)

## Why this matters
Common in commerce/logistics apps; tiny code, big UX. Shows production care for **accessibility** and **performance**.

## Run
1. New SwiftUI app (iOS 16+).
2. Add `ProductCard_LiquidGlass.swift` to the project.
3. Run. Tap **Details** for the bottom sheet, **Apply**, then try the in-app Animations On/Off toggle.

## Key APIs
`Canvas`, `.blur`, `.alphaThreshold`, `.ultraThinMaterial`, `.sheet` + `.presentationDetents`, `@Environment(\.accessibilityReduceMotion)`, `TimelineView(.animation)`

## Notes
- Keep `blur ≤ ~28` and blobs `≤ ~10` for older devices.
- Combine system Reduce Motion with your in-app toggle for a good experience.

## Preview
*(Add a GIF or screenshot here when ready.)*
