//
//  UIViewController.swift
//  Swripts
//
//  Created by June Albert Alberto on 18/07/2019.
//

import UIKit

public extension UIViewController {
    // Helper to Present Popover Controller
    func presentPopover(_ popover: UIViewController, source: AnyObject, animated: Bool = true, delegate: UIPopoverPresentationControllerDelegate? = nil, completion: (() -> Void)? = nil) {
        popover.modalPresentationStyle = .popover
        
        // Make sure preffered width and height are assign
        if (popover.preferredContentSize == CGSize.zero) {
            popover.preferredContentSize = popover.view.frame.size
        }
        
        if let presentation = popover.popoverPresentationController {
            presentation.permittedArrowDirections = UIPopoverArrowDirection.any
            presentation.backgroundColor = popover.view.backgroundColor
            presentation.sourceView = view
            presentation.delegate = delegate
            
            if source is UIBarButtonItem {
                let targetView = source.value(forKey: "view") as? UIView
                presentation.permittedArrowDirections = UIPopoverArrowDirection.up
                presentation.sourceRect = targetView?.bounds ?? CGRect(origin: .zero, size: .zero)
                presentation.sourceView = targetView
            }
            else {
                let targetView = source as? UIView
                presentation.sourceRect = targetView?.bounds ?? CGRect(origin: .zero, size: .zero)
                presentation.sourceView = targetView
            }
        }
        present(popover, animated: animated, completion: completion)
    }
    
    // Helper to Present Modal Controller
    func presentModal(_ modal: UIViewController, animated: Bool = true, transitionStyle: UIModalTransitionStyle = .crossDissolve, delegate: UIPopoverPresentationControllerDelegate? = nil, completion: (() -> Void)? = nil) {
        modal.modalPresentationStyle = .overCurrentContext
        modal.modalTransitionStyle = transitionStyle
        
        // Make sure preffered width and height are assign
        if (modal.preferredContentSize == CGSize.zero) {
            modal.preferredContentSize = modal.view.frame.size
        }
        
        if let presentation = modal.popoverPresentationController {
            presentation.backgroundColor = modal.view.backgroundColor
            presentation.backgroundColor = .white
            presentation.delegate = delegate
        }
        
        present(modal, animated: animated, completion: completion)
    }
}
