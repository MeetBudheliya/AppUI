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
    var imgData:[UIImage] = [#imageLiteral(resourceName: "bg1"),#imageLiteral(resourceName: "bg1"),#imageLiteral(resourceName: "bg1"),#imageLiteral(resourceName: "bg1"),#imageLiteral(resourceName: "bg1")]
    override func viewDidLoad() {
        super.viewDidLoad()
        mainAppCollection.reloadData()
        updateBTN.layer.cornerRadius = 10
        adsCollection.register(UINib(nibName: "ADScollectionCell", bundle: nil), forCellWithReuseIdentifier: "adCell")
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
            let cell = adsCollection.dequeueReusableCell(withReuseIdentifier: "adCell", for: indexPath) as! ADScollectionCell
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
struct Data {
    var img:[UIImage]
    var name:[String]
    var dis:[String]
}
