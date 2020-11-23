//

import Foundation

struct Type: Codable {
    var id: Int
    var name: String
    var damageRelations: TypeRelations
    var gameIndices: [GenerationGameIndex]
    var generation: NamedAPIResource
    var moveDamageClass: NamedAPIResource
    var names: [Name]
    var pokemon: [TypePokemon]
    var moves: [NamedAPIResource]
}
