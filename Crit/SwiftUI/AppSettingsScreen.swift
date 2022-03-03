//
//  AppSettingsScreen.swift
//  Crit
//
//  Created by Ike Mattice on 2/21/22.
//

import SwiftUI

struct AppSettingsScreen: View {
    @State var isPresentingDeleteAlert: Bool = false
    var body: some View {
        List {
            Section("Data") {
                Button("Load Default Data",
                       action: loadDefaultData)
                Button("Delete All Data",
                       action: presentDeleteConfirmation)
                    .foregroundColor(.red)
            }
        }
        .alert(isPresented: $isPresentingDeleteAlert) {
            Alert(title: Text("Are you Sure?"),
                  message: Text("Proceeding with the delete will remove all data, including the default data.  Are you sure you would like to proceed?"),
                  primaryButton: .destructive(
                    Text("Yes"),
                    action: deleteAllData),
                  secondaryButton: .default(
                    Text("No")))
        }
    }

    func loadDefaultData() {
        LanguageRecord.storeDefaults()
        RaceRecord.storeDefaults()
        SubraceRecord.storeDefaults()
    }
    func presentDeleteConfirmation() {
        isPresentingDeleteAlert = true
    }
    func deleteAllData() {

    }
}

struct AppSettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        AppSettingsScreen()
    }
}
