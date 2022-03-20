//
//  InactivePillView.swift
//  Crit
//
//  Created by Ike Mattice on 3/18/22.
//

import SwiftUI

struct InactivePillView: View {
    let text: String
    let backgroundColor: Color = .inactiveSurface
    let frameModel: FrameViewModel = FrameViewModel(
        color: Color.inactiveBorder,
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

struct InactivePillView_Previews: PreviewProvider {
    static let text: String = "Some Text"

    static var previews: some View {
        InactivePillView(text)
            .previewLayout(.sizeThatFits)
    }
}
