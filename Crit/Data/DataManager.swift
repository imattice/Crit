//
//  DataManager.swift
//  Crit
//
//  Created by Ike Mattice on 3/28/22.
//

import Foundation

/// Manages the loading of default data
enum DataManager {
    ///  Loads all default data into persistence
    static func loadDefaultData() {
        // The order that these are loaded in is important.
        // TODO: Find a better way to link record objects after they have been parsed from JSON
        LanguageRecord.loadDefaultsIfNeeded()
        RaceRecord.loadDefaultsIfNeeded()
        SubraceRecord.loadDefaultsIfNeeded()
    }
}
