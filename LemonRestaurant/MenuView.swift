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
        "Pasta": 10.50,
        "Salad": 8.00,
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
            $0.value < $1.value
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
                        Text("\(price)")
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
