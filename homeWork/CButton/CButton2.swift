//
//  CButton2.swift
//  CButton
//
//  Created by GSM07 on 2021/06/21.
//

import UIKit

class CButton2: UIViewController{
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myButton2: UIButton!
    @IBOutlet weak var myButton3: UIButton!
    @IBOutlet weak var myButton4: UIButton!
    @IBOutlet weak var myButton5: UIButton!
    
    
    
    var toglle  = 0
    var toglle2 = 0
    var toglle3 = 0
    var toglle4 = 0
    var toglle5 = 0
    
    @IBOutlet weak var Checkim: UIImageView!
    @IBOutlet weak var Checkim2: UIImageView!
    @IBOutlet weak var Checkim3: UIImageView!
    @IBOutlet weak var Checkim4: UIImageView!
    @IBOutlet weak var Checkim5: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myButton.layer.cornerRadius = myButton.layer.frame.size.width/2
        myButton.backgroundColor = .green
        Checkim.isHidden = true
        self.view.bringSubviewToFront(self.Checkim)
        
        
        myButton2.layer.cornerRadius = myButton2.layer.frame.size.width/2
        myButton2.backgroundColor = .red
        Checkim2.isHidden = true
        self.view.bringSubviewToFront(self.Checkim2)
        
        myButton3.layer.cornerRadius = myButton3.layer.frame.size.width/2
        myButton3.backgroundColor = .yellow
        Checkim3.isHidden = true
        self.view.bringSubviewToFront(self.Checkim3)
        
        myButton4.layer.cornerRadius = myButton4.layer.frame.size.width/2
        myButton4.backgroundColor = .blue
        Checkim4.isHidden = true
        self.view.bringSubviewToFront(self.Checkim4)
        
        myButton5.layer.cornerRadius = myButton5.layer.frame.size.width/2
        myButton5.backgroundColor = .purple
        Checkim5.isHidden = true
        self.view.bringSubviewToFront(self.Checkim5)
        
        
    }
    
    @IBAction func myButton(_ sender: Any) {
        if toglle == 0{
        myButton.layer.shadowOpacity = 0.3
            Checkim.isHidden = false
            toglle = 1
            
        }else{
            myButton.layer.shadowOpacity = 0
            toglle = 0
            Checkim.isHidden = true
        }
    }
    @IBAction func myButton2(_ sender: Any) {
        if toglle2 == 0{
        myButton2.layer.shadowOpacity = 0.3
            Checkim2.isHidden = false
            toglle2 = 1
            
        }else{
            myButton2.layer.shadowOpacity = 0
            toglle2 = 0
            Checkim2.isHidden = true
        }
    }
    @IBAction func myButton3(_ sender: Any) {
        if toglle3 == 0{
        myButton3.layer.shadowOpacity = 0.3
            Checkim3.isHidden = false
            toglle3 = 1
            
        }else{
            myButton3.layer.shadowOpacity = 0
            toglle3 = 0
            Checkim3.isHidden = true
        }
    }
    @IBAction func myButton4(_ sender: Any) {
        if toglle4 == 0{
        myButton4.layer.shadowOpacity = 0.3
            Checkim4.isHidden = false
            toglle4 = 1
            
        }else{
            myButton4.layer.shadowOpacity = 0
            toglle4 = 0
            Checkim4.isHidden = true
        }
    }
    @IBAction func myButton5(_ sender: Any) {
        if toglle5 == 0{
        myButton5.layer.shadowOpacity = 0.3
            Checkim5.isHidden = false
            toglle5 = 1
            
        }else{
            myButton5.layer.shadowOpacity = 0
            toglle5 = 0
            Checkim5.isHidden = true
        }
    }
    
   
    
    
    
}
