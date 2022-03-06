//
//  CollapsableText.swift
//  Crit
//
//  Created by Ike Mattice on 3/6/22.
//

import SwiftUI

/// Displays long lines of text with toggle-able truncation
struct CollapsableText: View {
    /// Determines if the view is showing the full text
    @Binding var isShowingFullText: Bool
    /// The full string of text to be displayed
    let text: String
    /// The minimum number of lines displayed when the text is truncated
    let minLineLimit: Int
    var lineLimit: Int? {
        isShowingFullText ? nil : minLineLimit
    }
    var buttonText: String {
        isShowingFullText ? "Show Less" : "Show More"
    }
    var imageName: String {
        isShowingFullText ? "chevron.up" : "chevron.down"
    }
    var body: some View {
        VStack {
            Text(text)
                .multilineTextAlignment(.leading)
                .lineLimit(lineLimit)
                .transition(.slide)
                .animation(.easeInOut,
                           value: isShowingFullText)
            HStack {
                Spacer()
                Button(action: showToggle) {
                    HStack(spacing: 0) {
                        Text(buttonText)
                            .padding(.trailing, 0)
                        Image(systemName: imageName)
                            .padding(.leading, 0)
                    }
                    .font(.caption)
                    .padding(.horizontal)
                }
            }
        }
    }

    init(_ text: String,
         lineLimit: Int = 3,
         isShowingFullText: Binding<Bool>) {
        self.text = text
        self.minLineLimit = lineLimit
        self._isShowingFullText = isShowingFullText
    }

    /// Toggles the truncation state
    func showToggle() {
        isShowingFullText.toggle()
    }
}

struct CollapsableText_Previews: PreviewProvider {
    static let text: String = "Bragol alaa quel lome quel esta A'maelamin. Glamhoth yala onna en' alu Tel'Ranaemyn Seasamin. Tel'Sindavathar Naugiaur Wethrinaerea manke naa i'omentien? Yala onna en' alu mani naa lle umien amin nauva auta yeste' n'tess gothamin. Detholalle ring wing bragollach tel'llach yala onna en' naur. Feuyaerea lanta en' kalale quel undome tanya nae n'quel. Helkaerea yala onna en' vilya cormamin lindua ele lle Rah'edan. Lindar mani ume lle quena lle holma ve' edan Cam'wethrin."
    static let lineLimit: Int = 3
    @State static var isShowingFullText: Bool = false

    static var previews: some View {
        CollapsableText(text,
                        lineLimit: lineLimit,
                        isShowingFullText: $isShowingFullText)
    }
}
