//
//  TextDisplay.swift
//  Crit
//
//  Created by Ike Mattice on 3/6/22.
//

import SwiftUI

/// A view that displays detail text with an optional title in a standardized format
struct TextDisplay: View {
    /// The title of the section
    let title: String?
    /// The text to display
    let text: String

    var body: some View {
        DetailSection {
            VStack(alignment: .leading) {
                if let title: String = title {
                    Text(title)
                        .font(.caption)
                        .frame(maxWidth: .infinity,
                               alignment: .leading)
                }

                Text(text)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
            }
            .frame(maxWidth: .infinity)
        }
    }

    init(title: String? = nil,
         text: String) {
        self.title = title
        self.text = text
    }

    init(_ text: String) {
        self.title = nil
        self.text = text
    }
}

// MARK: - Previews
struct TextSection_Previews: PreviewProvider {
    static let text: String = "Tanya nae sai eina yala onna en' alu Ithil'quessir Numen. Lova tyelka khila amin bragol thalion ela sen. Amrun'quessir cormamin lindua ele lle Ya Harnram. Amin uuma malia Nwalmaerea aman tel' seldarine dagnir en taur'ohtar. Lle rangwa amin Aratoamin estolada sinome amin naa tualle. Tampa tanya! Ithil'quessir he Mellonea. He Spangaerea lanta en' kalale lle auta yeste'. Tula, hama neva i'naur Unguerea i'quelin mori'quessier naa ba mori'quessir Menomenta."
    static var previews: some View {
        TextDisplay(text)
    }
}
