import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Icon1: UIView!
    @IBOutlet weak var Icon2: UIView!
    @IBOutlet weak var Icon3: UIView!
    @IBOutlet weak var TextFild1: UITextField!
    @IBOutlet weak var TextFild2: UITextField!
    @IBOutlet weak var StudyButton: UIButton!
    @IBOutlet weak var GameButton: UIButton!
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var PlusButton2: UIButton!
    
    @IBOutlet weak var PlusButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TextFild1.layer.borderColor = UIColor.white.cgColor
        TextFild1.layer.cornerRadius = 30
        
        
        TextFild2.layer.cornerRadius = 30

        Icon1.layer.shadowOpacity = 0.3
        Icon1.layer.cornerRadius = 10
        
        Icon2.layer.shadowOpacity = 0.3
        Icon2.layer.cornerRadius = 10
        
        Icon3.layer.shadowOpacity = 0.3
        Icon3.layer.cornerRadius = 10
      
        Button1.layer.borderColor = UIColor.green.cgColor
        Button1.layer.borderWidth = 1
        Button1.layer.cornerRadius = 20
        Button1.tintColor = .green
        
        Button2.layer.borderColor = UIColor.purple.cgColor
      
        Button2.layer.borderWidth = 1
        Button2.layer.cornerRadius = 20
        Button2.tintColor = .purple
        
        PlusButton.layer.borderColor = UIColor.blue.cgColor
        PlusButton.layer.borderWidth = 1
        PlusButton.layer.cornerRadius = 20
        PlusButton.tintColor = .blue
        
        GameButton.layer.borderColor = UIColor.red.cgColor
        GameButton.layer.borderWidth = 1
        GameButton.layer.cornerRadius = 20
        GameButton.tintColor = .red
        
        StudyButton.backgroundColor = .orange
        StudyButton.layer.cornerRadius = 20
        StudyButton.tintColor = .white
        
        PlusButton2.backgroundColor = .systemBlue
        PlusButton2.layer.cornerRadius = 20
        PlusButton2.tintColor = .white
    }


}
