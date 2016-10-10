//
//  MemeListViewController.swift
//  memepedia
//
//  Created by Jindrich Dolezy on 09/10/16.
//  Copyright © 2016 STRV. All rights reserved.
//

import UIKit

class MemeListViewController: UITableViewController {
    let memes = Meme.memes
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 61
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "memeListCell", for: indexPath) as! MemeListCell
        cell.meme = memes[indexPath.row]
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let selection = tableView.indexPathForSelectedRow,
            segue.identifier == "memeListDetailSegue",
            let destination = segue.destination as? MemeDetailController {
            
            destination.meme = memes[selection.row]
        }
    }
    
}
