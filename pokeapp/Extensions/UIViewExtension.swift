//
//  UIViewExtension.swift
//  pokeapp
//
//  Created by Mateus Cerqueira on 02/12/19.
//  Copyright © 2019 Mateus Cerqueira. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func setGradientBackground(colorTopLeft: UIColor, colorBottomRight: UIColor) -> Void {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorTopLeft, colorBottomRight]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
