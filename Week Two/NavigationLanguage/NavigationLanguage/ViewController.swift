//
//  ViewController.swift
//  NavigationLanguage
//
//  Created by Raman Roy on 1/11/17.
//  Copyright © 2017 ramancom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        self.title = "Red"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        Utility.setNavigationBar(parent: self, title: "Main", leftTitle: "Left", rightTitle: "Right")
    }
    
    override func navLeftButtonTapped() {
        print("Left Tapped")
    }
    
    override func navRightButtonTapped() {
        print("Right Tapped")
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

