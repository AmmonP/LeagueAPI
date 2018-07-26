//
//  SummonerBusiness.swift
//  LeagueAPI
//
//  Created by Antoine Clop on 7/26/18.
//  Copyright © 2018 Antoine Clop. All rights reserved.
//

import Foundation

internal class SummonerBusiness {
    
    private var key: APIKey
    private var method: SummonerMethod
    
    public init(key: APIKey, method: SummonerMethod) {
        self.key = key
        self.method = method
    }
    
    public func request() {
        let requester: LeagueRequester = LeagueRequester(key: self.key)
        requester.request(method: self.method)
    }
}
