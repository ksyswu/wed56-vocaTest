//
//  TextViewController.swift
//  HW01
//
//  Created by SWUCOMPUTER on 2017. 10. 12..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class TextViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var appleLabel: UITextField!
    @IBOutlet var bananaLabel: UITextField!
    @IBOutlet var kiwiLabel: UITextField!
    @IBOutlet var peachLabel: UITextField!
    
    @IBOutlet var appleText: UIView!
    @IBOutlet var bananaText: UIView!
    @IBOutlet var kiwiText: UIView!
    @IBOutlet var peachText: UIView!
    

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
        appleText.isHidden = true
        bananaText.isHidden = true
        kiwiText.isHidden = true
        peachText.isHidden = true
    }

    @IBAction func resultCheck() {

        if appleLabel.text?.lowercased() != "apple"{
            appleText.isHidden = false
        }else{
            appleText.isHidden = true
        }
        if bananaLabel.text?.lowercased() != "banana"{
            bananaText.isHidden = false
        }else{
            bananaText.isHidden = true
        }
        if kiwiLabel.text?.lowercased() != "kiwi"{
            kiwiText.isHidden = false
        }else{
            kiwiText.isHidden = true
        }
        if peachLabel.text?.lowercased() != "peach"{
            peachText.isHidden = false
        }else{
            peachText.isHidden = true
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
