//
//  PrizeCollectionViewCell.swift
//  AppUI
//
//  Created by APPLE on 23/11/20.
//

import UIKit

class PrizeCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var colletion: UICollectionView!
    @IBOutlet weak var collection2: UICollectionView!
    @IBOutlet weak var collection3: UICollectionView!
    @IBOutlet weak var collection4: UICollectionView!
    let prizedata:[colldata] = [colldata(img: [#imageLiteral(resourceName: "hiclipart.com (2)"),#imageLiteral(resourceName: "hiclipart.com (3)"),#imageLiteral(resourceName: "hiclipart.com (4)"),#imageLiteral(resourceName: "hiclipart.com (5)")], name: ["AirPods","PowerBank","EarPhone","Bluetooth"], coins: ["80000","25000","7000","35000"]),
    colldata(img: [#imageLiteral(resourceName: "hiclipart.com (5)"),#imageLiteral(resourceName: "hiclipart.com (1)"),#imageLiteral(resourceName: "shopee"),#imageLiteral(resourceName: "Spin")], name: ["Bluetooth","Mi Bag","ShoppingCoupen","Spin Chance"], coins: ["400000","12500","10000","2500"]),
    colldata(img: [#imageLiteral(resourceName: "Gift"),#imageLiteral(resourceName: "hiclipart.com (2)"),#imageLiteral(resourceName: "hiclipart.com (3)"),#imageLiteral(resourceName: "hiclipart.com (1)")], name: ["WinPrize","Airpods","PowerBank","Mi Bag"], coins: ["60000","25000","18200","17000"]),
    colldata(img: [#imageLiteral(resourceName: "Swiggy"),#imageLiteral(resourceName: "Gift"),#imageLiteral(resourceName: "Flipcart"),#imageLiteral(resourceName: "hiclipart.com (2)")], name: ["SwiggyCoupen","WinPrize","FlipcartCoupen","Airpods"], coins: ["15000","30000","26500","80000"])]
    override func awakeFromNib() {
        super.awakeFromNib()

        colletion.register(UINib(nibName: "PrizeCollectionViewSubCell", bundle: nil), forCellWithReuseIdentifier: "PrizeCollectionViewSubCell")
        collection2.register(UINib(nibName: "PrizeCollectionViewSubCell", bundle: nil), forCellWithReuseIdentifier: "PrizeCollectionViewSubCell")
        collection3.register(UINib(nibName: "PrizeCollectionViewSubCell", bundle: nil), forCellWithReuseIdentifier: "PrizeCollectionViewSubCell")
        collection4.register(UINib(nibName: "PrizeCollectionViewSubCell", bundle: nil), forCellWithReuseIdentifier: "PrizeCollectionViewSubCell")
        colletion.delegate = self
        collection2.delegate = self
        collection3.delegate = self
        collection4.delegate = self
        colletion.dataSource = self
        collection2.dataSource = self
        collection3.dataSource = self
        collection4.dataSource = self
        startTimer()
    }
    func startTimer() {
        Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(scrollToNextCell), userInfo: nil, repeats: true);
    }
    var x = 0
    
    @objc func scrollToNextCell(){
        if self.x < prizedata[0].name.count {
            let indexPath = IndexPath(item: x, section: 0)
            self.colletion.scrollToItem(at: indexPath, at: .centeredVertically, animated: true)
            self.collection2.scrollToItem(at: indexPath, at: .centeredVertically, animated: true)
            self.collection3.scrollToItem(at: indexPath, at: .centeredVertically, animated: true)
            self.collection4.scrollToItem(at: indexPath, at: .centeredVertically, animated: true)
            self.x = self.x + 1
        }else{
            self.x = 0
            self.colletion.scrollToItem(at: IndexPath(item: 0, section: 0), at: .centeredVertically, animated: true)
            self.collection2.scrollToItem(at: IndexPath(item: 0, section: 0), at: .centeredVertically, animated: true)
            self.collection3.scrollToItem(at: IndexPath(item: 0, section: 0), at: .centeredVertically, animated: true)
            self.collection4.scrollToItem(at: IndexPath(item: 0, section: 0), at: .centeredVertically, animated: true)
        }
    }
}
extension PrizeCollectionViewCell:UICollectionViewDelegate,UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return prizedata[0].img.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = colletion.dequeueReusableCell(withReuseIdentifier: "PrizeCollectionViewSubCell", for: indexPath) as! PrizeCollectionViewSubCell
        switch collectionView {
        case colletion:
            cell.img.image = prizedata[0].img[indexPath.row]
            cell.name.text = prizedata[0].name[indexPath.row]
            cell.coin.setTitle(prizedata[0].coins[indexPath.row], for: .normal)
        case collection2:
            cell.img.image = prizedata[1].img[indexPath.row]
            cell.name.text = prizedata[1].name[indexPath.row]
            cell.coin.setTitle(prizedata[1].coins[indexPath.row], for: .normal)
        case collection3:
            cell.img.image = prizedata[2].img[indexPath.row]
            cell.name.text = prizedata[2].name[indexPath.row]
            cell.coin.setTitle(prizedata[2].coins[indexPath.row], for: .normal)
            colletion.reloadData()
        case collection4:
            cell.img.image = prizedata[3].img[indexPath.row]
            cell.name.text = prizedata[3].name[indexPath.row]
            cell.coin.setTitle(prizedata[3].coins[indexPath.row], for: .normal)
        default:
            cell.img.image = prizedata[0].img[indexPath.row]
            cell.name.text = prizedata[0].name[indexPath.row]
            cell.coin.setTitle(prizedata[0].coins[indexPath.row], for: .normal)
        }
        return cell
    }
}
struct colldata {
    let img:[UIImage]
    let name:[String]
    let coins:[String]
}
