//
//  Utils.swift
//  CT-Integration
//
//  Created by Deepak Rajput on 22/03/20.
//  Copyright © 2020 Deepak Rajput. All rights reserved.
//

import Foundation

 class Utils {
    
    class func utilBundle() -> Bundle? {
        return Bundle(for: Utils.self)
    }
    
    class func getUsers(_ name: String) -> Any? {
        guard let data = self.data(fromJSONFile: name) else {
            return nil
        }
        return String(data: data, encoding: .utf8)
    }
    
    class func data(fromJSONFile name: String) -> Data? {
        let bundle = self.utilBundle()
        let path = bundle?.path(forResource: name, ofType: nil)
        if path != nil {
            return NSData(contentsOfFile: path ?? "") as Data?
        }
        return nil
    }
    
    

}
