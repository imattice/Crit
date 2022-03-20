//
//  Color.swift
//  Crit
//
//  Created by Ike Mattice on 3/19/22.
//

import SwiftUI

extension Color {
    // MARK: Active
    static let activeBorder: Color = Color("Colors/Active/Border")
    static let activeSurface: Color = Color("Colors/Active/Surface")

    // MARK: Inactive
    static let inactiveSurface: Color = Color("Colors/Inactive/Surface")
    static let inactiveBorder: Color = Color("Colors/Inactive/Border")

    // MARK: Selectable
    static let selectableSurface: Color = Color("Colors/Selectable/Surface")
    static let selectableBorder: Color = Color("Colors/Selectable/Border")

    // MARK: Selected
    static let selectedSurface: Color = Color("Colors/Selected/Surface")
    static let selectedBorder: Color = Color("Colors/Selected/Border")

    // MARK: Section
    static let sectionSurface: Color = Color("Colors/Surface/Mid")

    // MARK: Subsection
    static let subsectionSurface: Color = Color("Colors/Surface/High")

    // MARK: Surface
    static let surfaceLow: Color = Color("Colors/Surface/Low")
    static let surfaceMid: Color = Color("Colors/Surface/Mid")
    static let surfaceHigh: Color = Color("Colors/Surface/High")

    // MARK: Text
    static let textDark: Color = Color("Colors/Text/Dark")
    static let textLight: Color = Color("Colors/Text/Light")
}
