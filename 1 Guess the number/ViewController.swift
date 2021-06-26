//
//  ViewController.swift
//  1 Guess the number
//
//  Created by Константин Крашенинников on 24.06.2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var a = Int.random(in: 0...100)
    @IBOutlet weak var numberByUser: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBAction func tryButton(_ sender: UIButton) {
        let b = Int(numberByUser.text!) ?? 0
        if a == b {
            print("ugadal")
            result.text = "Угадал!"
        } else if a < b {
            result.text = "Много!"
        } else if a >  b {
            result.text = "Мало!"
        }
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        a = Int.random(in: 0...100)
    }
}

