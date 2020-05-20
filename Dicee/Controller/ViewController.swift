//
//  ViewController.swift
//  Dicee
//
//  Created by Philip Yu on 6/28/19.
//  Copyright © 2019 Philip Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    // MARK: - Properties
    private var randomDiceIndex1: Int = 0
    private var randomDiceIndex2: Int = 0
    
    private let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        updateDiceImages()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updateDiceImages()
        
    }
    
    // MARK: - IBAction Section
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        // This will get executed when roll button is pressed
        updateDiceImages()
        
    }
    
    // MARK: - Private Function Section
    
    private func updateDiceImages() {
        
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
}
