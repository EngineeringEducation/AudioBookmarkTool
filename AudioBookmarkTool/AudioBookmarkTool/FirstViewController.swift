//
//  FirstViewController.swift
//  AudioBookmarkTool
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var dateField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        println("Hello World!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    @IBAction func returnFromPannelistInfo(segue : UIStoryboardSegue) {
        
    }


}

