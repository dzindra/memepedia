//
//  MemeCell.swift
//  memepedia
//
//  Created by Jindrich Dolezy on 09/10/16.
//  Copyright © 2016 STRV. All rights reserved.
//

import UIKit

class MemeListCell: UITableViewCell, MemeAware {
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var memeLabel: UILabel!
    
    var meme: Meme? {
        didSet {
            iconImageView.image = meme?.image
            memeLabel.text = meme?.title
        }
    }
    
}
