//
//  Haptics.swift
//  Metaballs
//
//  Created by Blessy Elizabeth Saini on 18/09/2025.
//

// MARK: - Haptics
import UIKit
enum Haptics {
    private static let notif = UINotificationFeedbackGenerator()
    private static let selectionGen = UISelectionFeedbackGenerator()
    static func success() { notif.notificationOccurred(.success) }
    static func select() { selectionGen.selectionChanged() }
    static func impact(_ style: UIImpactFeedbackGenerator.FeedbackStyle) {
        UIImpactFeedbackGenerator(style: style).impactOccurred()
    }
}
