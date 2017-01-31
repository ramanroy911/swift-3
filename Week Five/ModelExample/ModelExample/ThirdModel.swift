//
//  ThirdModel.swift
//  ModelExample
//
//  Created by BrainDigit on 11/17/16.
//  Copyright © 2016 braindigit. All rights reserved.
//

import UIKit
import SwiftyJSON

class ThirdModel: NSObject {
    var appUserID       = ""
    var token           = ""
    var city            = ""
    var countryName     = ""
    var dob             = ""
    var email           = ""
    var firstName       = ""
    var lastName        = ""
    
    init(userData: JSON) {
        
        self.appUserID          = userData["appUserID"].stringValue
        self.token              = userData["token"].stringValue
        self.city               = userData["city"].stringValue
        self.countryName        = userData["countryName"].stringValue
        self.email              = userData["email"].stringValue
        self.firstName          = userData["firstName"].stringValue
        self.lastName           = userData["lastName"].stringValue
        
    }
    
    required init(coder aDecoder: NSCoder) {
        self.appUserID      = aDecoder.decodeObjectForKey("appUserID") as! String
        self.token          = aDecoder.decodeObjectForKey("token") as! String
        self.city           = aDecoder.decodeObjectForKey("city") as! String
        self.countryName    = aDecoder.decodeObjectForKey("countryName") as! String
        self.email          = aDecoder.decodeObjectForKey("email") as! String
        self.firstName      = aDecoder.decodeObjectForKey("firstName") as! String
        self.lastName       = aDecoder.decodeObjectForKey("lastName") as! String
        
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.appUserID, forKey: "appUserID")
        aCoder.encodeObject(self.token, forKey: "token")
        aCoder.encodeObject(self.city, forKey: "city")
        aCoder.encodeObject(self.countryName, forKey: "countryName")
        aCoder.encodeObject(self.email, forKey: "email")
        aCoder.encodeObject(self.firstName, forKey: "firstName")
        aCoder.encodeObject(self.lastName, forKey: "lastName")
    }
    
    
    internal override var description: String {
        return "appUserID:\(self.appUserID), city:\(self.city), countryName:\(self.countryName), dob:\(self.dob), email:\(self.email), firstName:\(self.firstName), lastName:\(self.lastName)\n"
    }
}
