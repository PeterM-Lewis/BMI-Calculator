//
//  CalculatorBrain.swift
//  BMI_Calculator
//
//  Created by Peter Lewis on 04/10/2022.
//

import UIKit
struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(_ height: Float, _ weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(bmi: bmiValue, advice: "Eat more pies!", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(bmi: bmiValue, advice: "Fit as a fiddle!", color: .green)
        } else {
            bmi = BMI(bmi: bmiValue, advice: "Eat less pies!", color: .red)
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%0.1f", bmi?.bmi ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
}
