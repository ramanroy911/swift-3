//
//  Util.swift
//  ModelExample
//
//  Created by BrainDigit on 11/22/16.
//  Copyright © 2016 braindigit. All rights reserved.
//

import UIKit

class Util: NSObject {
    //MARK: User Defaults
    
    class func saveDataToUserDefaults(data: AnyObject, key: String) {
        NSUserDefaults.standardUserDefaults().setObject(data, forKey: key)
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    
    
    class func getUserDefaults(key : String)->AnyObject? {
        return NSUserDefaults.standardUserDefaults().objectForKey(key)
    }
    
    class func removeUserData(key: String) {
        NSUserDefaults.standardUserDefaults().removeObjectForKey(key)
        NSUserDefaults.standardUserDefaults().synchronize()
    }
}
