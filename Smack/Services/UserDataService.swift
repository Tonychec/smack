//
//  UserDataService.swift
//  Smack
//
//  Created by Nomad on 9/9/17.
//  Copyright © 2017 ios.Nomad. All rights reserved.
//

import Foundation

class UserDataServece {
    static let instance = UserDataServece()
    
    public private(set) var id = ""
    public private(set) var avatarColor = ""
    public private(set) var avatarName = ""
    public private(set) var email = ""
    public private(set) var name = ""
    
    func setUserData(id: String, color: String, avatarName: String, email: String, name: String) {
        self.id = id
        self.avatarColor = color
        self.avatarName = avatarName
        self.email = email
        self.name = name
    }
    
    func setAvatarName(avatarName: String) {
        self.avatarName = avatarName
    }
}
