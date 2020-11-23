//

import Foundation

struct PokemonEntry: Codable {
    var entryNumber: Int
    var pokemon_species: [NamedAPIResource]
}
