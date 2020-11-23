//

import Foundation

struct ItemAttribute: Codable {
    var id: Int
    var name: String
    var items: [NamedAPIResource]
    var names: [Name]
    var descriptions: [Description]
}
