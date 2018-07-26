//
//  LeagueMethod.swift
//  LeagueAPI
//
//  Created by Antoine Clop on 7/26/18.
//  Copyright © 2018 Antoine Clop. All rights reserved.
//

import Foundation

public protocol LeagueMethod {
    
    func getMethodSignature() -> String
    func getMethodUrl() -> String
}
