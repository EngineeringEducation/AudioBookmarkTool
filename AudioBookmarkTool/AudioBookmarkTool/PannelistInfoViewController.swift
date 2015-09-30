//
//  PannelistInfoViewController.swift
//  AudioBookmarkTool
//
//  Created by Karla I. Sandoval on 6/3/15.
//
//

import UIKit

class PannelistInfoViewController: UIViewController {
       override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //put questions into the discussions questions view controller
        
        self.panelistDataSource.items = self.panel?.panelists ?? []

        // Do any additional setup after loading the view.
        
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var panelistDataSource: TableViewDataSource!
    
    @IBAction func returnFromDiscussionQuestions(segue : UIStoryboardSegue) {
    }
    
    
    var panel: Panel?

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let discussionQuestionsViewController = segue.destinationViewController as? DiscussionQuestionsViewController {
            discussionQuestionsViewController.panel = panel
        }
    }

}
