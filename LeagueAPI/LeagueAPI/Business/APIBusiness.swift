//
//  APIBusiness.swift
//  LeagueAPI
//
//  Created by Antoine Clop on 7/28/18.
//  Copyright © 2018 Antoine Clop. All rights reserved.
//

import Foundation

internal class APIBusiness {
    
    private var key: APIKey
    private var method: LeagueMethod
    
    public init(key: APIKey, method: LeagueMethod) {
        self.key = key
        self.method = method
    }
    
    public func request<RiotModel: Decodable>(handler: @escaping (RiotModel?, String?) -> Void) {
        let requester: LeagueRequester<RiotModel> = LeagueRequester(key: self.key)
        requester.request(method: self.method) { (result, error) in
            handler(result, error)
        }
    }
}
