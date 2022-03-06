//
//  Constant.swift
//  Crit
//
//  Created by Ike Mattice on 3/6/22.
//

import CoreGraphics

/// A collection of static values used throughout the app
enum Constant {

    /// A collection of values for configuring static frames
    enum Frame {
        case cornerRadius

        var value: CGFloat {
            switch self {
            case .cornerRadius:
                return 8
            }
        }
    }
}
