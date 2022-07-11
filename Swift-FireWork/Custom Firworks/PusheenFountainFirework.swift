//
//  PusheenFountainFirework.swift
//  Swift-FireWork
//
//  Created by xuguangyin on 2020/6/11.
//  Copyright © 2020 roberger. All rights reserved.
//

import UIKit

final class PusheenFountainFirework:FountainFirework{
    
    override var sparkViewFactory: SparkViewFactory {
        return PusheenSparkViewFactory()
    }
}
