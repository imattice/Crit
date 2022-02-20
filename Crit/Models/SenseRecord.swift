//
//  SenseRecord.swift
//  Crit
//
//  Created by Ike Mattice on 2/18/22.
//

import Foundation

import RealmSwift

/// An object representing static data for a specific sense
class SenseRecord: Object, Record {
    /// An identifier for the record
    @Persisted var id: UUID = UUID()
    /// A name for the record
    @Persisted var name: String
    /// A description of the record
    @Persisted var desc: String
    /// The maximum range the sense can be used at its maximum effect
    @Persisted var range: Int
    /// The maximum range the sense can be used at a reduced effect
    @Persisted var reducedRange: Int
}
