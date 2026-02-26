//
//  DessertView.swift
//  LemonRestaurant-ch7
//
//  Created by Timothy Terrance on 2/25/26.
//

import SwiftUI

struct DessertView: View {
    let dessertItems: [String: Double] = [
        "Chocolate Cake": 6.99,
        "Cheesecake": 7.49,
        "Apple Pie": 5.99,
        "Ice Cream": 4.99,
        "Brownie": 5.49
    ]
    
    var sortedDesserts: [(name: String, price: Double)] {
        dessertItems
            .sorted { $0.key < $1.key }
            .map { (name: $0.key, price: $0.value) }
    }
    
    var body: some View {
        VStack {
            Text("Desserts")
                .font(.title2)
                .bold()
            
            List {
                ForEach(sortedDesserts, id: \.name) { dessert in
                    HStack {
                        Text(dessert.name)
                        Spacer()
                        Text(dessert.price, format: .number.precision(.fractionLength(0...2)))
                    }
                }
            }
            .listStyle(.plain)
        }
        .padding()
    }
}

#Preview {
    DessertView()
}
