//
//  SecondModel.swift
//  ModelExample
//
//  Created by BrainDigit on 11/17/16.
//  Copyright © 2016 braindigit. All rights reserved.
//

import UIKit
import SwiftyJSON

class SecondModel: NSObject {
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
   
    internal override var description: String {
        return "appUserID:\(self.appUserID), city:\(self.city), countryName:\(self.countryName), dob:\(self.dob), email:\(self.email), firstName:\(self.firstName), lastName:\(self.lastName)\n"
    }
    

}
