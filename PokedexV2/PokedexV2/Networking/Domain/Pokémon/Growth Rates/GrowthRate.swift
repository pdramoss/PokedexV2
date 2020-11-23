//

import Foundation

struct GrowthRate: Codable {
    var id: Int
    var name: String
    var formula: String
    var descriptions: [Description]
    var levels: [GrowthRateExperienceLevel]
    var pokemonSpecies: [NamedAPIResource]
}
