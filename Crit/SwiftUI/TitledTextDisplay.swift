//
//  TitledTextDisplay.swift
//  Crit
//
//  Created by Ike Mattice on 3/6/22.
//

import SwiftUI

struct TitledTextDisplay: View {
    let title: String
    let content: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.caption)

            Text(content)
        }
        .cornerRadius(Constant.Frame.cornerRadius)
    }
}

struct TitledTextDisplay_Previews: PreviewProvider {
    static let title: String = "Name"
    static let content: String = "My name"

    static var previews: some View {
        TitledTextDisplay(title: title, content: content)
    }
}
