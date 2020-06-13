//
//  ViewController.swift
//  AnimationExtentions
//
//  Created by Juan Bonforti on 06/06/2020.
//  Copyright © 2020 Juan Bonforti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: IBOutlet
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UI
        button1.round()
        button2.round()
        button3.round()
        
    }

    // MARK: IBAction
    @IBAction func button1Action(_ sender: UIButton) {
        button1.bounce()
        
    }
    @IBAction func button2Action(_ sender: UIButton) {
        button2.shine()
    }
    @IBAction func button3Action(_ sender: UIButton) {
        button3.jump()
    }
    
}

