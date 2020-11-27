//
//  TableViewCell.swift
//  AppUI
//
//  Created by APPLE on 23/11/20.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var txt: UILabel!
    @IBOutlet weak var disc: UILabel!
    @IBOutlet weak var coins: UIButton!
    @IBOutlet weak var goBTN: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
