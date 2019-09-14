//
//  SignUpViewController.swift
//  Tamazuj
//
//  Created by yousef Omar on 9/15/19.
//  Copyright © 2019 Tamazuj. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var signUpButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        signUpButton.setGradientBackground(colorOne: #colorLiteral(red: 0.3333333333, green: 0.768627451, blue: 0.8117647059, alpha: 1), colorTwo: #colorLiteral(red: 0.3333333333, green: 0.6392156863, blue: 0.8117647059, alpha: 1))
        signUpButton.layer.cornerRadius = 15

    }
    

}
