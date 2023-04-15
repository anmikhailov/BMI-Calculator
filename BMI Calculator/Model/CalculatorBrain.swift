//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Andrey on 15.04.2023.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor(rgb: 0x6cd0f7))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor(rgb: 0xadde8a))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor(rgb: 0xe46d99))
        }
        
        
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
}
