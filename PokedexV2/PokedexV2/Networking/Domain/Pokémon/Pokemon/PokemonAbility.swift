//

import Foundation

struct PokemonAbility: Codable {
    var isHidden: Bool
    var slot: Int
    var ability: NamedAPIResource
}
