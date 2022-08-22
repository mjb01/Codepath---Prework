//
//  ViewController.swift
//  Prework
//
//  Created by Michael Bongo on 8/21/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var taxesAmountLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        // obtain bill from the text input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // obtain taxes
        let tax = bill * 0.08
        
        // obtain tip
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tax + tip
        
        // update tax amount label
        taxesAmountLabel.text = String(format: "$%.2f", tax)
        
        // update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        // update total amountlabel
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
}

