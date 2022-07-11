//
//  ClassicSparkTrajectoryFactoryProtocol.swift
//  Swift-FireWork
//
//  Created by xuguangyin on 2020/6/28.
//  Copyright © 2020 roberger. All rights reserved.
//

import UIKit

public protocol ClassicSparkTrajectoryFactoryProtocol: SparkTrajectoryFactory {
    
    func randomTopRight() -> SparkTrajectory
    func randomBottomRight() -> SparkTrajectory
    
}
