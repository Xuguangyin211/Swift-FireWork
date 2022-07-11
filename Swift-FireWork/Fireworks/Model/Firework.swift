//
//  Firework.swift
//  Swift-FireWork
//
//  Created by xuguangyin on 2020/6/24.
//  Copyright © 2020 roberger. All rights reserved.
//

import UIKit

public protocol Firework {
    
    var origin: CGPoint {get set}
    
    var scale: CGFloat {get set}
    
    var sparkSize: CGSize {get set}
    
    var trajectoryFactory: SparkTrajectoryFactory {get}
    
    var sparkViewFactory: SparkViewFactory {get}
    
    func sparkViewFactoryData(at index: Int) -> SparkViewFactoryData
    func sparkView(at index: Int) -> SparkView
    func trajectory(at index: Int) -> SparkTrajectory
    
}

extension Firework {

    /// Helper method that return spark view and corresponding trajectory.
    public func spark(at index: Int) -> FireworkSpark {
        return FireworkSpark(self.sparkView(at: index), self.trajectory(at: index))
    }
}
