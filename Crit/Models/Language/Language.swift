//
//  Language.swift
//  Crit
//
//  Created by Ike Mattice on 2/18/22.
//

import RealmSwift

/// Defines a flexible object to describe a language that can be learned by a character
struct Language: Codable {
    /// A reference to the supporting record
    let record: LanguageRecord
    /// Indicates the source of the language
    let source: Source
}
