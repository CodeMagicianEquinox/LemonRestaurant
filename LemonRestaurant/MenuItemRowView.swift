//
//  MenuItemRowView.swift
//  LemonRestaurant
//
//  Created by Timothy Terrance on 2/25/26.
//

import SwiftUI

struct MenuItemRowView: View {
    let name: String
    let price: Double
    // Flag to indicate whether this item is a dessert
    let isDessert: Bool

    var body: some View {
        HStack(spacing: 8) {
            Text(name)
                .font(.headline)
                .padding(.vertical, 12)
                .padding(.leading, 15)

            // Badges inline next to the name
            if isDessert {
                DessertBadge()
            }

            if price >= 10 {
                PremiumPriceBadge()
            } else {
                RegularBadge()
            }

            Spacer()

            Text(String(format: "$%.2f", price))
                .font(.subheadline)
                .monospacedDigit()
                .padding(.trailing, 15)
        }
        .accessibilityElement(children: .combine)
        .accessibilityLabel(accessibilityDescription)
    }

    private var accessibilityDescription: String {
        var parts: [String] = [name, String(format: "$%.2f", price)]
        if isDessert { parts.append("Dessert") }
        parts.append(price >= 10 ? "Premium" : "Regular")
        return parts.joined(separator: ", ")
    }
}


struct PremiumPriceBadge: View {
    var body: some View {
        Text("Premium")
            .font(.caption2.weight(.semibold))
            .padding(.horizontal, 6)
            .padding(.vertical, 3)
            .foregroundStyle(.white)
            .background(Capsule().fill(Color.orange))
            .accessibilityLabel("Premium item")
    }
}

struct RegularBadge: View {
    var body: some View {
        Text("Regular")
            .font(.caption2.weight(.semibold))
            .padding(.horizontal, 6)
            .padding(.vertical, 3)
            .foregroundStyle(.white)
            .background(Capsule().fill(Color.gray))
            .accessibilityLabel("Regular item")
    }
}

struct DessertBadge: View {
    var body: some View {
        Text("Dessert")
            .font(.caption2.weight(.semibold))
            .padding(.horizontal, 6)
            .padding(.vertical, 3)
            .foregroundStyle(.white)
            .background(Capsule().fill(Color.pink))
            .accessibilityLabel("Dessert")
    }
}


func sectionHeaderTitle(for visibleItemCount: Int) -> String {
    "Showing \(visibleItemCount) item\(visibleItemCount == 1 ? "" : "s")"
}

#Preview {
    VStack(alignment: .leading) {
        MenuItemRowView(name: "Pizza", price: 9.99, isDessert: false)
        MenuItemRowView(name: "Steak", price: 18.50, isDessert: false)
        MenuItemRowView(name: "Cheesecake", price: 7.25, isDessert: true)
    }
    .padding()
}
