//

import Foundation

struct Location: Codable {
    var id: Int
    var name: String
    var region: NamedAPIResource
    var names: [Name]
    var gameIndices: [GenerationGameIndex]
    var areas: [NamedAPIResource]
}
