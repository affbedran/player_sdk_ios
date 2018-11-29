//
//  OfflineUtils.swift
//  SambaPlayer
//
//  Created by Kesley Vaz on 29/11/18.
//  Copyright © 2018 Samba Tech. All rights reserved.
//

import Foundation

class OfflineUtils {
    
    private static let MEDIAS_KEY = "MEDIAS_KEY"
    
    private init(){}
    
    static func persistMedias(_ medias: [SambaMediaConfig]) {
        
        let mediaOffline = medias.map{SambaOfflineMedia.from(sambaMedia: $0)}
        
        let jsonData = try? JSONEncoder().encode(mediaOffline)
        
        guard let data = jsonData else {return}
        
        UserDefaults.standard.set(data, forKey: MEDIAS_KEY)
    }
    
    static func getPersistedMedias() -> [SambaMediaConfig]? {
        let jsonData = UserDefaults.standard.data(forKey: MEDIAS_KEY)
        
        guard let data = jsonData else {
            return nil
        }
    
        let mediasOffline = try? JSONDecoder().decode([SambaOfflineMedia].self, from: data)
        
        guard let medias = mediasOffline else {
            return nil
        }
        
        return medias.map{$0.toSambaMedia()}
    }
    
}
