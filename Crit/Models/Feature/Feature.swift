//
//  Feature.swift
//  Crit
//
//  Created by Ike Mattice on 2/18/22.
//

import Foundation

import RealmSwift

/// Describes unique feature that will affect gameplay
struct Feature: Codable {
    /// A reference to the supporting feature
    let record: FeatureRecord
    /// The source of the feature
    var source: Source
}
