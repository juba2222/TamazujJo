//
//  ViewController.swift
//  Tamazuj
//
//  Created by Saadi on 9/5/19.
//  Copyright © 2019 Tamazuj. All rights reserved.
//
//
import UIKit

class MainViewController: UIViewController {
    
    

    let imagePageControl = ["imgPC1", "imgPC2.2", "imgPC1", "imgPC2.2"]
    
    override func viewDidLoad() {

    }

    

}
extension MainViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
