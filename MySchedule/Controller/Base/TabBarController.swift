//
//  TabBarController.swift
//  ClassicWorkout
//
//  Created by Test on 08/07/22.
//

import UIKit

enum Tabs: Int, CaseIterable {
    case overview
    case session
    case progress
}

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configure()
        switchTo(tab: .overview)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func switchTo(tab: Tabs) {
        selectedIndex = tab.rawValue
    }
    
    private func configure() {
        tabBar.tintColor = R.Colors.active
        tabBar.barTintColor = R.Colors.inActive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = R.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let controller: [NavBarController] = Tabs.allCases.map { tab in
            let controller = NavBarController(rootViewController: getController(for: tab))
            controller.tabBarItem = UITabBarItem(title: R.Strings.TabBar.title(for: tab),
                                                 image: R.Images.TabBar.icon(for: tab),
                                                 tag: tab.rawValue)
            return controller
        }
        
        setViewControllers(controller, animated: false)
    }
    
    private func getController(for tab: Tabs) -> BaseController {
        switch tab {
        case .overview: return ScheduleVC()
        case .session: return TasksVC()
        case .progress: return ContactsVC()
        }
    }
}
