//

import Foundation

struct Region: Codable {
    var id: Int
    var locations: [NamedAPIResource]
    var name: String
    var names: [Name]
    var mainGeneration: NamedAPIResource
    var pokedexes: [NamedAPIResource]
    var versionGroups: [NamedAPIResource]
}
