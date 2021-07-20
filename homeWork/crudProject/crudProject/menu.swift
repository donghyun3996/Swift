//
//  menu.swift
//  crudProject
//
//  Created by GSM07 on 2021/07/14.
//

import UIKit

class menu: UITableViewController{
    
    var menuItem = ["옷장","메뉴1","메뉴2","메뉴3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        self.navigationController?.navigationBar.barTintColor = .orange
        self.navigationController?.navigationBar.isTranslucent = false
        tableView.register(menuCell.self, forCellReuseIdentifier: "cell" )
        tableView.backgroundColor = .orange
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItem.count
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"cell",for: indexPath)
        cell.textLabel?.text = menuItem[indexPath.row]
        cell.backgroundColor = .orange
        cell.textLabel?.textColor = .white
        cell.selectionStyle = .none
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
               tableView.deselectRow(at: indexPath, animated: true)

               switch indexPath.row {

               case 0: self.present(UINavigationController(rootViewController: closetFile()), animated: true, completion: nil)

               case 1: self.present(UINavigationController(rootViewController: closetFile()), animated: true, completion: nil)

               case 2: self.present(UINavigationController(rootViewController: closetFile()), animated: true, completion: nil)

               default:

                   return

               }
        
    }
}
  
    
  

