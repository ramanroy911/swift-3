//
//  ViewController.swift
//  ScrollView
//
//  Created by BrainDigit on 1/13/17.
//  Copyright © 2017 Braindigit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var scrollV = UIScrollView()
    
    var testView1 = UIView()
    
    var testView2 = UIView()
    
    override func loadView() {
        super.loadView()
        
        view.addSubview(scrollV)
        
        testView1.backgroundColor = UIColor.red
        scrollV.addSubview(testView1)
        
        testView2.backgroundColor = UIColor.green
        scrollV.addSubview(testView2)
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        scrollV.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        
        testView1.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        
        testView2.frame = CGRect(x: 0, y: testView1.frame.height, width: view.frame.width, height: view.frame.height)
        
        scrollV.contentSize = CGSize(width: view.frame.width, height: testView2.frame.origin.y + testView2.frame.height + 20)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

