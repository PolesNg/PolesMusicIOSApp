//
//  chartTableViewCell.swift
//  Poles Music
//
//  Created by Sagaya Abdulhafeez on 01/08/2016.
//  Copyright © 2016 sagaya Abdulhafeez. All rights reserved.
//

import UIKit

class chartTableViewCell: UITableViewCell {

    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var artistName: UILabel!
    @IBOutlet weak var chartImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(image: String, art: String, des: String){
        
        self.desc.text = des
        self.chartImage.image = UIImage(named: image)
        self.artistName.text = art
        
    }

}
