//

import Foundation

struct TypeRelations: Codable {
    var noDamageTo: [NamedAPIResource]
    var halfDamageTo: [NamedAPIResource]
    var doubleDamageTo: [NamedAPIResource]
    var noDamageFrom: [NamedAPIResource]
    var halfDamageFrom: [NamedAPIResource]
    var doubleDamageFrom: [NamedAPIResource]
}
