//
//  Array.swift
//  Crit
//
//  Created by Ike Mattice on 3/2/22.
//

import Foundation

/// Extends array to provide utilities used when persisting collections of codable elements
extension Array where Element: Codable {
    ///  Initializes an array with the given JSON string, or returns an empty array if it fails
    init(jsonString: String) {
        do {
            self = try JSONDecoder().decode([Element].self, from: Data(jsonString.utf8))
        } catch {
            ErrorLog.shared.logError(
                sourceClass: String(describing: [Element].self),
                sourceFunc: #function,
                message: "Failed to initialize \(String(describing: [Element].self)) from data)")
            self = [Element]()
        }
    }

    /// Returns a JSON string of the collection
    /// - Returns: A JSON string of the collection
    func toJSON() -> String {
        do {
            let jsonEncoder: JSONEncoder = JSONEncoder()
            jsonEncoder.outputFormatting = .prettyPrinted

            guard let data = try String(data: jsonEncoder.encode(self), encoding:.utf8) else {
                ErrorLog.shared.logError(
                    sourceClass: String(describing: self),
                    sourceFunc: #function,
                    message: "Failed to encode \(String(describing: Self.self)) from data)")
                return ""
            }
            return data
        } catch {
            ErrorLog.shared.logError(
                sourceClass: String(describing: self),
                sourceFunc: #function,
                message: "Failed to initialize \(String(describing: Self.self)) from data)")
            return ""
        }
    }
}
