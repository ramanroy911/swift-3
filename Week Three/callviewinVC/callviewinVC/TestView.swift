//
//  testView.swift
//  callviewinVC
//
//  Created by BrainDigit on 10/24/16.
//  Copyright © 2016 braindigit. All rights reserved.
//

import UIKit

class TestView: UIView {

    var errorTextLbl    = UILabel()
    var errorImage      = UIImageView()
    
    convenience init(frame: CGRect, anyCondition:Bool) {
        self.init(frame: frame)
        
        //backgroundColor = UIColor.redColor()
        
        errorTextLbl.adjustsFontSizeToFitWidth  = true
        errorTextLbl.numberOfLines              = 0
        //errorTextLbl.font                       = UIFont.primaryRegularFontOfSize(15)
        errorTextLbl.textAlignment              = .center
        errorTextLbl.textColor                  = UIColor.black
        errorTextLbl.text                       = "test"
        errorTextLbl.backgroundColor            = UIColor.green
        addSubview(errorTextLbl)
        
        errorImage.backgroundColor              = UIColor.gray
        addSubview(errorImage)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let errorTextLblWidth:CGFloat   = self.frame.width
        let errorTextLblHeight:CGFloat  = 40
        
        let errorImageWidth:CGFloat     = 100
        let errorImageHeight:CGFloat    = 100
        
        
        let xOffset:CGFloat = 10
        var yOffset:CGFloat = self.frame.height - errorTextLblHeight - errorImageHeight
        
        errorTextLbl.frame = CGRect(x: xOffset, y: yOffset, width: errorTextLblWidth - (2 * xOffset), height: errorTextLblHeight)
        
        yOffset += self.errorTextLbl.frame.height + 5
        
        errorImage.frame = CGRect(x: xOffset, y: yOffset, width: errorImageWidth - (2 * xOffset), height: errorImageHeight)
        
        print("errorTextLbl Frame : \(errorTextLbl.frame)")
        print("errorImage Frame : \(errorImage.frame)")
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
