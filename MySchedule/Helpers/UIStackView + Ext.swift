//
//  UIStackView + Ext.swift
//  MySchedule
//
//  Created by Test on 21/08/22.
//

import UIKit

extension UIStackView {
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat, distributiom: UIStackView.Distribution) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = axis
        self.spacing = spacing
        self.distribution = distributiom
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
