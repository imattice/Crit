//
//  SearchResultCell.swift
//  Crit
//
//  Created by Ike Mattice on 3/2/22.
//

import SwiftUI

/// A view that displays search results in a cell format
struct SearchResultCell: View {
    /// A record that holds data for the cell
    let record: Record

    var body: some View {
        NavigationLink(destination: RecordDetailView(record: record)) {
        HStack {
            VStack(alignment: .leading) {
                Text(record.type.title)
                    .font(.caption)
                    .foregroundColor(record.type.palette.shade)
                    .padding(.bottom, 4)
                Text(record.name.capitalized)
            }
            Spacer()
        }
        }
    }

    init(_ record: Record) {
        self.record = record
    }
}

// MARK: - Previews
struct SearchResultCell_Previews: PreviewProvider {
    static let record: RaceRecord = RaceRecord()

    static var previews: some View {
        SearchResultCell(record)
    }
}
