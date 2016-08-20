//
//  ViewController.swift
//  Poles Music
//
//  Created by sagaya Abdulhafeez on 15/07/2016.
//  Copyright © 2016 sagaya Abdulhafeez. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet weak var collectionView: UICollectionView!

    private let leftAndRightPaddings: CGFloat = 15.0
    private let numberOfItemsPerRow: CGFloat = 3.0
    private let heightAdjustment: CGFloat = 30.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let bounds = UIScreen.mainScreen().bounds
        let width = (bounds.size.width - leftAndRightPaddings*4) / numberOfItemsPerRow
        
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSizeMake(width, width)

    }

    
    let reuseIdentifier = "cell" // also enter this string as the cell identifier in the storyboard
    var items = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12","8","3","2","8","4","12"]
    
    
    // MARK: - UICollectionViewDataSource protocol
    
    // tell the collection view how many cells to make
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    
    // make a cell for each cell index path
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! CollectionViewCell
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
        
        cell.albumImage.image = UIImage(named: "\(self.items[indexPath.row])")
        
        return cell
    }
    
    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
//        performSegueWithIdentifier("detail", sender: self)

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        
        if segue.identifier == "detail"{
            if let detaiilVc = segue.destinationViewController as? detailViewController{
                
                if let cell = sender as? UICollectionViewCell, indexPath = collectionView.indexPathForCell(cell) {
                    
                    let selectedImage = items[indexPath.row]
                    detaiilVc.dd = selectedImage

                }
                
            }
            
            
        }
        
    }
    @IBAction func unwindToRed(segue: UIStoryboardSegue) {
    }


}

