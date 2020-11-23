//

import Foundation

struct Pokemon: Codable {
    var id: Int
    var name: String
    var baseExperience: Int
    var height: Int
    var isDefault: Bool
    var order: Int
    var weight: Int
    var abilities: [PokemonAbility]
    var forms: [NamedAPIResource]
    var gameIndices: [VersionGameIndex]
    var heldItems: [PokemonHeldItem]
    var locationAreaEncounters: String
    var moves: [PokemonMove]
    var sprites: PokemonSprites
    var species: NamedAPIResource
    var stats: [PokemonStat]
    var types: [PokemonType]
}
