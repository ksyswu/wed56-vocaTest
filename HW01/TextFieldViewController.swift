//
//  TextFieldViewController.swift
//  HW01
//
//  Created by SWUCOMPUTER on 2017. 10. 12..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class TextFieldViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var sunnyLabel: UITextField!
    @IBOutlet var cloudyLabel: UITextField!
    @IBOutlet var rainyLabel: UITextField!
    @IBOutlet var snowyLabel: UITextField!
    
    @IBOutlet var sunnyText: UIView!
    @IBOutlet var cloudyText: UIView!
    @IBOutlet var rainyText: UIView!
    @IBOutlet var snowyText: UIView!
    
    
    @IBOutlet var toggle: UISwitch!
    
    @IBOutlet var hint: UILabel!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        toggle.isOn = false
        hint.isHidden = true
        sunnyText.isHidden = true
        cloudyText.isHidden = true
        rainyText.isHidden = true
        snowyText.isHidden = true
    }
    
    @IBAction func resultCheck() {
        
        if sunnyLabel.text?.lowercased() != "sunny"{
            sunnyText.isHidden = false
        }else{
            sunnyText.isHidden = true
        }
        if cloudyLabel.text?.lowercased() != "cloudy"{
            cloudyText.isHidden = false
        }else{
            cloudyText.isHidden = true
        }
        if rainyLabel.text?.lowercased() != "rainy"{
            rainyText.isHidden = false
        }else{
            rainyText.isHidden = true
        }
        if snowyLabel.text?.lowercased() != "snowy"{
            snowyText.isHidden = false
        }else{
            snowyText.isHidden = true
        }
        
    }
    
    @IBAction func hintOnOff() {
        if toggle.isOn {
            hint.isHidden = false
        }else{
            hint.isHidden = true
        }
    }

}
