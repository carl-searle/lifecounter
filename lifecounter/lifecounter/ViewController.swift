//
//  ViewController.swift
//  lifecounter
//
//  Created by Carl Searle on 4/20/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playerOneLifeTotal: UILabel!
    @IBOutlet weak var playerTwoLifeTotal: UILabel!
    @IBOutlet weak var minusFiveFirst: UIButton!
    @IBOutlet weak var minusOneFirst: UIButton!
    @IBOutlet weak var plusOneFirst: UIButton!
    @IBOutlet weak var plusFiveFirst: UIButton!
    @IBOutlet weak var minusFiveSecond: UIButton!
    @IBOutlet weak var minusOneSecond: UIButton!
    @IBOutlet weak var plusOneSecond: UIButton!
    @IBOutlet weak var plusFiveSecond: UIButton!
    @IBOutlet weak var displayLoss: UILabel!
    
    var oneLife = 20
    var twoLife = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateLife()
        displayLoss.isHidden = true
        displayLoss.textAlignment = .center
    }
    
    func updateLife() {
        playerOneLifeTotal.text = "\(oneLife)"
        playerTwoLifeTotal.text = "\(twoLife)"
    }

    @IBAction func loseFiveLifeOne(_ sender: Any) {
        oneLife -= 5
        updateLife()
        scoreZero()
    }
    
    @IBAction func loseOneLifeOne(_ sender: Any) {
        oneLife -= 1
        updateLife()
        scoreZero()
    }
    
    @IBAction func gainOneLifeOne(_ sender: Any) {
        oneLife += 1
        updateLife()
        scoreZero()
    }
    
    @IBAction func gainFiveLifeOne(_ sender: Any) {
        oneLife += 5
        updateLife()
        scoreZero()
    }
    
    @IBAction func loseFiveLifeTwo(_ sender: Any) {
        twoLife -= 5
        updateLife()
        scoreZero()
    }
    
    @IBAction func loseOneLifeTwo(_ sender: Any) {
        twoLife -= 1
        updateLife()
        scoreZero()
    }
    
    @IBAction func gainOneLifeTwo(_ sender: Any) {
        twoLife += 1
        updateLife()
        scoreZero()
    }
    
    @IBAction func gainFiveLifeTwo(_ sender: Any) {
        twoLife += 5
        updateLife()
        scoreZero()
    }
    
    func scoreZero() {
        if(oneLife <= 0) {
            displayLoss.isHidden = false
            displayLoss.text = "Player 1 LOSES!"
        } else if(twoLife <= 0) {
            displayLoss.isHidden = false
            displayLoss.text = "Player 2 LOSES!"
        }
    }
}

