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
    @IBOutlet weak var appsCollection: UICollectionView!
    @IBOutlet weak var appsCollection2: UICollectionView!
    @IBOutlet weak var apptable: UITableView!
    var data = Data(img: [#imageLiteral(resourceName: "Share Files"),#imageLiteral(resourceName: "Battery Usage"),#imageLiteral(resourceName: "Security"),#imageLiteral(resourceName: "Whatsapp Cleaner"),#imageLiteral(resourceName: "Cleaner-1"),#imageLiteral(resourceName: "Uninnstall  Apps"),#imageLiteral(resourceName: "Dual  Apps"),#imageLiteral(resourceName: "Settings")], name: ["Share Files","Battery Usage","Secure Files","Whatsapp Cleaner","Trash Cleaner","App Uninstall","Security Scan","Settings"], dis:["","89%","","356M","","2 Unused","",""])
    var apps:[appdata] = [appdata(img: [#imageLiteral(resourceName: "LudoKing"),#imageLiteral(resourceName: "SubwaySurfers"),#imageLiteral(resourceName: "Pubg"),#imageLiteral(resourceName: "GTA5"),#imageLiteral(resourceName: "SanAndreas"),#imageLiteral(resourceName: "Chess")], appName: ["Ludo King","Subway Surfers","PubG","GTA5","San Andreases","Chess"], rate: ["4.9","4.5","4.3","3.9","4.1","3.5"], size: ["49M","139M","525M","1.6G","1.1G","24M"]),
    appdata(img: [#imageLiteral(resourceName: "SnapChat"),#imageLiteral(resourceName: "Twitter"),#imageLiteral(resourceName: "Messenger"),#imageLiteral(resourceName: "LinkedIn"),#imageLiteral(resourceName: "Dual  Apps"),#imageLiteral(resourceName: "Instagram")], appName: ["Snapchat","Twitter","Messenger","LinkedIN","ChatApp","Instagram"], rate: ["4.3","4.2","3.5","2.9","4.9","4.1"], size: ["50M","265M","454K","69M","22M","79M"])]
    var imgData:[UIImage] = [#imageLiteral(resourceName: "banner-ad2-728x90"),#imageLiteral(resourceName: "horizontal-ad-banner-ready-web-sites-press-as-discount-advertisement-flyer-contains-black-friday-sale-black-friday-sale-103627128"),#imageLiteral(resourceName: "images"),#imageLiteral(resourceName: "bn_bg_wide"),#imageLiteral(resourceName: "Google-Ads-logo-horizontal")]
    var secVC = secondVC()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainAppCollection.reloadData()
        updateBTN.layer.cornerRadius = 10
        //appsCollection.register(UINib(nibName: "secondCollection", bundle: nil), forCellWithReuseIdentifier: "secondCollectionCell")
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
        else if collectionView == adsCollection
        {
            return imgData.count
        }
        else if collectionView == appsCollection
        {
            return apps[0].appName.count
        }
        else if collectionView == appsCollection2
        {
            return apps[1].appName.count
        }
        else
        {
            return 1
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
        else if collectionView == adsCollection
        {
            let cell = adsCollection.dequeueReusableCell(withReuseIdentifier: "CollectionCell", for: indexPath) as! ADScollectionCell
            cell.img.image = imgData[indexPath.row]
            return cell
        }else if collectionView == appsCollection
        {
            let cell = appsCollection.dequeueReusableCell(withReuseIdentifier: "appsCollectionCell", for: indexPath) as! secondCollection
            cell.img.image = apps[0].img[indexPath.row]
            cell.backIMG.isHidden = true
            cell.nameLBL.text = apps[0].appName[indexPath.row]
            cell.rateBTN.setTitle(apps[0].rate[indexPath.row], for: .normal)
            cell.sizeLBL.text = apps[0].size[indexPath.row]
            cell.btn.setTitle("Install", for: .normal)
            cell.btn.layer.masksToBounds = true
            cell.btn.layer.cornerRadius = cell.btn.frame.height/2
            cell.content.layer.cornerRadius = 15
            return cell
        }
        else if collectionView == appsCollection2
        {
            let cell = appsCollection.dequeueReusableCell(withReuseIdentifier: "appsCollectionCell", for: indexPath) as! secondCollection
            cell.img.image = apps[1].img[indexPath.row]
            cell.backIMG.isHidden = true
            cell.nameLBL.text = apps[1].appName[indexPath.row]
            cell.rateBTN.setTitle(apps[1].rate[indexPath.row], for: .normal)
            cell.sizeLBL.text = apps[1].size[indexPath.row]
            cell.btn.setTitle("Install", for: .normal)
            cell.btn.layer.masksToBounds = true
            cell.btn.layer.cornerRadius = cell.btn.frame.height/2
            cell.content.layer.cornerRadius = 15
            return cell
        }
        else
        {
            return UICollectionViewCell()
        }
    }
}
extension MeVC:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return secVC.data[0].name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = apptable.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! tableCell
        cell.name.text = secVC.data[0].name[indexPath.row]
        cell.category.text = secVC.data[0].category[indexPath.row]
        cell.img.image = secVC.data[0].img[indexPath.row]
        cell.rating.setTitle(secVC.data[0].rating[indexPath.row], for: .normal)
        cell.sizeLBL.text = secVC.data[0].size[indexPath.row]
        cell.btn.setTitle("Install", for: .normal)
        return cell
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
