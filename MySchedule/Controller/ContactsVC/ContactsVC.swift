//
//  ContactsVC.swift
//  MySchedule
//
//  Created by Test on 20/08/22.
//

import UIKit

class ContactsVC: BaseController {

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
        
}

extension ContactsVC {
    
    override func setupView() {
        super.setupView()
        
    }
    
    override func layoutViews() {
        super.layoutViews()
        
        NSLayoutConstraint.activate([
          
        ])
    }
    
    override func configure() {
        super.configure()
        
        title = R.Strings.NavBar.progress
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .progress)
        
    }
}
