//
//  StringExtension.swift
//  iOSLocalizable
//
//  Created by ThinhLe on 3/1/20.
//  Copyright © 2020 ThinhLe. All rights reserved.
//

import Foundation

extension String {
    func localized() -> String {
        return Bundle.main.localizedString(forKey: self, value: self, table: nil)
    }
}
