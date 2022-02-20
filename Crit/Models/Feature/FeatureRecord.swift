//
//  FeatureRecord.swift
//  Crit
//
//  Created by Ike Mattice on 2/19/22.
//

import Foundation

import RealmSwift

/// An object representing static data for a specific feature
final class FeatureRecord: Object, Record, Codable {
    /// An identifier for the record
    @Persisted var id: UUID = UUID()
    /// A title for the feature
    @Persisted var title: String
    /// A description of the feature
    @Persisted var desc: String
    /// A level at which the feature is available, if any
    @Persisted var level: Int?
}
