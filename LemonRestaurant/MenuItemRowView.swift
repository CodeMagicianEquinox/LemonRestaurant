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
    
    var body: some View {
        HStack {
            Text(name)
                .font(.headline)
                .padding(15)
            Spacer()
            Text(String(format: "$%.2f", price))
                
                Spacer()
                if price > 10{
                    PremiumBadge()
                }
            }
        }
        
    }


#Preview {
    MenuItemRowView(name: "Pizza", price: 9.99)
}
