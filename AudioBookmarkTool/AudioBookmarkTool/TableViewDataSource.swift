//
//  TableViewDataSource.swift
//  AudioBookmarkTool
//
//  Created by Karla I. Sandoval on 8/3/15.
//  


import UIKit

class TableViewDataSource: NSObject, UITableViewDataSource {
    var items: [String] = []
    
    @IBOutlet var LabelCollection: [UITableView]!
    // Count the number of rows in the Table View
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    
    // Get row index of the Table View
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell") as! UITableViewCell
        cell.textLabel?.text = self.items[indexPath.row]
        return cell
    }
}