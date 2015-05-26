//
//  LiveViewController.swift
//  AudioBookmarkTool
//
//  Created by Emma Koszinowski on 5/22/15.
//  Copyright (c) 2015 Emma Koszinowski. All rights reserved.
//

import UIKit


class LiveViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var startButton: UIButton!
    var currentStartTime: NSDate? // gives an NSDate instance that represents now
    //var startTimer: Bool
    //startTimer.enable = false    //the start button should only be pressable once, only this code doesnt do that..
    
    
    @IBOutlet weak var stopButton: UIButton!
    var currentStopTime: NSDate? // also gives and NSDate instance that represents now
    
    var elapsed_time: NSTimeInterval = 0
    
    
    //label to show the elapsed time
    @IBOutlet weak var elapsedTimeLabel: UILabel!
    
    
    // table view for the questions
    @IBOutlet
    var questionsTableView: UITableView!
    
    var questions: [String] = [
        "What are your thougts on bla",
        "How would you describe bla",
        "Given that bla what's the next bla",
        "What would be the best bla",
        "And to conclude, bla bla bla"
    ]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.questionsTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.questions.count;
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.questionsTableView.dequeueReusableCellWithIdentifier("cell") as! UITableViewCell
        
        cell.textLabel?.text = self.questions[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("You selected cell #\(indexPath.row)!")
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
    
    






