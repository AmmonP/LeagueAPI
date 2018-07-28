//
//  ChampionMasteryMethod.swift
//  LeagueAPI
//
//  Created by Antoine Clop on 7/28/18.
//  Copyright © 2018 Antoine Clop. All rights reserved.
//

import Foundation

public class ChampionMasteryMethod: LeagueMethod {
    
    public enum ChampionMasteryMethods {
        case BySummonerId(id: Double)
        case BySummonerIdAndChampionId(summonerId: Double, championId: Double)
        case ScoreBySummonerId(id: Double)
    }
    
    private var service: ServiceProxy
    private var method: ChampionMasteryMethods
    
    public init(method: ChampionMasteryMethods, region: Region) {
        self.method = method
        self.service = ServiceProxy(for: region)
    }
    
    public func getAccessMethod() -> RESTRequester.AccessMethod {
        return .GET
    }
    
    public func getMethodSignature() -> String {
        return "Default"
    }
    
    public func getMethodUrl() -> String {
        let entrypoint: String = self.service.host
        let commonPath: String = "https://\(entrypoint)\(MethodPaths.ChampionMastery.rawValue)/\(Version.RiotAPI)"
        switch self.method {
        case .BySummonerId(let id):
            return "\(commonPath)/champion-masteries/by-summoner/\(id)"
        case .BySummonerIdAndChampionId(let summonerId, let championId):
            return "\(commonPath)/champion-masteries/by-summoner/\(summonerId)/by-champion/\(championId)"
        case .ScoreBySummonerId(let id):
            return "\(commonPath)/scores/by-summoner/\(id)"
        }
    }
}
