//
//  CategorySelectionViewController.swift
//  Tamazuj
//
//  Created by Saadi on 9/6/19.
//  Copyright © 2019 Tamazuj. All rights reserved.
//
//
import UIKit

class CategorySelectionViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    fileprivate var txtMenu = ["تطوير الذات", "استشارات أسرية", "استشارات نفسية", "السمو بالنفس", "استشارات تعليمية", "العلاج السلوكي"]
    fileprivate var imgMenu = ["category_menu_icon1", "category_menu_icon2", "category_menu_icon3", "category_menu_icon4", "category_menu_icon5", "category_menu_icon6"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.tableFooterView = UIView()
        tableView.separatorStyle = .none
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension CategorySelectionViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return txtMenu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CategorySelectionCell
        
        let object = imgMenu[indexPath.row]
        
        cell.imgMenu.image = UIImage(named: object)
        cell.txtMenu.text = txtMenu[indexPath.row]
        
        return cell
    }
}
