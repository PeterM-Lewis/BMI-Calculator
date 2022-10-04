//
//  ResultViewController.swift
//  BMI_Calculator
//
//  Created by Peter Lewis on 04/10/2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmi: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiValueLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = color
        bmiValueLabel.text = bmi
        adviceLabel.text = advice
        
    }
    
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    

}
