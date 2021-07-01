//
//  ViewController.swift
//  imageViewPractoce
//
//  Created by GSM07 on 2021/07/01.
//

import UIKit

class ViewController: UIViewController {

    var isZoom = false
    var imgOn: UIImage?
    var imgOff: UIImage?
    
    @IBOutlet weak var btnRsizeImage: UIButton!
    @IBOutlet weak var JYR: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imgOn = UIImage(named: "jyr.jpeg")
        imgOff = UIImage(named: "kcw.jpeg")
        
        JYR.image = imgOn
        
    }

    @IBAction func btnResizeImage(_ sender: UIButton) {
        let scale:CGFloat = 2.0
        var newWidth:CGFloat, newHeight:CGFloat
        
        if (isZoom){
            newWidth = JYR.frame.width/scale
            newHeight = JYR.frame.height/scale
            btnRsizeImage.setTitle("확대", for: .normal)
        }
        else{
            newWidth = JYR.frame.width*scale
            newHeight = JYR.frame.height*scale
            btnRsizeImage.setTitle("축소", for: .normal)
            
        }
        JYR.frame.size = CGSize(width: newWidth, height: newHeight)
        isZoom = !isZoom
    }
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
        if sender.isOn{
            JYR.image = imgOn
        }else{
            JYR.image = imgOff
        }
    }
}

