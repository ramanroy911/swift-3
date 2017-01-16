//
//  SecondViewController.swift
//  LocalNotification
//
//  Created by BrainDigit on 10/20/16.
//  Copyright © 2016 Braindigit. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var btnMenu:UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.yellow

        btnMenu                     = UIButton();
        btnMenu!.frame              = CGRect(x: 0, y: 100, width: 250, height: 40)
        btnMenu!.tag                = 12
        btnMenu!.titleLabel?.font   = UIFont.boldSystemFont(ofSize: 30)
        btnMenu!.setTitle("Go To First", for: UIControlState())
        btnMenu!.setTitleColor(UIColor.black, for: UIControlState())
        btnMenu!.backgroundColor    = UIColor.red
        btnMenu!.addTarget(self, action: #selector(self.btnPressed(_:)), for: .touchUpInside)
        self.view.addSubview(btnMenu!)
        
    }
    
    func btnPressed(_ Sender:UIButton){
        
        print("Tag : \(Sender.tag)")
        
        let firstVC = ViewController()
        self.navigationController?.pushViewController(firstVC, animated: true)
    }
    
   
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.navigationController?.isNavigationBarHidden = false
        Utility.setupNavigationBar(self, navTitle: "test", condition: ["Showleft":1,"ShowRight":1],leftButtonIcon: "Left",rightButtonIcon: "Right")
        
        
    }
    
    override func navRightButtonTapped(){
        print("Right Pressed")
    }
    
    override func navLeftButtonTapped(){
        
        let data                                = ["data1":"RR"]
        let dataToPass:[AnyHashable: Any]   = ["data": data]
        
        NotificationCenter.default.post(name: Notification.Name(rawValue: mySpecialNotificationKey), object: self, userInfo: dataToPass)
        
        

        
        
        self.navigationController?.popViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
   

}
