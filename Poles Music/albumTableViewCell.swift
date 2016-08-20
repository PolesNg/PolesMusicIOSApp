//
//  albumTableViewCell.swift
//  Poles Music
//
//  Created by sagaya Abdulhafeez on 23/07/2016.
//  Copyright © 2016 sagaya Abdulhafeez. All rights reserved.
//

import UIKit

class albumTableViewCell: UITableViewCell {

    @IBOutlet weak var trackName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    @IBOutlet weak var numberText: UILabel!
    
    func setUp(num:String?, track: String?){
        
        numberText.text = num
        trackName.text = track
        
    }

}
