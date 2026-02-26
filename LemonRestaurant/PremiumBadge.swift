//
//  PremiumBadge.swift
//  LemonRestaurant
//
//  Created by Timothy Terrance on 2/25/26.
//

import SwiftUI

struct PremiumBadge: View {
    var body: some View {
        HStack {
            Image(systemName: "star.fill")
                .foregroundColor(.yellow)
            Text("Premium")
                .font(.caption)
            }
        }
    
}

#Preview {
    PremiumBadge()
}
