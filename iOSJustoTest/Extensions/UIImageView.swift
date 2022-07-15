//
//  UIImageView.swift
//  iOSJustoTest
//
//  Created by Alan Muñoz on 15/07/22.
//

import UIKit

extension UIImageView {
    func makeRounded() {
        layer.borderWidth = 1.0
        layer.masksToBounds = false
        layer.borderColor = UIColor.white.cgColor
        layer.cornerRadius = self.frame.width  / 2
        clipsToBounds = true
    }
}
