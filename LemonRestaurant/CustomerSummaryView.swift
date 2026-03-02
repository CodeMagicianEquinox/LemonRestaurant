//
//  CustomerSummaryView.swift
//  LemonRestaurant
//
//  Created by Timothy Terrance on 3/2/26.
//

import SwiftUI

struct CustomerSummaryView: View {
    let customers: [Customer]

    var body: some View {
        List {
            Section("Customer Summary") {
                ForEach(customers.indices, id: \.self) { index in
                    let customer = customers[index]

                    VStack(alignment: .leading, spacing: 6) {
                        Text(customer.name)
                            .font(.headline)
                            .foregroundColor(.primary)

                        Text(customer.email)
                            .font(.subheadline)
                            .foregroundColor(.blue)

                        Text("Visits: \(customer.visits)")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }
                    .padding(.vertical, 6)
                }
            }
        }
        .listStyle(.insetGrouped)
    }
}

#Preview {
    CustomerSummaryView(customers: [
        Customer(name: "Sammy Sosa", email: "Samsoda@gmail.com", visits: 5),
        Customer(name: "Austin Powers", email: "Goldmember@yahoo.com", visits: 2),
        Customer(name: "Kung Pao", email: "KungPaoNoChicken@gmail.com", visits: 8)
    ])
}


