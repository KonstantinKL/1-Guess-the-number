//
//  ViewController.swift
//  1 Guess the number
//
//  Created by Константин Крашенинников on 24.06.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var checkData = CheckData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var numberByUser: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBAction func tryButton(_ sender: UIButton) {
        let b = Int(numberByUser.text!) ?? 0
        result.text = checkData.checkAnswer(numberByUser: b)
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        checkData.a = Int.random(in: 0...100)
    }
}
