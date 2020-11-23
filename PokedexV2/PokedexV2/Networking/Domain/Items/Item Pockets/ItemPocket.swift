//

import Foundation

struct ItemPocket: Codable {
    var id: Int
    var name: String
    var categories: [NamedAPIResource]
    var names: [Name]
}
