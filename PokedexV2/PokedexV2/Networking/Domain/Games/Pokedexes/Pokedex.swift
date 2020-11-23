//

import Foundation

struct Pokedex: Codable {
    var id: Int
    var name: String
    var isMainSeries: Bool
    var descriptions: [Description]
    var names: [Name]
    var pokemonEntries: [PokemonEntry]
    var region: NamedAPIResource
    var versionGroups: [NamedAPIResource]
}
