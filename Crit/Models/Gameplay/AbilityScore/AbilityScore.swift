//
//  AbilityScore.swift
//  Crit
//
//  Created by Ike Mattice on 2/21/22.
//

import Foundation

/// A score for a particular stat
struct AbilityScore: Hashable, Codable {
    /// The name of the ability score
    let name: Stat
    /// The value of the attribute after modifiers have been applied
    var value: Int
    /// The base value that is set when the Ability Score is created
    let rawValue: Int
    /// The value that is applied to rolls attributed to this Ability Score
    var modifier: Int { value / 2 - 5 }

    init(name: Stat, value: Int) {
        self.name = name
        self.value = value
        self.rawValue = value
    }
}
