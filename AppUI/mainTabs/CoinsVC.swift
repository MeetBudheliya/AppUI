//
//  CoinsVC.swift
//  AppUI
//
//  Created by MAC on 12/11/20.
//

import UIKit

class CoinsVC: UIViewController {

    @IBOutlet weak var rupeeBTN: UIButton!
    @IBOutlet weak var redeem: UIButton!
    @IBOutlet weak var WeeklyView: UIView!
    @IBOutlet weak var img: UIImageView!

    @IBOutlet weak var spinIMG: UIImageView!
    @IBOutlet weak var spinLBL: UILabel!
    @IBOutlet weak var prizeIMG: UIImageView!
    @IBOutlet weak var prizeLBL: UILabel!
    @IBOutlet weak var spinView: UIView!
    @IBOutlet weak var prizeView: UIView!
    @IBOutlet weak var priseListView: UIView!
    @IBOutlet weak var priseListCollection: UICollectionView!
    @IBOutlet weak var userTaskView: UIView!
    @IBOutlet weak var tbl: UITableView!
    let tbldata = data(img: [#imageLiteral(resourceName: "Downloads"),#imageLiteral(resourceName: "Share Files"),#imageLiteral(resourceName: "Security"),#imageLiteral(resourceName: "Spin"),#imageLiteral(resourceName: "Cleaner-1")], txt: ["Daily First Install","Install&Open Selected Apps","Install&Open 3 Apps on Home Page","Install&Open 2 Games on Home Page","Open Unused Apps"], desc: ["20 coin per app","20 coin per app","10 Coin per App","15 Coin Per App","10 Coin Per App"], coin: ["+20","+40","+30","+30","+30"])
    @IBOutlet weak var gobtn1: UIButton!
    @IBOutlet weak var gobtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = false
        rupeeBTN.layer.masksToBounds = true
        rupeeBTN.layer.cornerRadius = rupeeBTN.frame.height/5
        redeem.layer.masksToBounds = true
        redeem.layer.cornerRadius = rupeeBTN.frame.height/5
        redeem.layer.borderWidth = 1
        redeem.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        WeeklyView.layer.cornerRadius = 15
        img.layer.cornerRadius = 10
      //  priceCollection.register(UINib(nibName: "coinCollection", bundle: nil), forCellWithReuseIdentifier: "coinCollection")
        img.image = #imageLiteral(resourceName: "horizontal-ad-banner-ready-web-sites-press-as-discount-advertisement-flyer-contains-black-friday-sale-black-friday-sale-103627128")
        spinIMG.image = #imageLiteral(resourceName: "spin1")
        prizeIMG.image = #imageLiteral(resourceName: "Gift")
        spinLBL.text = "Luckey Draw"
        prizeLBL.text = "Prize Hunt"
        spinView.layer.cornerRadius = 10
        prizeView.layer.cornerRadius = 10
        priseListView.layer.cornerRadius = 15
        gobtn.layer.cornerRadius = 5
        gobtn1.layer.cornerRadius = 5
        priseListCollection.layer.cornerRadius = 15
        userTaskView.layer.cornerRadius = 10
        tbl.layer.cornerRadius = 10
        tbl.tableFooterView = UIView()
        tbl.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
     

    }
}
extension CoinsVC: UICollectionViewDelegate,UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PrizeCollectionViewCell", for: indexPath) as! PrizeCollectionViewCell
        cell.backgroundColor = .blue
        return cell
    }


}
extension CoinsVC: UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tbldata.txt.count
    }
 
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Daily Tasks"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tbl.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.img.image = tbldata.img[indexPath.row]
        cell.txt.text = tbldata.txt[indexPath.row]
        cell.disc.text = tbldata.desc[indexPath.row]
        cell.coins.setTitle(tbldata.coin[indexPath.row], for: .normal)
        cell.goBTN.setTitle("GO", for: .normal)
        cell.goBTN.layer.masksToBounds = true
        cell.goBTN.layer.cornerRadius = cell.goBTN.frame.size.height/2
        return cell
    }
    
    
}
struct data {
    var img:[UIImage]
    var txt:[String]
    var desc:[String]
    var coin:[String]
}
