//
//  Skin.swift
//  LeagueAPI
//
//  Created by Antoine Clop on 8/14/18.
//  Copyright © 2018 Antoine Clop. All rights reserved.
//

import Foundation

public class Skin: Decodable {
    
    public var skinId: SkinId
    public var skinNumber: Int
    public var name: String
    public var hasChromas: Bool
    
    enum CodingKeys: String, CodingKey {
        case skinId = "id"
        case skinNumber = "num"
        case name = "name"
        case hasChromas = "chromas"
    }
    
    public init(skinId: String, skinNumber: Int, name: String, hasChromas: Bool) {
        self.skinId = skinId
        self.skinNumber = skinNumber
        self.name = name
        self.hasChromas = hasChromas
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.skinId = try container.decode(String.self, forKey: .skinId)
        self.skinNumber = try container.decode(Int.self, forKey: .skinNumber)
        self.name = try container.decode(String.self, forKey: .name)
        self.hasChromas = try container.decode(Bool.self, forKey: .hasChromas)
    }
}
