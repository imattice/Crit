//
//  CreatureSize.swift
//  Crit
//
//  Created by Ike Mattice on 2/18/22.
//

/// Describes options for sizes of creatures
enum CreatureSize: Codable {
    /// A case for tiny sized creatures
    case tiny
    /// A case for small sized creatures
    case small
    /// A case for medium sized creatures
    case medium
    /// A case for large sized creatures
    case large
    /// A case for huge sized creatures
    case huge
    /// A case for gargantuan sized creatures
    case gargantuan

    /// A string representation of the enum
    var string: String {
        switch self {
        case .tiny:
            return "tiny"
        case .small:
            return "small"
        case .medium:
            return "medium"
        case .large:
            return "large"
        case .huge:
            return "huge"
        case .gargantuan:
            return "gargantuan"
        }
    }

    /// Non-fallible initializer from string
    /// Uses the `CreatureSize.medium` case as the default and logs an error
    init(_ size: String) {
        switch size {
        case "tiny":
            self = .tiny

        case "small":
            self = .small

        case "medium":
            self = .medium

        case "large":
            self = .large

        case "huge":
            self = .huge

        case "gargantuan":
            self = .gargantuan

        default:
            // TODO: Log error here
            self = .medium
        }
    }
}
