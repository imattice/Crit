//
//  DetailSection.swift
//  Crit
//
//  Created by Ike Mattice on 3/6/22.
//

import SwiftUI

/// Displays the given content in a standard section style
struct DetailSection<Content: View>: View {
    let content: () -> Content

    var body: some View {
        content()
            .frame(maxWidth: .infinity)
            .padding()
            .transition(.scale)
            .background(Color.sectionSurface)
            .cornerRadius(Constant.Frame.cornerRadius)
            .padding(.horizontal)
            .shadow(radius: Constant.shadowRadius)
    }
}

// MARK: - Previews
struct DisplaySection_Previews: PreviewProvider {
    static var previews: some View {
        DetailSection {
            Text("Display content")
        }
    }
}
