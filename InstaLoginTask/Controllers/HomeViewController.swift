//
//  HomeViewController.swift
//  InstaLoginTask
//
//  Created by Macservis on 11/04/22.
//

import UIKit

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        startFunc()
    }

    func startFunc() {
     view.backgroundColor = UIColor.white
     title = "Instagram"
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }

}
