//
//  SenseRecord.swift
//  Crit
//
//  Created by Ike Mattice on 2/18/22.
//

import Foundation

/// An object describing a particular sense used in gameplay
struct Sense: Codable {
    /// An identifier for the sense
    let id: UUID = UUID()
    /// A name for the sense
    let name: String
    /// A description of the sense
    let desc: String
    /// The maximum range the sense can be used at its maximum effect
    let range: Int
    /// The maximum range the sense can be used at a reduced effect
    let reducedRange: Int?
}

extension Sense {
    private enum CodingKeys: CodingKey {
        case name, desc, range, reducedRange
    }
}
