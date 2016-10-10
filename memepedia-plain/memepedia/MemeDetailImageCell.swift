//
//  MemeDetailImageCell.swift
//  memepedia
//
//  Created by Jindrich Dolezy on 09/10/16.
//  Copyright © 2016 STRV. All rights reserved.
//

import UIKit

class MemeDetailImageCell: UITableViewCell, MemeAware {
    @IBOutlet weak var memeImage: UIImageView!
    
    var meme: Meme? {
        didSet {
            memeImage.image = meme?.image
        }
    }
}
