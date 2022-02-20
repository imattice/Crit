//
//  Race.swift
//  Crit
//
//  Created by Ike Mattice on 2/18/22.
//

import Foundation

import RealmSwift

/// A object representing a character's race
struct Race {
    /// A reference to static attributes for this race
    let record: RaceRecord
    /// A reference to static attributes for the chosen subrace
    var subraceRecord: SubraceRecord?
    /// The languages that the user selected for this race
    var selectedLanguages: [Language] = [Language]()
    /// The full name of the race, including the subrace
    var label: String {
        if let subrace: SubraceRecord = subraceRecord {
            return subrace.label
        }
        return record.name
    }

    /// Adds a specific language to the selectedLanguage
    mutating func addLanguage(_ language: Language) {
        selectedLanguages.append(language)
    }
    /// Removes a specific language from the selectedLanguages
    mutating func removeLanguage(_ language: Language) {
        guard let index = selectedLanguages.firstIndex(where: { $0.record.name == language.record.name }) else { return }
        selectedLanguages.remove(at: index)
    }
}
