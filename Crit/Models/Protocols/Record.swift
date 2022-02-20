//
//  Record.swift
//  Crit
//
//  Created by Ike Mattice on 2/18/22.
//

import Foundation

/// A type containing static data that can be persisted to disk
protocol Record: Identifiable, Codable {
    var id: UUID { get }
}
