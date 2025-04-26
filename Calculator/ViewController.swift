//
//  ViewController.swift
//  Calculator
//
//  Created by Sumru BEKTAŞ on 2.02.2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var FirstNumber: UITextField!
    
    @IBOutlet weak var SecondNumber: UITextField!
    
    @IBOutlet weak var ResultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func Addition(_ sender: Any) {
        
    }
    @IBAction func Substraction(_ sender: Any) {
    }
    @IBAction func Multiplication(_ sender: Any) {
    }
    @IBAction func Division(_ sender: Any) {
    }
    
    func calculate(operation: String) {
        let firstText = FirstNumber.text ?? ""
        let secondText = SecondNumber.text ?? ""
        
        if firstText.isEmpty || secondText.isEmpty {
            ResultLabel.text = "Please enter the valid numbers"
            return
        }
        
        if let FirstNumber = Double(firstText), let SecondNumber = Double(secondText) {
            var result: Double = 0
            
            if operation == "+" {
                result = FirstNumber + SecondNumber
            } else if operation == "-" {
                result = FirstNumber - SecondNumber
            } else if operation == "*" {
                result = FirstNumber * SecondNumber
            } else if operation == "/" {
                if SecondNumber != 0 {
                    result = FirstNumber / SecondNumber
                } else {
                    ResultLabel.text = " Division Error"
                    return
                }
            } else {
                ResultLabel.text = " Invalid Operation"
                return
            }
            
            ResultLabel.text = "Result: \(result)"
        } else {
            ResultLabel.text = "Please enter the valid numbers"
        }
        
        
    }
}
    

