//

import Foundation

struct ItemFlingEffect: Codable {
    var id: Int
    var name: String
    var effectEntries: [Effect]
    var items: [NamedAPIResource]
}
