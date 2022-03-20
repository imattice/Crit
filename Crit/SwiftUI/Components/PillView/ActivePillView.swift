//
//  ActivePillView.swift
//  Crit
//
//  Created by Ike Mattice on 3/18/22.
//

import SwiftUI

struct ActivePillView: View {
    let text: String
    let backgroundColor: Color = .activeSurface
    let frameModel: FrameViewModel = FrameViewModel(
        color: Color.activeBorder,
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

struct ActivePillView_Previews: PreviewProvider {
    static let text: String = "Some Text"

    static var previews: some View {
        ActivePillView(text)
            .previewLayout(.sizeThatFits)
    }
}
