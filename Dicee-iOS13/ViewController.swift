//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageFirst: UIImageView!
    @IBOutlet weak var diceImageSecond: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageFirst.image = UIImage(imageLiteralResourceName: "DiceSix")
        diceImageFirst.alpha = 0.5
    }

    @IBAction func rollBtn(_ sender: UIButton) {
        let ramdonImg = [UIImage(imageLiteralResourceName: "DiceOne"),UIImage(imageLiteralResourceName: "DiceSix"),UIImage(imageLiteralResourceName: "DiceFive"),UIImage(imageLiteralResourceName: "DiceTwo"),UIImage(imageLiteralResourceName: "DiceThree"),UIImage(imageLiteralResourceName: "DiceFour"),]
        diceImageFirst.image = ramdonImg.shuffle(using: &<#T##RandomNumberGenerator#>, )
        
        diceImageSecond.image = ramdonImg.randomElement()
    }
    
}

