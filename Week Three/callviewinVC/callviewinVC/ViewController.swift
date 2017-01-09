//
//  ViewController.swift
//  callviewinVC
//
//  Created by BrainDigit on 10/24/16.
//  Copyright © 2016 braindigit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var testV:TestView!
    
    override func loadView() {
        super.loadView()
        
        testV                   = TestView(frame: self.view.bounds, anyCondition: true)
        testV.backgroundColor   = UIColor.red
        testV.errorTextLbl.text = "Zero Error"
        testV.errorImage.image  = UIImage(named: "ic_login_request")
        view.addSubview(testV)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        testV = TestView(frame: CGRect(x: 0, y: 50, width: self.view.frame.width, height: 300), anyCondition: true)
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

