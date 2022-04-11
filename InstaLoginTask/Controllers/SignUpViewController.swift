//
//  SignUpViewController.swift
//  InstaLoginTask
//
//  Created by Macservis on 11/04/22.
//

import UIKit

class SignUpViewController: BaseViewController {
    //MARK: Outlets
    @IBOutlet weak var nmStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nmStackView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.55).isActive = true
    }

    //MARK: Actions
    
    @IBAction func signInTappedexitAdded(_ sender: UIButton) {
        dismiss(animated: true)
    }
    

}
