//
//  ViewController.swift
//  collectionView
//
//  Created by Raman Roy on 1/26/17.
//  Copyright © 2017 ramancom. All rights reserved.
//

import UIKit

class CollViewController: UIViewController {
    
    var collView: UICollectionView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let flowLayout:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        
        collView = UICollectionView(frame: view.frame, collectionViewLayout: flowLayout)
        collView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "collectionCell")
        collView?.delegate = self
        collView?.dataSource = self
        collView?.backgroundColor = .red
        self.view.addSubview(collView!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension CollViewController : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell:UICollectionViewCell=collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath as IndexPath) as UICollectionViewCell;
        
        cell.backgroundColor = .green
        return cell
    }

}

extension CollViewController : UICollectionViewDelegate{

}

extension CollViewController : UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        return CGSize(width: 50, height: 50)
//        if((indexPath.row + 10) % 2 == 0){
//            return CGSize(width: 50, height: 50)
//        }else{
//            return CGSize(width: 100, height: 100)
//        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets
    {
        return UIEdgeInsetsMake(5, 5, 5, 5) //top,left,bottom,right
    }
}




