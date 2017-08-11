//
//  TableViewCell.swift
//  TableViewApp
//
//  Created by Siddharth Eswaramoorthy on 8/11/17.
//  Copyright © 2017 Siddharth Eswaramoorthy. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var data: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
