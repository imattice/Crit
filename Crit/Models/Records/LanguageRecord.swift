//
//  LanguageRecord.swift
//  Crit
//
//  Created by Ike Mattice on 2/19/22.
//

import Foundation

import RealmSwift

/// An object representing static data for a specific language
final class LanguageRecord: Record {
    /// Describes who typically speaks this language
    @Persisted var spokenBy: String
    /// The script that is used to write this language
    @Persisted var script: String
    /// Indicates if the language is rare
    @Persisted var isExotic: Bool = false
    /// Indicates if the language is only know by specific groups
    @Persisted var isSecret: Bool = false

    required convenience init(from decoder: Decoder) throws {
        self.init()

        let container: KeyedDecodingContainer = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.desc = try container.decode(String.self, forKey: .desc)
        self.spokenBy = try container.decode(String.self, forKey: .spokenBy)
        self.script = try container.decode(String.self, forKey: .script)
        self.isExotic = try container.decodeIfPresent(Bool.self, forKey: .isExotic) ?? false
        self.isSecret = try container.decodeIfPresent(Bool.self, forKey: .isSecret) ?? false
    }
}

extension LanguageRecord {
    private enum CodingKeys: CodingKey {
        case name, desc, spokenBy, script, isExotic, isSecret
    }
}
