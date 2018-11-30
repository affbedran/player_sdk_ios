//
//  SambaDownloadManager.swift
//  SambaPlayer
//
//  Created by Kesley Vaz on 30/11/18.
//  Copyright © 2018 Samba Tech. All rights reserved.
//

import Foundation

public class SambaDownloadManager{
    
    public static var sharedInstance = SambaDownloadManager()

    
    private init() {
        
        
        
    }
    
    public func prepareDownload(with request: SambaDownloadRequest, successCallback: @escaping (_ request: SambaDownloadRequest) -> Void, errorCallback: @escaping (_ error: Error?, _ msg: String) -> Void) {
        SambaDownloadTracker.sharedInstance.prepareDownload(with: request, successCallback: successCallback, errorCallback: errorCallback)
    }
    
}
