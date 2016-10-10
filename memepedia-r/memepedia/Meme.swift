//
//  Meme.swift
//  memepedia
//
//  Created by Jindrich Dolezy on 09/10/16.
//  Copyright © 2016 STRV. All rights reserved.
//

import UIKit

struct Meme {
    static let memes = [
        Meme(title: R.string.localizable.challengeTitle(), image: R.image.challengeAccepted(), description: R.string.localizable.challengeDescription()),
        Meme(title: R.string.localizable.cutenessTitle(), image: R.image.cutenessOverload(), description: R.string.localizable.cutenessDescription()),
        Meme(title: R.string.localizable.aloneTitle(), image: R.image.foreverAlone(), description: R.string.localizable.aloneDescription()),
        Meme(title: R.string.localizable.lolTitle(), image: R.image.lolFace(), description: R.string.localizable.lolDescription()),
        Meme(title: R.string.localizable.megustaTitle(), image: R.image.meGusta(), description: R.string.localizable.megustaDescription()),
        Meme(title: R.string.localizable.motherofgodTitle(), image: R.image.motherOfGod(), description: R.string.localizable.motherofgodDescription()),
        Meme(title: R.string.localizable.trollTitle(), image: R.image.trollFace(), description: R.string.localizable.trollDescription()),
        Meme(title: R.string.localizable.yunoTitle(), image: R.image.yUNo(), description: R.string.localizable.yunoDescription()),
        Meme(title: R.string.localizable.yaoTitle(), image: R.image.yaoming(), description: R.string.localizable.yaoDescription())
    ]
    
    let title: String
    let image: UIImage?
    let description: String
    
}

protocol MemeAware {
    var meme: Meme? { get set }
}
