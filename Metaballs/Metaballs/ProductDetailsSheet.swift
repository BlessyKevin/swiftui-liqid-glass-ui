//
//  ProductDetailsSheet.swift
//  Metaballs
//
//  Created by Blessy Elizabeth Saini on 18/09/2025.
//

import SwiftUI
struct ProductDetailsSheet: View {
    @Binding var qty: Int
    @State private var onlyInStock = true
    @State private var selectedTab = 0

    var onClose: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Capsule().frame(width: 40, height: 4).foregroundStyle(.secondary)
                .opacity(0.6)
                .frame(maxWidth: .infinity, alignment: .center)

            Text("Item Details").font(.title3.weight(.semibold))

            Picker("Category", selection: $selectedTab) {
                Text("Overview").tag(0)
                Text("Specs").tag(1)
                Text("Shipping").tag(2)
            }.pickerStyle(.segmented)

            if selectedTab == 0 {
                Text(
                    "OEM ceramic brake pad designed for high-mileage fleets. Low dust, quiet stop."
                )
                .font(.callout)
            } else if selectedTab == 1 {
                VStack(alignment: .leading, spacing: 6) {
                    Label(
                        "Material: Ceramic",
                        systemImage: "wrench.and.screwdriver"
                    )
                    Label("Compatibility: Civic 2016–2021", systemImage: "car")
                    Label("Warranty: 12 months", systemImage: "checkmark.seal")
                }.font(.callout)
            } else {
                VStack(alignment: .leading, spacing: 6) {
                    Label("Ships today from JAFZA", systemImage: "shippingbox")
                    Label(
                        "Free returns within 7 days",
                        systemImage: "arrow.uturn.left"
                    )
                }.font(.callout)
            }

            Toggle("Show in-stock items only", isOn: $onlyInStock)

            HStack {
                Stepper("Qty: \(qty)", value: $qty, in: 1...20)
                Spacer()
                Button("Apply") {
                    Haptics.success()
                    onClose()
                }
                .buttonStyle(.borderedProminent)
            }

            Spacer(minLength: 0)
        }
        .padding()
    }
}
