//
//  NSAttributedString+Meme.swift
//  memepedia
//
//  Created by Jindrich Dolezy on 09/10/16.
//  Copyright © 2016 STRV. All rights reserved.
//

import UIKit


extension NSAttributedString {
    
    convenience init(memeString: String?, stroke: Int = 4) {
        let attr: [String: Any] = [
            NSStrokeColorAttributeName : UIColor.black,
            NSForegroundColorAttributeName : UIColor.white,
            NSStrokeWidthAttributeName : -stroke,
        ]
        self.init(string: memeString?.uppercased() ?? "", attributes: attr)
    }
    
}
