//
//  PillView.swift
//  Crit
//
//  Created by Ike Mattice on 3/18/22.
//

import SwiftUI

struct PillView: View {
    let text: String
    let backgroundColor: Color
    let frameModel: FrameViewModel

    var body: some View {
        Group {
        if let dashLength: CGFloat = frameModel.dashLength {
            Text(text)
                .frame(maxWidth: .infinity)
                .padding(Constant.Padding.small)
                .background(backgroundColor)
                .cornerRadius(Constant.Frame.cornerRadius)
                .overlay {
                    RoundedRectangle(
                        cornerRadius: Constant.Frame.cornerRadius)
                    .stroke(frameModel.color,
                            style: StrokeStyle(
                                lineWidth: frameModel.width,
                                dash: [dashLength]))
                }
        } else {
            Text(text)
                .frame(maxWidth: .infinity)
                .padding(Constant.Padding.small)
                .background(backgroundColor)
                .cornerRadius(Constant.Frame.cornerRadius)
                .overlay {
                    RoundedRectangle(
                        cornerRadius: Constant.Frame.cornerRadius)
                    .stroke(frameModel.color,
                            lineWidth: frameModel.width)
                }
        }
        }
        .foregroundColor(frameModel.color)
    }

    init(_ text: String,
         backgroundColor: Color = .white,
         frameModel: FrameViewModel = FrameViewModel(
            color: .clear, width: 0)) {
                self.text = text
                self.backgroundColor = backgroundColor
                self.frameModel = frameModel
            }
}

// MARK: Previews
struct PillView_Previews: PreviewProvider {
    static let text: String = "Some Text"
    static let frameModel: FrameViewModel = FrameViewModel(
        color: .activeBorder,
        width: Constant.Frame.BorderWidth.medium)
    static let dashedFrameModel: FrameViewModel = FrameViewModel(
        color: .selectedBorder,
        width: Constant.Frame.BorderWidth.medium,
        dashLength: Constant.Frame.dashWidth)

    static var previews: some View {
        Group {
            PillView(text,
                     backgroundColor: Color.activeSurface,
                     frameModel: frameModel)
            PillView(text,
                     backgroundColor: Color.selectedSurface,
                     frameModel: dashedFrameModel)
        }
        .previewLayout(.sizeThatFits)
    }
}
