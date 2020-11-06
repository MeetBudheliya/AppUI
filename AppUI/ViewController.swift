//
//  ViewController.swift
//  AppUI
//
//  Created by MAC on 06/11/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var mainCollection: UICollectionView!
    @IBOutlet weak var tblView: UITableView!
    var segmentMenu = ["RECOMMENDED","RANK","CATEGORY","BEST OF THE MONTH"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "tblCell")
    }
}
extension ViewController:UICollectionViewDelegate,UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return segmentMenu.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = mainCollection.dequeueReusableCell(withReuseIdentifier: "sementedCell", for: indexPath) as! FirstCellOfMain
        cell.lbl.text = segmentMenu[indexPath.row]
        return cell
    }
}
class FirstCellOfMain:UICollectionViewCell
{
    @IBOutlet weak var lbl: UILabel!
}
extension ViewController:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return segmentMenu.count    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "tblCell", for: indexPath) as! TableViewCell
        cell.lbl.text = segmentMenu[indexPath.row]
        return cell
    }
    
    
}
