//
//  LanguageRecordDetailScreen.swift
//  Crit
//
//  Created by Ike Mattice on 3/6/22.
//

import SwiftUI

/// A full-screen view that displays the details of a LanguageRecord
struct LanguageRecordDetailScreen: View {
    typealias TitleViewModel = DescriptiveTitleDisplayView.ViewModel

    /// The record containing data for the detail screen
    let record: LanguageRecord

    /// Contains data for the title view
    var titleViewModel: TitleViewModel {
        TitleViewModel(
        title: record.name,
        description: record.desc)
    }

    var body: some View {
        ScrollView {
            DescriptiveTitleDisplayView(
                viewModel: titleViewModel)

            TextDisplay(
                title: "Spoken By",
                text: "\(record.name.capitalized) is typically spoken by \(record.spokenBy)")
            TextDisplay(
                title: "Script",
                text: "\(record.name.capitalized) is written in using a \(record.script) script.")
            if record.isExotic {
                TextDisplay("\(record.name.capitalized) is considered an exotic language and is rarely spoken outside of specific groups.")
            }
            if record.isSecret {
                TextDisplay("\(record.name.capitalized) is considered a secret language and only known to very few groups of people and cannot typically be learned.")
            }
            Spacer()
        }
        .padding(.horizontal)
    }
}

// MARK: - Previews
struct LanguageRecordDetail_Previews: PreviewProvider {
    static let record: LanguageRecord = PreviewDataProvider.sampleLanguageRecord

    static var previews: some View {
        LanguageRecordDetailScreen(record: record)
    }
}
