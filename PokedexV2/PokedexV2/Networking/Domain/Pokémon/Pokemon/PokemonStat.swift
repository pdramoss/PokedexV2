//

import Foundation

struct PokemonStat: Codable {
    var stat: NamedAPIResource
    var effort: Int
    var baseStat: Int
}
