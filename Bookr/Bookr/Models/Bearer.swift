//
//  Bearer.swift
//  Bookr
//
//  Created by John Kouris on 9/24/19.
//  Copyright © 2019 John Kouris. All rights reserved.
//

import Foundation

struct Bearer: Codable {
    var id: Int
    var username: String
    var roles: [String]
    var token: String
}
