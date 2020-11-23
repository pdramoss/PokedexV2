//

import Foundation

struct EvolutionDetail: Codable {
    var item: NamedAPIResource
    var trigger: NamedAPIResource
    var gender: Int
    var heldItem: NamedAPIResource
    var knownMove: NamedAPIResource
    var knownMoveType: NamedAPIResource
    var location: NamedAPIResource
    var minLevel: Int
    var minHappiness: Int
    var minBeauty: Int
    var minAffection: Int
    var needsOverworldRain: Bool
    var partySpecies: NamedAPIResource
    var partyType: NamedAPIResource
    var relativePhysicalStats: Int
    var timeOfDay: String
    var tradeSpecies: NamedAPIResource
    var turnUpsideDown: Bool
}
