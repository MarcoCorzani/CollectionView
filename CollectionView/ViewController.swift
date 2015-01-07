//
//  ViewController.swift
//  ollectionView
//
//  Created by Marco F.A. Corzani on 16.12.14.
//  Copyright (c) 2014 Alphaweb. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    var collectionView: UICollectionView?
    
    var textLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Grösse herausfinden!
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            var detectionSize:CGFloat = 0
            
            if self.interfaceOrientation == .Portrait{
                detectionSize = self.view.bounds.height
            }else {
                detectionSize = self.view.bounds.width
            }
            
            
            // Gerät nach der Höhe ermitteln
            //switch self.view.bounds.height {
            
            //So egal wie rum es gehalten wird!
            switch detectionSize {
                
            case 480://"Das ist ein IPhone 4"
                
                let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
                layout.sectionInset = UIEdgeInsets(top: 20, left: 11, bottom: 10, right: 11)
                layout.itemSize = CGSize(width: 65, height: 95)
                collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
                collectionView!.dataSource = self
                collectionView!.delegate = self
                collectionView!.registerClass(myCell.self, forCellWithReuseIdentifier: "myCell")
                collectionView!.backgroundColor = UIColor.whiteColor()
                self.view.addSubview(collectionView!)
                
            case 568://"Das ist ein IPhone 5"
                
                let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
                layout.sectionInset = UIEdgeInsets(top: 20, left: 11, bottom: 10, right: 11)
                layout.itemSize = CGSize(width: 65, height: 95)
                collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
                collectionView!.dataSource = self
                collectionView!.delegate = self
                collectionView!.registerClass(myCell.self, forCellWithReuseIdentifier: "myCell")
                collectionView!.backgroundColor = UIColor.whiteColor()
                self.view.addSubview(collectionView!)
        
            case 667: //"Das ist ein IPhone 6"
        
                let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
                layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
                layout.itemSize = CGSize(width: 80, height: 110)
                collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
                collectionView!.dataSource = self
                collectionView!.delegate = self
                collectionView!.registerClass(myCell.self, forCellWithReuseIdentifier: "myCell")
                collectionView!.backgroundColor = UIColor.whiteColor()
                self.view.addSubview(collectionView!)
                
            case 736: //"Das ist ein IPhone 6 Plus"
        
                let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
                layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
                layout.itemSize = CGSize(width: 90, height: 120)
                collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
                collectionView!.dataSource = self
                collectionView!.delegate = self
                collectionView!.registerClass(myCell.self, forCellWithReuseIdentifier: "myCell")
                collectionView!.backgroundColor = UIColor.whiteColor()
                self.view.addSubview(collectionView!)
                
                
                default:
                println("Das ist kein IPhone")
            }
            
        }

        
        
}
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 36
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("myCell", forIndexPath: indexPath) as myCell
        cell.backgroundColor = UIColor.whiteColor()
        
        cell.textLabel.text = "IPhone"
        cell.imageView.image = UIImage(named: "iphone.JPG")
        
        
        
        return cell
    }
    
    
    
    
}


