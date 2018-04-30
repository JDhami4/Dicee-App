// This is my First iOS app.
//  ViewController.swift
//  Dicee
//
//  Created by Jason Dhami on 4/30/18.
//  Copyright © 2018 Jason Dhami. All rights reserved.

import UIKit
class ViewController: UIViewController {
    //array holds the 6 different dice images
    let diceArray = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDice()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDice()
    }
    
    /*
     Get two random numbers between 0 and 5
     Update the dice images
    */
    func updateDice() {
        diceImageView1.image = diceArray[Int(arc4random_uniform(6))]
        diceImageView2.image = diceArray[Int(arc4random_uniform(6))]
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDice()
    }
}

