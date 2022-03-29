//
//  LinkView.swift
//  Crit
//
//  Created by Ike Mattice on 3/28/22.
//

import SwiftUI

/// A view that shows a view that will navigate outside of a list context
struct LinkView: View {
    let title: String

    var body: some View {
        HStack {
            Text(title)
            Spacer()
            Image(systemName: "chevron.right")
        }
        .padding()
        .background(Color.surfaceHigh)
        .cornerRadius(Constant.Frame.cornerRadius)
    }
}

struct LinkView_Previews: PreviewProvider {
    static let title: String = "Next"
    static var previews: some View {
        LinkView(title: title)
            .previewLayout(.sizeThatFits)
    }
}
