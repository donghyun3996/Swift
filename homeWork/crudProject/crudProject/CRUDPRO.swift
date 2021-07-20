//
//  CRUDPRO.swift
//  crudProject
//
//  Created by GSM07 on 2021/07/12.
//

import UIKit

class CRUDPRO: UIViewController {
    
    var centerView = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "dhtcncjs"
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        view.backgroundColor = .white
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.barTintColor = .orange
        self.navigationController?.navigationBar.tintColor = .white
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "메뉴", style: .plain, target: self, action: #selector(backButton))
        
       
    }
    @objc func backButton(){
        self.show(sideMenuNavigation(rootViewController: menu()), sender: self)
    }
    
}
