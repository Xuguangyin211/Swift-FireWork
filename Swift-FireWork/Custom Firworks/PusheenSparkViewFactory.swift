//
//  PusheenSparkViewFactory.swift
//  Swift-FireWork
//
//  Created by xuguangyin on 2020/6/11.
//  Copyright © 2020 roberger. All rights reserved.
//

import UIKit

final class PusheenSparkViewFactory: SparkViewFactory {
    
    func create(with data: SparkViewFactoryData) -> SparkView {
        let name = self.imageNames[data.index % self.imageNames.count]
        guard let image = UIImage(named: name) else {
            fatalError("Couldn't find a pusheen: c")
        }
        return ImageSparkView(image: image, size: data.size)
    }
    
    
    private lazy var imageNames: [String] = {
        var names = [String]()
        
        for i in 1...7 {
            names.append("pusheen - \(i)")
        }
        return names
    }()
    
}
