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
    let dateFormatter = NSDateFormatter()
    let calendar = NSCalendar.currentCalendar()
    let flags = NSCalendarUnit.Hour.union(.Minute).union(.Second)
    
    var timer: NSTimer?
    var backgroundColor: UIColor?
    
    //= NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "updateTimer:", userInfo: nil, repeats: true)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1,
                                target: self,
                                selector: "updateTimer:",
                                userInfo: nil,
                                repeats: true)
        
        dateFormatter.locale = NSLocale(localeIdentifier: "en_GB")
        dateFormatter.dateStyle = .NoStyle
        dateFormatter.timeStyle = .MediumStyle
        
        let date = NSDate()
        self.timeLabel.text = dateFormatter.stringFromDate(date)
        
        self.view.backgroundColor = UIColor.blueColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateTimer(timer: NSTimer)
    {
        let date = NSDate()
    
        let components = calendar.components(flags, fromDate:date)
        
        self.timeLabel.text = dateFormatter.stringFromDate(date)
        let hour = CGFloat(components.hour)
        let minute = CGFloat(components.minute)
        let second = CGFloat(components.second)
        
        UIView.animateWithDuration(1) {
            self.view.backgroundColor = UIColor(red: hour/24.0, green: minute/60.0, blue: second/60.0, alpha: 1)
        }
    }
    
}

