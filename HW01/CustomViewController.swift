//
//  CustomViewController.swift
//  HW01
//
//  Created by SWUCOMPUTER on 2017. 10. 11..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet var picker: UIPickerView!
    
    @IBOutlet var apple: UIButton!
    @IBOutlet var banana: UIButton!
    @IBOutlet var kiwi: UIButton!
    @IBOutlet var peach: UIButton!
    
    @IBOutlet var hidden: UIView!

    var fruits: Array<String> = []
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination
        let button = sender as! UIButton
        destination.title = button.titleLabel?.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fruits = ["apple", "banana", "kiwi", "peach"]
        hidden.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return fruits.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return fruits[row]
    }
    
    @IBAction func checkButtons(_ sender: UIButton) {
        let index = picker.selectedRow(inComponent: 0)
        if sender == apple && index == 0{
            hidden.isHidden = false
        }else if index == 1 && sender == banana{
            hidden.isHidden = false
        }else if index == 2 && sender == kiwi{
            hidden.isHidden = false
        }else if index == 3 && sender == peach{
            hidden.isHidden = false
        }else{
            hidden.isHidden = true
        }
    }
    
    

}
