//

import Foundation

struct PokemonHeldItem: Codable {
    var item: NamedAPIResource
    var versionDetails: [PokemonHeldItemVersion]
}
