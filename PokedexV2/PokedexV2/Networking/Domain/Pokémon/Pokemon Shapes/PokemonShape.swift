//

import Foundation

struct PokemonShape: Codable {
    var id: Int
    var name: String
    var awesomeNames: [AwesomeName]
    var names: [Name]
    var pokemonSpecies: [NamedAPIResource]
}
