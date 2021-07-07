import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var str = ["조유리","김채원","최예나","김민주","안유진"]
    var image = ["jyr1.jpeg","kcw.jpeg","cyn.jpeg","kmj.jpeg","ayj.jpeg"]
    var textColor = [UIColor.orange,UIColor.green,UIColor.yellow,UIColor.gray,UIColor.blue]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return str.count
    }
    
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath)
        cell.textLabel?.text = self.str[indexPath.row]
        cell.imageView?.image = UIImage(named: image[(indexPath as NSIndexPath).row])
        cell.textLabel?.textColor = textColor[indexPath.row]
        cell.backgroundColor = UIColor.white
                cell.layer.borderColor = UIColor.black.cgColor
        
                cell.layer.borderWidth = 1
                cell.layer.cornerRadius = 8
                cell.clipsToBounds = true
        
        return cell
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
        
    }


}



