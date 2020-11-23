//

import Foundation

struct PokemonForm: Codable {
    var id: Int
    var name: String
    var order: Int
    var formOrder: Int
    var isDefault: Bool
    var isBattleOnly: Bool
    var isMega: Bool
    var formName: String
    var pokemon: NamedAPIResource
    var sprites: PokemonFormSprites
    var versionGroup: NamedAPIResource
    var names: [Name]
    var formNames: [Name]
}
