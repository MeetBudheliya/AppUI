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
    //  let data:collData = collData(name: ["Luckey Draw","Prize Hunt"], img: [#imageLiteral(resourceName: "Spin"),#imageLiteral(resourceName: "Gift")])
    @IBOutlet weak var gobtn1: UIButton!
    @IBOutlet weak var gobtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = false
        rupeeBTN.layer.masksToBounds = true
        rupeeBTN.layer.cornerRadius = rupeeBTN.frame.height/2
        redeem.layer.masksToBounds = true
        redeem.layer.cornerRadius = rupeeBTN.frame.height/2
        redeem.layer.borderWidth = 1
        redeem.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        WeeklyView.layer.cornerRadius = 15
        img.layer.cornerRadius = 15
      //  priceCollection.register(UINib(nibName: "coinCollection", bundle: nil), forCellWithReuseIdentifier: "coinCollection")
        img.image = #imageLiteral(resourceName: "img2")
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
        
    }
}
//extension CoinsVC: UICollectionViewDelegate,UICollectionViewDataSource
//{
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return data.name.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = priceCollection.dequeueReusableCell(withReuseIdentifier: "coinCollection", for: indexPath) as! coinCollection
//        cell.img.image = data.img[indexPath.row]
//        cell.lbl.text = data.name[indexPath.row]
//        return cell
//    }
//
//
//}
//struct collData {
//    var name:[String]
//    var img:[UIImage]
//}
