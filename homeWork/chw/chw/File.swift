//
//  File.swift
//  chw
//
//  Created by GSM07 on 2021/07/12.
//

import UIKit

class File: UIViewController{
    
    
    var stt = ["시대","필요","산업","혁명","기업","기관"]
    
    var lb: UILabel = {
        let lb = UILabel()
        lb.backgroundColor = .blue
        lb.text = "형우 씹덕"
        return lb
    }()
    let table = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        table.register(costomCell.self, forCellReuseIdentifier: "cell")
        table.delegate = self
        table.dataSource = self
        view.addSubview(table)
        table.fillSuperview()
        table.rowHeight = 100
        table.separatorStyle = UITableViewCell.SeparatorStyle.none
        table.rowHeight = UITableView.automaticDimension


    }
    
}


extension File: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stt.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as! costomCell
        cell.str = stt[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.present(UINavigationController(rootViewController: chlguddn()), animated: true, completion: nil)
    }
    
}

