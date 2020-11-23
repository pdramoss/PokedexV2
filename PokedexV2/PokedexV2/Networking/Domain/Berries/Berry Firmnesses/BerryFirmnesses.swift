//

import Foundation

struct BerryFirmnesses: Codable {
    var id: Int
    var name: String
    var berries: NamedAPIResource
    var names: [Name]
}
