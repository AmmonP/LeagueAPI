//
//  LeagueAPI.swift
//  LeagueAPI
//
//  Created by Antoine Clop on 7/26/18.
//  Copyright © 2018 Antoine Clop. All rights reserved.
//

import Foundation

public class LeagueAPI: APIClient {
    
    public private(set) var riotAPI: RiotAPI
    
    public override init(APIToken: String) {
        self.riotAPI = RiotAPI(APIToken: APIToken)
        super.init(APIToken: APIToken)
    }
    
    // MARK: - Service
    
    public func getPatchVersion(handler: @escaping (String?, String?) -> Void) {
        DataDragonVersionBusiness.getPatchVersion(completion: handler)
    }
    
    // MARK: - Champion
    
    public func getChampionDetails(by championId: ChampionId, handler: @escaping (ChampionDetails?, String?) -> Void) {
        DataDragonChampionBusiness.getChampionDetails(by: championId, completion: handler)
    }
    
    public func getChampionDetails(byName name: String, handler: @escaping (ChampionDetails?, String?) -> Void) {
        DataDragonChampionBusiness.getChampionDetails(byName: name, completion: handler)
    }
    
    public func getChampionsName(byRole role: String, handler: @escaping ([String]?, String?) -> Void) {
        DataDragonChampionBusiness.getChampions(forRole: role, completion: handler)
    }
    
    // MARK: - Profile Icon
    
    public func getProfileIconIds(handler: @escaping ([ProfileIconId]?, String?) -> Void) {
        DataDragonProfileIconBusiness.getProfileIconIds(completion: handler)
    }
    
    public func getProfileIcon(byId id: ProfileIconId, handler: @escaping (ProfileIcon?, String?) -> Void) {
        DataDragonProfileIconBusiness.getProfileIcon(byId: id, completion: handler)
    }
}
