//
//  LiveViewController.swift
//  AudioBookmarkTool
//
//  Created by Emma Koszinowski on 5/22/15.
//  Copyright (c) 2015 Emma Koszinowski. All rights reserved.
//

import UIKit


class LiveViewController: UIViewController {
    
    
    @IBOutlet weak var startButton: UIButton!
    var currentStartTime: NSDate? // gives an NSDate instance that represents now
    //var startTimer: Bool
    //startTimer.enable = false    //the start button should only be pressable once, only this code doesnt do that..
    
    
    @IBOutlet weak var stopButton: UIButton!
    var currentStopTime: NSDate? // also gives and NSDate instance that represents now
    
    var elapsed_time: NSTimeInterval = 0
    
    
    @IBOutlet weak var elapsedTimeLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func startTimer(sender: UIButton) {
        println("Start button pressed!")
        currentStartTime = NSDate()
        println("Current start time is \(currentStartTime!)")
       
    }
    
    
    @IBAction func stopTimer(sender: UIButton) {
        println("Stop button pressed!")
        currentStopTime = NSDate()
        println("Current stop time is \(currentStopTime!)")
        eventRange()
    }
    
    // Calculates the elapsed time from start to stop
    func eventRange() {
        elapsed_time = currentStopTime!.timeIntervalSince1970 - currentStartTime!.timeIntervalSince1970
        println("Time elapsed: \(elapsed_time)")
        elapsedTimeLabel.text = "\(elapsed_time) seconds"
    }

}




