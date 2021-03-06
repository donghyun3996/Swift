//
//  ViewController.swift
//  DatePicker
//
//  Created by GSM07 on 2021/07/01.
//

import UIKit

class ViewController: UIViewController {
    let timeSlelctor: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0

    @IBOutlet var lblCurrentTime: UILabel!
    @IBOutlet var lblPickerTime: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSlelctor, userInfo: nil, repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY-MM-dd hh:mm EEE"
        lblPickerTime.text = "선택시간: " + formatter.string(from: datePickerView.date)
        
    }
    
    @objc func updateTime(){
        let date = NSDate()
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY-MM-dd mm:ss EEE"
        lblCurrentTime.text = "현재시간: " + formatter.string(from: date as Date)
    }
}

