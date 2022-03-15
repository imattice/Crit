//
//  CircularFramedText.swift
//  Crit
//
//  Created by Ike Mattice on 3/6/22.
//

import SwiftUI

/// Displays the text in a circular frame
struct CircularFramedText: View {
    /// The text to be displayed
    let text: String
    /// Contains variables to configure the frame
    let frameModel: FrameViewModel
    /// The fixed size of the text
    let size: CGSize

    var body: some View {
        Text(text)
            .frame(
                width: size.width,
                height: size.height,
                alignment: .center)
            .minimumScaleFactor(0.5)
            .clipShape(Circle())
            .shadow(radius: 10)
            .overlay(Circle()
                        .stroke(frameModel.color,
                                lineWidth: frameModel.width))
    }

    init(_ text: String,
         frameModel: FrameViewModel = FrameViewModel(
            color: .white,
            width: 3),
         fixedSize: CGSize = CGSize(
            width: 120,
            height: 120)) {
                self.text = text
                self.frameModel = frameModel
                self.size = fixedSize
            }
}

// MARK: - Previews
struct CircularFramedText_Previews: PreviewProvider {
    static let text: String = "Speed"

    static var previews: some View {
        CircularFramedText(text)
            .background(Color.red)
    }
}
