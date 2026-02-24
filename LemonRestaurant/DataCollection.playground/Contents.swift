import UIKit

//Arrays
let dishes = ["Pizza", "Pasta", "Cheese"] // creating an array with pre-defined values

print(dishes[0]) // this is how you access the data
print(dishes[1])

// creating a mutable array
var orders = [String]()
orders.append("Soup")
orders.append("Burger")
print(orders)

// Dictionaries

let menuPrices = [
    //key:value pair
    "Pizza":12.99,
    "Salad":13.00,
    "Pasta":9.00
]

print(menuPrices["Salad"]!)

// challenge 1 - create a dictionary for drinks

let coldDrinks = [
    "Sprite": 2.99,
    "Coke": 1.99,
    "Pepsi": 2.25
]

coldDrinks.forEach { drink, price in
    print("\(drink): $\(price)")
}

// for each

let fruits = [
    "Apple": 1.50,
    "Banana": 0.58,
    "Mango": 2.30,
]

fruits.forEach{ fruits, price in
    if price < 2 {
        print ("\(fruits): $\(price)")
        
    }
    
    // add an if to print only the fruits with the price less than 2
    
    
    // challenge 2 - print all the drinks using a forEach
    
}
