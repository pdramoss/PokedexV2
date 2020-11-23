//

import Foundation

struct MoveDamageClass: Codable {
    var id: Int
    var name: String
    var descriptions: [Description]
    var moves: [NamedAPIResource]
    var names: [Name]
}
