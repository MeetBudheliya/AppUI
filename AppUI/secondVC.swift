//
//  secondVC.swift
//  AppUI
//
//  Created by MAC on 11/11/20.
//

import UIKit

class secondVC: UIViewController ,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var segmentControll: UISegmentedControl!
    @IBOutlet weak var tblView: UITableView!
    var data:[tbldata] = [tbldata(name: ["Twitter","OLX","Amazon","Flipcart","Messenger","Instagram","Snapdeal","Swiggy","Snapchat"], img: [#imageLiteral(resourceName: "Twitter"),#imageLiteral(resourceName: "OLX"),#imageLiteral(resourceName: "Amazon"),#imageLiteral(resourceName: "Flipcart"),#imageLiteral(resourceName: "Messenger"),#imageLiteral(resourceName: "Instagram"),#imageLiteral(resourceName: "Snapdeal"),#imageLiteral(resourceName: "Swiggy"),#imageLiteral(resourceName: "SnapChat")], numberIMG: [UIImage(systemName:"1.circle.fill"),UIImage(systemName: "2.circle.fill"),UIImage(systemName: "3.circle.fill"),UIImage(systemName: "4.circle.fill"),UIImage(systemName: "5.circle.fill"),UIImage(systemName: "6.circle.fill"),UIImage(systemName: "7.circle.fill"),UIImage(systemName: "8.circle.fill"),UIImage(systemName: "9.circle.fill")], rating: ["3.9","4.2","2.9","3.9","4.6","3.9","4.7","3.8","4.2"], size: ["25M","39M","12M","46M","120M","79M","12M","56M","78.1M"], category: ["Social Media App","Shopping","Shopping","Shopping","Messeging App","Social Media App","Shoppping","Food Delivery","Social Media App"])]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
            return data[0].name.count
       
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! tableCell
       
            cell.rankBTN.setBackgroundImage(data[0].numberIMG[indexPath.row] , for: .highlighted)
            cell.img.image = data[0].img[indexPath.row]
            cell.name.text = data[0].name[indexPath.row]
            cell.rating.setTitle(data[0].rating[indexPath.row], for: .normal)
            cell.sizeLBL.text = data[0].size[indexPath.row]
            cell.btn.setTitle("GET", for: .normal)
            
       
        return cell
    }
}
class tableCell: UITableViewCell {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var rankBTN: UIButton!
    @IBOutlet weak var rating: UIButton!
    @IBOutlet weak var sizeLBL: UILabel!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var btn: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        btn.layer.cornerRadius = btn.frame.height/2
    }
}
struct tbldata {
    var name:[String]
    var img:[UIImage]
    var numberIMG:[UIImage?]
    var rating:[String]
    var size:[String]
    var category:[String]
}
