//
//  APIController.swift
//  Bookr
//
//  Created by John Kouris on 9/24/19.
//  Copyright © 2019 John Kouris. All rights reserved.
//

import Foundation
import UIKit

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
}

enum NetworkError: Error {
    case noAuth
    case badAuth
    case otherError
    case badData
    case noDecode
}

class APIController {
    
}
