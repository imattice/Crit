//
//  LanguageRecord.swift
//  Crit
//
//  Created by Ike Mattice on 2/19/22.
//

import Foundation

import RealmSwift

/// An object representing static data for a specific language
final class LanguageRecord: Object, Record, Codable {
    /// An identifier for the record
    @Persisted var id: UUID = UUID()
    /// The name of the language
    @Persisted var name: String
    /// A description of the language
    @Persisted var desc: String
    /// Describes who typically speaks this language
    @Persisted var spokenBy: String
    /// The script that is used to write this language
    @Persisted var script: String
    /// Indicates if the language is rare
    @Persisted var isExotic: Bool
    /// Indicates if the language is only know by specific groups
    @Persisted var isSecret: Bool
}
