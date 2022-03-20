//
//  FrameViewModel.swift
//  Crit
//
//  Created by Ike Mattice on 3/6/22.
//

import SwiftUI

/// Contains variables to configure a frame
struct FrameViewModel {
    /// The color of the frame
    let color: Color
    /// The width of the frame stroke
    let width: CGFloat
    /// The length of a dash segment, if any
    let dashLength: CGFloat?

    init(
        color: Color,
        width: CGFloat,
        dashLength: CGFloat? = nil) {
            self.color = color
            self.width = width
            self.dashLength = dashLength
        }
}
