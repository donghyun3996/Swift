//
//  ViewController.swift
//  tableviewcontroller
//
//  Created by GSM07 on 2021/06/28.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
   
    
    @IBOutlet weak var myTable: UITableView!
    
    var str: [String] = ["sss","aaa","bbb"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTable.delegate = self
        myTable.dataSource = self
        
    }
    
    public func numberOfSections(in tableView: UITableView) -> Int {
        return Array(Set(self.str.map{ $0.first! })).count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return String(Array(Set(self.str.map{ $0.first! })).sorted()[section])
    }
   
    public func tableView(_ tableiew: UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell{
        let charactor = Array(Set(self.str.map{ $0.first! })).sorted()[indexPath.section]
        let cell = tableiew.dequeueReusableCell(withIdentifier: "CellList",for: indexPath)
        cell.textLabel?.text = self.str.filter{ $0.first == charactor}[indexPath.row]
        return cell
        
    }
    
    
   
    
   public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let charactor =  Array(Set(self.str.map{ $0.first! })).sorted()[section]
        return self.str.filter{ $0.first! == charactor}.count
    }
    
}



