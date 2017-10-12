//
//  PickerViewController.swift
//  HW01
//
//  Created by SWUCOMPUTER on 2017. 10. 12..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var picker: UIPickerView!
    
    @IBOutlet var sunny: UIButton!
    @IBOutlet var cloudy: UIButton!
    @IBOutlet var rainy: UIButton!
    @IBOutlet var snowy: UIButton!
    
    @IBOutlet var hidden: UIView!
    
    var weather: Array<String> = []
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination
        let button = sender as! UIButton
        destination.title = button.titleLabel?.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        weather = ["sunny", "cloudy", "rainy", "snowy"]
        hidden.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return weather.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return weather[row]
    }
    
    @IBAction func checkButtons(_ sender: UIButton) {
        let index = picker.selectedRow(inComponent: 0)
        if sender == sunny && index == 0{
            hidden.isHidden = false
        }else if index == 1 && sender == cloudy{
            hidden.isHidden = false
        }else if index == 2 && sender == rainy{
            hidden.isHidden = false
        }else if index == 3 && sender == snowy{
            hidden.isHidden = false
        }else{
            hidden.isHidden = true
        }
    }
}
