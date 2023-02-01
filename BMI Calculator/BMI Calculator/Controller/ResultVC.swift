//
//  SecondVC.swift
//  BMI Calculator
//
//  Created by Нахид Гаджалиев on 01.02.2023.
//

import UIKit

class ResultVC: UIViewController {
    
    var bmiResult: String?
    var advice: String?
    var backgroundColor: UIColor?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = bmiResult
        adviceLabel.text = advice
        view.backgroundColor = backgroundColor
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
