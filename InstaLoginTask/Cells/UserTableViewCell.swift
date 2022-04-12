//
//  UserTableViewCell.swift
//  InstaLoginTask
//
//  Created by Macservis on 12/04/22.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    //MARK: Outlets
    
    @IBOutlet weak var nmTepaView: UIView!
    
    @IBOutlet weak var nmPastView: UIView!
    
    @IBOutlet weak var nmProfileImageView: UIImageView!
    
    @IBOutlet weak var nmFullName: UILabel!
    
    
    @IBOutlet weak var nmContentImageView: UIImageView!
    
    @IBOutlet weak var nmContentLAbel: UILabel!
    
    @IBOutlet weak var nmtimeLabel: UILabel!
    
    
    override func layoutSubviews() {
        
    
        startFunction()
    }
    
    
    
    //MARK: Methods
    
    func startFunction() {
        nmTepaView.translatesAutoresizingMaskIntoConstraints = false
        nmTepaView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.1).isActive = true
        
        nmPastView.translatesAutoresizingMaskIntoConstraints = false
        nmPastView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.2).isActive = true
        
        nmProfileImageView.translatesAutoresizingMaskIntoConstraints = false
        nmProfileImageView.layer.cornerRadius = 25
        
    }
}
