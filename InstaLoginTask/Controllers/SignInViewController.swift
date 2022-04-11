//
//  SignInViewController.swift
//  InstaLoginTask
//
//  Created by Macservis on 11/04/22.
//

import UIKit

class SignInViewController: BaseViewController {

    //MARK: Outlets
    
    @IBOutlet weak var nmStackView: UIStackView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        nmStackView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.35).isActive = true
    }

    //MARK: Actions
    
    @IBAction func signInGoHome(_ sender: UIButton) {
        sceneDelegate().callHomePage()
        
        //or
        
        //exten_Scenedelegate().callHomePage()
        
    }
    
    
    
    @IBAction func signUpAddedAccount(_ sender: UIButton) {
        present(SignUpViewController(), animated: true)
    }
    
    

}
