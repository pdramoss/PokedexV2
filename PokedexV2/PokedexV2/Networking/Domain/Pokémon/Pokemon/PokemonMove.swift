//

import Foundation

struct PokemonMove: Codable {
    var move: NamedAPIResource
    var versionGroupDetails: [PokemonMoveVersion]
}
