//

import Foundation

struct Gender: Codable {
    var id: Int
    var name: String
    var pokemonSpeciesDetails: [PokemonSpeciesGender]
    var requiredForEvolution: [NamedAPIResource]

}
