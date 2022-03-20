//
//  Constant.swift
//  Crit
//
//  Created by Ike Mattice on 3/6/22.
//

import SwiftUI

/// A collection of static values used throughout the app
enum Constant {
    static let shadowRadius: CGFloat = 5

    /// A collection of values for configuring static frames
    enum Frame {
        static let cornerRadius: CGFloat = 8
        static let dashWidth: CGFloat = 15

        enum BorderWidth {
            static let small: CGFloat = 3
            static let medium: CGFloat = 5
        }
    }

    enum Padding {
        static let small: CGFloat = 4
    }
}
