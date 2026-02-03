//
//  ViewController.swift
//  SamBostonAssign1
//
//  Created by Boston, Samuel T. on 2/3/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var selectUnit: UIButton!
    
    @IBAction func unitButton(_sender: Any){
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
        let celsiusAction = UIAlertAction(title: "C to F", style: .default) { _ in self.selectUnit.setTitle("C to F", for: .normal)
        }
        actionSheet.addAction(celsiusAction)
        let fahrenheitAction = UIAlertAction(title: "F to C", style: .default) { _ in self.selectUnit.setTitle("F to C", for: .normal)}
        actionSheet.addAction(fahrenheitAction)
        let kilometersAction = UIAlertAction(title: "Km/h to Mi/h", style: .default){
            _ in self.selectUnit.setTitle("Km/h to Mi/h", for: .normal)
        }
        actionSheet.addAction(kilometersAction)
        let milesAction = UIAlertAction(title: "Mi/h to Km/h", style: .default){
            _ in self.selectUnit.setTitle("Mi/h to Km/h", for: .normal)
        }
        actionSheet.addAction(milesAction)
        
        present(actionSheet, animated: true)
    }
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func convertButton(_sender: Any){
        let unit = Double(inputTextField.text!)!
        let conversion = selectUnit.title(for: .normal)
        
        if conversion == "C to F" {
            let result = unit * 9/5 + 32
            resultLabel.text = "\(result)"
        } else if conversion == "F to C"{
            let result = (unit - 32) * 5/9
            resultLabel.text = "\(result)"
        }else if conversion == "Km/h to Mi/h"{
           let result = unit * 0.621371
            resultLabel.text = "\(result)"
        } else if conversion == "Mi/h to Km/h"{
            let result = unit / 0.621371
            resultLabel.text = "\(result)"
        } else {
            print("Invalid Operator")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

