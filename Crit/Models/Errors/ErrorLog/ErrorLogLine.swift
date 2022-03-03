//
//  ErrorLogLine.swift
//  Crit
//
//  Created by Ike Mattice on 2/21/22.
//

import Foundation

/// A line to be consumed by the ErrorLog
public struct ErrorLogLine: Codable {
    /// The class where the error originated
    let sourceClass: String
    /// The function where the error originated
    let sourceFunction: String
    /// A message describing the error
    let message: String
    /// The date when the error occurred
    private let timestamp: Date

    /// A string representation of the error
    var logString: String {
        "Timestamp: \(timestamp)\n\(sourceClass)\n\(sourceFunction)\n\(message)"
    }

    public init(sourceClass: String,
                sourceFunction: String,
                message: String) {
        self.timestamp = Date()
        self.sourceClass = sourceClass
        self.sourceFunction = sourceFunction
        self.message = message
    }
}
