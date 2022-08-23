//
//  Resorces.swift
//  ClassicWorkout
//
//  Created by Test on 08/07/22.
//

import UIKit

enum R {
    enum Colors {
        static let active = UIColor(hexString: "#447BFE")
        static let inActive = UIColor(hexString: "#929DA5")
        static let separator = UIColor(hexString: "#9A999E")
        static let titleGray = UIColor(hexString: "#545C77")
        static let background = UIColor(hexString: "#F8F9F9")
        static let secondary = UIColor(hexString: "#F0F3FF")
    }
    
    enum Strings {
        enum TabBar {
            static func title(for tab: Tabs) -> String {
                switch tab {
                case .overview: return "Schedule"
                case .session: return "Tasks"
                case .progress: return "Contacts"
                }
            }
        }
        
        enum NavBar {
            static let overView = "Schedule"
            static let session = "Tasks"
            static let progress = "Contacts"
        }
        
        enum Session {
            static let navBarStart = "Start"
            static let navBarPause = "Pause"
            static let navBarFinish = "Finish"
            
            static let elapsedTime = "Elapsed Time"
            static let remainengTime = "Remaining Time"
        }
        
        enum Overview {
            static let allWorkoutsButton = "All Worouts"
        }
    }
    
    enum Images {
        enum TabBar {
            static func icon(for tab: Tabs) -> UIImage? {
                switch tab {
                case .overview: return UIImage(systemName: "calendar.badge.clock")
                case .session: return UIImage(systemName: "text.badge.checkmark")
                case .progress: return UIImage(systemName: "person.crop.circle.badge.plus")
                }
            }
        }
        enum Common {
            static let downArrov = UIImage(named: "downArrow")
            static let addButton = UIImage(named: "addButton")
        }
    }
    
    enum Fonts {
        static func helvelticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
    
}
