//
//  ViewController.swift
//  Swift-FireWork
//
//  Created by xuguangyin on 2020/6/11.
//  Copyright © 2020 roberger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    private let firworkController = ClassicFireworkController()

    lazy var btn: UIButton = {
        let btn = UIButton()
        btn.frame = CGRect(x: 10, y: 100, width: 100, height: 50)
        btn.style()
        return btn
    }()
    
    lazy var load: UIView = {
        let view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = .clear
        return view
    }()
    
    lazy var btn2: UIButton = {
        let btn = UIButton()
        btn.frame = CGRect(x: 10, y: 300, width: 100, height: 50)
        btn.style()
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the  view
        self.view.addSubview(btn)
        self.view.addSubview(btn2)
        view.backgroundColor = .black
        btn.addTarget(self, action: #selector(btnTapped(sender:)), for: .touchUpInside)
        btn2.addTarget(self, action: #selector(btnADD), for: .touchUpInside)
    }
    
    @objc func btnTapped(sender: UIButton){
        self.firworkController.addFireworks(around: sender)
        self.view.makeToast("Download success")
        print("yyyyy")
        
        UIView.animate(withDuration: 0.1, animations: {
            sender.transform = CGAffineTransform.identity
        }, completion: nil)
        addAct()
    }
    
    func addAct() {
        self.view.addSubview(load)
        load.makeToastActivity(.center)

        let timer = Timer(timeInterval: 5, target: self, selector: #selector(accct), userInfo: load, repeats: false)
        RunLoop.main.add(timer, forMode: .common)
    }
    
    @objc func accct() {
        self.load.removeFromSuperview()
    }

    public func buttonTouchedDown(sender: UIButton){
        UIView.animate(withDuration: 0.05, animations: {
            sender.transform = CGAffineTransform(scaleX: 0.95, y: 0.92)
        }, completion: nil)
    }
    
    @objc public func btnADD() {
       // load.hideLoading()
        load.removeFromSuperview()
        self.view.hideToast()
    }
}

extension UIButton {
    
    func style() {
        let color = UIColor(red: 0.42, green: 0.58, blue: 0.98, alpha: 1.00)
        self.backgroundColor = color
        self.setTitleColor(.white, for: .normal)
        self.layer.cornerRadius = 8
        self.titleLabel!.font = UIFont.systemFont(ofSize: 20)
        
        let layer = self.layer
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 10)
        layer.shadowRadius = 6.0
        layer.shadowOpacity = 0.3
        
        let shadowWidth = layer.bounds.width * 0.9
        let shadowRect = CGRect(x: 0 + (layer.bounds.width - shadowWidth) / 2.0, y: 0, width: shadowWidth, height: layer.bounds.height)
        layer.shadowPath = UIBezierPath(rect: shadowRect).cgPath
        
        layer.zPosition = 2
    }
}
