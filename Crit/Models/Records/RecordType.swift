//
//  RecordType.swift
//  Crit
//
//  Created by Ike Mattice on 3/15/22.
//

import SwiftUI

// MARK: - Record Type
extension Record {
    /// An enum representation of a particular type of subclass for a Record
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

        /// Returns a string representation that titles the record type
        var title: String {
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

        /// Returns a color that represents the record type
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

    /// A convenience type that returns an enum representation of the type of subclass for this Record
    var type: RecordType {
        RecordType(self)
    }
}
