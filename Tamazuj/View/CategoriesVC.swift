//
//  CategoriesVC.swift
//  Tamazuj
//
//  Created by yousef Omar on 9/14/19.
//  Copyright © 2019 Tamazuj. All rights reserved.
//

import UIKit

struct collectionData {
    var image:UIImage
    var title:String
}

class CategoriesVC: UIViewController {
    //MARK:- Proprites
    var dataArray:[collectionData] = [
        collectionData(image: #imageLiteral(resourceName: "category_menu_icon3"), title: "استشارات نفسية"),
        collectionData(image: #imageLiteral(resourceName: "category_menu_icon3"), title: "استشارات نفسية"),
        collectionData(image: #imageLiteral(resourceName: "category_menu_icon3"), title: "استشارات نفسية"),
        collectionData(image: #imageLiteral(resourceName: "category_menu_icon3"), title: "استشارات نفسية"),
        collectionData(image: #imageLiteral(resourceName: "category_menu_icon3"), title: "استشارات نفسية"),
        collectionData(image: #imageLiteral(resourceName: "category_menu_icon3"), title: "استشارات نفسية"),
        collectionData(image: #imageLiteral(resourceName: "category_menu_icon3"), title: "استشارات نفسية"),
        collectionData(image: #imageLiteral(resourceName: "category_menu_icon3"), title: "استشارات نفسية"),
        collectionData(image: #imageLiteral(resourceName: "category_menu_icon3"), title: "استشارات نفسية")]
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navTransparent()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    //MARK:- functions
    // for navigation transperant
    func navTransparent(){    self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear
    }
    //shadow to cell
    func cellShadow(cell:UICollectionViewCell) {
        cell.layer.cornerRadius = 7
        cell.layer.masksToBounds = false
        cell.layer.shadowOffset = CGSize(width: 0, height: 1)
        cell.layer.shadowColor = UIColor(hex: "#E1E8EB")?.cgColor
        cell.layer.shadowOpacity = 0.53
        cell.layer.shadowRadius = 3

    }
    //MARK:- Handler
}
extension CategoriesVC: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoriesCell", for: indexPath) as!  CategoriesCollectionVCell
        let obj = dataArray[indexPath.item]
//        cell.data = (image: obj.image, title: obj.title)
        cellShadow(cell:cell)
        cell.imageView.image = obj.image
        cell.titleLabel.text = obj.title
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth = (view.bounds.width - 60)/3
        return CGSize(width:cellWidth , height:cellWidth )

    }
    
}
