//
//  DetailViewController.swift
//  TalbleView2
//
//  Created by GSM07 on 2021/06/30.
//

import UIKit

class DetailViewController: UIViewController {

    var receiveItem = ""
    
    @IBOutlet weak var lblltem: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        switch receiveItem {
        case "권은비":
            lblltem.text = "리더"
            break
        case "미야와키 사쿠라":
            lblltem.text = "벗꽃"
            break
        case "강혜원":
            lblltem.text = "광배"
            break
        case "최예나":
            lblltem.text = "오리"
            break
        case "이채연":
            lblltem.text = "깃털"
            break
        case "김채원":
            lblltem.text = "쌈무"
            break
        case "김민주":
            lblltem.text = "밍구리"
            break
        case "야부키 나코":
            lblltem.text = "나북희"
            break
        case "혼다 히토미":
            lblltem.text = "빵토미"
            break
        case "조유리":
            lblltem.text = "율"
            break
        case "안유진":
            lblltem.text = "안유댕"
            break
        case "장원영":
            lblltem.text = "막내"
            break
            
        default:
            break
        }
        
    }
    
    func receiveItem(_ item: String){
        receiveItem = item
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
