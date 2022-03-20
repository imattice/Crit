//
//  PillState.swift
//  Crit
//
//  Created by Ike Mattice on 3/19/22.
//

import SwiftUI

enum PillState {
    case standard
    case selectable
    case selected
    case active
    case inactive

    var viewModel: PillViewModel {
        switch self {
        case .standard:
            return PillViewModel(
                textColor: .surfaceLow,
                backgroundColor: .surfaceHigh,
                frameViewModel: FrameViewModel(
                    color: Color.surfaceLow,
                    width: Constant.Frame.BorderWidth.small))

        case .selectable:
            return PillViewModel(
                textColor: .selectableBorder,
                backgroundColor: .selectableSurface,
                frameViewModel: FrameViewModel(
                    color: Color.selectableBorder,
                    width: Constant.Frame.BorderWidth.small,
                    dashLength: Constant.Frame.dashWidth))

        case .selected:
            return PillViewModel(
                textColor: .textDark,
                backgroundColor: .selectedSurface,
                frameViewModel: FrameViewModel(
                    color: Color.selectedBorder,
                    width: Constant.Frame.BorderWidth.small))

        case .active:
            return PillViewModel(
                textColor: .textDark,
                backgroundColor: .activeSurface,
                frameViewModel: FrameViewModel(
                    color: Color.clear,
                    width: 0))

        case .inactive:
            return PillViewModel(
                textColor: .inactiveBorder,
                backgroundColor: .inactiveSurface,
                frameViewModel: FrameViewModel(
                    color: Color.inactiveBorder,
                    width: Constant.Frame.BorderWidth.small))
        }
    }
}
