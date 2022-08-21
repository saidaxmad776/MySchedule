//
//  BaseView.swift
//  ClassicWorkout
//
//  Created by Test on 15/07/22.
//

import UIKit

class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        constraintsViews()
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

@objc extension BaseView {
    
    func setupViews() {}
    func constraintsViews() {}
    func configureAppearance() {
        backgroundColor = .white
    }
}
