//
//  SelectedPillView.swift
//  Crit
//
//  Created by Ike Mattice on 3/19/22.
//

import SwiftUI

struct SelectedPillView: View {
    let text: String
    let backgroundColor: Color = .selectedSurface
    let frameModel: FrameViewModel = FrameViewModel(
        color: Color.selectedBorder,
        width: Constant.Frame.BorderWidth.small)

    var body: some View {
        PillView(
            text,
            backgroundColor: backgroundColor,
            frameModel: frameModel)
    }

    init(_ text: String) {
        self.text = text
    }
}

struct SelectedPillView_Previews: PreviewProvider {
    static let text: String = "Some Text"

    static var previews: some View {
        SelectedPillView(text)
            .previewLayout(.sizeThatFits)
    }
}
