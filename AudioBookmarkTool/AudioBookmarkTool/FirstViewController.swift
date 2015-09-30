//
//  FirstViewController.swift
//  AudioBookmarkTool
//

import UIKit

class FirstViewController: UIViewController {
    
    // Views
    @IBOutlet weak var dateField: UITextField!

    // Models
    var dateString : String?
//    var panel : Panel
    
    
    @IBAction func FirstViewControllerSubmitButton(sender: AnyObject) {
        // The submit button has just been pressed, so we want to take the information currently in the text fields and put it somewhere a bit more safe.
        println(self.dateField.text)
        //self.conferenceString = self.conferenceField.text
        self.dateString = self.dateField.text

        // pseudocode-ish example of how you might ultimately move data from a view to the model:
        // self.panel.date = NSDateFormatter().format(self.dateField.text)
    }
    
    //UIScrollView might use this for scrolling to part of ipad that gets covered by the keypad//
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        panel.questions = [
            "What are your thoughts on bla",
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
        panel.panelists = [
            "Elvis Presley",
            "Marilyn Monroe",
            "James Dean"
        ]
        panel.eventName = "Strange Loop"
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //var name = NSUserDefaults.standardUserDefaults().objectForKey("conferenceDetails")! as String//
        
       // prep for segueway//
            
        println("Hello World!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    @IBAction func returnFromPannelistInfo(segue : UIStoryboardSegue) {
        
    }

    //below is a variety of data storage models i am playing with to figure out how to store conference data
    //line 16 above is also one of these attempts//
   // NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    //[defaults setInteger:9001 forKey:@"HighScore"];
   // [defaults synchronize];//

    var panel: Panel = Panel()
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let panelistInfoViewController = segue.destinationViewController as? PannelistInfoViewController {
            panelistInfoViewController.panel = panel
        }
    }

}

