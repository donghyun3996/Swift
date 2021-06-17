//
//  ViewController.swift
//  ModalView
//
//  Created by GSM07 on 2021/06/17.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var ModalView: UIView!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var NameTextFild: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ModalView.isHidden = true
        ModalView.layer.shadowOpacity = 0.5
        ModalView.layer.shadowColor = UIColor.black.cgColor
    
        
    }

    @IBAction func ModalButton(_ sender: Any) {
        ModalView.isHidden = false
        UIView.animate(withDuration: 1.5){
            self.ModalView.center = CGPoint(x: 210, y:500)
    }
    }
    
    @IBAction func CloseButton(_ sender: Any) {
        ModalView.isHidden = true
        
        NameLabel.text = NameTextFild.text
        
    }
}
