//
//  UserTask.swift
//  InstaLoginTask
//
//  Created by Macservis on 12/04/22.
//

import Foundation

class UserTAsk {
    var fullName: String? = ""
    var profileImg: String? = ""
    var contentImgs: [String?] = []
   
    
    init(fullName: String?, profileImg: String?, contentImgs: [String?]) {
        self.fullName = fullName
        self.profileImg = profileImg
        self.contentImgs = contentImgs
    }


}
