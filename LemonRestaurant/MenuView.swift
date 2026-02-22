//
//  MenuView.swift
//  LemonRestaurant-ch7
//
//  Created by Timothy Terrance on 2/21/26.
//

import SwiftUI

struct MenuView: View {
    //dictionary
    let menuItems = [
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
    
    var body: some View {
        
        let sortedMenu = menuItems.sorted {
            $0.key < $1.key
        }
        
        
        
        
        // what the user see goes here
        VStack{
            VStack{
                //header
                Image("beautiful restaurant image")
                    .resizable()
                    .scaledToFit()
                    .frame(height:50)
                Text("Today's menu")
                    .font(.title2)
                    .bold()
                
            }
            
            List {
                ForEach(sortedMenu, id: \.key){
                    name, price in
                    
                    HStack {
                        Text(name)
                        Text(price, format: .number.precision(.fractionLength(0...2)))
                    }
                }
            }
            
            Section{
                VStack{
                    Text("Total items: \(getTotalItems())")
                }
            }
            
        }
    }
}

#Preview {
    MenuView()
}
