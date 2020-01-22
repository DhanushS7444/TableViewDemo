//
//  FirstTableViewCell.swift
//  TablevViewDemo
//
//  Created by Bhuvana on 04/03/19.
//  Copyright © 2019 capgemini. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var labelName: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
