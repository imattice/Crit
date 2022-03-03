//
//  SearchResultCell.swift
//  Crit
//
//  Created by Ike Mattice on 3/2/22.
//

import SwiftUI

struct SearchResultCell: View {
    let record: Record
    private let recordType: RecordType

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(recordType.cellTitle)
                    .font(.caption)
                    .foregroundColor(recordType.color)
                    .padding(.bottom, 4)
                Text(record.name.capitalized)
            }
            Spacer()
        }
    }

    init(_ record: Record) {
        self.record = record
        self.recordType = RecordType(record)
    }
}

extension SearchResultCell {
    enum RecordType {
        case race, subrace, language, unknown

        init(_ record: Record) {
            switch record {
            case is RaceRecord:
                self = .race

            case is SubraceRecord:
                self = .subrace

            case is LanguageRecord:
                self = .language

            default:
                self = .unknown
            }
        }

        var cellTitle: String {
            switch self {
            case .race:
                return "Race"

            case .subrace:
                return "Subrace"

            case .language:
                return "Language"

            case .unknown:
                return ""
            }
        }

        var color: Color {
            switch self {
            case .race:
                return .red

            case .subrace:
                return .orange

            case .language:
                return .yellow

            case .unknown:
                return .gray
            }
        }
    }
}

struct SearchResultCell_Previews: PreviewProvider {
    static let record: RaceRecord = RaceRecord()

    static var previews: some View {
        SearchResultCell(record)
    }
}
