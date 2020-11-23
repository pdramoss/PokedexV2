//

import Foundation

struct PokemonMoveVersion: Codable {
    var moveLearnMethod: NamedAPIResource
    var versionGroup: NamedAPIResource
    var levelLearnedAt: Int
}
