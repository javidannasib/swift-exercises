//
//  ViewController.swift
//  swiftNavigation
//
//  Created by RMAD201 on 2/16/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var spinner: UISlider!
    @IBOutlet weak var ActivityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var spinnerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        customizeSpinner()
    }
    
    
//    func customizeSpinner() {
//        spinner.minimumValue = 0
//        spinner.maximumValue = 100
//        spinner.value = 10
//    }
    
    @IBAction func spinnerChanged(_ sender: UISlider) {
        spinnerLabel.text = "\(spinner.value)"
    }
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        spinnerLabel.text = "\(sender.isOn)"
        
        if sender.isOn {
            ActivityIndicator.startAnimating()
        } else {
            ActivityIndicator.stopAnimating()
        }
    }
}

