//
//  FeatureRecord.swift
//  Crit
//
//  Created by Ike Mattice on 2/19/22.
//

import Foundation

/// Describes unique feature that will affect gameplay
struct Feature: Codable, Identifiable {
    /// An identifier for the feature
    let id: UUID = UUID()
    /// A title for the feature
    let title: String
    /// A description of the feature
    let desc: String
    /// A level at which the feature is available, if any
    let level: Int?
}

extension Feature {
    private enum CodingKeys: CodingKey {
        case title, desc, level
    }
}
