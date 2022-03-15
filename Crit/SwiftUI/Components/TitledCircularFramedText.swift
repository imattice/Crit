//
//  TitledCircularFramedText.swift
//  Crit
//
//  Created by Ike Mattice on 3/6/22.
//

import SwiftUI

/// A view that displays text in a circular frame with a title
struct TitledCircularFramedText: View {
    /// A title for the view
    let title: String
    /// The text to display
    let text: String

    var body: some View {
        VStack {
            CircularFramedText(text)
            Text(title)
        }
    }
}

// MARK: - Previews
struct TitledCircularFramedText_Previews: PreviewProvider {
    static let title: String = "Some title"
    static let text: String = "Some text"

    static var previews: some View {
        TitledCircularFramedText(
            title: title,
            text: text)
            .background(Color.red)
    }
}
