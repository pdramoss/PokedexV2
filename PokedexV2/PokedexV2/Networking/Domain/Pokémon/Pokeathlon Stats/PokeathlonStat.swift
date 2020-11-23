//

import Foundation

struct PokeathlonStat: Codable {
    var id: Int
    var name: String
    var names: [Name]
    var affectingNatures: NaturePokeathlonStatAffectSets
}
