//

import Foundation

struct PokemonColor: Codable {
    var id: Int
    var name: String
    var names: [Name]
    var pokemonSpecies: [NamedAPIResource]
}
