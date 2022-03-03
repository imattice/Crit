//
//  Record.swift
//  Crit
//
//  Created by Ike Mattice on 2/18/22.
//

import Foundation

import RealmSwift

/// A type containing static data that can be persisted to disk
class Record: Object, Identifiable, Codable {
    /// An identifier for the record
    @Persisted private(set) var id: UUID = UUID()
    /// A name for the record
    @Persisted var name: String
    /// A description of the record
    @Persisted var desc: String

    required convenience init(from decoder: Decoder) throws {
        self.init()

        let container: KeyedDecodingContainer = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.desc = try container.decode(String.self, forKey: .desc)
    }

    /// Converts JSON file data to an array of Records
    static func parseFromJSON() throws -> [Record] {
        // A simplistic pluralizer to transform the class record name into the json file name
        // i.e. this should return languages.json from LanguageRecord and classes.json from ClassRecord
        let filename: String = {
            let name: String = String(describing: Self.self).dropLast(6).lowercased()
            return name.last == "s" ? name + "es" : name + "s"
        }()

        guard let path = Bundle.main.path(forResource: filename, ofType: "json") else {
            ErrorLog.shared.logError(
                sourceClass: String(describing: self),
                sourceFunc: #function,
                message: "file not found for \(filename).json")
            throw JSONError.fileNotFound
        }
        do {
            let data: Data = try Data(contentsOf: URL(fileURLWithPath: path))
            return try JSONDecoder().decode([Self].self, from: data)
        } catch {
            ErrorLog.shared.logError(
                sourceClass: String(describing: self),
                sourceFunc: #function,
                message: "error while parsing JSON for file \(filename).json: \(error)")
            throw JSONError.parsingError
        }
    }

    static func storeDefaults() {
        do {
            // TODO: Is there a better way to track this?  Maybe with a date or version of default data?
            // Maybe store a default data version in the userdefaults?
            let realm: Realm = try Realm()
            guard realm.objects(self).isEmpty else {
                return
            }

            let records: [Record] = try parseFromJSON()
            try realm.write {
                realm.add(records)
            }
        } catch {
            // TODO: Handle errors
            print(error)
            print("This broke")
        }
    }

    func save() {
        do {
            let realm: Realm = try Realm()
            realm.add(self, update: .all)
        } catch {
            // TODO: Handle errors
        }
    }

    func update() {
        do {
            let realm: Realm = try Realm()
            realm.add(self, update: .modified)
        } catch {
            // TODO: Handle errors
        }
    }

    func delete() {
        do {
            let realm: Realm = try Realm()
            realm.delete(self)
        } catch {
            // TODO: Handle errors
        }
    }
}
