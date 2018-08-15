//
//  ViewController.swift
//  Cards
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // TODO: Create IB outlets
    
    @IBOutlet weak var cardSuitTop: UILabel!
    @IBOutlet weak var cardSuitBottom: UILabel!
    @IBOutlet weak var cardValue: UILabel!
    @IBOutlet weak var fourClubButton: UIButton!
    @IBOutlet weak var threeSpadeButton: UIButton!
    @IBOutlet weak var eightDiamondButton: UIButton!
    @IBOutlet weak var tenHeartButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        showOrHideLabels(hidden: true)
    }
    
    func showOrHideLabels(hidden: Bool) {
        cardValue.isHidden = hidden
        cardSuitTop.isHidden = hidden
        cardSuitBottom.isHidden = hidden
    }
    
    @IBAction func selectCard(_ sender: UIButton) {
        let buttonPressed = sender.titleLabel!.text
        let card = Array(buttonPressed!)
        let cardSuit: String = String(card[0])
        var cardNumber: String
        if card.count == 3 {
            cardNumber = "\(card[1])\(card[2])"
        } else {
            cardNumber = String(card[1])
        }
        
        switch String(buttonPressed!) {
        case "♣️4":
            cardSuitTop.text = cardSuit
            cardSuitBottom.text = cardSuit
            cardValue.text = cardNumber
            
        case "♠️3":
            cardSuitTop.text = cardSuit
            cardSuitBottom.text = cardSuit
            cardValue.text = cardNumber
        case "♦️8":
            cardSuitTop.text = cardSuit
            cardSuitBottom.text = cardSuit
            cardValue.text = cardNumber
        case "♥️10":
            cardSuitTop.text = cardSuit
            cardSuitBottom.text = cardSuit
            cardValue.text = cardNumber
        default:
            break
        }
        showOrHideLabels(hidden: false)
    }

    
    

    
    
    
    
    // TODO: IB actions and code to update UI

  

}
