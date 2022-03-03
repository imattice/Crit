//
//  Stat.swift
//  Crit
//
//  Created by Ike Mattice on 2/21/22.
//

import Foundation

/// Contains all valid options for Ability Scores
enum Stat: String, CaseIterable, CodingKey, Codable {
    /// A case for the Strength ability score
    case str
    /// A case for the Constitution ability score
    case con
    /// A case for the Dexterity ability score
    case dex
    /// A case for the Charisma ability score
    case cha
    /// A case for the Wisdom ability score
    case wis
    /// A case for the Intelligence ability score
    case int

    /// Used to determine if the label name of the Ability Score should be long or short
    enum Length {
        case short
        case long
    }

    /// Returns a lowercased string for the name of the Ability Score
    func label(_ length: Length = .short) -> String {
        switch length {
        case .short:
            return self.rawValue

        case .long:
            switch self {
            case .str:
                return "strength"
            case .con:
                return "constitution"
            case .dex:
                return "dexterity"
            case .cha:
                return "charisma"
            case .wis:
                return "wisdom"
            case .int:
                return "intelligence"
            }
        }
    }
}
