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
    var data:[tbldata] = [tbldata(name: ["Twitter","OLX","Amazon","Flipcart","Messenger","Instagram","Snapdeal","Swiggy","Snapchat"], img: [#imageLiteral(resourceName: "Twitter"),#imageLiteral(resourceName: "OLX"),#imageLiteral(resourceName: "Amazon"),#imageLiteral(resourceName: "Flipcart"),#imageLiteral(resourceName: "Messenger"),#imageLiteral(resourceName: "Instagram"),#imageLiteral(resourceName: "Snapdeal"),#imageLiteral(resourceName: "Swiggy"),#imageLiteral(resourceName: "SnapChat")], number:["1","2","3","4","5","6","7","8","9"], rating: ["3.9","4.2","2.9","3.9","4.6","3.9","4.7","3.8","4.2"], size: ["25M","39M","12M","46M","120M","79M","12M","56M","78.1M"], category: ["Social Media App","Shopping","Shopping","Shopping","Messeging App","Social Media App","Shoppping","Food Delivery","Social Media App"]),
                          tbldata(name: ["LudoKing","PubG","GTA5","Subway Surfers","Chess","San Andreas","Snak Game","GTA5","PubG"], img: [#imageLiteral(resourceName: "LudoKing"),#imageLiteral(resourceName: "Pubg"),#imageLiteral(resourceName: "GTA5"),#imageLiteral(resourceName: "SubwaySurfers"),#imageLiteral(resourceName: "Chess"),#imageLiteral(resourceName: "SanAndreas"),#imageLiteral(resourceName: "LudoKing"),#imageLiteral(resourceName: "GTA5"),#imageLiteral(resourceName: "Pubg")], number:["1","2","3","4","5","6","7","8","9"], rating: ["3.9","4.2","2.9","3.9","4.6","3.9","4.7","4.6","4.2"], size: ["25M","556M","12M","46M","120M","79M","12M","1.4G","2.5G"], category: ["Most Rated","Action","Action & Travelling","Running","Mind Game","Racing & Action","Most Played","Action","Action % Thrilling"])]
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentControll.setTitle("Apps", forSegmentAt: 0)
        segmentControll.setTitle("Games", forSegmentAt: 1)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if segmentControll.selectedSegmentIndex == 0
        {
            return data[0].name.count
            
        }
        else
        {
            return data[1].name.count
        }
        
        
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! tableCell
        if segmentControll.selectedSegmentIndex == 0
        {
            
            cell.rankBTN.setTitle(data[0].number[indexPath.row], for: .normal)
            cell.img.image = data[0].img[indexPath.row]
            cell.name.text = data[0].name[indexPath.row]
            cell.rating.setTitle(data[0].rating[indexPath.row], for: .normal)
            cell.sizeLBL.text = data[0].size[indexPath.row]
            cell.category.text = data[0].category[indexPath.row]
            cell.btn.setTitle("GET", for: .normal)
        }
        else{
         
            cell.rankBTN.setTitle(data[1].number[indexPath.row], for: .normal)
            cell.img.image = data[1].img[indexPath.row]
            cell.name.text = data[1].name[indexPath.row]
            cell.rating.setTitle(data[1].rating[indexPath.row], for: .normal)
            cell.sizeLBL.text = data[1].size[indexPath.row]
            cell.category.text = data[1].category[indexPath.row]
            cell.btn.setTitle("PLAY", for: .normal)
            
        }
        return cell
    }
    @IBAction func segmentChange(_ sender: UISegmentedControl) {
        tblView.reloadData()
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        print("Pressed")
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
    var number:[String]
    var rating:[String]
    var size:[String]
    var category:[String]
}
