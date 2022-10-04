//
//  ViewController.swift
//  BMI_Calculator
//
//  Created by Peter Lewis on 04/10/2022.
//

import UIKit

class CalculatorViewController: UIViewController {

    var height: Float = 0.0
    var weight: Float = 0.0
    
    var calculatorBrain = CalculatorBrain()
    var bmi: BMI?
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let heightValue = String(format: "%.2f", heightSlider.value)
        heightLabel.text = "\(heightValue)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weightValue = String(format: "%.0f", weightSlider.value)
        weightLabel.text = "\(weightValue)Kg"
        
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        height = heightSlider.value
        weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height, weight)
        
        performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmi = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
        
    }
    
}

