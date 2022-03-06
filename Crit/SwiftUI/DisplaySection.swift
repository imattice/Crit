//
//  DisplaySection.swift
//  Crit
//
//  Created by Ike Mattice on 3/6/22.
//

import SwiftUI

/// Displays the given content in a standard section style
struct DisplaySection<Content: View>: View {
    let content: () -> Content

    var body: some View {
        content()
            .padding()
            .transition(.scale)
            .background(Constant.AppColor.sectionBackground)
            .cornerRadius(Constant.Frame.cornerRadius)
            .padding(.horizontal)
            .shadow(radius: 5)
    }
}

struct DisplaySection_Previews: PreviewProvider {
    static var previews: some View {
        DisplaySection {
            Text("Display content")
        }
    }
}
