//
//  ImageSparkViewFactory.swift
//  Swift-FireWork
//
//  Created by xuguangyin on 2020/6/28.
//  Copyright © 2020 roberger. All rights reserved.
//

import UIKit

public struct ImageSparkViewFactoryData: SparkViewFactoryData {
    
    public let image: UIImage
    public let size: CGSize
    public let index: Int
}

public struct ImageSparkViewFactory: SparkViewFactory {
    
    public func create(with data: SparkViewFactoryData) -> SparkView {
        guard let data = data as? ImageSparkViewFactoryData else {
            fatalError("wrong data.")
        }
        
        return ImageSparkView(image: data.image, size: data.size)
    }
}
