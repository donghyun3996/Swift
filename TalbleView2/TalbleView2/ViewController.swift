//
//  ViewController.swift
//  TalbleView2
//
//  Created by GSM07 on 2021/06/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var myTableView: UITableView!
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.delegate = self
        myTableView.dataSource = self
    }


    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let customcell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "customCell",for: indexPath) as! TableViewCell
        
        customcell.label1?.text = "tlqkf"
        
        return customcell
        
    }
}

