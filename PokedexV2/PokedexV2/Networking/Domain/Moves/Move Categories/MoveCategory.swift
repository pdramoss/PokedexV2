//

import Foundation

struct MoveCategory: Codable {
    var id: Int
    var name: String
    var moves: [NamedAPIResource]
    var descriptions: [Description]
}
