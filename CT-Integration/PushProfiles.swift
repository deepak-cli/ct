
import Foundation

class PushProfiles {
    
    func pushUserProfiles() {
        if let fetchProfiles = Utils.getUsers("Test Data Upload - Sheet1.csv") as? String {
            let rows = fetchProfiles.components(separatedBy: "\n")
            var userKeys: [String] = []
            if  rows.count > 0 {
                userKeys = rows[0].components(separatedBy: ",")
                for index in 1 ..< rows.count {
                    let row = rows[index]
                    let rowComponents = row.components(separatedBy: ",")
                    if userKeys.count <= rowComponents.count {
                        var userProperty: [String: Any] = [:]
                        for userKeyIndex in 0 ..< userKeys.count {
                            let propKey = userKeys[userKeyIndex]
                            let propValue = rowComponents[userKeyIndex]
                            userProperty[propKey] = propValue
                            mockPostProfile(properties: userProperty)
                        }
                    }
                }
            }
        }
    }
    
    
    func mockPostProfile(properties: [String: Any]) {
        print("properties to push: ", properties)
    }
    
}
