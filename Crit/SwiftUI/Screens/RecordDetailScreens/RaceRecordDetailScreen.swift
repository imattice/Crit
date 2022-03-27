//
//  RaceRecordDetailScreen.swift
//  Crit
//
//  Created by Ike Mattice on 3/20/22.
//

import SwiftUI

struct RaceRecordDetailScreen: View {
    typealias TitleViewModel = DescriptiveTitleDisplayView.ViewModel

    /// The record containing data for the detail screen
    let record: RaceRecord

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

            SpeedAndSizeDisplayView(
                speed: record.speed,
                size: record.size)

            LanguageDisplayView(
                source: record.name,
                languages: record.languages)

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

// MARK: Previews
struct RaceRecordDetailScreen_Previews: PreviewProvider {
    static let record: RaceRecord = PreviewDataProvider.sampleRaceRecord

    static var previews: some View {
        RaceRecordDetailScreen(record: record)
    }
}
