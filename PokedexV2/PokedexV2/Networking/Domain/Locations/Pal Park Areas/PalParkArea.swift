//

import Foundation

struct PalParkArea: Codable {
    var id: Int
    var name: String
    var names: [Name]
    var pokemonEncounters: [PalParkEncounterSpecies]
}
