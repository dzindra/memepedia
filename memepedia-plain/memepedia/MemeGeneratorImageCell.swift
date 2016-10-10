//
//  MemeGeneratorImageCell.swift
//  memepedia
//
//  Created by Jindrich Dolezy on 09/10/16.
//  Copyright © 2016 STRV. All rights reserved.
//

import UIKit

class MemeGeneratorImageCell: UITableViewCell, MemeAware {
    @IBOutlet weak var memeImage: UIImageView!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    var meme: Meme? {
        didSet {
            memeImage.image = meme?.image
        }
    }
    var topLine: String = "" {
        didSet {
            topLabel.attributedText = NSAttributedString(memeString: topLine)
        }
    }
    var bottomLine: String = "" {
        didSet {
            bottomLabel.attributedText = NSAttributedString(memeString: bottomLine)
        }
    }
    
    
}
