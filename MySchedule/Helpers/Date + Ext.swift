//
//  Date + Ext.swift
//  ClassicWorkout
//
//  Created by Test on 16/07/22.
//

import Foundation

extension Date {
    
    private var calendar: Calendar {
        return Calendar.current
    }
    
    var startOfWeek: Date{
        let componets = calendar.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)
        guard let firstDay = calendar.date(from: componets) else { return self }
        return calendar.date(byAdding: .day, value: 1, to: firstDay) ?? self
    }
    
    func agoForword(to days: Int) -> Date {
        return calendar.date(byAdding: .day, value: days, to: self) ?? self
    }
    
    func stripTime() -> Date {
        let components = calendar.dateComponents([.year, .month, .day], from: self)
        return calendar.date(from: components) ?? self
    }
}
