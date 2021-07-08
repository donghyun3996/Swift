import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var str = ["조유리","김채원","최예나","김민주","안유진"]
    var image = ["jyr1.jpeg","kcw.jpeg","cyn.jpeg","kmj.jpeg","ayj.jpeg"]
    var textColor = [UIColor.orange,UIColor.green,UIColor.yellow,UIColor.gray,UIColor.blue]

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return str.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView()
        header.backgroundColor = UIColor.white
        return header
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath)
        cell.textLabel?.text = self.str[indexPath.section]
        cell.imageView?.image = UIImage(named: image[(indexPath as NSIndexPath).section])
        cell.textLabel?.textColor = textColor[indexPath.section]
        cell.backgroundColor = UIColor.white
        cell.layer.shadowOpacity = 0.3
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 6
        
        return cell
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
    
    

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
    }

    
}


