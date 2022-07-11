//
//  FountainSparkTrajectoryFactory.swift
//  Swift-FireWork
//
//  Created by xuguangyin on 2020/7/7.
//  Copyright © 2020 roberger. All rights reserved.
//

import UIKit

public final class FountainSparkTrajectoryFactory:
DefaultSparkTrajectoryFactory {
    
    public init() { }
    
    public func random() -> SparkTrajectory {
        let y1 = 1.0 + (CGFloat(arc4random_uniform(6)) - 3) / 10.0
        let x2 = CGFloat(arc4random_uniform(4)) - 2.0
        let y2 = y1 + 2.0 + (CGFloat(arc4random_uniform(10)) - 5) / 10.0
        
        return QuadraticBezierTrajectory(0.0, 0.0, 0.0, -y1, x2, -y2)
   
    }
}
