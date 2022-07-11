//
//  DuckFountainFirework.swift
//  Swift-FireWork
//
//  Created by xuguangyin on 2020/6/11.
//  Copyright © 2020 roberger. All rights reserved.
//

import UIKit

final class DuckFountainFirework: FountainFirework{
    
    override var sparkViewFactory:SparkViewFactory{
        return DuckSparkViewFactory()
    }
}
