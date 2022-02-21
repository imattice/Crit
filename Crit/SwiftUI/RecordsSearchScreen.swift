//
//  RecordsSearchScreen.swift
//  Crit
//
//  Created by Ike Mattice on 2/18/22.
//

import SwiftUI

struct RecordsSearchScreen: View {
    @State private var searchText: String = ""
    @State private var isShowingAddDecisionActionSheet: Bool = false
    @State private var willNavigateToSettings: Bool = false
    let allData: [String] = ["elf", "human", "dwarf"]

    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: AppSettingsScreen(),
                               isActive: $willNavigateToSettings) { EmptyView() }
            List {
                ForEach(searchResults, id: \.self) { name in
                    NavigationLink(destination: Text(name)) {
                        Text(name)
                    }
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
                ActionSheet(title: Text("Add new data"),
                            buttons: [
                                .default(Text("Add a New Race"),
                                         action: addRace),
                                .default(Text("Add a New Subrace"),
                                         action: addSubrace),
                                .default(Text("Add a New Language"),
                                         action: addLanguage),
                                .cancel()
                            ]
                )
            }
        }
        }
    }

    var searchResults: [String] {
        if searchText.isEmpty {
            return allData
        } else {
            return allData.filter { $0.contains(searchText.lowercased()) }
        }
    }

    func addRace() {

    }
    func addSubrace() {

    }
    func addLanguage() {

    }

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
