//
//  TableViewCell2.swift
//  AppUI
//
//  Created by MAC on 09/11/20.
//

import UIKit

class TableViewCell2: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource {
   
    
    
    @IBOutlet weak var collection2: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collection2.dequeueReusableCell(withReuseIdentifier: "collection2", for: indexPath)
        cell.backgroundColor = .black
        return cell
    }

}
class collectionCell2{
    
    @IBOutlet weak var img: UIImageView!
    
}

