//
//  ViewController.swift
//  BMI
//
//  Created by Diana Oros on 6/24/20.
//  Copyright © 2020 Diana Oros. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    var bmi: Double?
    var height: Double?
    var weight: Double?
    
    @IBOutlet weak var heightInMeters: UILabel!
    @IBOutlet weak var weightInKilos: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func calculateBMI(_ sender: Any) {
        guard height != nil && weight != nil else {
            return
        }
        bmi = weight! / pow(height! / 100, 2)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "calculateResultSegue" {
            let destination = segue.destination as! BMIResultViewController
            if let result = bmi {
                destination.bmiRepresentation = String(format: "%.1f", result)
            }
        }
    }
    
    @IBAction func changeHeightSliderValue(_ sender: UISlider) {
        let heightSliderValue = Int(sender.value)
        height = Double(heightSliderValue)
        heightInMeters.text = "\(heightSliderValue)m"
    }
    
    @IBAction func changeWeightSliderValue(_ sender: UISlider) {
        let weightSliderValue = Int(sender.value)
        weight = Double(weightSliderValue)
        weightInKilos.text = "\(weightSliderValue)kg"
    }
    
}

