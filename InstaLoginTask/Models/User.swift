//
//  File.swift
//  InstaLoginTask
//
//  Created by Macservis on 12/04/22.
//

import Foundation

class User {
    var fullName: String? = ""
    var profileImg: String? = ""
    var time: String?  = ""
    var contentImg: String? = ""
    var content: String? = ""
    
    init(fullName: String?, profileImg: String?, time: String?, contentImg: String?, content: String?) {
        self.fullName = fullName
        self.profileImg = profileImg
        self.time = time
        self.content = content
        self.contentImg = contentImg
    }
}
