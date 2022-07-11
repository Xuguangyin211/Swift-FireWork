//
//  DuckSparkViewFactory.swift
//  Swift-FireWork
//
//  Created by xuguangyin on 2020/6/11.
//  Copyright © 2020 roberger. All rights reserved.
//

import UIKit

final class DuckSparkViewFactory: SparkViewFactory{
    
    func create(with data: SparkViewFactoryData) -> SparkView {
        guard let image = UIImage(named: "duck") else {
            fatalError("Couldn't find a duck!")
        }
        
        return ImageSparkView(image: image, size: data.size)
    }
}
