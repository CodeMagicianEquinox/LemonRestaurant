//
//  MenuView.swift
//  LemonRestaurant-ch7
//
//  Created by Timothy Terrance on 2/21/26.
//



/*
 COMPUTED PROPERTIES --> used to recalculate the number of items in a cart
 - Does not store a value
 - Each access recomputes the value
 
 SYNTAX
 var propertyName: Type {
    return a calculated value
 */


import SwiftUI

struct MenuView: View {
    @State private var showDesserts = false
    
    //dictionary is special variables
    let menuItems: [String:Double] = [
        // key:value -> official name
        // name:price -> nicknames
        "Pizza": 9.99,
        "Pasta": 10.55,
        "Salad": 8.55,
        "Soup": 7.75,
        "Steak": 12.25,
        "Chicken": 6.25,
        "Shrimp": 18.25,
        "Beans": 4.25
    ]
    
    func getTotalItems() -> Int{
        menuItems.count
    }
    
    
    var sortedMenu: [(name:String, price:Double)] {
        menuItems
            .sorted { $0.key < $1.key}
            .map {(name:$0.key, price:$0.value)}
    }
    
    //    func getHighestPrice () -> Double {
    //        var highest = 0.0
    //        for item in SortedMenu
    //            if item.price > highest {
    //                highest = item.price
    //
    //        }
    //    }
    //        return highest
    
    /*
     [
     
     (name:"Pizza", price: 9.99),
     (name: "Pasta", price: 10.50)
     
     ]
     */
    
    var body: some View {
        // what the user sees goes here
        VStack(spacing: 16) {
            // Header
            VStack(spacing: 8) {
                Image("beautiful restaurant image")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)
                Text("Today's Menu")
                    .font(.title2)
                    .bold()
            }
            
            Button("View Desserts") {
                showDesserts = true
            }
            .foregroundColor(.black)

            // Single list showing menu items
            Section {
                List {
                    ForEach(sortedMenu, id: \.name) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text(item.price, format: .number.precision(.fractionLength(0...2)))
                        }
                    }
                }
                .listStyle(.plain)
            }

            // Footer
            Text("Total items: \(getTotalItems())")
                .font(.footnote)
                .foregroundStyle(.secondary)
        }
        .padding()
        .sheet(isPresented: $showDesserts) {
            DessertView()
        }
    }
}

#Preview {
    MenuView()
}
