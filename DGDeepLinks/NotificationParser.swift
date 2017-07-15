//
//  NotificationParser.swift
//  DGDeepLinks
//
//  Created by Dameon Green on 7/15/17.
//  Copyright © 2017 ApptasticVoyage. All rights reserved.
//

import Foundation

class NotificationParser {
    static let shared = NotificationParser()
    private init() { }
    
    func handleNotification(_ userInfo: [AnyHashable : Any]) -> DeeplinkType? {
        if let data = userInfo["data"] as? [String: Any] {
            if let messageId = data["messageId"] as? String {
                return DeeplinkType.messages(.details(id: messageId))
            }
        }
        
        return nil
    }
}
