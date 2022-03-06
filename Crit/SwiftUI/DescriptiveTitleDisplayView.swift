//
//  DescriptiveTitleDisplayView.swift
//  Crit
//
//  Created by Ike Mattice on 3/6/22.
//

import SwiftUI

/// A title display that contains an image, title, subtitle, and description
struct DescriptiveTitleDisplayView: View {
    @State var isShowingFullText: Bool = false
    /// Contains variables to configure the the view
    let viewModel: ViewModel

    var body: some View {
        DisplaySection {
            VStack {
                HStack {
                    if let image: Image = viewModel.image {
                        CircularFramedImage(image)
                        Spacer()
                    }
                    VStack {
                        Text(viewModel.title.capitalized)
                            .font(.title)
                            .padding(.bottom)
                        if let subtitle: String = viewModel.subtitle {
                            Text(subtitle)
                                .font(.subheadline)
                        }
                    }
                    if viewModel.image != nil {
                        Spacer()
                    }
                }
                if let description: String = viewModel.description {
                    CollapsableText(description,
                                    isShowingFullText: $isShowingFullText)
                }
            }
        }
        .transition(.scale)
        .animation(.easeInOut, value: isShowingFullText)
    }
}

extension DescriptiveTitleDisplayView {
    /// Contains variables to configure the view
    struct ViewModel {
        /// The title of the view
        let title: String
        /// The subtitle of the view if any
        let subtitle: String?
        /// The description of the view, if any
        let description: String?
        /// The image for the view, if any
        let image: Image?
    }
}

struct DescriptiveTitleDisplayView_Previews: PreviewProvider {
    static let languageViewModel: DescriptiveTitleDisplayView.ViewModel =
    DescriptiveTitleDisplayView.ViewModel(
        title: "elvish",
        subtitle: nil,
        description: "Elvish is fluid, with subtle intonations and intricate grammar. Elven literature is rich and varied, and their songs and poems are famous among other races. Many bards learn their language so they can add Elvish ballads to their repertoires.",
        image: Image("elf~color"))

    static var previews: some View {
        DescriptiveTitleDisplayView(viewModel: languageViewModel)
    }
}
