//

import Foundation

struct BerryFlavor: Codable {
    var id: Int
    var name: String
    var berries: FlavorBerryMap
    var contestType: NamedAPIResource
    var names: [Name]
}
