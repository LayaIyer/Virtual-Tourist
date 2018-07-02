//
//  PhotoCell.swift
//  Virtual Tourist
//
//  Created by Laya Iyer on 4/3/18.
//  Copyright © 2018 Udacity. All rights reserved.
//

import UIKit

class PhotoCell: UICollectionViewCell {
    static let identifier = "PhotoCell"
    
    var  imageUrl: String = ""
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
}
