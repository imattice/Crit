//
//  Constant.swift
//  Crit
//
//  Created by Ike Mattice on 3/6/22.
//

import SwiftUI

/// A collection of static values used throughout the app
enum Constant {
    /// A collection of values for configuring static frames
    enum Frame {
        static let cornerRadius: CGFloat = 8
        }

    enum AppColor {
        static let sectionBackground: Color = Color(uiColor: .systemGray3)
        static let subsectionBackground: Color = Color(uiColor: .systemGray4)
    }
}
