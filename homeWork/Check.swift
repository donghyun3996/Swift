import UIKit

class ViewController: UIViewController {
  
    var toggle = 0
    var toggle2 = 0
    var toggle3 = 0
    @IBOutlet weak var ButtonBack1: UIView!
    @IBOutlet weak var ButtonBack2: UIView!
    @IBOutlet weak var ButtonBack3: UIView!
    
    @IBOutlet weak var Back: UIView!
    
    @IBOutlet weak var Uview: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        Uview.layer.cornerRadius = 15
        
        ButtonBack1.layer.cornerRadius = 5
        ButtonBack2.layer.cornerRadius = 5
        ButtonBack3.layer.cornerRadius = 5
    }
    @IBAction func Button1(_ sender: Any) {
        if toggle == 0{
        ButtonBack1.backgroundColor = .systemIndigo
            toggle = 1
         }else
        {
            ButtonBack1.backgroundColor = .white
            toggle = 0
        }
        
    }
    @IBAction func Button2(_ sender: Any) {
        if toggle2 == 0{
        ButtonBack2.backgroundColor = .systemIndigo
            toggle2 = 1
         }else
        {
            ButtonBack2.backgroundColor = .white
            toggle2 = 0
        }
    }
    
    @IBAction func Button3(_ sender: Any) {
    
    
        if toggle3 == 0{
        ButtonBack3.backgroundColor = .systemIndigo
            toggle3 = 1
         }else
        {
            ButtonBack3.backgroundColor = .white
            toggle3 = 0
        }
    }
}
    


