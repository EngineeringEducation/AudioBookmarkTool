//
//  LiveViewController.swift
//  AudioBookmarkTool
//
//  Created by Emma Koszinowski on 5/22/15.
//  Copyright (c) 2015 Emma Koszinowski. All rights reserved.
//


// TO DO
// Constraints on layout objects
// Show elapsing time at the bottom left corner
// Expand the tabelview with the questions so that they are able to scroll
// Get data on questions to an array and use that array in the live view
// Get data on the panalist to an array and display that in the live view

// Data model to connect the question, panalist and time

import UIKit


class LiveViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    // Start Time Button
    @IBOutlet weak var startButton: UIButton!
    var currentStartTime: NSDate? // gives an NSDate instance that represents now
    //var startTimer: Bool
    //startTimer.enable = false    //the start button should only be pressable once, only this code doesnt do that..
    
    // Stop Time Button
    @IBOutlet weak var stopButton: UIButton!
    var currentStopTime: NSDate? // also gives and NSDate instance that represents now
    
    var elapsed_time: NSTimeInterval = 0
    
    
    // Label to show the elapsed time
    @IBOutlet weak var elapsedTimeLabel: UILabel!
    
    
    // Table view for the questions
    @IBOutlet
    var questionsTableView: UITableView!
    
    var questions: [String] = [
        "What are your thougts on bla",
        "How would you describe bla",
        "Given that bla what's the next bla",
        "What would be the best bla",
        "What are your thougts on bla",
        "How would you describe bla",
        "Given that bla what's the next bla",
        "What would be the best bla",
        "What are your thougts on bla",
        "How would you describe bla",
        "Given that bla what's the next bla",
        "What would be the best bla",
        "And to conclude, bla bla bla"
    ]
    
   
    
    @IBOutlet weak var panelistTableView: UITableView!
    @IBOutlet var panelistDataSource: TableViewDataSource!
    
    var panelists: [String] = [
        "Elvis Presley",
        "Marilyn Monroe",
        "James Dean"
    ]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.panelistDataSource.items = self.panelists
        
        // Set table view
        self.questionsTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
//        self.panelistTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    // QUESTIONS
    
    // Count the number of rows in the Questions Table View
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.questions.count
    }

    
    // Get row index of the Questions Table View
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.questionsTableView.dequeueReusableCellWithIdentifier("cell") as!UITableViewCell
        cell.textLabel?.text = self.questions[indexPath.row]
        return cell
    }
    
    // Get selected index of Questions
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("You selected question #\(indexPath.row)!")
    }
    
    // PANELIST
    
    

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
