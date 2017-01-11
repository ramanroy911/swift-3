//
//  Utility.swift
//  NavigationLanguage
//
//  Created by Raman Roy on 1/11/17.
//  Copyright © 2017 ramancom. All rights reserved.
//

import UIKit

class Utility: NSObject {
    class func setNavigationBar(parent:UIViewController, title: String, leftTitle: String, rightTitle: String){
        self.setTitle(title: title, parent: parent)
        self.setupLeftButton(buttonIcon: leftTitle, parent: parent)
        self.setupRightButton(buttonIcon: rightTitle, parent: parent)
    }
    class func setTitle(title:String?, parent:UIViewController){
        guard let navTitle = title else {
            return
        }
        UINavigationBar.appearance().titleTextAttributes = [NSFontAttributeName: UIFont.systemFont(ofSize: 16), NSForegroundColorAttributeName : UIColor.blue]
        parent.navigationItem.title = navTitle
    }
    class func setupLeftButton(buttonIcon:String? = nil, parent:UIViewController){
        guard let icon = buttonIcon else{
            return
        }
        let btnMenu = UIButton();
        btnMenu.contentHorizontalAlignment = .left;
        btnMenu.frame = CGRect(x: 0, y: 0, width: 44, height: 44)
        btnMenu.setTitle(icon, for: .normal)
        btnMenu.setTitleColor(UIColor.blue, for: .normal)
        btnMenu.addTarget(parent, action: #selector(parent.navLeftButtonTapped), for: .touchUpInside)
        let leftBarButtonItem = UIBarButtonItem(customView: btnMenu)
        parent.navigationItem.leftBarButtonItem = leftBarButtonItem
        
//        let btnMenu1 = UIButton();
//        btnMenu1.contentHorizontalAlignment = .left;
//        btnMenu1.frame = CGRect(x: 0, y: 0, width: 44, height: 44)
//        btnMenu1.setTitle(icon, for: .normal)
//        btnMenu1.setTitleColor(UIColor.blue, for: .normal)
//        btnMenu1.addTarget(parent, action: #selector(parent.navSecondLeftButtonTapped), for: .touchUpInside)
//        let leftBarButtonItem1 = UIBarButtonItem(customView: btnMenu1)
//        parent.navigationItem.leftBarButtonItems = [leftBarButtonItem,leftBarButtonItem1]
    }
    class func setupRightButton(buttonIcon:String? = nil, parent:UIViewController){
        guard let icon = buttonIcon else{
            return
        }
        let btnMenu = UIButton();
        btnMenu.contentHorizontalAlignment = .right;
        btnMenu.frame = CGRect(x: 0, y: 0, width: 100, height: 44)
        btnMenu.setTitle(icon, for: .normal)
        btnMenu.setTitleColor(UIColor.blue, for: .normal)
        btnMenu.addTarget(parent, action: #selector(parent.navRightButtonTapped), for: .touchUpInside)
        let leftBarButtonItem = UIBarButtonItem(customView: btnMenu)
        parent.navigationItem.rightBarButtonItem = leftBarButtonItem
    }
}
extension UIViewController{
    func navRightButtonTapped(){ }
    func navLeftButtonTapped(){ }
    func navSecondLeftButtonTapped(){ }
   
}
