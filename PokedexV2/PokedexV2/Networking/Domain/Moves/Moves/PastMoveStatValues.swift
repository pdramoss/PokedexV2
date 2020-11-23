//

import Foundation

struct PastMoveStatValues: Codable {
    var accuracy: Int
    var effectChance: Int
    var power: Int
    var pp: Int
    var effectEntries: [VerboseEffect]
    var type: NamedAPIResource
    var versionGroup: NamedAPIResource
}
