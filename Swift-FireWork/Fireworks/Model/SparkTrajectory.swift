//
//  SparkTrajectory.swift
//  Swift-FireWork
//
//  Created by xuguangyin on 2020/6/24.
//  Copyright © 2020 roberger. All rights reserved.
//

import UIKit

public protocol SparkTrajectory {
    
    var points: [CGPoint] { get set }
    
    var path: UIBezierPath { get }
    
}

public extension SparkTrajectory {
    
    func scale(by value: CGFloat) -> SparkTrajectory {
        var copy = self
        (0..<self.points.count).forEach {copy.points[$0].multiply(by: value)}
        return copy
    }
    
    func flip() -> SparkTrajectory {
        var copy = self
        (0..<self.points.count).forEach {
            copy.points[$0].x *= -1 }
        return copy
    }
    
    func shift(to point: CGPoint) -> SparkTrajectory {
        var copy = self
        let vector = CGVector(dx: point.x, dy: point.y)
        (0..<self.points.count).forEach {
            copy.points[$0].add(vector: vector)
        }
        return copy
    }
}


public struct QuadraticBezierTrajectory: SparkTrajectory {
    
    public var points = [CGPoint]()
    public init(_ x0: CGFloat, _ y0: CGFloat, _ x1: CGFloat, _ y1: CGFloat, _ x2: CGFloat, _ y2: CGFloat) {
        self.points.append(CGPoint(x: x0, y: y0))
        self.points.append(CGPoint(x: x1, y: y1))
        self.points.append(CGPoint(x: x2, y: y2))
    }
    
    public var path: UIBezierPath {
        guard self.points.count == 3 else {
            fatalError("3 points required.")
        }
        
        let path = UIBezierPath()
        path.move(to: self.points[0])
        path.addQuadCurve(to: self.points[2], controlPoint: self.points[1])
        return path
    }
}

public struct CubicBezierTrajectory: SparkTrajectory{
    
    public var points = [CGPoint]()
    
    public init(_ x0: CGFloat, _ y0: CGFloat, _ x1: CGFloat, _ y1: CGFloat, _ x2: CGFloat, _ y2: CGFloat, _ x3: CGFloat, _ y3: CGFloat){
        
        self.points.append(CGPoint(x: x0, y: y0))
        self.points.append(CGPoint(x: x1, y: y1))
        self.points.append(CGPoint(x: x2, y: y2))
        self.points.append(CGPoint(x: x3, y: y3))
    }
    
    public var path: UIBezierPath {
        guard self.points.count == 4 else {
            fatalError("4 points required") }
        
        let path = UIBezierPath()
        path.move(to: self.points[0])
        path.addCurve(to: self.points[3], controlPoint1: self.points[1], controlPoint2: self.points[2])
        return path
    }
}
