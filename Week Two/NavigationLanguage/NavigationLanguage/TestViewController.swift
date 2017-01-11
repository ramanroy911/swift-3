//
//  TestViewController.swift
//  NavigationLanguage
//
//  Created by Raman Roy on 1/11/17.
//  Copyright © 2017 ramancom. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.green
        self.title = "Test"
        
        //self.navigationController?.pushViewController(ViewController(), animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        Utility.setNavigationBar(parent: self, title: "Main1", leftTitle: "Left1", rightTitle: "Right1")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func navLeftButtonTapped() {
        print("Left1 Tapped")
    }
    
    override func navRightButtonTapped() {
        print("Right1 Tapped")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
