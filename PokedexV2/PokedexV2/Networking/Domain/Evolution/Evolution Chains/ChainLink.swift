//

import Foundation

struct ChainLink: Codable {
    var isBaby: Bool
    var species: NamedAPIResource
    var evolutionDetails: [EvolutionDetail]
    var evolvesTo: [ChainLink]
}
