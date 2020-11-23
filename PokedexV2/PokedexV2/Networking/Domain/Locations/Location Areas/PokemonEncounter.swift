//

import Foundation

struct PokemonEncounter: Codable {
    var pokemon: NamedAPIResource
    var versionDetails: [VersionEncounterDetail]
}
