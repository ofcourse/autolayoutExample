//
//  FirstTableViewCell.swift
//  AutoLayoutAndSwiftXcode6
//
//  Created by imac on 15/8/15.
//  Copyright (c) 2015年 com.rainsoft.eyun. All rights reserved.
//

import UIKit

class FirstTableViewCell: UITableViewCell {

    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var uImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
