//
//  Source.swift
//  Crit
//
//  Created by Ike Mattice on 2/19/22.
//

/// Indicate where a specific object originated
enum Source: Codable {
    /// Indicates that the object originates from the race
    case race
    /// Indicates that the object originates from the subrace
    case subrace
    /// Indicates that the object originates from the class
    case `class`
    /// Indicates that the object originates from the subclass
    case subclass
    /// Indicates that the object originates from the background
    case background
}
