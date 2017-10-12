//
//  WordViewController.swift
//  HW01
//
//  Created by SWUCOMPUTER on 2017. 10. 11..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class WordViewController: UIViewController {

    @IBOutlet var appleImage: UIImageView!
    @IBOutlet var bananaImage: UIImageView!
    @IBOutlet var kiwiImage: UIImageView!
    @IBOutlet var peachImage: UIImageView!
    
    let aImage = UIImage(named: "apple.png")
    let bImage = UIImage(named: "banana.png")
    let kImage = UIImage(named: "kiwi.png")
    let pImage = UIImage(named: "peach.png")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appleImage.image = aImage
        bananaImage.image = bImage
        kiwiImage.image = kImage
        peachImage.image = pImage

        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination
        let button = sender as! UIButton
        destination.title = button.titleLabel?.text
    }

    
    
}
