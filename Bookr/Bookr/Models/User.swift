//
//  User.swift
//  Bookr
//
//  Created by John Kouris on 9/24/19.
//  Copyright © 2019 John Kouris. All rights reserved.
//

import Foundation

struct User: Codable {
    var id: Int
    var userId: Int
    var username: String
    var password: String
    var roles: [String]?
    var token: String?
    
    init(id: Int, username: String, password: String, roles: [String]?, token: String?) {
        self.id = id
        self.userId = id
        self.username = username
        self.password = password
        self.roles = roles
        self.token = token
    }

}
