//
//  MemeGeneratorController.swift
//  memepedia
//
//  Created by Jindrich Dolezy on 09/10/16.
//  Copyright © 2016 STRV. All rights reserved.
//

import UIKit

class MemeGeneratorViewController: UICollectionViewController {
    let memes = Meme.memes
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        if let layout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.itemSize = CGSize(width: self.view.bounds.width/2, height: self.view.bounds.width/2)
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "generatorCell", for: indexPath) as! MemeGeneratorCell
        cell.meme = memes[indexPath.row]
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailVc = storyboard?.instantiateViewController(withIdentifier: "memeGeneratorDetail") as! MemeGeneratorDetailController
        detailVc.meme = memes[indexPath.row]
        show(detailVc, sender: self)
    }
    
}
