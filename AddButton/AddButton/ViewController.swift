//
//  ViewController.swift
//  AddButton
//
//  Created by GSM07 on 2021/06/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var Number1: UITextField!
    @IBOutlet weak var Number2: UITextField!
    
    var NumberText1 = "0"
    var NumberText2 = "0"
    var Num1 = 0
    var Num2 = 0
    var sum: Int = 0
    @IBOutlet weak var SumNumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    

    @IBAction func AddButton(_ sender: Any) {
        NumberText1 = Number1.text!
        NumberText2 = Number2.text!
        Num1 = Int(NumberText1)!
        Num2 = Int(NumberText2)!
        sum = Num1 + Num2
        SumNumber.text = String(sum)
        
        
        
        
    }
    
}

