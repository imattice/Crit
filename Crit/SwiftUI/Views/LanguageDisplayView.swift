//
//  LanguageDisplayView.swift
//  Crit
//
//  Created by Ike Mattice on 3/20/22.
//

import SwiftUI

struct LanguageDisplayView: View {
    let source: String
    let languages: [String]

    var body: some View {
        DetailSection {
            VStack {
                Text("\(source.capitalized)s are typically fluent in:")
                FlexibleHorizontalCollectionView(languages) { language in
                    PillView(language.capitalized,
                             state: .active)
                }
            }
        }
    }
}

// MARK: - Previews
struct LanguageDisplayView_Previews: PreviewProvider {
    static let source: String = "Halfling"
    static let languages: [String] = ["common", "halfling", "abyssal", "deep speech", "thieves cant"]
    static var previews: some View {
        LanguageDisplayView(source: source,
                            languages: languages)
    }
}
