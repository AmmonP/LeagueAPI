//
//  MatchPlayer.swift
//  LeagueAPI
//
//  Created by Antoine Clop on 7/28/18.
//  Copyright © 2018 Antoine Clop. All rights reserved.
//

import Foundation

public class MatchPlayer: Decodable {
    
    public var currentAccountId: Double
    public var accountId: Double
    public var summonerId: Double
    public var summonerName: String
    public var profileIconId: Int
    public var currentPlatformId: String
    public var platformId: String
    public var matchHistoryUri: String
    
    enum CodingKeys: String, CodingKey {
        case currentAccountId = "currentAccountId"
        case accountId = "accountId"
        case summonerId = "summonerId"
        case summonerName = "summonerName"
        case profileIconId = "profileIcon"
        case currentPlatformId = "currentPlatformId"
        case platformId = "platformId"
        case matchHistoryUri = "matchHistoryUri"
    }
    
    public init(currentAccountId: Double, accountId: Double, summonerId: Double, summonerName: String, profileIconId: Int, currentPlatformId: String, platformId: String, matchHistoryUri: String) {
        self.currentAccountId = currentAccountId
        self.accountId = accountId
        self.summonerId = summonerId
        self.summonerName = summonerName
        self.profileIconId = profileIconId
        self.currentPlatformId = currentPlatformId
        self.platformId = platformId
        self.matchHistoryUri = matchHistoryUri
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.currentAccountId = try container.decode(Double.self, forKey: .currentAccountId)
        self.accountId = try container.decode(Double.self, forKey: .accountId)
        self.summonerId = try container.decode(Double.self, forKey: .summonerId)
        self.summonerName = try container.decode(String.self, forKey: .summonerName)
        self.profileIconId = try container.decode(Int.self, forKey: .profileIconId)
        self.currentPlatformId = try container.decode(String.self, forKey: .currentPlatformId)
        self.platformId = try container.decode(String.self, forKey: .platformId)
        self.matchHistoryUri = try container.decode(String.self, forKey: .matchHistoryUri)
    }
}
