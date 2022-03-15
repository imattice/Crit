//
//  RecordsSearchScreen.swift
//  Crit
//
//  Created by Ike Mattice on 2/18/22.
//

import SwiftUI

import RealmSwift

struct RecordsSearchScreen: View {
    @State private var searchText: String = ""
    @State private var isShowingAddDecisionActionSheet: Bool = false
    @State private var willNavigateToSettings: Bool = false

    @ObservedResults(LanguageRecord.self) var languages: Results<LanguageRecord>
    @ObservedResults(RaceRecord.self) var races: Results<RaceRecord>
    @ObservedResults(SubraceRecord.self) var subraces: Results<SubraceRecord>

    var allData: [Record] {
        Array(languages) + Array(races) + Array(subraces)
    }

    var searchResults: [Record] {
        if searchText.isEmpty {
            return allData
        } else {
            return allData
                .filter {
                    $0.name.contains(searchText.lowercased())
                }
        }
    }

    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: AppSettingsScreen(),
                               isActive: $willNavigateToSettings) { EmptyView() }

                List {
                    ForEach(searchResults.sorted { $0.name < $1.name }) { record in
                        SearchResultCell(record)
                    }
                }
                .searchable(text: $searchText)
                .navigationTitle("Data Search")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: addNewData) {
                            Image(systemName: "plus")
                        }
                    }
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: navigateToSettings) {
                            Image(systemName: "gearshape")
                        }
                    }
                }
                .actionSheet(isPresented: $isShowingAddDecisionActionSheet) {
                    ActionSheet(
                        title: Text("Add new data"),
                        buttons: [
                            .default(Text("Add a New Race"),
                                     action: addNewRace),
                            .default(Text("Add a New Subrace"),
                                     action: addNewSubrace),
                            .default(Text("Add a New Language"),
                                     action: addNewLanguage),
                            .cancel()
                        ]
                    )
                }
            }
        }
    }

    func addNewRace() { /* TODO: Implement method */ }
    func addNewSubrace() { /* TODO: Implement method */ }
    func addNewLanguage() { /* TODO: Implement method */ }

    func addNewData() {
        isShowingAddDecisionActionSheet = true
    }

    func navigateToSettings() {
        willNavigateToSettings = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecordsSearchScreen()
    }
}
