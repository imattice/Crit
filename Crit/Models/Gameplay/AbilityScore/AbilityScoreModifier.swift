////
//  AbilityScoreModifier.swift
//  Crit
//
//  Created by Ike Mattice on 2/21/22.
//

import Foundation

/// A Modifier that affects ability scores
struct AbilityScoreModifier: Identifiable, Codable {
    /// An id for the modifier
    let id: UUID = UUID()
    /// The score to be adjusted
    let stat: Stat
    /// The amount the score should be affected
    let value: Int
}

extension AbilityScoreModifier {
    private enum CodingKeys: CodingKey {
        case stat, value
    }
}
