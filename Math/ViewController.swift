//
//  ViewController.swift
//  Math
//
//  Created by student on 30/1/2562 BE.
//  Copyright © 2562 Peeranut. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var number1  : Int = 0
    var number2  : Int = 0
    var operatorRandom = 0
    var result : Double = 0
    var operators = "+"
    
    @IBOutlet weak var number1Label: UILabel!
    @IBOutlet weak var number2Label: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var operatorRandomLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    }
    
    @IBAction func showAlert(){
        randomNumber()
        if(operatorRandom == 0){
            result = Double(number1) + Double(number2)
            operators = "+"
        }
        if(operatorRandom == 1){
            result = Double(number1) - Double(number2)
            operators = "-"
        }
        if(operatorRandom == 2){
            result = Double(number1) * Double(number2)
            operators = "x"
        }
        if(operatorRandom == 3){
            result = Double(number1) / Double(number2)
            operators = "÷"
        }
        updateLabels()
        let message = "Result = \(result) "
        
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default,
                                   handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
    }
    
    func randomNumber(){
        number1 = Int.random(in: 0...1000)
        number2 = Int.random(in: 0...1000)
        operatorRandom = Int.random(in: 0...3)
    }
    
    func updateLabels(){
        number1Label.text = String(number1)
        number2Label.text = String(number2)
        operatorRandomLabel.text = String(operators)
        resultLabel.text = String(result)
    }


}

