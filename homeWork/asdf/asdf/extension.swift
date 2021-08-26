//
//  extension.swift
//  asdf
//
//  Created by GSM07 on 2021/08/26.
//

import UIKit


extension UIView{
    func configureGradientLayer(){
            let gradient = CAGradientLayer()
            gradient.colors = [UIColor.systemBlue.cgColor, UIColor.systemPink.cgColor]
            gradient.locations = [0,1]
            self.layer.addSublayer(gradient)
        gradient.frame = self.frame
        }

}
