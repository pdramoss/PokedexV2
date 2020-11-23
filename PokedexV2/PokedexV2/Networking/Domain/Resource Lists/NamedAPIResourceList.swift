//

import Foundation

struct NamedAPIResourceList: Codable {
    var count: Int
    var next: String?
    var previous: String?
    var results: [NamedAPIResource]
}
