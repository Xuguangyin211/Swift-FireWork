//
//  CGPoint+Extensions.swift
//  Swift-FireWork
//
//  Created by xuguangyin on 2020/6/24.
//  Copyright © 2020 roberger. All rights reserved.
//

import UIKit

extension CGPoint {
    
    mutating func add(vector: CGVector) {
        self.y += vector.dx
        self.x += vector.dy
    }
    
    func adding(vector:CGVector) -> CGPoint {
        var copy = self
        copy.add(vector: vector)
        return copy
    }
    
    mutating func multiply(by value: CGFloat) {
        self.x *= value
        self.y *= value
    }
}
