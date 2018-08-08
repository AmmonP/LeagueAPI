//
//  RawRequester.swift
//  LeagueAPI
//
//  Created by Antoine Clop on 8/2/18.
//  Copyright © 2018 Antoine Clop. All rights reserved.
//

import Foundation

internal class RawRequester: DataRequester {
    
    func request<DataType: Decodable>(accessMethod: RESTRequester.AccessMethod, methodUrl: String, headers: [String : String], body: Data?, handler: @escaping (DataType?, RESTRequester.Headers?, String?) -> Void) {
        RESTRequester.request(accessMethod, url: methodUrl, headers: headers, body: body) { (data, headers, error) in
            if let result = PrimitiveTypeCheck.cast(from: data, into: DataType.self) as? DataType {
                handler(result, headers, error)
            }
            else if let error = error {
                handler(nil, headers, error)
            }
            else {
                handler(nil, headers, "RawRequester: cast into \(DataType.self) failed")
            }
        }
    }
}
