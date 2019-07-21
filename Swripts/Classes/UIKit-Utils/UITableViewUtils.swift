//
//  UITableViewUtils.swift
//  Swripts
//
//  Created by June Albert Alberto on 18/07/2019.
//
import UIKit

public extension UITableView {
    // Empty Message View
    func presentMessage(text: String,
                        fontStyle: UIFont.TextStyle,
                        textColor: UIColor = .darkGray,
                        backgroundColor: UIColor = .clear) {
        let label = UILabel(frame: CGRect(origin: .zero, size: bounds.size))
        
        label.font = UIFont.preferredFont(forTextStyle: fontStyle)
        label.textAlignment = .center
        label.numberOfLines = 99
        label.textColor = .darkGray
        label.text = text
        
        isScrollEnabled = false
        backgroundView = label
    }
    
    func removeMessage() {
        isScrollEnabled = true
        backgroundView = nil
    }

    // Determine if a given IndexPath is correct or not
    func isValidIndexPath(_ indexPath: IndexPath) -> Bool {
        if indexPath.section >= 0 && indexPath.row >= 0 {
            return indexPath.section < numberOfSections && indexPath.row < numberOfRows(inSection: indexPath.section)
        }
        return false
    }

    // Safety scroll in a given IndexPath to limit the crashing issue
    func scrollToIndexPath(_ indexPath: IndexPath, position: UITableView.ScrollPosition = .middle, animated: Bool = true) {
        if isValidIndexPath(indexPath) {
            scrollToRow(at: indexPath, at: position, animated: animated)
        }
    }

    // Scroll in a first position
    func scrollToTop(animated: Bool = true) {
        setContentOffset(.zero, animated: animated)
    }
    
    // Scroll in a last position
    func scrollToBottom(animated: Bool = true) {
        setContentOffset(CGPoint(x: 0, y: contentSize.height), animated: animated)
    }
}
