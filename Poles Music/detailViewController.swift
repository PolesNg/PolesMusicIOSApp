//
//  detailViewController.swift
//  Poles Music
//
//  Created by sagaya Abdulhafeez on 23/07/2016.
//  Copyright © 2016 sagaya Abdulhafeez. All rights reserved.
//

import UIKit

class detailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var dd: String?
    @IBOutlet weak var backImage: UIImageView!
    @IBOutlet weak var mainAlbumImage: UIImageView!
    @IBOutlet weak var albumList: UITableView!
    @IBOutlet weak var numberText: UILabel!
    
    var numArray = ["1","2","3","4","5","6","7","8","9","10","11","12"]
    var tracks = ["The Beginning / Nobody","Lyin King","Not A Bad Thing","SUMI (official version)","679 (Mastered Version)","Abija Wara (feat. Phyno & Chinko Ekun)","Stereo Hearts","Snitch Bitch","This Could Be Us","Turn Up (feat. Burna Boy & Phyno)","Problem Child (feat. Olamide)","Panda"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        albumList.delegate = self
        albumList.dataSource = self
        backImage.image = UIImage(named: dd!)
        mainAlbumImage.image = UIImage(named: dd!)

        // Do any additional setup after loading the view.
        
//        var darkBlur = UIBlurEffect(style: UIBlurEffectStyle.Dark)
//        var blurView = UIVisualEffectView(effect: darkBlur)
//        blurView.frame = backImage.bounds
//        backImage.addSubview(blurView)
    }

    @IBAction func backB(sender: AnyObject) {
        self.performSegueWithIdentifier("unwind", sender: self)
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return numArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell") as! albumTableViewCell
       
        cell.setUp("\(numArray[indexPath.row])", track: "\(tracks[indexPath.row])")
        return cell
    }
    
    
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        performSegueWithIdentifier("WebSegue", sender: indexPath)
//        tableView.deselectRowAtIndexPath(indexPath, animated: true)
//    }
    



}
