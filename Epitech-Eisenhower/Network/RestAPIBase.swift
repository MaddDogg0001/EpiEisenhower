//
//  RestAPIBase.swift
//  Epitech-Eisenhower
//
//  Created by Odet Alexandre on 06/03/2018.
//  Copyright © 2018 Odet Alexandre. All rights reserved.
//

import Foundation
import Alamofire

class RestAPIBase: Cancelable {
    
    var request: Alamofire.Request?
    
    func cancelRequest() {
        request?.cancel()
    }
}