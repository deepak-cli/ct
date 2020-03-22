//
//  AnalyticsLogger.swift
//  CT-Integration
//
//  Created by Deepak Rajput on 22/03/20.
//  Copyright © 2020 Deepak Rajput. All rights reserved.
//

import Foundation
import CleverTapSDK

class AnalyticsLogger {
    
    enum Event : String {
        case productViewed = "Product Viewed"
    }

    
    func log(event: Event, properties: [String: Any]) {
        CleverTap.sharedInstance()?.recordEvent(event.rawValue, withProps: properties)
    }
    
    func updateUserInfo() {
        let profile: [String: Any] = [
            "Email": User().email,
        ]
        CleverTap.sharedInstance()?.profilePush(profile)
    }
}


struct User {
    let email = "dk+deepak698@gmail.com"
}
