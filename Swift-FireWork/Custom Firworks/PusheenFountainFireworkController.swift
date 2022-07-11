//
//  PusheenFountainFireworkController.swift
//  Swift-FireWork
//
//  Created by xuguangyin on 2020/6/11.
//  Copyright © 2020 roberger. All rights reserved.
//

import UIKit

final class PusheenFountainFireworkController: FountainFireworkController{
    
    override func createFirework(at origin: CGPoint, sparkSize: CGSize, scale: CGFloat) -> Firework {
    return PusheenFountainFirework(origin: origin, sparkSize: sparkSize, scale: scale)
    }
}
