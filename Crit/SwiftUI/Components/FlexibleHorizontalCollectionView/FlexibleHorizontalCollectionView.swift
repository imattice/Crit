//
//  FlexibleHorizontalCollectionView.swift
//  Crit
//
//  Created by Ike Mattice on 3/20/22.
//

import SwiftUI

/// A View that takes a collection of items and displays them in a leading-arranged horizontal row view, adding additional rows below if needed
///
/// The FlexibleHorizontalCollectionView is a facade for `FlexibleHorizontalContainer`, its main responsibility is to get the available width and pass it down to the core implementation, `FlexibleHorizontalContainer`.
///
/// Adopted from https://www.fivestars.blog/articles/flexible-swiftui/
struct FlexibleHorizontalCollectionView<ViewData: Collection, Content: View>: View where ViewData.Element: Hashable {
    let data: ViewData
    let spacing: CGFloat
    let alignment: HorizontalAlignment
    let content: (ViewData.Element) -> Content
    @State private var availableWidth: CGFloat = 0

    var body: some View {
        ZStack(alignment: Alignment(horizontal: alignment, vertical: .center)) {
            Color.clear
                .frame(height: 1)
                .readSize { size in
                    availableWidth = size.width
                }

            FlexibleHorizontalContainer(
                availableWidth: availableWidth,
                data: data,
                spacing: spacing,
                alignment: alignment,
                content: content
            )
        }
    }

    init(_ data: ViewData,
         spacing: CGFloat = 8,
         alignment: HorizontalAlignment = .center,
         elementView: @escaping (ViewData.Element) -> Content) {
        self.data = data
        self.spacing = spacing
        self.alignment = alignment
        self.content = elementView
    }
}

// MARK: - Previews
struct FlexibleHorizontalCollectionView_Previews: PreviewProvider {
    static let data: [String] = ["cheese", "milk", "broccoli", "radish", "sparkling water", "soy sauce", "raspberries", "blueberries", "strawberries", "ice cream"]

    static var previews: some View {
        FlexibleHorizontalCollectionView(data) { item in
            Text(item)
                .padding()
                .border(.red, width: 1)
        }
    }
}
