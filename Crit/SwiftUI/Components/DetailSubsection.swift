//
//  DetailSubsection.swift
//  Crit
//
//  Created by Ike Mattice on 3/15/22.
//

import SwiftUI

/// Displays the given content in a standard subsection style
struct DetailSubsection<Content: View>: View {
    let content: () -> Content

    var body: some View {
        content()
            .frame(maxWidth: .infinity)
            .padding()
            .transition(.scale)
            .background(Color.subsectionSurface)
            .cornerRadius(Constant.Frame.cornerRadius)
            .padding(.horizontal)
            .shadow(radius: Constant.shadowRadius)
    }
}

struct DetailSubsection_Previews: PreviewProvider {
    static var previews: some View {
        DetailSubsection {
            Text("Display content")
        }
    }
}
