//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImg1: UIImageView!
    @IBOutlet weak var diceImg2: UIImageView!
    @IBOutlet weak var roundButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //IB allows me to reference ui element.
        diceImg1.image=#imageLiteral(resourceName: "DiceSix")
        diceImg2.image=#imageLiteral(resourceName: "DiceTwo")
        roundButton.layer.cornerRadius=10
        
    }

    @IBAction func buttonPress(_ sender: UIButton) {
      
        let diceArray=[#imageLiteral(resourceName: "DiceOne"),#imageLiteral(resourceName: "DiceTwo"),#imageLiteral(resourceName: "DiceThree"),#imageLiteral(resourceName: "DiceFour"),#imageLiteral(resourceName: "DiceFive"),#imageLiteral(resourceName: "DiceSix")]
        
        diceImg1.image=diceArray.randomElement()
        diceImg2.image=diceArray.randomElement()
        
        
 
    }
 
    
}

