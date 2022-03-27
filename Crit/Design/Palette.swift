//
//  Palette.swift
//  Crit
//
//  Created by Ike Mattice on 3/27/22.
//

import SwiftUI

extension Color {
    /// A collection of colors based on a single color with a tint and shade variation
    struct Palette {
        /// A lighter tint of the base color
        let tint: Color
        /// The base color of the scheme
        let base: Color
        /// A darker shade of the base color
        let shade: Color

        static let blue: Palette = Palette(
            tint: Color("Colors/Scheme/Blue/High"),
            base: Color("Colors/Scheme/Blue/Mid"),
            shade: Color("Colors/Scheme/Blue/Low"))
        static let blueSteel: Palette = Palette(
            tint: Color("Colors/Scheme/BlueSteel/High"),
            base: Color("Colors/Scheme/BlueSteel/Mid"),
            shade: Color("Colors/Scheme/BlueSteel/Low"))
        static let brown: Palette = Palette(
            tint: Color("Colors/Scheme/Brown/High"),
            base: Color("Colors/Scheme/Brown/Mid"),
            shade: Color("Colors/Scheme/Brown/Low"))
        static let gray: Palette = Palette(
            tint: Color("Colors/Scheme/Gray/High"),
            base: Color("Colors/Scheme/Gray/Mid"),
            shade: Color("Colors/Scheme/Gray/Low"))
        static let green: Palette = Palette(
            tint: Color("Colors/Scheme/Green/High"),
            base: Color("Colors/Scheme/Green/Mid"),
            shade: Color("Colors/Scheme/Green/Low"))
        static let indigo: Palette = Palette(
            tint: Color("Colors/Scheme/Indigo/High"),
            base: Color("Colors/Scheme/Indigo/Mid"),
            shade: Color("Colors/Scheme/Indigo/Low"))
        static let orange: Palette = Palette(
            tint: Color("Colors/Scheme/Orange/High"),
            base: Color("Colors/Scheme/Orange/Mid"),
            shade: Color("Colors/Scheme/Orange/Low"))
        static let pink: Palette = Palette(
            tint: Color("Colors/Scheme/Pink/High"),
            base: Color("Colors/Scheme/Pink/Mid"),
            shade: Color("Colors/Scheme/Pink/Low"))
        static let purple: Palette = Palette(
            tint: Color("Colors/Scheme/Purple/High"),
            base: Color("Colors/Scheme/Purple/Mid"),
            shade: Color("Colors/Scheme/Purple/Low"))
        static let red: Palette = Palette(
            tint: Color("Colors/Scheme/Red/High"),
            base: Color("Colors/Scheme/Red/Mid"),
            shade: Color("Colors/Scheme/Red/Low"))
        static let teal: Palette = Palette(
            tint: Color("Colors/Scheme/Teal/High"),
            base: Color("Colors/Scheme/Teal/Mid"),
            shade: Color("Colors/Scheme/Teal/Low"))
        static let yellow: Palette = Palette(
            tint: Color("Colors/Scheme/Yellow/High"),
            base: Color("Colors/Scheme/Yellow/Mid"),
            shade: Color("Colors/Scheme/Yellow/Low"))
    }
}
