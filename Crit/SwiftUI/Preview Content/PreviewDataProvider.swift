//
//  PreviewDataProvider.swift
//  Crit
//
//  Created by Ike Mattice on 3/15/22.
//

import SwiftUI

enum PreviewDataProvider {
    /// A subrace record that can be used in previews
    ///
    /// Returns the first item from the decoded JSON data
    static var sampleSubraceRecord: SubraceRecord {
        do {
            let records: [Record] = try SubraceRecord.parseFromJSON()
            guard let record = records.first as? SubraceRecord else {
                fatalError("Failed to fetch SubraceRecord for previews")
            }
            return record
        } catch {
            fatalError("Failed to fetch SubraceRecord for previews")
        }
    }

    /// A language record that can be used in previews
    ///
    /// Returns the first item from the decoded JSON data
    static var sampleLanguageRecord: LanguageRecord {
        do {
            let records: [Record] = try LanguageRecord.parseFromJSON()
            guard let record = records.first as? LanguageRecord else {
                fatalError("Failed to fetch LanguageRecord for previews")
            }
            return record
        } catch {
            fatalError("Failed to fetch LanguageRecord for previews")
        }
    }
}
