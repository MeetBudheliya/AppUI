//
//  FirstVC.swift
//  AppUI
//
//  Created by MAC on 11/11/20.
//

import UIKit
class FirstVC: UIViewController{

    @IBOutlet weak var firstCollection: UICollectionView!
    @IBOutlet weak var secondCollection: UICollectionView!
    @IBOutlet weak var thirdCollection: UICollectionView!
    @IBOutlet weak var fourthCollection: UICollectionView!
    @IBOutlet weak var fifthCollection: UICollectionView!
    @IBOutlet weak var sixthCollection: UICollectionView!
    var imgList:[UIImage] = [#imageLiteral(resourceName: "img2"),#imageLiteral(resourceName: "img1"),#imageLiteral(resourceName: "img3"),#imageLiteral(resourceName: "img2"),#imageLiteral(resourceName: "img1"),#imageLiteral(resourceName: "img3")]
    //    var imgList1:[UIImage] = [#imageLiteral(resourceName: "bg4"),#imageLiteral(resourceName: "bg3"),#imageLiteral(resourceName: "bg2"),#imageLiteral(resourceName: "bg5"),#imageLiteral(resourceName: "bg1"),#imageLiteral(resourceName: "bg5")]
    var app:[appdata] = [appdata(img:[#imageLiteral(resourceName: "SnapChat"),#imageLiteral(resourceName: "Instagram"),#imageLiteral(resourceName: "Twitter"),#imageLiteral(resourceName: "Facebook"),#imageLiteral(resourceName: "Messenger")] , appName: ["SnapChat","Instagram","Twitter","Facebook","Messenger"], rate: ["4.8","4.9","4.3","4.7","4.1"], size:                             ["25.1M","33.8M","21.16M","20.5M","851K"]),
                        appdata(img: [#imageLiteral(resourceName: "Flipcart"),#imageLiteral(resourceName: "Snapdeal"),#imageLiteral(resourceName: "OLX"),#imageLiteral(resourceName: "Swiggy"),#imageLiteral(resourceName: "Amazon"),#imageLiteral(resourceName: "shopee"),#imageLiteral(resourceName: "ShopNow")], appName: ["Flipcart","Snapdeal","OLX","Swiggy","Amazon","ShopNow","Shoppers"], rate: ["3.9","4.1","3.4","4.2","4.9","4.6","4.0"], size: ["5M","74.2M","84M","126M","29.3M","124M","29.5M"]),
    appdata(img: [#imageLiteral(resourceName: "SubwaySurfers"),#imageLiteral(resourceName: "LudoKing"),#imageLiteral(resourceName: "Pubg"),#imageLiteral(resourceName: "GTA5"),#imageLiteral(resourceName: "SanAndreas"),#imageLiteral(resourceName: "Chess")], appName: ["Subway Surfers","LudoKing","PubG","GTA5","SanAndreas","Chess"], rate: ["4.7","4.9","2.9","4.1","3.5","3.8"], size: ["124M","38M","2.9G","1.7G","1.9G","125M"])]
    var data = coll5Data(color: [#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1),#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1),#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1),#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1),#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1),#colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1),#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1),#colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1),#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1),#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)],img: [#imageLiteral(resourceName: "Amazon"),#imageLiteral(resourceName: "Flipcart"),#imageLiteral(resourceName: "Pubg"),#imageLiteral(resourceName: "LudoKing"),#imageLiteral(resourceName: "Instagram"),#imageLiteral(resourceName: "Amazon"),#imageLiteral(resourceName: "Flipcart"),#imageLiteral(resourceName: "Pubg"),#imageLiteral(resourceName: "LudoKing"),#imageLiteral(resourceName: "Instagram")], lbl: ["Amazon","Flipcart","Pubg","LudoKing","Instagram","Amazon","Flipcart","Pubg","LudoKing","Instagram"])
    var sixthData = coll6Data(color: [#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1),#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1),#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1),#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1),#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1),#colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1)], lbl: ["Entertainment","Tools","Communication","Action","Racing","Adventure"], img1: [#imageLiteral(resourceName: "Flipcart"),#imageLiteral(resourceName: "Twitter"),#imageLiteral(resourceName: "LinkedIn"),#imageLiteral(resourceName: "SubwaySurfers"),#imageLiteral(resourceName: "Pubg"),#imageLiteral(resourceName: "LudoKing")], img2: [#imageLiteral(resourceName: "ShopNow"),#imageLiteral(resourceName: "Facebook"),#imageLiteral(resourceName: "Instagram"),#imageLiteral(resourceName: "Chess"),#imageLiteral(resourceName: "Snapdeal"),#imageLiteral(resourceName: "OLX")], img3: [#imageLiteral(resourceName: "shopee"),#imageLiteral(resourceName: "Facebook"),#imageLiteral(resourceName: "OLX"),#imageLiteral(resourceName: "ShopNow"),#imageLiteral(resourceName: "Swiggy"),#imageLiteral(resourceName: "Twitter")])
    override func viewDidLoad() {
        super.viewDidLoad()
        startTimer()

    }
    func startTimer() {
        Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(scrollToNextCell), userInfo: nil, repeats: true);
    }
    var x = 0
    
    @objc func scrollToNextCell(){
        if self.x < imgList.count {
            let indexPath = IndexPath(item: x, section: 0)
            self.firstCollection.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
            self.x = self.x + 1
        }else{
            self.x = 0
            self.firstCollection.scrollToItem(at: IndexPath(item: 0, section: 0), at: .centeredHorizontally, animated: true)
        }
    }
    
}
extension FirstVC :UICollectionViewDelegate,UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case firstCollection:
            return imgList.count
        case secondCollection:
            return app[0].appName.count
        case thirdCollection:
            return app[1].appName.count
        case fourthCollection:
            return app[2].appName.count
        case  fifthCollection:
            return data.color.count
        case sixthCollection:
            return sixthData.lbl.count
        default:
            return 1
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case firstCollection:
            let cell = firstCollection.dequeueReusableCell(withReuseIdentifier: "firstCollectionCell", for: indexPath) as! firstCollection
            cell.img.image = imgList[indexPath.row]
            cell.img.layer.masksToBounds = true
            cell.img.layer.cornerRadius = 15
            return cell
        case  secondCollection:
            let cell = secondCollection.dequeueReusableCell(withReuseIdentifier: "secondCollectionCell", for: indexPath) as! secondCollection
            cell.img.layer.cornerRadius = 15
            cell.img.image = app[0].img[indexPath.row]
            cell.nameLBL.text = app[0].appName[indexPath.row]
            cell.rateBTN.titleLabel?.text = app[0].rate[indexPath.row]
            cell.sizeLBL.text = app[0].size[indexPath.row]
            cell.btn.setTitle("GET", for: .normal)
            return cell
        case  thirdCollection:
            let cell = secondCollection.dequeueReusableCell(withReuseIdentifier: "secondCollectionCell", for: indexPath) as! secondCollection
            cell.img.layer.cornerRadius = 15
            cell.img.image = app[1].img[indexPath.row]
            cell.nameLBL.text = app[1].appName[indexPath.row]
            cell.rateBTN.titleLabel?.text = app[1].rate[indexPath.row]
            cell.sizeLBL.text = app[1].size[indexPath.row]
            cell.btn.setTitle("GO", for: .normal)
            return cell
        case fourthCollection:
            let cell = secondCollection.dequeueReusableCell(withReuseIdentifier: "secondCollectionCell", for: indexPath) as! secondCollection
            cell.backIMG.isHidden = false
            cell.backIMG.layer.cornerRadius = 25
            cell.backIMG.image = #imageLiteral(resourceName: "bg4")
                        cell.img.layer.cornerRadius = 15
                        cell.img.image = app[2].img[indexPath.row]
                        cell.nameLBL.text = app[2].appName[indexPath.row]
                        cell.rateBTN.titleLabel?.text = app[2].rate[indexPath.row]
                        cell.sizeLBL.text = app[2].size[indexPath.row]
            cell.btn.setTitle("Play", for: .normal)
            return cell
        case fifthCollection:
            let cell = fifthCollection.dequeueReusableCell(withReuseIdentifier: "fifthCollectionCell", for: indexPath) as! fifthCollection
            cell.view.backgroundColor = data.color[indexPath.row]
            cell.view.layer.cornerRadius = 20
            cell.view.layer.masksToBounds = true
            cell.img.image = data.img[indexPath.row]
            cell.lbl.text = data.lbl[indexPath.row]
            return cell
        case sixthCollection:
            let cell = sixthCollection.dequeueReusableCell(withReuseIdentifier: "sixthCollectionCelll", for: indexPath) as! sixthCollection
            cell.view.backgroundColor = sixthData.color[indexPath.row]
            cell.view.layer.cornerRadius = 20
            cell.lbl.text = sixthData.lbl[indexPath.row]
            cell.img1.image = sixthData.img1[indexPath.row]
            cell.img2.image = sixthData.img2[indexPath.row]
            cell.img3.image = sixthData.img3[indexPath.row]
            return cell
        default:
            return UICollectionViewCell()
        }
    }
}
