//
//  Postits.swift
//  Postits
//
//  Created by Motoyuki Ito on 6/3/21.
//

import UIKit

struct Postits {
    
    var color: UIColor!
    var lastEditDate: Date!
    var text: String?
    var size: CGSize!
    
    internal init(color: UIColor? = nil, lastEditDate: Date? = nil, text: String? = nil, size: CGSize? = nil) {
        self.color = color
        self.lastEditDate = lastEditDate
        self.text = text
        self.size = size
    }
}
