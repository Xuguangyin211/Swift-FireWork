//
//  FountainFirework.swift
//  Swift-FireWork
//
//  Created by xuguangyin on 2020/7/7.
//  Copyright © 2020 roberger. All rights reserved.
//

import UIKit


public class FountainFirework: Firework {
    
    public var origin: CGPoint
    public var scale: CGFloat
    public var sparkSize: CGSize
    
    public var maxChangeValue: Int {
        return 10
    }
    
    public var trajectoryFactory: SparkTrajectoryFactory {
        return FountainSparkTrajectoryFactory()
    }
    
    public var defaultTrajectoryFactory: DefaultSparkTrajectoryFactory{
        return self.trajectoryFactory as! DefaultSparkTrajectoryFactory
    }
    
    public var sparkViewFactory: SparkViewFactory {
        return CircleColorSparkViewFactory()
    }
    
    public init(origin: CGPoint, sparkSize: CGSize, scale: CGFloat) {
        self.origin = origin
        self.sparkSize = sparkSize
        self.scale = scale
    }
    
    public func sparkViewFactoryData(at index: Int) -> SparkViewFactoryData {
        return DefaultSparkViewFactoryData(size: self.sparkSize, index: index)
    }
    
    public func sparkView(at index: Int) -> SparkView {
        return self.sparkViewFactory.create(with: self.sparkViewFactoryData(at: index))
    }
    
    public func trajectory(at index: Int) -> SparkTrajectory {
        return self.defaultTrajectoryFactory.random().scale(by: self.scale).shift(to: self.origin)
    }
    
}
