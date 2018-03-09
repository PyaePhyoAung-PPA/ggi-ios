//
//  MenuTableViewCell.swift
//  ggi-ios
//
//  Created by aceplus on 3/7/18.
//  Copyright © 2018 Thuriya ACE Technology. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

	@IBOutlet weak var menuIcon: UIImageView!
	@IBOutlet weak var menuLabel: UILabel!
	@IBOutlet weak var notiCount: UILabel!
	
	override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
