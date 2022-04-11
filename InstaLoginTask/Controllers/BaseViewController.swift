//
//  BaseViewController.swift
//  InstaLoginTask
//
//  Created by Macservis on 11/04/22.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    func appDelegate() -> AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    
    
    func sceneDelegate() -> SceneDelegate {
        return UIApplication.shared.connectedScenes.first!.delegate as! SceneDelegate
    }

}



//Yoki bu yolni qo'llasa ham buladi



extension UIViewController {
    
    func exten_AppDelegate() -> AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    
    func exten_Scenedelegate() -> SceneDelegate {
        return UIApplication.shared.connectedScenes.first!.delegate as! SceneDelegate
    }
}
