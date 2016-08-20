//
//  musicChartViewViewController.swift
//  Poles Music
//
//  Created by Sagaya Abdulhafeez on 01/08/2016.
//  Copyright © 2016 sagaya Abdulhafeez. All rights reserved.
//

import UIKit

class musicChartViewViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var controller: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }
    
    @IBOutlet weak var tableView: UITableView!

    
    var numArray = ["1","2","3","4","5","6","7","8","9","10","11","12"]
    var artistName = ["Ojuelegba", "Holla At Your Boy", "Final (Baba Nla", "On a Spaceship", "Tabula Rasa", "Baba Hafusa", "Y.A.G.I", "Soldier", "Street OT", "King Of Queens", "ff", "DD"]
    var desc: [String] = ["1","2","3","4","5","6","7","8","9","10","11","12"]

    var desc2: [String] = ["dddd","ddsac","xza","4","5","6","7","8","9","10","11","12"]

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var returnValue = 0
        switch controller.selectedSegmentIndex {
        case 0:
            returnValue = numArray.count
            break
        case 1:
            return desc.count
            break
        default:
            break
        }
        
        return returnValue
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("chart") as! chartTableViewCell
        
        cell.setup(numArray[indexPath.row], art: artistName[indexPath.row], des: desc[indexPath.row])
        
        switch controller.selectedSegmentIndex {
        case 0:
            cell.setup(numArray[indexPath.row], art: artistName[indexPath.row], des: desc[indexPath.row])
            break
        case 1:
            cell.setup(numArray[indexPath.row], art: artistName[indexPath.row], des: desc2[indexPath.row])
            
            break
        default:
            break
        }
        
        return cell
    }

    @IBAction func changeSegment(sender: AnyObject) {
        tableView.reloadData()
    
    }
    

}
