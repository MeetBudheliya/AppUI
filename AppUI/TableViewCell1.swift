//
//  TableViewCell1.swift
//  AppUI
//
//  Created by MAC on 09/11/20.
//

import UIKit

class TableViewCell1: UITableViewCell ,UICollectionViewDelegate,UICollectionViewDataSource{
    var segmentMenu = ["RECOMMENDED","RANK","CATEGORY","BEST OF THE MONTH"]

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var collection1: UICollectionView!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        segmentMenu.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collection1.dequeueReusableCell(withReuseIdentifier: "collection1", for: indexPath) as! collectioncell1
        cell.lbl.text = segmentMenu[indexPath.row]
        return cell
    }
    
}
class collectioncell1 :UICollectionViewCell
{
    @IBOutlet weak var lbl: UILabel!
}
