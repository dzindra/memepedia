//
//  MemeGeneratorCell.swift
//  memepedia
//
//  Created by Jindrich Dolezy on 09/10/16.
//  Copyright © 2016 STRV. All rights reserved.
//

import UIKit

class MemeGeneratorCell: UICollectionViewCell, MemeAware {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var memeLabel: UILabel!
    
    var meme: Meme? {
        didSet {
            imageView.image = meme?.image
            memeLabel.attributedText = NSAttributedString(memeString: meme?.title)
        }
    }
}
