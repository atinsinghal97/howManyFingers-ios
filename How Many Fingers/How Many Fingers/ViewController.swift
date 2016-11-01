//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Atin Singhal on 31/10/16.
//  Copyright © 2016 Atin Singhal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var guess: UITextField!
    
    @IBAction func guessButton(_ sender: Any) {
        let randomNumber = arc4random_uniform(6)
        
        let guessInt = Int(guess.text!)
        if (guessInt != nil)  {
            if guessInt!>=0 && guessInt!<=5   {
                if Int(randomNumber) == guessInt{
                    resultLabel.text = "Correct!"
                }   else{
                    resultLabel.text = "Nope! It was a \(randomNumber)"
                }
            }   else{
                resultLabel.text = "Enter a number between 0-5"
            }
            
        }   else    {
            resultLabel.text = "Enter a number between 0-5"
        }
        
        print (guess.text!)
    }
    
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

