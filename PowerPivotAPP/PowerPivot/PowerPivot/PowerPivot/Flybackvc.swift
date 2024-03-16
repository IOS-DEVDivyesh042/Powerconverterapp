//
//  Flybackvc.swift
//  VoltLink
//
//  Created by Manish Bhanushali on 18/10/23.
//

import UIKit
class Flybackvc : UIViewController {
    @IBOutlet weak var inputVoltageTextField: UITextField!
    @IBOutlet weak var outputVoltageLabel: UILabel!
    @IBOutlet weak var outputCurrentLabel: UILabel!
    @IBOutlet weak var dutyCycleSlider: UISlider!
 
        override func viewDidLoad() {
                super.viewDidLoad()
            
            
        }
    @IBAction func simulateFlybackConverter(_ sender: UIButton)
    {
        if let inputVoltageString = inputVoltageTextField.text,
           let inputVoltage = Double(inputVoltageString)
        {
            let dutyCycle = Double(dutyCycleSlider.value)
            let outputVoltage = inputVoltage * dutyCycle
            let outputCurrent = outputVoltage / (inputVoltage * (1 - dutyCycle))
            outputVoltageLabel.text = String(format: "Output Voltage: %.2f V", outputVoltage)
            outputCurrentLabel.text = String(format: "Output Current: %.2f A", outputCurrent)
            
        }
        else {
                outputVoltageLabel.text = "Invalid input voltage"
                outputCurrentLabel.text = "Invalid input voltage"
                
            }
}
    
}
