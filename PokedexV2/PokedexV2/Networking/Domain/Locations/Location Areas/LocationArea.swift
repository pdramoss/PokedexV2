//

import Foundation

struct LocationArea: Codable {
    var id: Int
    var name: String
    var gameIndex: Int
    var encounterMethodRates: [EncounterMethodRate]
    var location: NamedAPIResource
    var names: [Name]
    var pokemonEncounters: [PokemonEncounter]
}
