//
//  myCell.swift
//  CollectionView
//
//  Created by Marco F.A. Corzani on 16.12.14.
//  Copyright (c) 2014 Alphaweb. All rights reserved.
//

import UIKit

class myCell: UICollectionViewCell {
    
    let textLabel: UILabel!
    let imageView: UIImageView!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height*4/5))
        imageView.contentMode = UIViewContentMode.ScaleAspectFit
        contentView.addSubview(imageView)
        //imageView.backgroundColor = UIColor.redColor()
        
        let textFrame = CGRect(x: 0, y: imageView.frame.size.height, width: frame.size.width, height: frame.size.height/5)
        textLabel = UILabel(frame: textFrame)
        textLabel.font = UIFont.systemFontOfSize(UIFont.smallSystemFontSize())
        textLabel.textAlignment = .Center
        contentView.addSubview(textLabel)
    }

    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }









}
