//
//  ViewController.swift
//  HW6.5DatePicker
//
//  Created by Daniel on 2018/7/20.
//  Copyright © 2018年 Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let now = Date()
//        let formatter = DateFormatter()
//        formatter.dateFormat = "yyyy MM dd"
//        let time = formatter.string(from: now)
//        nowTime.text = time
    }


    @IBOutlet weak var goalTime: UITextField!
    @IBOutlet weak var nowTime: UITextField!
    @IBOutlet weak var intervalTime: UITextField!
    
   // var goal = Date!
    @IBAction func timePicker(_ sender: UIDatePicker) {
        
     let goal = sender.date
     let now = Date()
     let formatter = DateFormatter()
     formatter.dateFormat = "yyyy年MM月dd日"
     let time = formatter.string(from: now)
     nowTime.text = time
     let goalDate = formatter.string(from: goal)
     goalTime.text = goalDate
        let interval = goal.timeIntervalSince(now)
        let integerinterval = Int(interval/60/60/24+1)
        intervalTime.text = ("\(integerinterval)")

    }
    
}

