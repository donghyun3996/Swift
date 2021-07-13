//
//  costomCell.swift
//  chw
//
//  Created by GSM07 on 2021/07/12.
//

import UIKit

class costomCell: UITableViewCell {
    var stt = ["시대":"1.asfasdfa","필요":"1.asdfasdfs","산업":"1.aefef","혁명":"1.aEFEF","기업":"1.aefeff","기관":"1.aefef"]
    var hanja = ["시대":"[時代]","필요":"[必要]","산업":"[産業]","혁명":"[革命]","기업":"[企業]","기관":"[機關]"]
    var lb: UILabel = {
        let lb = UILabel()
        lb.backgroundColor = .clear
        
        lb.textColor = .systemGreen
        lb.font = UIFont.systemFont(ofSize: 17, weight: .bold)
        return lb
    }()
    var lb1: UILabel = {
        let lb = UILabel()
        lb.backgroundColor = .clear
       
        lb.textColor = .black
        lb.font = UIFont.systemFont(ofSize: 13, weight: .light)
        return lb
    }()
    var lb2: UILabel = {
        let lb = UILabel()
        lb.backgroundColor = .clear
    
        lb.textColor = .systemGray
        lb.font = UIFont.boldSystemFont(ofSize: 13)
        
        return lb
    }()
    
    var str: String?{
            didSet{
                lb.text = str
                lb1.text = stt[str!]
                lb2.text = hanja[str!]
            }
        }
    
   
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style:style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .white
        addSubview(lb)
        lb.anchor(top:self.topAnchor,left:self.leftAnchor, paddingTop: 20,paddingLeft: 15)
        addSubview(lb1)
        lb1.anchor(top:lb.bottomAnchor,left: self.leftAnchor,bottom: self.bottomAnchor,paddingTop:15,paddingLeft: 15,paddingBottom: 5)
        addSubview(lb2)
        lb2.anchor(top:self.topAnchor,left: lb.rightAnchor,paddingTop:20,paddingLeft:6)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

