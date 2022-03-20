//
//  SelectablePillView.swift
//  Crit
//
//  Created by Ike Mattice on 3/19/22.
//

import SwiftUI

struct SelectablePillView: View {
    let text: String
    let backgroundColor: Color = .selectableSurface
    let frameModel: FrameViewModel = FrameViewModel(
        color: Color.selectableBorder,
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

struct SelectablePillView_Previews: PreviewProvider {
    static let text: String = "Some Text"

    static var previews: some View {
        SelectablePillView(text)
            .previewLayout(.sizeThatFits)
    }
}
