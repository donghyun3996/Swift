//
//  WiseSaying.swift
//  BasicWiseSaying
//
//  Created by GSM07 on 2021/09/23.
//

import UIKit
import SnapKit
import Then
import CloudKit


class WiseSaying:UIViewController{
    
    // MARK: - Properties
    private let randomLabel = UILabel().then {
        $0.text = "랜덤 색상"
        $0.font = UIFont.systemFont(ofSize: 30)
    }
    
    private let mainveiw = UIView().then {
        $0.backgroundColor = .gray
    }
    
    private let colorChangeButton = UIButton().then {
        $0.setTitle("다음 명언", for: .normal)
        $0.setTitleColor(.black, for: .normal)
        $0.addTarget(self, action: #selector(colorChange), for: .touchDown)
    }
    
    private let viewInLabel1 = UILabel().then {
        $0.font = UIFont.systemFont(ofSize: 15)
    }
    
    private let viewInLabel2 = UILabel().then {
        $0.font = UIFont.systemFont(ofSize: 15)
    }
    
    let bound = UIScreen.main.bounds
    
    let quotes = [
    Quote(contents: "jjj", name: "jj"),
    Quote(contents: "ttt", name: "jj"),
    Quote(contents: "aaa", name: "jj"),
    Quote(contents: "xxx", name: "jj"),
    ]
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configurUI()
    }
    
    
    
    // MARK: - Helpers
    func configurUI(){
        view.backgroundColor = .white
        
        addsubView()
        setLayout()
    }
    
    
    func setLayout()
    {
        randomLabel.snp.makeConstraints {
            $0.top.equalTo(70)
            $0.centerX.equalToSuperview()
        }
        
        
        mainveiw.snp.makeConstraints {
            $0.top.equalTo(randomLabel.snp_bottomMargin).offset(20)
            $0.width.equalTo(240)
            $0.height.equalTo(170)
            $0.left.equalTo(20)
            $0.right.equalTo(-20)
        }
        
        
        colorChangeButton.snp.makeConstraints {
            $0.top.equalTo(mainveiw.snp_bottomMargin).offset(20)
            $0.centerX.equalTo(view)
            $0.height.equalTo(20)
            $0.height.equalTo(20)
        }
        
        viewInLabel1.snp.makeConstraints{
            $0.top.equalTo(mainveiw.snp_topMargin).offset(10)
            $0.left.equalTo(mainveiw.snp_leftMargin).offset(0)
            
        }
        
        viewInLabel2.snp.makeConstraints{
            $0.top.equalTo(viewInLabel1.snp_bottomMargin).offset(10)
            $0.left.equalTo(mainveiw.snp_leftMargin).offset(0)
        }
    }
    
    
    func addsubView()
    {
        view.addSubview(randomLabel)
        view.addSubview(mainveiw)
        view.addSubview(colorChangeButton)
        view.addSubview(viewInLabel1)
        view.addSubview(viewInLabel2)
    }
    
    
    
    // MARK: - Actions
    
    @objc func colorChange(){
        let random = Int(arc4random_uniform(5))
        let quote = quotes[random]
        self.viewInLabel1.text = quote.contents
        self.viewInLabel2.text = quote.name
        
        
    }
}
