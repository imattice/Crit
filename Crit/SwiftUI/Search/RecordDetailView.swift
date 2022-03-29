//
//  RecordDetailView.swift
//  Crit
//
//  Created by Ike Mattice on 3/15/22.
//

import SwiftUI

/// A view that determines which type of detail view to display based on the subclass of the record
struct RecordDetailView: View {
    /// The record containing data for the view
    let record: Record

    var body: some View {
        switch record.type {
        case .language:
            if let languageRecord: LanguageRecord = record as? LanguageRecord {
                LanguageRecordDetailScreen(record: languageRecord)
            }

        case .race:
            if let raceRecord: RaceRecord = record as? RaceRecord {
                RaceRecordDetailScreen(record: raceRecord)
            }

        case .subrace:
            if let subraceRecord: SubraceRecord = record as? SubraceRecord {
                SubraceRecordDetailScreen(record: subraceRecord)
            }

        default:
            Text("Unsupported detail view for \(record.type.title)")
        }
    }
}

// MARK: - Previews
struct RecordDetailView_Previews: PreviewProvider {
    static let record: LanguageRecord = PreviewDataProvider.sampleLanguageRecord

    static var previews: some View {
        RecordDetailView(record: record)
    }
}
