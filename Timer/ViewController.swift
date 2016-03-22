//
//  ViewController.swift
//  Timer
//
//  Created by Quintin Smith on 3/22/16.
//  Copyright © 2016 wasatchcode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var timer = NSTimer()
    var time = 0

    @IBOutlet weak var timerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        
    }
    
    func result() {
        time += 1
        timerLabel.text = String(time)
    }

    @IBAction func playButton(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(result), userInfo: nil, repeats: true)
    }
 
    @IBAction func stopButton(sender: AnyObject) {
        timer.invalidate()
        time = 0
        timerLabel.text = String(0)
    }

    @IBAction func pauseButton(sender: AnyObject) {
        timer.invalidate()
    }
}

