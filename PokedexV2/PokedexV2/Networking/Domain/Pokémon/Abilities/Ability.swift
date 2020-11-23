//

import Foundation

struct Ability: Codable {
    var id: Int
    var name: String
    var isMainSeries: Bool
    var generation: NamedAPIResource
    var names: [Name]
    var effectEntries: [VerboseEffect]
    var effectChanges: AbilityEffectChange
    var flavorTextEntries: AbilityFlavorText
    var pokemon: AbilityPokemon
}
