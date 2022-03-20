//
//  AbilityScoreModifierGrid.swift
//  Crit
//
//  Created by Ike Mattice on 3/19/22.
//

import SwiftUI

struct AbilityScoreModifierGrid: View {
    let scores: [AbilityScoreModifier]

    var body: some View {
        DetailSection {
            HStack {
                VStack {
                    PillView(title(for: .str), state: state(for: .str))
                    PillView(title(for: .con), state: state(for: .con))
                }
                VStack {
                    PillView(title(for: .dex), state: state(for: .dex))
                    PillView(title(for: .cha), state: state(for: .cha))
                }
                VStack {
                    PillView(title(for: .int), state: state(for: .int))
                    PillView(title(for: .wis), state: state(for: .wis))
                }
            }
        }
//        .padding()
    }

    func title(for score: Stat) -> String {
        var modifier: String {
            guard let scoreValue = scores.first(where: { $0.stat == score }) else {
                return "+0"
            }
            return "+\(scoreValue.value)"
        }
        return "\(score.label(.short).uppercased()) \(modifier)"
    }

    func state(for score: Stat) -> PillState {
        scores.contains { $0.stat == score } ? .active : .inactive
    }
}

struct AbilityScoreGrid_Previews: PreviewProvider {
    static let scores: [AbilityScoreModifier] = [
        AbilityScoreModifier(stat: .str, value: 1),
        AbilityScoreModifier(stat: .wis, value: 3)
    ]
    static var previews: some View {
        AbilityScoreModifierGrid(scores: scores)
    }
}
