//
//  TableViewCell1.swift
//  AppUI
//
//  Created by MAC on 09/11/20.
//

import UIKit

class TableViewCell1: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var collection1: UICollectionView!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
}
class collectioncell1 :UICollectionViewCell
{
    
    @IBOutlet weak var lbl: UILabel!
}
