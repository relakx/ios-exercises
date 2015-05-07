import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    
    return "My favorite cheese is \(cheese)."
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")


// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

var numberArray = [1, 2, 3, 4]
// Add 5 to this array
numberArray += [5]

var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
numberDictionary[5] = "five"

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
for myNumber in 1...10 {
    println("\(myNumber)")
}

// Use a half-closed range loop to print 1 - 10, inclusively
for myOtherNumber in 1..<11 {
    println("\(myOtherNumber)")
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {

    var favDrinkArray = Array<String>()
    for var i = 0; i < characters.count; i++ {
            var favDrink = characters[i]["favorite drink"]
            favDrinkArray.append(favDrink!)
    }
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    return favDrinkArray
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)


/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon
// WORK HERE - make your function and pass `strings` in
func makeStringFromArray(foodStrings: Array<String>) -> (String){
    
    let foodJoin = ";".join(foodStrings)
    return foodJoin
}

let foodStrings = ["milk", "eggs", "bread", "challah"]
let food = makeStringFromArray(foodStrings)

let expectedOutput = "milk;eggs;bread;challah"
/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
let cerealSortedAlphabetically = sorted(cerealArray, <)
