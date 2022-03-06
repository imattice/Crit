//
//  CircularFramedImage.swift
//  Crit
//
//  Created by Ike Mattice on 3/6/22.
//

import SwiftUI

/// Displays the image in a circular frame
struct CircularFramedImage: View {
    /// The image to be displayed
    let image: Image
    /// Contains variables to configure the frame
    let frameModel: FrameViewModel
    /// The fixed size of the image
    let size: CGSize

    var body: some View {
        image
            .resizable()
            .frame(
                width: size.width,
                height: size.height,
                alignment: .center)
            .clipShape(Circle())
            .shadow(radius: 10)
            .overlay(Circle()
                        .stroke(frameModel.color,
                                lineWidth: frameModel.width))
    }

    init(_ image: Image,
         frameModel: FrameViewModel = FrameViewModel(
            color: .white,
            width: 3),
         fixedSize: CGSize = CGSize(
            width: 120,
            height: 120)) {
                self.image = image
                self.frameModel = frameModel
                self.size = fixedSize
            }
}

extension CircularFramedImage {
    /// Contains variables to configure the frame
    struct FrameViewModel {
        /// The color of the frame
        let color: Color
        /// The width of the frame stroke
        let width: CGFloat
    }
}

struct CircularFramedImage_Previews: PreviewProvider {
    static let image: Image = Image("elf~color")
    static var previews: some View {
        CircularFramedImage(image)
    }
}
