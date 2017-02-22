//
//  ViewController.swift
//  how many
//
//  Created by Danny Colangelo on 2/21/17.
//  Copyright © 2017 Danny Colangelo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var enterGuessBox: UITextField!
    @IBOutlet weak var answerBox: UILabel!
    @IBAction func guessButton(_ sender: Any) {
        
        let rand = Int(arc4random_uniform(11))
        let guess = Int(enterGuessBox.text!)
        if rand == guess {
            answerBox.text = "You got it!"
        } else if rand != guess {
            answerBox.text = "Sorry! The number was \(rand)"
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

