//
//  ViewController.swift
//  Stop Watch
//
//  Created by D7703_08 on 2018. 4. 10..
//  Copyright © 2018년 D7703_08. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    var count = 0
    var myTimer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
      
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateTime() {
        count = count + 1
        let min = count / 60 / 100
        let sec = (count - (min * 60 * 100)) / 100
        let msec = count - (min * 60 * 100) - (sec * 100)
        timeLabel.text = String(format: "%02d:%02d:%02d", min, sec, msec)
    }
    
    
    @IBAction func timerStart(_ sender: UIButton) {
        
        myTimer = Timer.scheduledTimer(withTimeInterval: 1/100, repeats: true, block: {(myTimer) in
            self.updateTime()
        })
        
    }
    
    @IBAction func timerStop(_ sender: UIButton) {
        myTimer.invalidate()
    }
    
    
    @IBAction func timerReset(_ sender: UIButton) {
        count = 0
        timeLabel.text = "00 : 00 : 00"
    }
    
    
    
    
    
    
    
}

