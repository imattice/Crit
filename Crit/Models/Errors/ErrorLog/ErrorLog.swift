//
//  ErrorLog.swift
//  Crit
//
//  Created by Ike Mattice on 2/21/22.
//

import Foundation

/// Reports and stores errors occurring in the application
final actor ErrorLog {
    /// A shared instance of ErrorLog used throughout the application
    static let shared: ErrorLog = ErrorLog()
    /// The maximum number of errors stored in the log
    private let maxLength: Int = 1000
    /// The collection of errors
    private(set) var errors: [ErrorLogLine]
    /// A string representation of all logged errors
    var logStrings: String {
        var strings: [String] = [String]()

        errors.forEach { error in
            strings.append(error.logString)
            strings.append("---\n")
        }

        return strings.reduce("", +)
    }

    init() {
        let initialLog: ErrorLogLine = ErrorLogLine(
            sourceClass: "---",
            sourceFunction: "",
            message: "Starting New Error Session\n\n---")
        self.errors = [initialLog]
    }

    /// Adds a new error to the log's collection
    nonisolated func logError(sourceClass: String, sourceFunc: String, message: String) {
        Task {
            await trimErrors()

            let errorLogLine: ErrorLogLine = ErrorLogLine(sourceClass: sourceClass, sourceFunction: sourceFunc, message: message)
            await appendError(errorLogLine: errorLogLine)
        }
    }

    /// Reduce the number of errors until the log has reached the maximum length
    private func trimErrors() {
        while errors.count > maxLength {
            errors.removeLast()
        }
    }

    /// Appends the error to the error collection
    ///
    /// The function prints the error to the console if in a debug environment
    private func appendError(errorLogLine: ErrorLogLine) {
        errors.append(errorLogLine)

        #if DEBUG
            print(errorLogLine.logString)
        #endif
    }
}
