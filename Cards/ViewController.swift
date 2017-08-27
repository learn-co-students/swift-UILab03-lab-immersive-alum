//
//  ViewController.swift
//  Cards
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var upperCorner: UILabel!
    @IBOutlet weak var middleLabel: UILabel!
    @IBOutlet weak var lowerCorner: UILabel!
    
    @IBOutlet weak var spade: UIButton!
    @IBOutlet weak var diamond: UIButton!
    @IBOutlet weak var hearts: UIButton!
    @IBOutlet weak var cardChoice: UIButton!
    // TODO: Create IB outlets
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    // TODO: IB actions and code to update UI

    @IBAction func drawCard(_ sender: UIButton) {
        switch sender{
        case spade:
            print("♠️")
            upperCorner.text="♠️"
            lowerCorner.text="♠️"
            middleLabel.text="3"
        case cardChoice:
            print("♣️")
            upperCorner.text="♣️"
            lowerCorner.text="♣️"
            middleLabel.text="4"

        case hearts:
            print("♥️")
            upperCorner.text="♥️"
            lowerCorner.text="♥️"
            middleLabel.text = "10"

        case diamond:
            print("♦️")
            upperCorner.text="♦️"
            lowerCorner.text="♦️"
            middleLabel.text = "8"

        default:
            print("")
        }
    
    }
    
}
