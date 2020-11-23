//

import Foundation

struct Machine: Codable {
    var id: Int
    var item: NamedAPIResource
    var move: NamedAPIResource
    var versionGroup: NamedAPIResource
}
