//
//  CollectionViewCell.swift
//  crudProject
//
//  Created by GSM07 on 2021/07/17.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
      
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.cellSetting()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func cellSetting(){
        self.backgroundColor = .none
        self.addSubview(imageView)
        imageView.contentMode = .scaleToFill
        imageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        imageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    var imageView: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
}
