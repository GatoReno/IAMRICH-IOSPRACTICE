//
//  CaclcutaorBrain.swift
//  IAMRICH
//
//  Created by ed on 10/18/21.
//

import Foundation

struct CalculatorBrain{
    var bmi : Float = 0.0
    
    mutating func calculateBMI(height: Float, weight: Float){
        bmi = weight / (height * weight)
    }
    
    func getBMIValue()-> String {
        let result = String(format: "%.2f", bmi * 100)
        return result
    }
}
