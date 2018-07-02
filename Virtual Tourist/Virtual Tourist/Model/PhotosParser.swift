//
//  PhotosParser.swift
//  Virtual Tourist
//
//  Created by Laya Iyer on 4/3/18.
//  Copyright © 2018 Udacity. All rights reserved.
//

import Foundation

struct PhotosParser: Codable {
    let photos: Photos
}

struct Photos: Codable {
    let pages: Int
    let photo: [PhotoParser]
}

struct PhotoParser: Codable {
    
    let url: String?
    let title: String
    
    enum CodingKeys: String, CodingKey {
        case url = "url_n"
        case title
    }
}
