//
//  SubraceRecord.swift
//  Crit
//
//  Created by Ike Mattice on 2/18/22.
//

import Foundation

import RealmSwift

/// An object representing static data for a specific subrace
final class SubraceRecord: Record {
    /// A reference to the parent RaceRecord
    @Persisted var parentRecord: RaceRecord?
    /// A JSON  data representation of the collection of ability scores
    @Persisted private var abilityScoresJSON: String
    /// The name of the parent record
    @Persisted private var parentString: String
    /// The data representation of a collection of features
    @Persisted private var featuresJSON: String
    /// A collection of ability score modifiers that are added by the race
    var abilityScoreModifiers: [AbilityScoreModifier] {
        get { Array(jsonString: abilityScoresJSON) }
        set { abilityScoresJSON = newValue.toJSON() }
    }
    /// The gameplay features granted by this subrace
    var features: [Feature] {
        get { Array(jsonString: featuresJSON) }
        set { featuresJSON = newValue.toJSON() }
    }

    required convenience init(from decoder: Decoder) throws {
        self.init()

        let container: KeyedDecodingContainer = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.desc = try container.decode(String.self, forKey: .desc)
        self.parentString = try container.decode(String.self, forKey: .parent)
        self.abilityScoreModifiers = try container.decodeIfPresent([AbilityScoreModifier].self, forKey: .abilityScoreModifiers) ?? [AbilityScoreModifier]()
        self.features = try container.decodeIfPresent([Feature].self, forKey: .features) ?? [Feature]()
    }

    override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)

        var container: KeyedEncodingContainer = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(parentString, forKey: .parent)
        try container.encode(features, forKey: .features)
        try container.encode(abilityScoreModifiers, forKey: .abilityScoreModifiers)
    }
}

extension SubraceRecord {
    private enum CodingKeys: CodingKey {
        case name, desc, parent, abilityScoreModifiers, features
    }
}
