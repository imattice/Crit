//
//  RaceRecord.swift
//  Crit
//
//  Created by Ike Mattice on 2/19/22.
//

import Foundation

import RealmSwift

/// An object representing static data for a specific race
final class RaceRecord: Object, Record, Codable, Identifiable {
    /// An identifier for the record
    @Persisted var id: UUID = UUID()
    /// A name for the record
    @Persisted var name: String
    /// A description of the record
    @Persisted var desc: String
    /// A collection of senses available to the race
    @Persisted var senses: List<SenseRecord>
    /// Describes some context around the race's age
    @Persisted var descriptiveAge: String
    /// Describes some context around the race's alignment
    @Persisted var descriptiveAlignment: String
    /// Describes some context around the race's physique
    @Persisted var descriptivePhysique: String
    /// The string representation of the size property
    @Persisted private var sizeString: String
    /// Describes the size of the creature
    var size: CreatureSize {
        get { CreatureSize(sizeString) }
        set { sizeString = newValue.string }
    }
    /// The number of feet the creature can travel in 6 seconds
    @Persisted var speed: Int
    /// The languages that are natively known by this race
    @Persisted var languages: List<LanguageRecord>
    /// The gameplay features granted by this race
    @Persisted var features: List<FeatureRecord>
    /// The subrace records available for this race
    @Persisted var subraces: List<SubraceRecord>
}
