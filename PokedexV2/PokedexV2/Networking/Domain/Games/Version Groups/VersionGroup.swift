//

import Foundation

struct VersionGroup: Codable {
    var id: Int
    var name: String
    var order: Int
    var generation: NamedAPIResource
    var moveLearnMethods: [NamedAPIResource]
    var pokedexes: [NamedAPIResource]
    var regions: [NamedAPIResource]
    var versions: [NamedAPIResource]
}
