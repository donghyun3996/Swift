//
//  ViewController.swift
//  CButton
//
//  Created by GSM07 on 2021/06/17.
//

import UIKit

class ViewController: UIViewController {

    var toggle = 0
    
    let myimg: UIImage = UIImage(named: "jyr.jpeg")!

    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var Pic: UIView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet weak var NEXTButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        NEXTButton.layer.backgroundColor = UIColor.black.cgColor
      NEXTButton.layer.cornerRadius = 5
        NEXTButton.layer.shadowColor = UIColor.black.cgColor
        NEXTButton.layer.shadowOpacity = 0.3
       NEXTButton.setTitleColor(.white, for: .normal)
        NEXTButton.layer.shadowOpacity = 0.3
        NEXTButton.layer.shadowColor = UIColor.black.cgColor
        
        button.layer.borderColor = UIColor.red.cgColor
        button.layer.borderWidth = 5
        button.layer.cornerRadius = 20
        
        button2.layer.borderColor = UIColor.green.cgColor
        button2.layer.borderWidth = 5
        button2.layer.cornerRadius = 20
        
        button3.layer.borderColor = UIColor.blue.cgColor
        button3.layer.borderWidth = 5
        button3.layer.cornerRadius = 20
        
        
        img.image = myimg
        img.layer.cornerRadius = 30
        img.layer.shadowColor = UIColor.black.cgColor
        img.layer.shadowOpacity = 0.5
        
        
        
    }
    
    @IBAction func button(_ sender: Any) {
        if toggle == 0{
            view.backgroundColor = .red
            Pic.backgroundColor = .red
            toggle = 1
        }else{
            view.backgroundColor = .white
            toggle = 0
            Pic.backgroundColor = .white
        }
    }
    @IBAction func button2(_ sender: Any) {
        if toggle == 0{
            view.backgroundColor = .green
            toggle = 1
            Pic.backgroundColor = .green
        }else{
            view.backgroundColor = .white
            toggle = 0
            Pic.backgroundColor = .white
        }
    }
    @IBAction func button3(_ sender: Any) {
        if toggle == 0{
            view.backgroundColor = .blue
            toggle = 1
            Pic.backgroundColor = .blue
        }else{
            view.backgroundColor = .white
            toggle = 0
            Pic.backgroundColor = .white
        }
    }
   
   
    
    
    
    
}

