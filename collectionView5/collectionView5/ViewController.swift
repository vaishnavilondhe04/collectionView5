//
//  ViewController.swift
//  collectionView5
//
//  Created by Mac on 03/12/21.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {


    var arrimg = [#imageLiteral(resourceName: "apple"),#imageLiteral(resourceName: "mango"),#imageLiteral(resourceName: "orange"),#imageLiteral(resourceName: "grapes"),#imageLiteral(resourceName: "banana.jpeg")]
    var arrname = ["mango","orange","apple","banana","grapes",]

    @IBOutlet weak var collectionview: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionview.delegate = self
        collectionview.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrname.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:CollectionViewCell = collectionview.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.img.image = arrimg[indexPath.row]
        cell.lbl.text = arrname[indexPath.row]
        return cell
    }


}



