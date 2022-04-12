//
//  UserTAskTableViewCell.swift
//  InstaLoginTask
//
//  Created by Macservis on 12/04/22.
//

import UIKit

class UserTAskTableViewCell: UITableViewCell {
//MARK: Outlets
    
    
    @IBOutlet weak var nmTepaView: UIView!
    
    @IBOutlet weak var nmProfileImg: UIImageView!
    
    
    @IBOutlet weak var nmFullName: UILabel!
    
    @IBOutlet weak var nmImgView1: UIImageView!
    
    
    @IBOutlet weak var nmImgView2: UIImageView!
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        startFunction()
    }

    
    func  startFunction() {
        nmTepaView.translatesAutoresizingMaskIntoConstraints = false
        nmTepaView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.1).isActive = true
        
        nmProfileImg.translatesAutoresizingMaskIntoConstraints = false
        nmProfileImg.layer.cornerRadius = 25
        
    }
    
}
