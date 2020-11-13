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
    var data = Data(img: [#imageLiteral(resourceName: "Share Files"),#imageLiteral(resourceName: "Downloads"),#imageLiteral(resourceName: "Security"),#imageLiteral(resourceName: "Whatsapp Cleaner"),#imageLiteral(resourceName: "Cleaner-1"),#imageLiteral(resourceName: "Uninnstall  Apps")], name: ["Share Files","Battery Usage","Secure Files","Whatsapp Cleaner","Trash Cleaner","App Uninstall"], dis:["","89%","","356M","","2 Unused"])
    override func viewDidLoad() {
        super.viewDidLoad()
        mainAppCollection.reloadData()
        updateBTN.layer.cornerRadius = 10
    }
    @IBAction func updateBTNClicked(_ sender: UIButton) {
        print("Clicked")
    }
    
}
extension MeVC:UICollectionViewDelegate,UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.img.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = mainAppCollection.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! collectionCell
        cell.img.image = data.img[indexPath.row]
        cell.name.text = data.name[indexPath.row]
        cell.discription.text = data.dis[indexPath.row]
        return cell
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
