//
//  MemeGeneratorInputCell.swift
//  memepedia
//
//  Created by Jindrich Dolezy on 09/10/16.
//  Copyright © 2016 STRV. All rights reserved.
//

import UIKit

class MemeGeneratorInputCell: UITableViewCell, UITextFieldDelegate {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var hintLabel: UILabel!
    
    var textChangeBlock: ((String)->Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        textField.placeholder = R.string.localizable.hintPlaceholder()
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let text: NSString = (textField.text ?? "") as NSString
        let newText = text.replacingCharacters(in: range, with: string)
        textChangeBlock?(newText)
        return true
    }
}
