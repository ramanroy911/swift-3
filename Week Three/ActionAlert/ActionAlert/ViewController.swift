//
//  ViewController.swift
//  ActionAlert
//
//  Created by Raman Roy on 1/17/17.
//  Copyright © 2017 ramancom. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {
    
    var testV = TestView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        testV.frame = view.bounds
        view.addSubview(testV)
        
        testV.btnMenu1!.addTarget(self, action: #selector(ViewController.btnPressed1(_:)), for: .touchUpInside)
        
        testV.testLbl?.isUserInteractionEnabled = true
        //let tapGesture = UITapGestureRecognizer(target: self, action: Selector(("tapBlurButton")))
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tapBlurButton(_:)))
        testV.testLbl?.addGestureRecognizer(tapGesture)
        
    }
    
    func tapBlurButton(_ sender: UITapGestureRecognizer) {
        print("Please Help!")
    }

    
    func btnPressed(_ button: UIButton){
        let optionMenu = UIAlertController(title: nil, message: "Choose Option", preferredStyle: .actionSheet)
        
        let deleteAction = UIAlertAction(title: "Delete", style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("File Deleted")
        })
        let saveAction = UIAlertAction(title: "Save", style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("File Saved")
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: {
            (alert: UIAlertAction!) -> Void in
            print("Cancelled")
        })
        
        
        optionMenu.addAction(deleteAction)
        optionMenu.addAction(saveAction)
        optionMenu.addAction(cancelAction)
        
        
        self.present(optionMenu, animated: true, completion: nil)
    }
    
    func btnPressed1(_ button: UIButton){
        let optionMenu = UIAlertController(title: nil, message: "Choose Option", preferredStyle: .alert)
        
        let deleteAction = UIAlertAction(title: "Delete", style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("File Deleted")
        })
        let saveAction = UIAlertAction(title: "Save", style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("File Saved")
        })
        
//        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: {
//            (alert: UIAlertAction!) -> Void in
//            print("Cancelled")
//        })
        
        
        optionMenu.addAction(deleteAction)
        optionMenu.addAction(saveAction)
        //optionMenu.addAction(cancelAction)
        
        
        self.present(optionMenu, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

