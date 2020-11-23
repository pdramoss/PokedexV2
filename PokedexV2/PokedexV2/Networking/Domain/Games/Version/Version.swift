//

import Foundation

struct Version: Codable {
    var id: Int
    var name: String
    var names: [Name]
    var versionGroup: NamedAPIResource
}
