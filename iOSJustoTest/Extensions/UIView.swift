//
//  UIView.swift
//  iOSJustoTest
//
//  Created by Alan Muñoz on 14/07/22.
//

import UIKit

enum ConstraintType {
    case top, leading, trailing, bottom, width, height
}

extension UIView {
    func addSubviewWithAutoLayout(_ subview: UIView) {
        subview.translatesAutoresizingMaskIntoConstraints = false
        addSubview(subview)
    }
    
}
