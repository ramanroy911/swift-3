//
//  ViewController.swift
//  NavigationBar
//
//  Created by BrainDigit on 10/18/16.
//  Copyright © 2016 braindigit. All rights reserved.
//

import UIKit

class Utility: NSObject {
    
    class func saveDataToUserDefaults(data: AnyObject, key: String) {
        UserDefaults.standard.set(data, forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    
    
    class func getUserDefaults(key : String)->AnyObject? {
        return UserDefaults.standard.object(forKey: key) as AnyObject?
    }
    
    class func removeUserData(key: String) {
        UserDefaults.standard.removeObject(forKey: key)
        UserDefaults.standard.synchronize()
    }

    

    class func setupNavigationBar(_ parent:UIViewController, navTitle:String?, condition:[String:Int], leftButtonIcon:String? = nil, rightButtonIcon:String? = nil){
        Utility.setTitle(navTitle, parent: parent)
        if let Showleft = condition["Showleft"]{
            if(Showleft == 1){
                Utility.setupLeftButton(leftButtonIcon, parent: parent)
            }
        }
        if let ShowRight = condition["ShowRight"]{
            if(ShowRight == 1){
                Utility.setupRightButton(rightButtonIcon, parent: parent)
            }
        }
        
    }
    
    class func setTitle(_ title:String?, parent:UIViewController){
        guard let navTitle = title else {
            return
        }

        UINavigationBar.appearance().titleTextAttributes = [NSFontAttributeName: UIFont.boldSystemFont(ofSize: 16)]
        parent.navigationItem.title = navTitle
    }
    
    class func setupLeftButton(_ buttonIcon:String? = nil, parent:UIViewController){
        
        guard let icon = buttonIcon else{
            return
        }
        
       
        
        let btnMenu = UIButton();
        btnMenu.frame = CGRect(x: 0, y: 0, width: 60, height: 30)
        btnMenu.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        btnMenu.setTitle(icon, for: UIControlState())
        btnMenu.setTitleColor(UIColor.black, for: UIControlState())
        btnMenu.addTarget(parent, action: #selector(parent.navLeftButtonTapped), for: .touchUpInside)
        let leftBarButtonItem = UIBarButtonItem(customView: btnMenu)
        parent.navigationItem.leftBarButtonItem = leftBarButtonItem
        
        
    }
    
    class func setupRightButton(_ buttonIcon:String? = nil, parent:UIViewController){
        
        guard let icon = buttonIcon else{
            return
        }
        
        let btnMenu = UIButton();
        btnMenu.frame = CGRect(x: 0, y: 0, width: 60, height: 30)
        //btnMenu.titleLabel?.font = UIFont.mrewardsIconFontOfSize(30)
        btnMenu.setTitle(icon, for: UIControlState())
        btnMenu.setTitleColor(UIColor.black, for: UIControlState())
        btnMenu.addTarget(parent, action: #selector(parent.navRightButtonTapped), for: .touchUpInside)
        let rightBarButtonItem = UIBarButtonItem(customView: btnMenu)
        parent.navigationItem.rightBarButtonItem = rightBarButtonItem
        
        
    }
    
    
    
}

extension UIViewController{
    
    func navRightButtonTapped(){ }
    
    func navLeftButtonTapped(){ }
}

