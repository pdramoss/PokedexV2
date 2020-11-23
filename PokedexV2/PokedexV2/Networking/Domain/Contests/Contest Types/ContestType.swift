//

import Foundation

struct ContestType: Codable {
    var id: Int
    var name: String
    var berryFlavor: NamedAPIResource
    var names: [ContestName]
}
