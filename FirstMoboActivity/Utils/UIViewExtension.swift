//
//  UIViewExtension.swift
//  FirstMoboActivity
//
//  Created by Renato on 7/12/20.
//  Copyright © 2020 Stant. All rights reserved.
//

import UIKit

extension UIView {
    public static func identifier() -> String {
        return "\(String(describing: self.self))Identifier"
    }
    
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path   = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask   = CAShapeLayer()
        mask.path  = path.cgPath
        layer.mask = mask
    }
    
    func addSubviews(_ views: UIView...) {
        views.forEach{addSubview($0)}
    }
    
    func removeSubviews(_ views: UIView...) {
        views.forEach{ $0.removeFromSuperview() }
    }
    
    func removeSubviews() {
        for subview in self.subviews {
            subview.removeFromSuperview()
        }
    }
    
    public func removeAllConstraints() {
        var _superview = self.superview
        
        while let superview = _superview {
            for constraint in superview.constraints {
                if let first = constraint.firstItem as? UIView, first == self {
                    superview.removeConstraint(constraint)
                }
                
                if let second = constraint.secondItem as? UIView, second == self {
                    superview.removeConstraint(constraint)
                }
            }
            
            _superview = superview.superview
        }
        
        self.removeConstraints(self.constraints)
        self.translatesAutoresizingMaskIntoConstraints = true
    }
    
    func dropShadow(scale: Bool = true) {
        self.layer.masksToBounds = false
        self.layer.shadowColor   = UIColor.darkGray.cgColor
        self.layer.shadowOpacity = 0.1
        self.layer.shadowOffset  = CGSize(width: 0, height: 3)
        self.layer.shadowRadius  = 15
        
        self.layer.shadowPath         = UIBezierPath(rect: bounds).cgPath
        self.layer.shouldRasterize    = true
        self.layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
}

