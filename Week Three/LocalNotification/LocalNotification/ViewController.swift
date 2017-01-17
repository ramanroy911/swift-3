//
//  ViewController.swift
//  LocalNotification
//
//  Created by Raman on 12/25/14.
//  Copyright (c) 2014 Braindigit. All rights reserved.
//

import UIKit
let mySpecialNotificationKey = "com.andrewcbancroft.specialNotificationKey"
class ViewController: UIViewController {
    
   
    var btnMenu1:UIButton?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        Utility.saveDataToUserDefaults(data: "Test Data" as AnyObject, key: "SWIFT3")
        
       
        
        btnMenu1                     = UIButton();
        btnMenu1!.frame              = CGRect(x: 50, y: 200, width: view.frame.width - (2 * 50), height: 50)
        btnMenu1!.titleLabel?.font   = UIFont.boldSystemFont(ofSize: 30)
        btnMenu1!.setTitle("Go To Second VC", for: UIControlState())
        btnMenu1!.setTitleColor(UIColor.black, for: UIControlState())
        btnMenu1!.backgroundColor    = UIColor.red
        btnMenu1!.addTarget(self, action: #selector(self.secondBtnPressed), for: .touchUpInside)
        self.view.addSubview(btnMenu1!)
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.updateNotificationSentLabel), name: NSNotification.Name(rawValue: mySpecialNotificationKey), object: nil)

        self.navigationController?.isNavigationBarHidden = false
        Utility.setupNavigationBar(self, navTitle: "test", condition: ["Showleft":1,"ShowRight":1],leftButtonIcon: "Left",rightButtonIcon: "Right")
        
        

    }
    
   
    
    func secondBtnPressed(){
         print("Second Button Pressed")
        let secondVC = SecondViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    func updateNotificationSentLabel(_ notification:Notification) {
        print("Notification sent!")
        
        let eventData = notification.userInfo!["data"] as! [String:String]
        
        
        Utility.setupNavigationBar(self, navTitle: "test", condition: ["Showleft":1,"ShowRight":1],leftButtonIcon: eventData["data1"],rightButtonIcon: "Right")
        
    }
    
   
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
    }
    
    override func navRightButtonTapped(){
        print("Right Pressed")
    }
    
    override func navLeftButtonTapped(){
        print("Left Pressed")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

