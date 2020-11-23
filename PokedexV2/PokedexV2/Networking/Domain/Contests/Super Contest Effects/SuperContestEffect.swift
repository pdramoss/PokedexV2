//

import Foundation

struct SuperContestEffect: Codable {
    var id: Int
    var appeal: Int
    var flavorTextEntries: [FlavorText]
    var moves: [NamedAPIResource]
}
