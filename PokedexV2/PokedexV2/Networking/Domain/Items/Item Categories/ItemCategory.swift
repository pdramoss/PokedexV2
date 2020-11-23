//

import Foundation

struct ItemCategory: Codable {
    var id: Int
    var name: String
    var items: [NamedAPIResource]
    var names: [Name]
    var pocket: NamedAPIResource
}
