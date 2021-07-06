//
//  AddViewController.swift
//  TalbleView2
//
//  Created by GSM07 on 2021/06/30.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var tfAddltem: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnAddltem(_ sender: Any) {
        switch tfAddltem.text {
        case "권은비":
            items.append(tfAddltem.text!)
            itemsImageFile.append("keb.jpeg")
            break
        case "미야와키 사쿠라":
            items.append(tfAddltem.text!)
            itemsImageFile.append("skr.jpeg")
            break
        case "강혜원":
            items.append(tfAddltem.text!)
            itemsImageFile.append("khw.jpeg")
            break
        case "최예나":
            items.append(tfAddltem.text!)
            itemsImageFile.append("cyn.jpeg")
            break
        case "이채연":
            items.append(tfAddltem.text!)
            itemsImageFile.append("izone.jpeg")
            break
        case "김채원":
            items.append(tfAddltem.text!)
            itemsImageFile.append("kcw.jpeg")
            break
        case "김민주":
            items.append(tfAddltem.text!)
            itemsImageFile.append("izone.jpeg")
            break
        case "야부키 나코":
            items.append(tfAddltem.text!)
            itemsImageFile.append("izone.jpeg")
            break
        case "혼다 히토미":
            items.append(tfAddltem.text!)
            itemsImageFile.append("izone.jpeg")
            break
        case "조유리":
            items.append(tfAddltem.text!)
            itemsImageFile.append("jyr.jpeg")
            break
        case "안유진":
            items.append(tfAddltem.text!)
            itemsImageFile.append("izone.jpeg")
            break
        case "장원영":
            items.append(tfAddltem.text!)
            itemsImageFile.append("izone.jpeg")
            break
        default:
            break
        }
        
          
        tfAddltem.text=""
        _=navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
