//
//  ReadSize.swift
//  Crit
//
//  Created by Ike Mattice on 3/20/22.
//

// Original article here: https://fivestars.blog/swiftui/swiftui-share-layout-information.html

import SwiftUI

// MARK: Size Preference Key
private struct SizePreferenceKey: PreferenceKey {
    static var defaultValue: CGSize = .zero

    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {}
}

// MARK: Read Size View Extension
// TODO: Is there another way to remove this?  It feels hacky.
// This is used for creating a FlexibleHorizontalCollectionView and 
extension View {
    func readSize(onChange: @escaping (CGSize) -> Void) -> some View {
        background(
            GeometryReader { geometryProxy in
                Color.clear
                    .preference(key: SizePreferenceKey.self, value: geometryProxy.size)
            }
        )
        .onPreferenceChange(SizePreferenceKey.self, perform: onChange)
    }
}
