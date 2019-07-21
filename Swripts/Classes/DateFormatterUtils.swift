//
//  DateFormatterUtils.swift
//  Swripts
//
//  Created by June Albert Alberto on 19/07/2019.
//

public extension DateFormatter {
    private static let longFormat = DateFormatter.formatStyles(dateStyle: .long, timeStyle: .short)
    private static let fullFormat = DateFormatter.formatStyles(dateStyle: .full, timeStyle: .short)
    private static let fullDate = DateFormatter.formatStyles(dateStyle: .full, timeStyle: .none)
    private static let longDate = DateFormatter.formatStyles(dateStyle: .long, timeStyle: .none)
    private static let shortDate = DateFormatter.formatStyles(dateStyle: .short, timeStyle: .none)
    private static let longTime = DateFormatter.formatStyles(dateStyle: .none, timeStyle: .medium)
    private static let shortTime = DateFormatter.formatStyles(dateStyle: .none, timeStyle: .short)
    
    private class func formatStyles(dateStyle: DateFormatter.Style, timeStyle: DateFormatter.Style) -> DateFormatter {
        let formatter = DateFormatter()
        
        formatter.dateStyle = dateStyle
        formatter.timeStyle = timeStyle
        
        return formatter
    }
    
    class func toLongFormat(_ date: Date!) -> String {
        return longFormat.string(from: date)
    }
    
    class func toFullFormat(_ date: Date!) -> String {
        return fullFormat.string(from: date)
    }
    
    class func toFullDate(_ date: Date!) -> String {
        return fullDate.string(from: date)
    }
    
    class func toLongDate(_ date: Date!) -> String {
        return longDate.string(from: date)
    }
    
    class func toShortDate(_ date: Date!) -> String {
        return shortDate.string(from: date)
    }
    
    class func toLongTime(_ date: Date!) -> String {
        return longTime.string(from: date)
    }
    
    class func toShortTime(_ date: Date!) -> String {
        return shortTime.string(from: date)
    }
}
