//
//  UIAlertControllerError.swift
//  MySchedule
//
//  Created by Test on 23/08/22.
//

import UIKit

extension UIAlertController {
    
    func negativeWidthConstraints() {
        
        for subview in self.view.subviews {
            for constraints in subview.constraints where constraints.debugDescription.contains("width == - 16") {
                subview.removeConstraint(constraints)
            }
        }
    }
}
