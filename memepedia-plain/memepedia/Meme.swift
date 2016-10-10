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
        Meme(title: "Challenge Accepted", image: #imageLiteral(resourceName: "challenge-accepted"), description: "“Challenge Accepted” is an expression used to indicate that the speaker is willing to attempt completing a difficult task. The phrase is often associated with a rage comic character illustrated as a stick figure with crossed arms and a smug facial expression."),
        Meme(title: "Cuteness Overload", image: #imageLiteral(resourceName: "cuteness-overload"), description: "Cuteness Overload is a reaction face drawn in the style of a rage comic character often used to depict the emotional responses after seeing babies or animals that are deemed adorable, a sad story or a heartwarming moment."),
        Meme(title: "Forever Alone", image: #imageLiteral(resourceName: "forever-alone"), description: "Forever Alone is an exploitable rage comic character that is used to express loneliness and disappointment with life. The face has also been used as an advice animal and inspired the creation of the snowclone template “Forever an X.”"),
        Meme(title: "LOL Guy", image: #imageLiteral(resourceName: "lol-face"), description: "LOL Guy is a rage comic character that is often used to indicate laughter and general amusement."),
        Meme(title: "Me Gusta", image: #imageLiteral(resourceName: "me-gusta"), description: "Me Gusta is a rage comic face that is typically used to express one’s approval of an awkward or perverse situation. The caption “Me gusta” translates to “I like it” in Spanish. In its beginning, the phrase conveyed an odd sense of pleasure in sexually perverse contexts, but the meaning has since broadened to describe a more general state of being disturbed and pleased at the same time."),
        Meme(title: "Mother of God", image: #imageLiteral(resourceName: "mother-of-god"), description: "Mother of God… is a rage comic character of a man staring intently at something as he takes his sunglasses off. It can be also used outside of rage comics to express astonishment or disbelief in response to a shocking image or a video. Similar to the colloquial usage of the phrase, the reaction face can be used to either indicate approval or disapproval, depending on the context. When used in the context of rage comics, it is usually preceded by a stick-figure drawing of the same man humming and walking with sunglasses still on."),
        Meme(title: "Trollface", image: #imageLiteral(resourceName: "troll-face"), description: "Trollface is a rage comic character wearing a mischievous smile that is meant to represent the facial expression of an Internet troll. The image is most commonly used to portray a character as a troll in rage comics, or alternatively, to identify oneself or another participant as such in online discussions."),
        Meme(title: "Y U NO Guy", image: #imageLiteral(resourceName: "y-u-no"), description: "“Y U NO” Guy (also known as “Y U No [X]?”) is an image macro series using SMS shorthands and carefree grammar as a way to bring someone’s attention on a particular subject or issue. The unique facial expression worn by stick-figure character is believed to have been traced from the Japanese sci-fi manga / anime series Gantz."),
        Meme(title: "Yao Ming Face", image: #imageLiteral(resourceName: "yaoming"), description: "Yao Ming Face is a rage comic-style contour drawing of the professional basketball player Yao Ming wearing a hearty smile. The image is typically used as a reaction face to convey a dismissive attitude towards someone else’s input in online discussions, then usually following something that one ups their input.")
    ]
    
    let title: String
    let image: UIImage?
    let description: String
    
}

protocol MemeAware {
    var meme: Meme? { get set }
}
