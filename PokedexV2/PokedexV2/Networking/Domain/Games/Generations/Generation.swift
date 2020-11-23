//

import Foundation

struct Generation: Codable {
    var id: Int
    var name: String
    var abilities: [NamedAPIResource]
    var names: [NamedAPIResource]
    var mainRegion: NamedAPIResource
    var moves: [NamedAPIResource]
    var pokemonSpecies: [NamedAPIResource]
    var types: [NamedAPIResource]
    var versionGroups: [NamedAPIResource]
}
