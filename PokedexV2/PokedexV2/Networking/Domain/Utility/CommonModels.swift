//

import Foundation

struct APIResource: Codable {
    var url: String
}

struct Description: Codable {
    var description: String
    var language: NamedAPIResource
}

struct Effect: Codable {
    var effect: String
    var language: NamedAPIResource
}

struct Encounter: Codable {
    var minLevel: Int
    var maxLevel: Int
    var conditionValues: NamedAPIResource
    var chance: Int
    var method: NamedAPIResource
}

struct FlavorText: Codable {
    var flavorText: String
    var language: NamedAPIResource
    var version: NamedAPIResource
}

struct GenerationGameIndex: Codable {
    var gameIndex: Int
    var generation: NamedAPIResource
}

struct MachineVersionDetail: Codable {
    var machine: APIResource
    var versionGroup: NamedAPIResource
}

struct Name: Codable {
    var name: String
    var language: NamedAPIResource
}

struct NamedAPIResource: Codable {
    var name: String
    var url: String
}

extension NamedAPIResource {
    var id: Int {
        let split = url.split(separator: "/")
        guard let last = split.last else { return 0 }
        let text = String(last)
        return Int(text) ?? 0
    }
}

struct VerboseEffect: Codable {
    var effect: String
    var shortEffect: String
    var language: NamedAPIResource
}

struct VersionEncounterDetail: Codable {
    var version: NamedAPIResource
    var maxChance: Int
    var encounterDetails: [Encounter]
}

struct VersionGameIndex: Codable {
    var gameIndex: Int
    var version: NamedAPIResource
}

struct VersionGroupFlavorText: Codable {
    var text: String
    var language: NamedAPIResource
    var versionGroup: NamedAPIResource
}
