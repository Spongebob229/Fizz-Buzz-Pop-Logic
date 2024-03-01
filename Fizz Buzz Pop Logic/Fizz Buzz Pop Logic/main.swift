//
//  main.swift
//  Fizz Buzz Pop Logic
//
//  Created by Schannikov Timothy on 01.03.2024.
//

import Foundation



struct Fizz{
    static func isDivisible(_ number: Int) -> String {
        if ((number % 3) == 0) {
            return "Fizz"
        }
        return ""
    }
}

struct Buzz{
    static func isDivisible(_ number: Int) -> String {
        if ((number % 5) == 0) {
            return "Buzz"
        }
        return ""
    }
}

struct Pop{
   static func isDivisible(_ number: Int) -> String {
        if ((number % 7) == 0) {
            return "Pop"
        }
        return ""
    }
}

@resultBuilder
struct DisplayBuilder {
    static func buildBlock(_ components: String...) -> String {
        return components.joined(separator: "")
    }
}

@DisplayBuilder
func toFizzBuzzPop(num: Int) -> String{
    Fizz.isDivisible(num)
    Buzz.isDivisible(num)
    Pop.isDivisible(num)
}

print ("Enter your number:")
func convertToInt(_ input: String) -> Int? {
    return Int(input)
}

let input = readLine()

if let intValue = convertToInt(input ?? "tp") {
   print(toFizzBuzzPop(num: intValue))
} else {
    print("Invalid input type")
}

