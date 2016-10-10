//
//  MemeGeneratorDetailController.swift
//  memepedia
//
//  Created by Jindrich Dolezy on 09/10/16.
//  Copyright © 2016 STRV. All rights reserved.
//

import UIKit

class MemeGeneratorDetailController: UITableViewController, MemeAware {
    var meme: Meme?
    
    var topLine: String = "" {
        didSet {
            updateImage()
        }
    }
    var bottomLine: String = "" {
        didSet {
            updateImage()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = meme?.title.uppercased()
        
        tableView.register(UINib(nibName: "MemeGeneratorInputCell", bundle: nil), forCellReuseIdentifier:"generatorInputCell")
        tableView.estimatedRowHeight = 100
    }
    
    // MARK:- Image processing
    
    func updateImage() {
        tableView.reloadRows(at: [IndexPath(row:2,section:0)], with: .none)
    }
    
    func makeImage(from view: UIView) -> UIImage? {
        let rect = CGRect(origin:CGPoint.zero,size:view.bounds.size)
        UIGraphicsBeginImageContextWithOptions(view.bounds.size, true, 0.0)
        defer { UIGraphicsEndImageContext() }
        UIColor.white.setFill()
        UIRectFill(rect)
        view.drawHierarchy(in: rect, afterScreenUpdates: true)
        return UIGraphicsGetImageFromCurrentImageContext()
    }
    
    @IBAction func shareImage() {
        guard let cell = tableView.cellForRow(at: IndexPath(row: 2, section: 0)) else { return }
        guard let shareImage = makeImage(from: cell.contentView) else { return }
        
        let activity = UIActivityViewController(activityItems: [shareImage], applicationActivities: nil)
        activity.completionWithItemsHandler = { [weak self] _, completed, _, _ in
            if completed {
                _ = self?.navigationController?.popViewController(animated: true)
            }
        }
        present(activity, animated: true, completion: nil)
    }
    
    
    // MARK:- UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "generatorInputCell", for: indexPath) as! MemeGeneratorInputCell
            cell.hintLabel.text = NSLocalizedString("hint.topLine", comment: "")
            cell.textChangeBlock = { [weak self] s in
                self?.topLine = s
            }
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "generatorInputCell", for: indexPath) as! MemeGeneratorInputCell
            cell.hintLabel.text = NSLocalizedString("hint.bottomLine", comment: "")
            cell.textChangeBlock = { [weak self] s in
                self?.bottomLine = s
            }
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "generatorImageCell", for: indexPath) as! MemeGeneratorImageCell
            cell.bottomLine = bottomLine
            cell.topLine = topLine
            cell.meme = meme
            return cell
            
        default:
            return UITableViewCell()
        }
    }
    
}
