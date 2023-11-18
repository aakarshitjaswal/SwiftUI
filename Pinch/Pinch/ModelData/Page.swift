//
//  Page.swift
//  Pinch
//
//  Created by aakarshit on 18/11/23.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
