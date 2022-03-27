//
//  Color.swift
//  Crit
//
//  Created by Ike Mattice on 3/19/22.
//

import SwiftUI

extension Color {
    // MARK: Active
    static let activeSurface: Color = Color("Colors/Surface/High")
    static let activeBorder: Color = Color("Colors/Primary/High")

    // MARK: Inactive
    static let inactiveSurface: Color = Color("Colors/Grayscale/Top")
    static let inactiveBorder: Color = Color("Colors/Grayscale/Mid")

    // MARK: Selectable
    static let selectableSurface: Color = Color("Colors/Surface/High")
    static let selectableBorder: Color = Color("Colors/Secondary/High")

    // MARK: Selected
    static let selectedSurface: Color = Color("Colors/Surface/High")
    static let selectedBorder: Color = Color("Colors/Primary/High")

    // MARK: Section
    static let sectionSurface: Color = Color("Colors/Grayscale/Top")

    // MARK: Subsection
    static let subsectionSurface: Color = Color("Colors/Grayscale/Mid")

    // MARK: Surface
    static let surfaceLow: Color = Color("Colors/Surface/Low")
    static let surfaceMid: Color = Color("Colors/Surface/Mid")
    static let surfaceHigh: Color = Color("Colors/Surface/High")

    // MARK: Text
    static let textDark: Color = Color("Colors/Text/Primary")
    static let textLight: Color = Color("Colors/Text/Secondary")

    // MARK: Record Palette
    // Race/Subrace Record
    static let racePalette: Color.Palette = .red

    // Language
    static let languagePalette: Color.Palette = .yellow

    // Class/Subclass Record
    static let classPalette: Color.Palette = .teal

    // Background Record
    static let backgroundPalette: Color.Palette = .brown

    // Creature, Conditions, Disease, Rule, Record
    static let dmPalette: Color.Palette = .green

    // Feat Record
    static let featPalette: Color.Palette = .orange

    // Item, Armor, Pack, Poison, Shield, Tool, Trap, Weapon  Record
    static let itemPalette: Color.Palette = .blueSteel

    // Magic Item Record
    static let magicItemPalette: Color.Palette = .purple

    // Spell Record
    static let spellPalette: Color.Palette = .indigo
}
