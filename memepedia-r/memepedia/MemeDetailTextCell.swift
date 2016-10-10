//
//  MemeDetailTextCell.swift
//  memepedia
//
//  Created by Jindrich Dolezy on 09/10/16.
//  Copyright © 2016 STRV. All rights reserved.
//

import UIKit

class MemeDetailTextCell: UITableViewCell, MemeAware {
    @IBOutlet weak var memeTitle: UILabel!
    @IBOutlet weak var memeDescription: UILabel!
    
    var meme: Meme? {
        didSet {
            memeTitle.attributedText = NSAttributedString(memeString: meme?.title)
            memeDescription.text = meme?.description
        }
    }
}
