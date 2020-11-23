//

import Foundation

struct MoveAilment: Codable {
    var id: Int
    var name: String
    var moves: [NamedAPIResource]
    var names: [Name]
}
