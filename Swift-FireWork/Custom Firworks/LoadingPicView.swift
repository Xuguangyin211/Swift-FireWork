//
//  LoadingPicView.swift
//  Swift-FireWork
//
//  Created by xuguangyin on 2021/12/13.
//  Copyright © 2021 roberger. All rights reserved.
//

import Foundation
import UIKit

class LoadingPicView: UIView {

    required init?(coder: NSCoder) {
        fatalError()
    }
    
    deinit {
        print("LoadingPicView deinit!")
    }
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        let contentView = UIView()
        contentView.layer.cornerRadius = 10
        contentView.backgroundColor = .orange
        addSubview(contentView)
        
        let activity = UIActivityIndicatorView(style:.large)
        contentView.addSubview(activity)
        
        if !frame.isEmpty {
            activity.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
            activity.backgroundColor = .yellow
        } else {
            activity.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
            activity.backgroundColor = .clear
        }
        activity.startAnimating()
    }

}

extension UIView {
    func showLoading(_ message: String = "") {
        if let lastView = subviews.last as? LoadingPicView {
            lastView.removeFromSuperview()
        }

        let loadingView = LoadingPicView(frame: self.frame)
        addSubview(loadingView)
        
    }
    
    func hideLoading() {
        for item in subviews {
            if item.isKind(of: LoadingPicView.self) {
                item.removeFromSuperview()
            }
        }
    }
}
