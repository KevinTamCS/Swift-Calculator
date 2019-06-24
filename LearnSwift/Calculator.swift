//
//  Calculator.swift
//  LearnSwift
//
//  Created by Kevin Tam on 6/23/19.
//  Copyright © 2019 Kevin Tam. All rights reserved.
//

import Cocoa
import Darwin

class Calculator {
    
    init() {
    }
    
    func run() {
        print("""
        Welcome to the Swift calculator.
        Please select a function by typing in the number of the function you want to use.

        1. Add
        2. Subtract
        3. Multiply
        4. Divide
        """)
        
        let selectedFunction = Int(readLine() ?? "0")
        
        switch selectedFunction {
        case 1:
            // TODO Add
            process(functionNumber: 1, functionName: "Add", functionSymbol: "+")
        case 2:
            // TODO Subtract
            process(functionNumber: 2, functionName: "Subtract", functionSymbol: "-")
        case 3:
            // TODO Multiply
            process(functionNumber: 3, functionName: "Multiply", functionSymbol: "*")
        case 4:
            // TODO Divide
            process(functionNumber: 4, functionName: "Divide", functionSymbol: "/")
        default:
            print("You chose an invalid function. Exiting...")
            exit(1)
            break
        }
    }
    
    func process(functionNumber: Int, functionName: String, functionSymbol: Character) {
        print("You selected function \(functionNumber), \(functionName).")
        
        let numOne = getNumOne(functionName: functionName)
        print("Your first number is \(numOne)")
        
        let numTwo = getNumTwo(functionName: functionName)
        print("Your second number is \(numTwo)")
        
        let result = runCalculator(firstNumber: numOne, secondNumber: numTwo, operation: functionName)
        
        print("\(numOne) \(functionSymbol) \(numTwo) = \(result).")
        
    }
    
    func getNumOne(functionName: String) -> Double {
        print("Please enter the first number to \(functionName.lowercased()).")
        
        if let firstNumber = readLine() {
            if let firstNumberDouble = Double(firstNumber) {
                return firstNumberDouble
            }
        }
        
        return 0.0
    }
    
    func getNumTwo(functionName: String) -> Double {
        print("Please enter the second number to \(functionName.lowercased()).")
        
        if let secondNumber = readLine() {
            if let secondNumberDouble = Double(secondNumber) {
                return secondNumberDouble
            }
        }
        
        return 0.0
    }
    
    func runCalculator(firstNumber: Double, secondNumber: Double, operation: String) -> Double {
        switch operation {
        case "Add":
            return firstNumber + secondNumber
        case "Subtract":
            return firstNumber - secondNumber
        case "Multiply":
            return firstNumber * secondNumber
        case "Divide":
            return firstNumber / secondNumber
        default:
            print("Unknown operation selected.")
            return 0.0
            break
        }
    }
}
