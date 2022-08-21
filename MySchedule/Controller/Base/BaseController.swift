//
//  BaseController.swift
//  ClassicWorkout
//
//  Created by Test on 11/07/22.
//

import UIKit

enum NavBarPosition {
    case left
    case right
}

class BaseController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        layoutViews()
        configure()
        setDelegate()
    }
    
    
}

@objc extension BaseController {
    
    func setupView() {}
    
    func layoutViews() {}
    
    func setDelegate() {}
    
    func configure() {
        
        view.backgroundColor = R.Colors.background
    }
    
   
}

extension BaseController {
    
    func addNavBarButton(at position: NavBarPosition, with title: String) {
        
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(R.Colors.active, for: .normal)
        button.setTitleColor(R.Colors.inActive, for: .disabled)
        button.titleLabel?.font = R.Fonts.helvelticaRegular(with: 17)

    }
    
    func setTitleForNavBarButton(_ title: String, at position: NavBarPosition) {
        
        switch position {
        case .left:
            (navigationItem.leftBarButtonItem?.customView as?
             UIButton)?.setTitle(title, for: .normal)
        case .right:
            (navigationItem.rightBarButtonItem?.customView as?
             UIButton)?.setTitle(title, for: .normal)
        }
        
    }
}
