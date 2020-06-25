//
//  BMIResultViewController.swift
//  BMI
//
//  Created by Diana Oros on 6/24/20.
//  Copyright © 2020 Diana Oros. All rights reserved.
//

import UIKit

class BMIResultViewController: UIViewController {
    
    var bmiRepresentation = ""
    let viewController = CalculateViewController()
    
    @IBOutlet weak var bmiResult: UILabel!
    
    
    @IBOutlet weak var bmiResultDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiResult.text = bmiRepresentation
        switchDescription()
    }
    
    @IBAction func recalculate(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func switchDescription() {
        if let number = Double(bmiRepresentation) {
            switch number {
            case 0..<18.5:
                bmiResultDescription.text = "Underweight"
            case 18.5..<25:
                bmiResultDescription.text = "Normal weight"
            case 25..<30:
                bmiResultDescription.text = "Overweight"
            case 30..<40:
                bmiResultDescription.text = "Obesity"
            default:
                bmiResultDescription.text = "Morbid Obesity"
            }
        
        }
    }
}
