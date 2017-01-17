//
//  SecondViewController.swift
//  LocalNotification
//
//  Created by BrainDigit on 10/20/16.
//  Copyright © 2016 Braindigit. All rights reserved.
//

import UIKit

@objc protocol SecondViewControllerDelegate{
    @objc optional func Abc()
    
}

class SecondViewController: UIViewController {
    
    var btnMenu:UIButton?
    var delegate:SecondViewControllerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.yellow
        
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
        
        delegate?.Abc!()
        
        self.navigationController?.popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}
