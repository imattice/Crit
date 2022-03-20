//
//  PillView.swift
//  Crit
//
//  Created by Ike Mattice on 3/19/22.
//

import SwiftUI

struct PillView: View {
    @State var currentState: PillState

    let text: String
    var viewModel: PillViewModel {
        currentState.viewModel
    }

    var body: some View {
        BorderedText(
            text,
            textColor: currentState.viewModel.textColor,
            backgroundColor: currentState.viewModel.backgroundColor,
            frameModel: currentState.viewModel.frameViewModel)
        .animation(.easeInOut, value: currentState)
        .transition(.opacity)
    }

    init(_ text: String, state: PillState) {
        self.text = text
        self._currentState = State(initialValue: state)
    }
}

// MARK: Previews
struct PillView_Previews: PreviewProvider {
    static let standardState: PillState = .standard
    static let selectableState: PillState = .selectable
    static let selectedState: PillState = .selected
    static let activeState: PillState = .active
    static let inactiveState: PillState = .inactive

    @State static var mutableState: PillState = .selectable

    static var previews: some View {
        Group {
            PillView(String(describing: standardState.self).capitalized,
                     state: standardState)
            .previewDisplayName("\(String(describing: standardState.self).capitalized) State")

            PillView(String(describing: selectableState.self).capitalized,
                     state: selectableState)
            .previewDisplayName("\(String(describing: selectableState.self).capitalized) State")

            PillView(String(describing: selectedState.self).capitalized,
                     state: selectedState)
            .previewDisplayName("\(String(describing: selectedState.self).capitalized) State")

            PillView(String(describing: activeState.self).capitalized,
                     state: activeState)
            .previewDisplayName("\(String(describing: activeState.self).capitalized) State")

            PillView(String(describing: inactiveState.self).capitalized,
                     state: inactiveState)
            .previewDisplayName("\(String(describing: inactiveState.self).capitalized) State")

            PillView("Tap to Toggle",
                     state: mutableState)
            .onTapGesture(perform: toggleState)
            .previewDisplayName("Toggle-able Pill")
        }
        .previewLayout(.sizeThatFits)
    }

    static func toggleState() {
        if mutableState == .selectable {
            mutableState = .selected
        } else {
            mutableState = .selectable
        }
    }
}
