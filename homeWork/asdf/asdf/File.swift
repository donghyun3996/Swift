//
//  File.swift
//  asdf
//
//  Created by GSM07 on 2021/08/26.
//

import UIKit
import SnapKit

class File: UIViewController {
    
    var mainLable = UILabel()
    var mainview = UIView()
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        view.backgroundColor = .white
        view.addSubview(mainLable)
        view.addSubview(mainview)
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor(red: 0.408, green: 0.525, blue: 0.773, alpha: 1).cgColor,

              UIColor(red: 1, green: 0.675, blue: 0.718, alpha: 1).cgColor
        ]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.1, y: 1.1)
        gradientLayer.cornerRadius = 50
        gradientLayer.maskedCorners = CACornerMask(arrayLiteral: .layerMinXMinYCorner, .layerMaxXMinYCorner)
        
        
        
        
        mainLable.layer.addSublayer(gradientLayer)
        mainLable.backgroundColor = .white
        mainLable.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        mainLable.text = "Fine password"
        mainLable.snp.makeConstraints{ make in
            make.top.top.equalTo(102)
            make.left.left.equalTo(44)
            
        }
        
        

        mainview.snp.makeConstraints{ make in
            make.bottom.equalTo(view.snp.bottom)
            make.left.left.equalToSuperview()
            make.right.right.equalToSuperview()
            make.size.height.equalTo(600)
            make.top.top.equalTo(204)
            
        }
        
    }
    
}
