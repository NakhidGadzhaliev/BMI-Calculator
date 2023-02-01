//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Нахид Гаджалиев on 01.02.2023.
//

import UIKit

struct CalculatorBrain {
    
    var BMIValue: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let value = weight / pow(height, 2)
        
        if value < 18.5 {
            BMIValue = BMI(value: value, advice: "Eat more burgers", color: .systemBlue)
        } else if value < 24.9 {
            BMIValue = BMI(value: value, advice: "Fit as a fiddle", color: .systemGreen)
        } else {
            BMIValue = BMI(value: value, advice: "Do more exercise", color: .systemRed)
        }
        
    }
    
    func getBMIvalue() -> String {
        guard let value = BMIValue?.value else { return "0.0"}
        return String(format: "%.1f", value)
    }
    
    func getAdvice() -> String {
        guard let advice = BMIValue?.advice else { return "No advice"}
        return advice
    }
    
    func getColor() -> UIColor {
        guard let color = BMIValue?.color else { return .white}
        return color
    }
    
}
