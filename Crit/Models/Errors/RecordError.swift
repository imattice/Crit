//
//  RecordError.swift
//  Crit
//
//  Created by Ike Mattice on 3/27/22.
//

/// Errors that can occur when working with Record objects
enum RecordError: Error {
    /// Indicates that there was no parent record for the given name
    case noParentRecord(name: String)
}
