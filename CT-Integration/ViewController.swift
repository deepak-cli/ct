//
//  ViewController.swift
//  CT-Integration
//
//  Created by Deepak Rajput on 22/03/20.
//  Copyright © 2020 Deepak Rajput. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        PushProfiles().pushUserProfiles()
    }

    @IBAction func buttonTapped(_ sender: Any) {
        let logger = AnalyticsLogger()
        let props : [String: Any] = [
            "Product ID" : 1,
            "Product Image" : "https://d35fo82fjcw0y8.cloudfront.net/2018/07/26020307/customer-success-clevertap.jpg",
            "Product Name" : "CleverTap"
        ]
        logger.log(event: .productViewed, properties: props)
        
        logger.updateUserInfo()
    }
    
}

