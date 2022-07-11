//
//  SparkTrajectoryFactory.swift
//  Swift-FireWork
//
//  Created by xuguangyin on 2020/6/24.
//  Copyright © 2020 roberger. All rights reserved.
//

import UIKit

public protocol SparkTrajectoryFactory { }

public  protocol DefaultSparkTrajectoryFactory: SparkTrajectoryFactory {
    
    func random() -> SparkTrajectory
}
