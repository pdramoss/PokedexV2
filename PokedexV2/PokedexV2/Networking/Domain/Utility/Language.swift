//

import Foundation

struct Language: Codable {
    var id: Int
    var name: String
    var official: Bool
    var iso639: String
    var iso3166: String
    var names: [Name]
}
