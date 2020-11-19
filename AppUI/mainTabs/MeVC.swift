//
//  MeVC.swift
//  AppUI
//
//  Created by MAC on 12/11/20.
//

import UIKit

class MeVC: UIViewController {

    @IBOutlet weak var updateBTN: UIButton!
    @IBOutlet weak var mainAppCollection: UICollectionView!
    @IBOutlet weak var adsCollection: UICollectionView!
    var data = Data(img: [#imageLiteral(resourceName: "Share Files"),#imageLiteral(resourceName: "Battery Usage"),#imageLiteral(resourceName: "Security"),#imageLiteral(resourceName: "Whatsapp Cleaner"),#imageLiteral(resourceName: "Cleaner-1"),#imageLiteral(resourceName: "Uninnstall  Apps"),#imageLiteral(resourceName: "Dual  Apps"),#imageLiteral(resourceName: "Settings")], name: ["Share Files","Battery Usage","Secure Files","Whatsapp Cleaner","Trash Cleaner","App Uninstall","Security Scan","Settings"], dis:["","89%","","356M","","2 Unused","",""])
    var imgData:[UIImage] = [#imageLiteral(resourceName: "banner-ad2-728x90"),#imageLiteral(resourceName: "horizontal-ad-banner-ready-web-sites-press-as-discount-advertisement-flyer-contains-black-friday-sale-black-friday-sale-103627128"),#imageLiteral(resourceName: "images"),#imageLiteral(resourceName: "bn_bg_wide"),#imageLiteral(resourceName: "Google-Ads-logo-horizontal")]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainAppCollection.reloadData()
        updateBTN.layer.cornerRadius = 10
    //    adsCollection.register(UINib(nibName: "firstCollection", bundle: nil), forCellWithReuseIdentifier: "firstCollectionCell")
        startTimer()
    }
    func startTimer() {
        Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(scrollToNextCell), userInfo: nil, repeats: true);
    }
    var x = 0
    
    @objc func scrollToNextCell(){
        if self.x < imgData.count {
            let indexPath = IndexPath(item: x, section: 0)
            self.adsCollection.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
            self.x = self.x + 1
        }else{
            self.x = 0
            self.adsCollection.scrollToItem(at: IndexPath(item: 0, section: 0), at: .centeredHorizontally, animated: true)
        }
    }
    @IBAction func updateBTNClicked(_ sender: UIButton) {
        print("Clicked")
    }
    
}
extension MeVC:UICollectionViewDelegate,UICollectionViewDataSource
{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == mainAppCollection
        {
            return data.img.count
        }
        else
        {
            return imgData.count
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == mainAppCollection
        {
            let cell = mainAppCollection.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! collectionCell
            cell.img.image = data.img[indexPath.row]
            cell.name.text = data.name[indexPath.row]
            cell.discription.text = data.dis[indexPath.row]
            return cell
        }
        else
        {
            let cell = adsCollection.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! ADScollectionCell
            cell.img.image = imgData[indexPath.row]
            return cell
        }
    }
    
    
}
class collectionCell:UICollectionViewCell
{
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var discription: UILabel!
    
}

class ADScollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var img: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        img.layer.cornerRadius = 10
    }

}

struct Data {
    var img:[UIImage]
    var name:[String]
    var dis:[String]
}
