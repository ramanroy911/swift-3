//
//  TestView.swift
//  ActionAlert
//
//  Created by Raman Roy on 1/17/17.
//  Copyright © 2017 ramancom. All rights reserved.
//

import UIKit

class TestView: UIView {
    
    var btnMenu1:UIButton?
    
    var testLbl:UILabel?

    override init(frame:CGRect){
        super.init(frame: frame)
        
        btnMenu1                     = UIButton();
        btnMenu1!.titleLabel?.font   = UIFont.boldSystemFont(ofSize: 30)
        btnMenu1!.setTitle("Go To Second VC", for: UIControlState())
        btnMenu1!.setTitleColor(UIColor.black, for: UIControlState())
        btnMenu1!.backgroundColor    = UIColor.red
        self.addSubview(btnMenu1!)
        
        
        testLbl = UILabel()
        testLbl?.backgroundColor = UIColor.green
        testLbl?.text = "Test"
        self.addSubview(testLbl!)
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
        btnMenu1!.frame              = CGRect(x: 50, y: 200, width: self.frame.width - (2 * 50), height: 50)
        
        testLbl!.frame              = CGRect(x: 50, y: btnMenu1!.frame.origin.y + btnMenu1!.frame.height + 50, width: self.frame.width - (2 * 50), height: 50)
    }
}
