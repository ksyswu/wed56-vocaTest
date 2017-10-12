//
//  VocaViewController.swift
//  HW01
//
//  Created by SWUCOMPUTER on 2017. 10. 12..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class VocaViewController: UIViewController {

    @IBOutlet var sunnyImage: UIImageView!
    @IBOutlet var cloudyImage: UIImageView!
    @IBOutlet var rainyImage: UIImageView!
    @IBOutlet var snowyImage: UIImageView!
    
    let sImage = UIImage(named: "sunny.png")
    let cImage = UIImage(named: "cloudy.png")
    let rImage = UIImage(named: "rainy.png")
    let pImage = UIImage(named: "snowy.png")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sunnyImage.image = sImage
        cloudyImage.image = cImage
        rainyImage.image = rImage
        snowyImage.image = pImage
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination
        let button = sender as! UIButton
        destination.title = button.titleLabel?.text
    }

}
