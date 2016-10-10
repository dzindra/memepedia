//
//  MemeDetailController.swift
//  memepedia
//
//  Created by Jindrich Dolezy on 09/10/16.
//  Copyright © 2016 STRV. All rights reserved.
//

import UIKit

class MemeDetailController: UITableViewController, MemeAware {
    var meme: Meme?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 200
        
        title = meme?.title.uppercased()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell
        
        switch indexPath.row {
        case 0:
            cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.detailImageCell, for: indexPath)!
        default:
            cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.detailTextCell, for: indexPath)!
        }
        
        if var memeAware = cell as? MemeAware {
            memeAware.meme = meme
        }
        return cell
    }
    
}
