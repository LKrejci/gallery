//
//  GalleryRequest.swift
//  Gallery
//
//  Created by Lucas Krejci Ferreira on 05/07/20.
//  Copyright © 2020 Lucas Krejci Ferreira. All rights reserved.
//

import Foundation
import Alamofire

class GalleryRequest {
    
    let url = "https://api.imgur.com/3/gallery/search/?q=cats"
    let headers = ["Authorization": "Client-ID 1ceddedc03a5d71"]
    
    func getCatImage() {
        AF.request(url, headers: ["Authorization": "Client-ID 1ceddedc03a5d71"]).responseJSON{ response in
            JSONDecoder
        }
    }
}
