//
//  UIViewExtension.swift
//  iOSLocalizable
//
//  Created by ThinhLe on 3/1/20.
//  Copyright © 2020 ThinhLe. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    @IBInspectable
    var localizable: Bool {
        get {
            return self.localizable
        }
        
        set {
            guard newValue else { return }
            if let label = self as? UILabel {
                label.text = label.text?.localized()
            } else if let button = self as? UIButton {
                let title = button.titleLabel?.text?.localized()
                button.setTitle(title, for: .normal)
            } else if let textField = self as? UITextField {
                textField.text = textField.text?.localized()
                textField.placeholder = textField.placeholder?.localized()
            } else if let textView = self as? UITextView {
                textView.text = textView.text.localized()
            }
        }
    }
}
