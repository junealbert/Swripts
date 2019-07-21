//
//  DateUtils.swift
//  Swripts
//
//  Created by June Albert Alberto on 19/07/2019.
//

public extension Date {
    var toLongFormat : String {
        return DateFormatter.toLongFormat(self)
    }
    
    var toFullFormat : String {
        return DateFormatter.toFullFormat(self)
    }
    
    var toFullDate : String {
        return DateFormatter.toFullDate(self)
    }
    
    var toLongDate : String {
        return DateFormatter.toLongDate(self)
    }
    
    var toShortDate : String {
        return DateFormatter.toShortDate(self)
    }
    
    var toLongTime : String {
        return DateFormatter.toLongTime(self)
    }
    
    var toShortTime : String {
        return DateFormatter.toShortTime(self)
    }
}
