//
//  SpeedAndSizeDisplayView.swift
//  Crit
//
//  Created by Ike Mattice on 3/20/22.
//

import SwiftUI

struct SpeedAndSizeDisplayView: View {
    let speed: Int
    let size: CreatureSize

    var body: some View {
        DetailSection {
            HStack {
                TitledCircularFramedText(
                    title: "Speed",
                    text: "\(speed)")

                Spacer()

                TitledCircularFramedText(
                    title: "Size",
                    text: "\(size.string.capitalized)")
            }
        }
    }
}

struct SpeedAndSizeDisplayView_Previews: PreviewProvider {
    static let speed: Int = 30
    static let size: CreatureSize = .medium

    static var previews: some View {
        SpeedAndSizeDisplayView(
            speed: speed,
            size: size)
    }
}
