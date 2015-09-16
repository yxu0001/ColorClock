//
//  ViewController.swift
//  ColorClock
//
//  Created by Yijia Xu on 9/16/15.
//  Copyright © 2015 athenahealth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    let date = NSDate()
    let dateFormatter = NSDateFormatter()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dateFormatter.locale = NSLocale(localeIdentifier: "en_GB")
        dateFormatter.dateStyle = .NoStyle
        dateFormatter.timeStyle = .MediumStyle
        
        self.timeLabel.text = dateFormatter.stringFromDate(date)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

