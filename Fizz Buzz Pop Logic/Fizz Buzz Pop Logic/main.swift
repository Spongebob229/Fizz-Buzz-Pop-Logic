//
//  main.swift
//  Fizz Buzz Pop Logic
//
//  Created by Schannikov Timothy on 01.03.2024.
//

import Foundation

func fizz(_ number: Int) -> String {
    number.isMultiple(of: 3) ? "Fizz" : ""
}

func buzz(_ number: Int) -> String {
    number.isMultiple(of: 5) ? "Buzz" : ""
}

func pop(_ number: Int) -> String {
    number.isMultiple(of: 7) ? "Pop" : ""
}
    
@resultBuilder
struct DisplayBuilder {
    static func buildBlock(_ components: String...) -> String {
        return components.joined(separator: "")
    }
}

@DisplayBuilder
func toFizzBuzzPop(num: Int) -> String{
    fizz(num)
    buzz(num)
    pop(num)
}

print ("Enter your number:")

if let intValue = Int(readLine() ?? "") {
   print(toFizzBuzzPop(num: intValue))
} else {
    print("Invalid input type")
}

