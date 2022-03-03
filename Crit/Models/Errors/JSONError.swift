//
//  JSONError.swift
//  Crit
//
//  Created by Ike Mattice on 2/27/22.
//

/// An error that occurs when parsing JSON
enum JSONError: Error {
    /// An error indicating the source JSON file was not found
    case fileNotFound
    /// An error indicating that there was an issue parsing the json
    case parsingError
}
