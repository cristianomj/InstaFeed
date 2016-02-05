//
//  InstaFeedCell.swift
//  InstaFeed
//
//  Created by Cristiano Miranda on 2/5/16.
//  Copyright © 2016 Cristiano Miranda. All rights reserved.
//

import UIKit

class InstaFeedCell: UITableViewCell {
    @IBOutlet weak var postView: UIImageView!
    @IBOutlet weak var profileView: UIImageView!
    
    @IBOutlet weak var usernameLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        profileView.clipsToBounds = true
        profileView.layer.cornerRadius = profileView.frame.height/2;
        profileView.layer.borderColor = UIColor(white: 0.7, alpha: 0.8).CGColor
        profileView.layer.borderWidth = 1;
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
