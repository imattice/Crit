//
//  RaceRecord.swift
//  Crit
//
//  Created by Ike Mattice on 2/19/22.
//

import Foundation

import Realm
import RealmSwift

/// An object representing static data for a specific race
final class RaceRecord: Record {
    /// Describes some context around the race's age
    @Persisted var descriptiveAge: String
    /// Describes some context around the race's alignment
    @Persisted var descriptiveAlignment: String
    /// Describes some context around the race's physique
    @Persisted var descriptivePhysique: String
    /// The number of feet the creature can travel in 6 seconds
    @Persisted var speed: Int
    /// The subrace records available for this race
    @Persisted var subraces: List<SubraceRecord>
    /// The string representation of the size property
    @Persisted private var sizeString: String
    /// A JSON data representation of the collection of senses
    @Persisted private var sensesJSON: String
    /// A JSON  data representation of the collection of languages
    @Persisted private var languagesJSON: String
    /// A JSON  data representation of the collection of ability scores
    @Persisted private var abilityScoresJSON: String
    /// A data representation of the collection of features
    @Persisted private var featuresJSON: String
    /// The gameplay features granted by this race
    var features: [Feature] {
        get { Array(jsonString: featuresJSON) }
        set { featuresJSON = newValue.toJSON() }
    }
    /// A collection of ability score modifiers that are added by the race
    var abilityScoreModifiers: [AbilityScoreModifier] {
        get { Array(jsonString: abilityScoresJSON) }
        set { abilityScoresJSON = newValue.toJSON() }
    }
    /// The languages that are natively known by this race
    var languages: [String] {
        get { Array(jsonString: languagesJSON) }
        set { languagesJSON = newValue.toJSON() }
    }
    /// Describes the size of the creature
    var size: CreatureSize {
        get { CreatureSize(sizeString) }
        set { sizeString = newValue.string }
    }
    /// A collection of senses available to the race
    var senses: [Sense] {
        get { Array(jsonString: sensesJSON) }
        set { sensesJSON = newValue.toJSON() }
    }

    required convenience init(from decoder: Decoder) throws {
        self.init()
        
        let container: KeyedDecodingContainer = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.desc = try container.decode(String.self, forKey: .desc)
        self.descriptiveAge = try container.decode(String.self, forKey: .descriptiveAge)
        self.descriptiveAlignment = try container.decode(String.self, forKey: .descriptiveAlignment)
        self.descriptivePhysique = try container.decode(String.self, forKey: .descriptivePhysique)
        self.sizeString = try container.decode(String.self, forKey: .size)
        self.speed = try container.decode(Int.self, forKey: .speed)
        self.abilityScoreModifiers = try container.decodeIfPresent([AbilityScoreModifier].self, forKey: .abilityScoreModifiers) ?? [AbilityScoreModifier]()
        self.features = try container.decodeIfPresent([Feature].self, forKey: .features) ?? [Feature]()
        self.languages = try container.decodeIfPresent([String].self, forKey: .languages) ?? [String]()
    }

    override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)

        var container: KeyedEncodingContainer = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(senses, forKey: .senses)
        try container.encode(descriptiveAge, forKey: .descriptiveAge)
        try container.encode(descriptiveAlignment, forKey: .descriptiveAlignment)
        try container.encode(descriptivePhysique, forKey: .descriptivePhysique)
        try container.encode(sizeString, forKey: .size)
        try container.encode(speed, forKey: .speed)
        try container.encode(languages, forKey: .languages)
        try container.encode(features, forKey: .features)
        try container.encode(abilityScoreModifiers, forKey: .abilityScoreModifiers)
    }
}

extension RaceRecord {
    private enum CodingKeys: String, CodingKey {
        case name, desc, senses, descriptiveAge, descriptiveAlignment, descriptivePhysique, size, speed, languages, abilityScoreModifiers, features
    }

    // TODO: Implement method
    func linkSubracesIfNeeded() {

    }
}
