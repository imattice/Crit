//
//  SubraceRecordDetailScreen.swift
//  Crit
//
//  Created by Ike Mattice on 3/15/22.
//

import SwiftUI

/// A full-screen view that displays the details of a LanguageRecord
struct SubraceRecordDetailScreen: View {
    typealias TitleViewModel = DescriptiveTitleDisplayView.ViewModel

    /// The record containing data for the detail screen
    let record: SubraceRecord

    /// Contains data for the title view
    var titleViewModel: TitleViewModel {
        TitleViewModel(
        title: record.name,
        description: record.desc)
    }

    var body: some View {
        VStack {
            DescriptiveTitleDisplayView(
                viewModel: titleViewModel)

            if record.abilityScoreModifiers.isEmpty == false {
                AbilityScoreModifierGrid(scores: record.abilityScoreModifiers)
            }

            if record.features.isEmpty == false {
                ForEach(record.features) { feature in
                    TextDisplay(
                        title: feature.title,
                        text: feature.desc)
                }
            }
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct SubraceRecordDetailScreen_Previews: PreviewProvider {
    static let record: SubraceRecord = PreviewDataProvider.sampleSubraceRecord

    static var previews: some View {
        SubraceRecordDetailScreen(record: record)
    }
}
