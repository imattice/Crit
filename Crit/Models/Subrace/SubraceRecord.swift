//
//  SubraceRecord.swift
//  Crit
//
//  Created by Ike Mattice on 2/18/22.
//

import Foundation

import RealmSwift

/// An object representing static data for a specific subrace
final class SubraceRecord: Object, Record, Codable {
    /// An identifier for the record
    @Persisted var id: UUID = UUID()
    /// A name of the record
    @Persisted var name: String
    /// The combination of the parent race and the subrace names
    @Persisted var label: String
    /// A description of the record
    @Persisted var desc: String
    /// A reference to the parent RaceRecord
    @Persisted var parent: RaceRecord
    /// The gameplay features granted by this race
    @Persisted var features: List<FeatureRecord>
}
