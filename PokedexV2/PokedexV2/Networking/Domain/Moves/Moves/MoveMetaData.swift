//

import Foundation

struct MoveMetaData: Codable {
    var ailment: NamedAPIResource
    var category: NamedAPIResource
    var minHits: Int
    var maxHits: Int
    var minTurns: Int
    var maxTurns: Int
    var drain: Int
    var healing: Int
    var critRate: Int
    var ailmentChance: Int
    var flinchChance: Int
    var statChance: Int
}
