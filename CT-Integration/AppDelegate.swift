//
//  AppDelegate.swift
//  CT-Integration
//
//  Created by Deepak Rajput on 22/03/20.
//  Copyright © 2020 Deepak Rajput. All rights reserved.
//

import UIKit
import CleverTapSDK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        CleverTap.autoIntegrate()
        return true
    }



}

