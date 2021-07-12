//
//  chlguddn.swift
//  chw
//
//  Created by GSM07 on 2021/07/12.
//

import UIKit

class chlguddn: UIViewController{
    
    
    override func viewDidLoad() {
        super .viewDidLoad()
        view.backgroundColor = .green
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "back", style: .plain, target: self, action: #selector(backButton))
        
    }
    
    @objc func backButton(){
        self.dismiss(animated: true, completion: nil)
    }
}
