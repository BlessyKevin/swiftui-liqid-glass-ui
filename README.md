# Liquid Glass Product Card + Bottom Sheet (SwiftUI, iOS 16+)

A production-leaning SwiftUI demo that showcases:
- A **glassmorphic product card** with price, stock badge, tags, and CTAs
- A **Details** bottom sheet using **detents** (medium/large)
- An **Animations On/Off** toggle that **respects iOS Reduce Motion**
- Optional **3D tilt** via `TiltWrapper()` for a hero/interaction moment
- A colorful **liquid** background (metaballs) implemented with `Canvas + blur + alphaThreshold`

---

## What this build demonstrates (your `ContentView`)
- **Accessibility-aware animations**  
  Uses
  ```swift
  @Environment(\.accessibilityReduceMotion) var sysReduceMotion
  @AppStorage("prefersReducedMotion") var userReduceMotion = false
