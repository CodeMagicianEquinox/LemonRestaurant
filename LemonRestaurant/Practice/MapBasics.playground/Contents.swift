import UIKit

/*
 SYNTAX
 
 let newArray = originalArray.map { element in
    // return modified element
 }
 
 .map()
 Method used to transform each element of a collection into a new value,
creating a new array with the results
 
 .map is non-mutating, meaning
 The original array stays exactly as it was
 */


let prices = [8.50, 12.00, 14.25]

let pricesWithTax = prices.map { price in
    return price * 1.16
}
print(pricesWithTax)

//String(format: "%.2f", value)
let price2 = 23.12345
print(price2)
print(String(format: "%.2f",price2))


let desserts = ["Cake", "Ice Cream", "Pie"]
let emojiMenu = desserts.map {"🍰 \($0) "}
print(emojiMenu)

let emojiMenu2 = desserts.map{ dessert in
    return "🍰 \(dessert)"
}
print(emojiMenu2)

